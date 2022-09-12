package com.example.coin.bl.exporter;

import com.example.coin.vo.ResponseVO;
import org.json.JSONException;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * @Author: yangyujia
 * @Date: 2021-03-15
 */
public interface ExporterService {

    /**
     * 导出xx-data.xml文件
     * 返回文件在oss上的路径
     */
    String exportXMLDataFile(int fileId);

    /**
     * 导出xx-graph.xml文件
     * 返回文件在oss上的路径
     */
    String exportXMLGraphFile(int fileId);

    /**
     * 导出xx-data,json文件
     * 返回文件在oss上的路径
     */
    String exportJsonDataFile(int fileId) throws IOException;

    /**
     * 导出xx-graph.json文件
     * 返回文件在oss上的路径
     */
    String exportJsonGraphFile(int fileId) throws IOException;

    /**
     * 将数据库的collect表导出为csv文件
     * 直接生成csv文件然后调用
     */
    void exportCSV();


}
