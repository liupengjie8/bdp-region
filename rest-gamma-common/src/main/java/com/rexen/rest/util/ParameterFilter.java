package com.rexen.rest.util;

import org.apache.commons.lang3.StringUtils;


/**
 * 参数过滤
 * @author Jaco
 * @since 2020-03-13
 */
public class ParameterFilter {

    /**
     * 模糊查询时特殊字符过滤处理
     * @param param
     * @param specials
     * @return
     */
    public static String likeFilters(String param,String... specials) {
        if(!StringUtils.isEmpty(param) && specials.length > 0) {
            for(String special : specials) {
                int num = param.indexOf(special);
                if(num > -1) {
                    param = param.replaceAll(special,"/"+special);
                }
            }
        }
        return param;
    }

    public static void main(String[] args) {


    }
}
