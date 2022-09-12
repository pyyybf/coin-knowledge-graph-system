package com.example.coin.blImpl.reader;

import com.example.coin.bl.reader.ReaderService;
import com.example.coin.data.reader.ReaderMapper;
import com.example.coin.po.SourceFile;
import com.example.coin.po.Entity;
import com.example.coin.po.Relation;
import com.example.coin.vo.ResponseVO;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

@Service
public class ReaderServiceImpl implements ReaderService {

    private String[] colorList = {"#2474bf", "#184E80", "#309BFF", "#486e9e", "#2C8CE6", "#38496B", "#C3D1EE", "#7AA0EB", "#585E6B", "#5F7DB8"};//颜色列表
    private Random random = new Random();

    @Autowired
    ReaderMapper readerMapper;

    @Override
    public int readXMLFile(String path, String fileName) {
        if (path.equals("") || fileName.equals("")) {
            System.out.println("输入给readXMLFile的参数不能为空！");
            return -1;
        }
        ArrayList<Entity> entityArrayList = new ArrayList<>();
        ArrayList<Relation> relationArrayList = new ArrayList<>();

        //先增加这个File
        SourceFile f = new SourceFile(fileName, "json");
        int fileId = readerMapper.initFile(f);//这个文件的fileId

        //颜色哈希表
        HashMap<String, String> entityTypeColor = new HashMap<String, String>();
        HashMap<String, String> relationTypeColor = new HashMap<String, String>();
        String color;

        try {
            SAXReader reader = new SAXReader();
            File file = new File(path);
            Document document = reader.read(file);
            Element records = document.getRootElement();//获得根节点

            List<Element> entityList = records.elements("entity");
            List<Element> relationList = records.elements("relation");

            for (Element element : entityList) {
                Element name = element.element("name");
                Element entityType = element.element("entityType");
                if (entityTypeColor.containsKey(entityType.getText())) {
                    color = entityTypeColor.get(entityType.getText());
                } else {
                    while (true) {
                        color = colorList[random.nextInt(colorList.length)];
                        if (!entityTypeColor.containsValue(color)) {
                            entityTypeColor.put(entityType.getText(), color);
                            break;
                        }
                    }
                }
//                Entity entity = new Entity(name.getText(), fileId, color, entityType.getText());
//                entityArrayList.add(entity);
            }
            for (Element element : relationList) {
                Element name = element.element("name");
                Element e1 = element.element("e1");
                Element e2 = element.element("e2");
                Element relationType = element.element("relationType");
                if (relationTypeColor.containsKey(relationType.getText())) {
                    color = relationTypeColor.get(relationType.getText());
                } else {
                    while (true) {
                        color = colorList[random.nextInt(colorList.length)];
                        if (!relationTypeColor.containsValue(color)) {
                            relationTypeColor.put(relationType.getText(), color);
                            break;
                        }
                    }
                }
                relationArrayList.add(new Relation(name.getText(), fileId, e1.getText(), e2.getText(), 0, relationType.getText()));
            }
            System.out.println("=======读取xml文件成功=======");
            System.out.println("======打印生成的实体和关系对象=======");
            System.out.println("-----实体-----");
            for (Entity entity : entityArrayList) {
//                System.out.println(entity.getName());
                readerMapper.initEntity(entity);
            }
            System.out.println("----关系-----");
            for (Relation relation : relationArrayList) {
                System.out.println(relation.getName() + " ("
                        + relation.getE1() + "," + relation.getE2() + ")");
                readerMapper.initRelation(relation);
            }

        } catch (DocumentException e) {
            e.printStackTrace();
            System.out.println("读取文件失败！");
            return -1;
        }
        return fileId;
    }

    @Override
    public int readJSONFile(String path, String fileName) throws JSONException {
        if (path.equals("") || fileName.equals("")) {
            System.out.println("输入给readJSONFile的参数不能为空！");
            return -1;
        }
        //先增加这个File
        SourceFile file = new SourceFile(fileName, "json");
        int fileId = readerMapper.initFile(file);//这个文件的fileId

        String jsonStr = "";
        try {
            File jsonFile = new File(path);
            FileReader fileReader = new FileReader(jsonFile);
            Reader reader = new InputStreamReader(new FileInputStream(jsonFile), "utf-8");
            int ch = 0;//行号
            StringBuffer sb = new StringBuffer();
            System.out.println("=======读取json文件成功=======");
            System.out.println("=======打印读入的json文件=======");
            while ((ch = reader.read()) != -1) {
                sb.append((char) ch);
            }
            fileReader.close();
            reader.close();
            jsonStr = sb.toString();
            System.out.println(jsonStr);

        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("读取json文件失败！");
            return -1;
        }
        return readJSONString(jsonStr);
    }

    /**
     * 读入文件url
     */
    @Override
    public int readURL(String fileUrl, String fileName) throws JSONException {
        System.out.println("调用readURL，URL为" + fileUrl + "  fileName为" + fileName);
        if (fileUrl.equals("") || fileName.equals("")) {
            System.out.println("输入给readURL的参数不能为空！");
            return -1;
        }
        BufferedReader bf = null;
        String line = ""; //文件每行内容
        String result = ""; //文件结果内容
        //先增加这个File
        SourceFile file = new SourceFile(fileName, "json");
        int fileId = readerMapper.initFile(file);//这个文件的fileId
        try {
            URL url = new URL(fileUrl);
            //建立URL链接
            URLConnection conn = url.openConnection();
            //设置模拟请求头
            conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
            //开始链接
            conn.connect();
            //因为要用到URLConnection子类的方法，所以强转成子类
            HttpURLConnection urlConn = (HttpURLConnection) conn;
            //响应200
            if (urlConn.getResponseCode() == HttpURLConnection.HTTP_OK) {
                //字节或字符读取的方式太慢了，用BufferedReader封装按行读取
                bf = new BufferedReader(new InputStreamReader(urlConn.getInputStream()));

                while ((line = bf.readLine()) != null) {
                    result += line + "\n";
                }
                //result 获取得所有文件内容
                System.out.println(result);
                //通过已获取的文件内容   FTP上传至服务器新建文件中
            } else {
                System.out.println("无法链接到URL!");
            }

        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        } finally {
            try {
                if (bf != null) {
                    bf.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return readJSONString(result);
    }

    @Override
    public List<SourceFile> getAllFiles() {
        return readerMapper.getAllFiles();
    }

    @Override
    public ResponseVO deleteFileById(int fileId) {
        readerMapper.deleteFileById(fileId);
        readerMapper.deleteEntityByFileId(fileId);
        return ResponseVO.buildSuccess(readerMapper.deleteRelationByFileId(fileId));
    }


    private int readJSONString(String jsonStr) throws JSONException {
        if (jsonStr.equals("")) {
            System.out.println("输入给readJSONString的参数不能为空！");
            return -1;
        }
        //颜色哈希表
        HashMap<String, String> entityTypeColor = new HashMap<String, String>();
        HashMap<String, String> relationTypeColor = new HashMap<String, String>();
        String color;

        int fileId = readerMapper.getMaxFileId();
        ArrayList<Entity> entityArrayList = new ArrayList<>();
        ArrayList<Relation> relationArrayList = new ArrayList<>();

        JSONObject jsonObject = new JSONObject(jsonStr);
        JSONArray records = jsonObject.getJSONArray("RECORDS");//构建JSONArray数组
        String name = "";
        int type = -1;
        for (int i = 0; i < records.length(); i++) {
            JSONObject r = (JSONObject) records.get(i);
            name = (String) r.get("name");
            type = (int) r.get("type");
            //System.out.println("name:"+name+",type:"+type);
            if (type == 0) {
                String entityType = (String) r.get("entityType");
                if (entityTypeColor.containsKey(entityType)) {
                    color = entityTypeColor.get(entityType);
                } else {
                    while (true) {
                        color = colorList[random.nextInt(colorList.length)];
                        if (!entityTypeColor.containsValue(color)) {
                            entityTypeColor.put(entityType, color);
                            break;
                        }
                    }
                }
//                Entity entity = new Entity(name, fileId, color, entityType);
//                entityArrayList.add(entity);
            } else if (type == 1) {
                String e1 = (String) r.get("e1");
                String e2 = (String) r.get("e2");
                String relationType = (String) r.get("relationType");
                if (relationTypeColor.containsKey(relationType)) {
                    color = relationTypeColor.get(relationType);
                } else {
                    while (true) {
                        color = colorList[random.nextInt(colorList.length)];
                        if (!relationTypeColor.containsValue(color)) {
                            relationTypeColor.put(relationType, color);
                            break;
                        }
                    }
                }
                Relation relation = new Relation(name, fileId, e1, e2, 0, relationType);
                relationArrayList.add(relation);
            }
        }
        System.out.println("======打印生成的实体和关系对象=======");
        System.out.println("-----实体-----");
        for (Entity entity : entityArrayList) {
//            System.out.println(entity.getName());
            readerMapper.initEntity(entity);//往数据库中添加实体
        }
        System.out.println("----关系-----");
        for (Relation relation : relationArrayList) {
            System.out.println(relation.getName() + " ("
                    + relation.getE1() + "," + relation.getE2() + ")");
            readerMapper.initRelation(relation);//往数据库中添加关系
        }
        return fileId;
    }


}
