package com.rexen.rest.app.controller.sample;

import akka.actor.ActorRef;
import akka.actor.ActorSelection;
import akka.actor.ActorSystem;
import com.alibaba.fastjson.JSONObject;
import com.rexen.rest.annotation.RestFunction;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.cache.RedisCommonCacheManager;
import com.rexen.rest.cache.SessionCacheManager;
import com.rexen.rest.app.config.akka.SpringExtension;
import com.rexen.rest.app.wrap.ServiceStatus;
import com.rexen.rest.model.unit.RoleAuthorization;
import com.rexen.rest.model.unit.UserMenu;
import com.rexen.rest.model.vo.UserPermissionVO;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * 工程示例和测试控制器
 *
 * @author GavinHacker
 * @since Created in 下午5:21 18/5/18
 */
@RestController
public class SampleController extends AbstractController {

    Logger logger = LoggerFactory.getLogger(SampleController.class);

    @Autowired
    private ActorSystem actorSystem;

    @Autowired
    private SpringExtension springExtension;

    @Autowired
    private RedisCommonCacheManager<String, Object> redisCommonCacheManager;

    @RequiresPermissions(value = {"sys:user:create", "sys:user:read"})
    @RestFunction(module = "样例模块", operation = "显示Hello World")
    @RequestMapping(value = "render", method = RequestMethod.GET)
    public String renderHelloWorld() {
        return JSONObject.toJSONString(new Pair<>("Hello", "World"));
    }

    @RequiresPermissions(value = {"sys:user:create", "sys:user:read"})
    @RestFunction(module = "样例模块", operation = "显示HashMap")
    @RequestMapping(value = "render2", method = RequestMethod.GET)
    public ResponseEntity<ServiceStatus> render2() {

        RoleAuthorization roleAuthorization = new RoleAuthorization();
        roleAuthorization.setDeptIds(Arrays.asList("1002", "1003"));
        roleAuthorization.setMenuIds(Arrays.asList("100002", "100003"));
        if(true) {
            return renderSuccess(roleAuthorization);
        }

        UserPermissionVO userPermissionVO = new UserPermissionVO();
        UserMenu userMenu = new UserMenu();
        userMenu.setName("用户管理");
        userMenu.setPermissionCode("user");
        userMenu.setSort("1");
        userMenu.setType("1");
        userPermissionVO.getMenus().put("/sys/user", userMenu);

        UserMenu userMenu2 = new UserMenu();
        userMenu2.setName("系统管理");
        userMenu2.setPermissionCode("sys");
        userMenu2.setSort("1");
        userMenu2.setType("0");
        userPermissionVO.getMenus().put("/sys", userMenu2);

        UserMenu userMenu3 = new UserMenu();
        userMenu3.setName("角色管理");
        userMenu3.setPermissionCode("role");
        userMenu3.setSort("2");
        userMenu3.setType("0");
        userPermissionVO.getMenus().put("/sys/role", userMenu3);

        List<String> permissions = Arrays.asList("sys:user:add", "sys:user:delete", "sys:user:access");
        userPermissionVO.setPermissions(permissions);
        return renderSuccess(userPermissionVO);
    }

    @RestFunction(module = "样例模块", operation = "测试session")
    @RequestMapping(value = "setAttr", method = RequestMethod.GET)
    public String setAttr(String key, String value) {
        SessionCacheManager.setAttribute(key, value);
        redisCommonCacheManager.put(key, value);
        logger.info("缓存属性完成");
        return JSONObject.toJSONString(new Pair<>("message", "success"));
    }

    @RestFunction(module = "样例模块", operation = "测试session")
    @RequestMapping(value = "getAttr", method = RequestMethod.GET)
    public String getAttr(String key) {
        return JSONObject.toJSONString(new Pair<>(SessionCacheManager.getAttribute(key), redisCommonCacheManager.get(key)));
    }

    @RestFunction(module = "样例模块", operation = "显示Hello World")
    @RequestMapping(value = "a/b/render", method = RequestMethod.GET)
    public String renderHelloWorld1() {
        return JSONObject.toJSONString(new Pair<>("Hello", "Hacker"));
    }

    @RestFunction(module = "测试Actor", operation = "测试Actor")
    @RequestMapping(value = "actor", method = RequestMethod.GET)
    public String renderActor(String isStart) {
        CompletableFuture future = new CompletableFuture<>();
        CompletableFuture future2 = new CompletableFuture<>();

        if (Boolean.valueOf(isStart)) {
            ActorRef processor = actorSystem.actorOf(springExtension.props("simpleProcessor"), "simple-processor");
            processor.tell("You can..", null);
            ActorRef producer = actorSystem.actorOf(springExtension.props("simpleProducer", future2), "simple-producer");
            producer.tell("Can I ?", processor);

            logger.info(processor.path().toString());
            logger.info(producer.path().toString());
            return JSONObject.toJSONString(new Pair<>("Hello", "Actor"));
        }

        ActorSelection actorSelectionProcessor = actorSystem.actorSelection("/user/simple-processor");
        actorSelectionProcessor.tell("tell selection processor.", null);
        ActorSelection actorSelectionProducer = actorSystem.actorSelection("/user/simple-producer");
        actorSelectionProducer.tell("tell selection producer", null);
        return JSONObject.toJSONString(new Pair<>("Hello", "Actor"));
    }
}
