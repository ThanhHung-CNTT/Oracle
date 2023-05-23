package com.oracled6.DTO;

public class ResponseDTO<T> {
    private int code = 200;
    private String message = "Success";
    private T data = null;

    public ResponseDTO(int code, String message,T data){
        this.code = code;
        this.message = message;
        this.data = data;
    }
    
    public void setData(T data) {
        this.data = data;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public String getMessage() {
        return message;
    }

    public int getCode() {
        return code;
    }
}
