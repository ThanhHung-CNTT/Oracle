package com.oracle5.utils;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

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

    public static ResponseEntity<String> responseSuccess(Object data) {
        return new ResponseEntity<>(toJson(new ResponseData<>(200, "Success", data)), HttpStatus.OK);
    }

    public static ResponseEntity<String> responseError() {
        return new ResponseEntity<>(toJson(new ResponseData<>(500, "Error")), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    public static ResponseEntity<String> responseCreated(Object data) {
        return new ResponseEntity<>(toJson(new ResponseData<>(201, "Success", data)), HttpStatus.OK);
    }

    public static ResponseEntity<String> responseSuccessNoData() {
        return new ResponseEntity<>(toJson(new ResponseData<>(200, "Success")), HttpStatus.OK);
    }

}
