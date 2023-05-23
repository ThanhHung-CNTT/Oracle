package com.oracled6.utils;

import com.fasterxml.jackson.databind.ObjectMapper;


public class Helper {
    public static String toJson(Object data) {
        try {
            return new ObjectMapper().writer().withDefaultPrettyPrinter()
                    .writeValueAsString(data);
        } catch (Exception e) {
            System.out.println(e);
            return "abc";
        }
    }
}
