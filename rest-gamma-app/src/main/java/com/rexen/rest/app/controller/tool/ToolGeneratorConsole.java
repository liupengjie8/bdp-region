package com.rexen.rest.app.controller.tool;


import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.rexen.rest.app.controller.AbstractController;
import com.rexen.rest.generator.InjectionConfig;
import com.rexen.rest.generator.RestGenerator;
import com.rexen.rest.generator.config.*;
import com.rexen.rest.generator.config.builder.ConfigBuilder;
import com.rexen.rest.generator.config.po.TableFill;
import com.rexen.rest.generator.config.rules.NamingStrategy;
import com.rexen.rest.generator.config.GlobalConfig;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * 代码生成工具类
 *
 * @author GavinHacker
 */
public class ToolGeneratorConsole {

    public static void generateCode() {
        String packageName = "com.rexen.rest";
        boolean serviceNameStartWithI = false;
        // 修改替换成你需要的表名，多个表名传数组
        generateByTables(serviceNameStartWithI, packageName, "tool_generator_field_model", "tool_generator_table_model");
    }

    private static void generateByTables(boolean serviceNameStartWithI, String packageName, String... tableNames) {
        GlobalConfig config = new GlobalConfig();
        String dbUrl = "jdbc:mysql://172.17.2.194:3306/rest-gamma-bdp?useSSL=false&serverTimezone=GMT%2B8";
        DataSourceConfig dataSourceConfig = new DataSourceConfig();
        dataSourceConfig
                //设置数据库类型
                .setDbType(DbType.MYSQL)
                //数据库链接地址
                .setUrl(dbUrl)
                //数据库链接用户名
                .setUsername("root")
                //数据库链接密码
                .setPassword("Rexen123")
                //数据库链接驱动
                .setDriverName("com.mysql.cj.jdbc.Driver");
        StrategyConfig strategyConfig = new StrategyConfig();

        strategyConfig
                //全局大写命名
                .setCapitalMode(true)
                //实体是否为lombok模型
                .setEntityLombokModel(false)
                //数据库列名下划线命名
                //.setDbColumnUnderline(true)
                //列名到属性名命名转换
                .setNaming(NamingStrategy.underline_to_camel)
                //包含表名
                .setInclude(tableNames)
                .setEntityLombokModel(true)
                .setTableFillList(Arrays.asList(
                        new TableFill("create_time", FieldFill.INSERT),
                        new TableFill("update_time", FieldFill.INSERT_UPDATE),
                        new TableFill("create_by", FieldFill.INSERT),
                        new TableFill("update_by", FieldFill.INSERT_UPDATE)))
                 .setSuperControllerClass(AbstractController.class);
        config.setActiveRecord(false)
                //作者，修改为自己的名字
                .setAuthor("GavinHacker")
                //生成文件位置
                .setOutputDir("/Users/gavin/data/code")
                //XML 二级缓存
                .setEnableCache(false)
                //是否生成XML内的BaseResultMap
                .setBaseResultMap(true)
                //是否生成XML内的BaseColumnList
                .setBaseColumnList(true)
                //是否覆盖已有文件
                .setFileOverride(true)
                .setSwagger2(true);
        if (!serviceNameStartWithI) {
            config.setServiceName("%sService");
        }
        RestGenerator restGenerator = new RestGenerator().setGlobalConfig(config)
                .setDataSource(dataSourceConfig)
                .setStrategy(strategyConfig)
                .setPackageInfo(
                        new PackageConfig()
                                //设置默认包名
                                .setParent(packageName)
                                .setController("app.controller")
                                .setEntity("model.entity")
                                .setService("service")
                                .setMapper("mapper")
                                .setServiceImpl("service.impl")
                                .setModuleName("tool")
                )
                .setTemplate(
                        new TemplateConfig().setEntity("/templates/restEntity.java")
                        .setController("/templates/restController.java")
                )
                .setCfg(new InjectionConfig() {
                    @Override
                    public void initMap() {
                        Map<String, Object> map = new HashMap<String,Object>(1);
                        map.put("FunctionName", "代码生成工具");
                        this.setMap(map);
                    }
                });
        restGenerator.setConfig(new ConfigBuilder(restGenerator.getPackageInfo(), restGenerator.getDataSource(), restGenerator.getStrategy(), restGenerator.getTemplate(), restGenerator.getGlobalConfig()));
        if (null != restGenerator.getCfg()) {
            restGenerator.getCfg().setConfig(restGenerator.getConfig());
        }
        restGenerator.execute();
    }

    private static void generateByTables(String packageName, String... tableNames) {
        generateByTables(true, packageName, tableNames);
    }

    public static void main(String[] args) {
        generateCode();
    }
}
