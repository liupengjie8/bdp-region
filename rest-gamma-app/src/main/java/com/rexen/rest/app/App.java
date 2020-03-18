package com.rexen.rest.app;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 程序入口
 *
 * @author Gavinhacker
 */
@SpringBootApplication(scanBasePackages = {"com.rexen"})
public class App extends RestSpringBootServletInitializer {

    static Logger logger = LoggerFactory.getLogger(App.class);

    /**
     * 程序入口
     *
     * @param args 启动参数
     * @throws Exception 启动时异常
     */
    public static void main(String[] args) throws Exception {
        app(App.class).run(args);
    }
}
