package com.example.coin.blImpl.exporter;

import com.aliyun.oss.OSSClient;
import com.example.coin.bl.exporter.ExporterService;
import com.example.coin.data.exporter.ExporterMapper;
import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.vo.ResponseVO;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.*;
import java.util.*;
import java.io.*;
import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import java.util.List;

//import org.jdom2.Element;
//import org.jdom2.Document;
//import org.jdom2.output.Format;
//import org.jdom2.output.XMLOutputter;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

@Service
public class ExporterServiceImpl implements ExporterService {
    @Autowired
    ExporterMapper exporterMapper;

//    private void makeXMLFile(String filePath, List<Entity> entityList, List<Relation> relationList,int flag) {
//
//        try {
//            Document document = DocumentHelper.createDocument();
//            //添加根节点
//            Element records = document.addElement("records");
//
//            for (Entity entity : entityList) {
//                Element e = records.addElement("entity");
//                Element name = e.addElement("name");
//                name.addText(entity.getName());
//                Element entityType = e.addElement("entityType");
//                entityType.addText(entity.getEntityType());
//                if (flag == 1) {
//                    Element shape = e.addElement("shape");
//                    Element fontType = e.addElement("fontType");
//                    Element fontSize = e.addElement("fontSize");
//                    Element entitySize = e.addElement("entitySize");
//                    Element x = e.addElement("x");
//                    Element y = e.addElement("y");
//                    Element visible = e.addElement("visible");
//                    Element nameVisible = e.addElement("nameVisible");
//                    Element color = e.addElement("color");
//                    color.addText(entity.getColor());
//                    shape.addText(entity.getShape());
//                    fontType.addText(String.valueOf(entity.getFontType()));
//                    fontSize.addText(String.valueOf(entity.getFontSize()));
//                    x.addText(String.valueOf(entity.getX()));
//                    y.addText(String.valueOf(entity.getY()));
//                    visible.addText(String.valueOf(entity.isVisible()));
//                    nameVisible.addText(String.valueOf(entity.isNameVisible()));
//                    entitySize.addText(String.valueOf(entity.getEntitySize()));
//                }
//            }
//            for (Relation relation : relationList) {
//                Element e = records.addElement("relation");
//                Element name = e.addElement("name");
//                name.addText(relation.getName());
//                Element e1 = e.addElement("e1");
//                e1.addText(relation.getE1());
//                Element e2 = e.addElement("e2");
//                e2.addText(relation.getE2());
//                Element relationType = e.addElement("relationType");
//                relationType.addText(relation.getRelationType());
//                if (flag == 1) {
//                    Element lineType = e.addElement("lineType");
//                    Element visible=e.addElement("visible");
//                    Element labelVisible=e.addElement("labelVisible");
//                    Element color = e.addElement("color");
//                    lineType.addText(String.valueOf(relation.getLineType()));
//                    visible.addText(String.valueOf(relation.isVisible()));
//                    labelVisible.addText(String.valueOf(relation.isLabelVisible()));
//                    color.addText(relation.getColor());
//                }
//            }
//
//            OutputFormat format = OutputFormat.createPrettyPrint();
//            format.setIndentSize(4);  // 设置行缩进，如果不设置的话默认是2
//            format.setNewLineAfterDeclaration(false);//注意这个一定要写，不然第二行会是空的
//
//            //输出xml文件
//            XMLWriter writer = new XMLWriter(new FileOutputStream(filePath), format);
//            writer.write(document);
//            System.out.println("======生成xml成功！=======");
//
//        } catch (IOException e) {
//            e.printStackTrace();
//            System.out.println("======生成xml失败。。。。。。=======");
//        }
//
//    }
//
//    private void makeJSONFile(String filePath, List<Entity> entityList, List<Relation> relationList,int flag) throws IOException {
//        String jsonString = "{\n" +
//                "  \"RECORDS\": [\n";
//        String e="",r="";
//        for (int i=0;i<entityList.size();i++) {
//            Entity entity=entityList.get(i);
//            if(i>=1){
//                e=e+",\n";
//            }
//            e = e+"    {\n" +
//                    "      \"name\": " + "\"" + entity.getName() + "\",\n" +
//                    "      \"type\": " + "0,\n" +
//                    "      \"entityType\": " + "\"" + entity.getEntityType() + "\"";
//            if (flag == 1) {
//                e = e+",\n" + "      \"shape\": " + "\"" + entity.getShape() + "\",\n" +
//                        "      \"fontType\": " + entity.getFontType() + ",\n" +
//                        "      \"fontSize\": " + entity.getFontSize() + ",\n" +
//                        "      \"entitySize\": " + entity.getEntitySize() + ",\n" +
//                        "      \"x\": " + entity.getX() + ",\n" +
//                        "      \"y\": " + entity.getY() + ",\n" +
//                        "      \"visible\": " + entity.isVisible() + ",\n" +
//                        "      \"nameVisible\": " + entity.isNameVisible() + ",\n" +
//                        "      \"color\": " + "\"" + entity.getColor() + "\"";
//            }
//            e = e + "\n" +
//                    "    }";
//        }
//        for (Relation relation : relationList) {
//            r = r+",\n" +
//                    "    {\n" +
//                    "      \"name\": " + "\"" + relation.getName() + "\",\n" +
//                    "      \"type\": " + "1,\n" +
//                    "      \"e1\": " + "\"" + relation.getE1()+ "\",\n" +
//                    "      \"e2\": " + "\"" + relation.getE2() + "\",\n" +
//                    "      \"relationType\": " + "\"" + relation.getRelationType() + "\"";
//            if(flag==1){
//                r= r+",\n" + "      \"lineType\": " +  + relation.getLineType() + ",\n" +
//                        "      \"visible\": " + relation.isVisible() + ",\n" +
//                        "      \"labelVisible\": " + relation.isLabelVisible()+ ",\n" +
//                        "      \"color\": " + "\"" + relation.getColor() + "\"";
//
//            }
//            r = r + "\n" +
//                    "    }";
//        }
//        jsonString=jsonString+e+r+"\n" +
//                "  ]\n" +
//                "}";
//        System.out.println(jsonString);
//        Writer writer = new OutputStreamWriter(new FileOutputStream(filePath), "UTF-8");
//        writer.write(jsonString);
//        writer.flush();//这个的作用是强制把缓冲区的数据写进去，有没有其实都无所谓，因为close的时候也会做一次flush
//        writer.close();
//
//    }


    private String uploadFile(String filePath,String objectName) {
        String endpoint = "http://oss-cn-shanghai.aliyuncs.com";
        String accessKeyId = "LTAI4G3YDVKD453rLQRPeAQj";
        String accessKeySecret = "zHDmPtPZ6lzTfHWIuMnxdrYvEcSkHM";
        String bucketName = "pyyybf";
        // 创建OSSClient实例。
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);

        try {
            ossClient.putObject(bucketName, objectName, new FileInputStream(new File(filePath)));
            //设置URL过期时间为一星期。
            Date expiration = new Date(System.currentTimeMillis() + 7 * 24 * 3600 * 1000);
            // 生成以GET方法访问的签名URL，访客可以直接通过浏览器访问相关内容。
            URL url = ossClient.generatePresignedUrl(bucketName, objectName, expiration);
            System.out.println("访问链接为：" + url.toString());
            ossClient.shutdown();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
            System.out.println("导出xml文件失败！");
            objectName = "导出xml文件失败！";
        }
        return objectName;
    }


    /**
     * @param fileId 文件id
     * @return
     */
    @Override
    public String exportXMLDataFile(int fileId) {
        List<Entity> entityList = exporterMapper.getFileEntities(fileId);
        List<Relation> relationList = exporterMapper.getFileRelations(fileId);

        String filePath = "src/main/resources/static/output_sample.xml";
//        makeXMLFile(filePath, entityList, relationList,0);

        // 生成上传文件的名字：
        String fileName=exporterMapper.getFileById(fileId).getFileName();
        String objectName=fileName + "/" + fileName + "-data.xml";
        return uploadFile(filePath, objectName);

    }

    @Override
    public String exportXMLGraphFile(int fileId) {
        List<Entity> entityList = exporterMapper.getFileEntities(fileId);
        List<Relation> relationList = exporterMapper.getFileRelations(fileId);

        String filePath = "src/main/resources/static/output_sample2.xml";
//        makeXMLFile(filePath, entityList, relationList,1);

        // 生成上传文件的名字：
        String fileName=exporterMapper.getFileById(fileId).getFileName();
        String objectName=fileName + "/" + fileName + "-graph.xml";
        return uploadFile(filePath, objectName);
    }

    @Override
    public String exportJsonDataFile(int fileId) throws IOException {
        List<Entity> entityList = exporterMapper.getFileEntities(fileId);
        List<Relation> relationList = exporterMapper.getFileRelations(fileId);

        String filePath = "src/main/resources/static/output_sample.json";
//        makeJSONFile(filePath, entityList, relationList,0);

        // 生成上传文件的名字：
        String fileName=exporterMapper.getFileById(fileId).getFileName();
        String objectName=fileName + "/" + fileName + "-data.json";
        return uploadFile(filePath, objectName);
    }

    @Override
    public String exportJsonGraphFile(int fileId) throws IOException {
        List<Entity> entityList = exporterMapper.getFileEntities(fileId);
        List<Relation> relationList = exporterMapper.getFileRelations(fileId);

        String filePath = "src/main/resources/static/output_sample2.json";
//        makeJSONFile(filePath, entityList, relationList,1);

        // 生成上传文件的名字：
        String fileName=exporterMapper.getFileById(fileId).getFileName();
        String objectName=fileName + "/" + fileName + "-graph.json";
        return uploadFile(filePath, objectName);
    }

    @Override
    public void exportCSV(){
        //String jdbcURL = "jdbc:mysql://localhost:3306/coin?serverTimezone=GMT%2B8&useSSL=false";
        //String password = "root";
        String jdbcURL = "jdbc:mysql://106.14.27.210:3306/Coin?serverTimezone=CTT&characterEncoding=UTF-8&useSSL=false";
        String password = "123456";

        String username = "root";

        String csvFilePath = "collect.csv";

        try (Connection connection = DriverManager.getConnection(jdbcURL, username, password)) {
            String sql = "SELECT * FROM Collect";

            Statement statement = connection.createStatement();

            ResultSet result = statement.executeQuery(sql);

            BufferedWriter fileWriter = new BufferedWriter(new FileWriter(csvFilePath));

            // write header line containing column names
            //fileWriter.write("userId,commodityId,val");

            while (result.next()) {
                int userId = result.getInt("userId");
                int commodityId = result.getInt("commodityId");
                String val = result.getString("val");

                String line = String.format("%d,%d,%s",
                        userId, commodityId, val);

                fileWriter.newLine();
                fileWriter.write(line);
            }

            statement.close();
            fileWriter.close();

        } catch (SQLException e) {
            System.out.println("Datababse error:");
            e.printStackTrace();
        } catch (IOException e) {
            System.out.println("File IO error:");
            e.printStackTrace();
        }
    }
}
