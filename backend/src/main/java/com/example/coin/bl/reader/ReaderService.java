package com.example.coin.bl.reader;

import com.example.coin.po.SourceFile;
import com.example.coin.vo.ResponseVO;
//import com.sun.deploy.nativesandbox.comm.Response;
import org.json.JSONException;

import java.util.List;

/**
 * @Author: yangyujia
 * @Date: 2021-03-15
 */
public interface ReaderService {
    /**
     * 读入XML文件
     *
     * @return: fileId
     */
    int readXMLFile(String path, String fileName);

    /**
     * 读入json文件
     *
     * @return: fileId
     */
    int readJSONFile(String path, String fileName) throws JSONException;

    /**
     * 通过url读取文件内容
     *
     * @return: fileId
     */
    int readURL(String fileUrl, String fileName) throws JSONException;

    /**
     * 获得所有文件
     *
     * @return
     */
    List<SourceFile> getAllFiles();

    /**
     * 删除文件
     *
     * @return
     */
    ResponseVO deleteFileById(int fileId);

}
