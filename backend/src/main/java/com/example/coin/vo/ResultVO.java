package com.example.coin.vo;

public class ResultVO {
    private GraphInfo graphInfo;
    private Object result;
    private Boolean success;

    public static ResultVO buildSuccess() {
        ResultVO response = new ResultVO();
        response.setSuccess(true);
        return response;
    }

    public static ResultVO buildSuccess(GraphInfo graphInfo, Object result) {
        ResultVO response = new ResultVO();
        response.setSuccess(true);
        response.setGraphInfo(graphInfo);
        response.setResult(result);
        return response;
    }

    public static ResultVO buildFailure(String message) {
        ResultVO response = new ResultVO();
        response.setSuccess(false);
        response.setResult(message);
        System.out.println(message);
        return response;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public void setGraphInfo(GraphInfo graphInfo) {
        this.graphInfo = graphInfo;
    }

    public GraphInfo getGraphInfo() {
        return graphInfo;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public Object getResult() {
        return result;
    }
}
