package com.example.coin.blImpl.question;

import com.example.coin.bl.question.QuestionService;
import com.example.coin.data.commodity.CommodityMapper;
import com.example.coin.po.Fuzz;
import com.example.coin.vo.Edge;
import com.example.coin.vo.GraphInfo;
import com.example.coin.vo.Node;
import com.example.coin.vo.ResultVO;
import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.corpus.dependency.CoNll.CoNLLSentence;
import com.hankcs.hanlp.corpus.dependency.CoNll.CoNLLWord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    AnswerFinder answerFinder;
    @Autowired
    CommodityMapper commodityMapper;

    @Override
    public ResultVO QuestionAndAnswer(String question) {
        return question2Answer(format(question));
    }

    private ResultVO question2Answer(String question) {
        HashMap<String, Object> info = new HashMap<>();

        HashMap<String, EntityRec.Column> column_word = EntityRec.getColumn_word();
        HashMap<String, EntityRec.Attr> attr_word = EntityRec.getAttr_word();
        HashMap<String, EntityRec.Question> question_word = EntityRec.getQuestion_word();

        //对问句进行HanLP分词：
        CoNLLSentence coNLLSentence = HanLP.parseDependency(question);
        //每个词语的分词情况如下所示：
        //word.ID:当前词在句子中的序号，1开始
        //word.LEMMA:当前词
        //word.POSTAG:当前词语细粒度词性（这一项后面根据是什么词改成entity、label或attr）
        //word.CPOSTAG:当前词语粗粒度词性（这一项后面改为1）
        for (CoNLLWord word : coNLLSentence) {
            word.NAME = word.LEMMA;
            //实体链接
            System.out.println(word.LEMMA + "(" + word.ID + ")" + " --(" + word.DEPREL + ")--> " + word.HEAD.LEMMA + "(" + word.HEAD.ID + ")");
            if (column_word.containsKey(word.LEMMA)) {
                //该词是列名
                word.POSTAG = "column";
                word.CPOSTAG = "1";
            }
            if (attr_word.containsKey(word.LEMMA)) {
                //该词是列值
                word.POSTAG = "attr";
                word.CPOSTAG = "1";
            }
            String pattern = "^\\d+(\\.\\d+)?";
            if (Pattern.matches(pattern, word.LEMMA)) {
                //是一个价格
                word.POSTAG = "attr";
                word.CPOSTAG = "1";
            }
            if (question_word.containsKey(word.LEMMA)) {
                //该词是疑问词
                word.POSTAG = "question";
                word.CPOSTAG = "1";
            }
            if (word.CPOSTAG != "1") {
                word.POSTAG = "other";
            }
        }
        info.put("words", coNLLSentence);

        //构建问题图
        QuestionGraph graph = new QuestionGraph(coNLLSentence.getWordArray().length);
        //迭代添加直到不变
        int size = -1;
        while (graph.getSize() != size) {
            size = graph.getSize();
            for (CoNLLWord word : coNLLSentence) {

                if (word.CPOSTAG == "1" || graph.hasNode(word.ID)) {
                    QGItem i1 = new QGItem(word.ID, QGItem.QGItemType.valueOf(word.POSTAG), word.LEMMA);
                    graph.addNode(i1);
                    if (word.HEAD != CoNLLWord.ROOT) {
                        QGItem i2 = new QGItem(word.HEAD.ID, QGItem.QGItemType.valueOf(word.HEAD.POSTAG), word.HEAD.LEMMA);
                        graph.addNode(i2);
                        graph.addEdge(i1, i2);//有一条i1和i2相连的边
                    }
                }
            }
        }

        System.out.println("=========约简图=========");
        graph.reduce();
        graph.printGraph();

        //下面开始构建返回前端的图
        GraphInfo graphInfo = makeGraphInfo(graph);

        graph.makeTree();//创建各节点的父子关系
        ArrayList<QGItem> DFSResult = graph.DFS();//深度遍历后的结果
        System.out.println("=========深度遍历结果=========");
        for (int i = 0; i < DFSResult.size(); i++) {
            DFSResult.get(i).printMyself();
        }
        if (DFSResult.size() <= 1) {
            Object result = "对不起，我不明白。";
            return ResultVO.buildSuccess(graphInfo, result);
        }

        //下面对疑问词进行一些处理
        DFSResult = formatQuestionWord(DFSResult);

        //下面开始查找结果
        try {
            answerFinder.setDFSResult(DFSResult);
        } catch (Exception e) {
            System.out.println("！！！！！！！！！！！查找结果时发生错误！！！！！！！！！！！！！！！！！");
            return ResultVO.buildFailure("对不起，没有找到结果。");
        }
        Object result = answerFinder.findAnswer();

        return ResultVO.buildSuccess(graphInfo, result);
    }

    private String format(String s) {
        if (s.startsWith("介绍一下")) {
            s = s.replaceAll("介绍一下", "");
            s = s + "有哪些";
        }
        if (s.startsWith("介绍")) {
            s = s.replaceAll("介绍", "");
            s = s + "有哪些";
        }

        //把一些词语进行替换
        //s = s.replaceAll("介绍一下", "介绍");

        s = s.replaceAll("产的", "的");
        s = s.replaceAll("豆沙色", "豆沙");
        s = s.replaceAll("豆沙红", "豆沙");
        s = s.replaceAll("正红色", "正红");
        s = s.replaceAll("橘红色", "橘红");
        s = s.replaceAll("番茄红", "番茄");
        s = s.replaceAll("番茄色", "番茄");
        s = s.replaceAll("烂番茄色", "番茄");
        s = s.replaceAll("烂番茄", "番茄");
        s = s.replaceAll("梅子色", "梅子");
        s = s.replaceAll("血浆色", "血浆");
        s = s.replaceAll("红棕色", "红棕");
        s = s.replaceAll("铁锈色", "铁锈");
        s = s.replaceAll("铁锈红", "铁锈");
        s = s.replaceAll("西柚色", "西柚");
        s = s.replaceAll("西柚红", "西柚");
        s = s.replaceAll("草莓红", "草莓");
        s = s.replaceAll("草莓色", "草莓");
        s = s.replaceAll("复古红", "复古");
        if (s.contains("哑光") && !s.contains("哑光/雾面")) {
            s = s.replaceAll("哑光", "哑光/雾面");
        } else if (s.contains("雾面") && !s.contains("哑光/雾面")) {
            s = s.replaceAll("雾面", "哑光/雾面");
        } else if (s.contains("润泽") && !s.contains("润泽/镜面")) {
            s = s.replaceAll("润泽", "润泽/镜面");
        } else if (s.contains("镜面") && !s.contains("润泽/镜面")) {
            s = s.replaceAll("镜面", "润泽/镜面");
        } else if (s.contains("自然") && !s.contains("自然/裸妆")) {
            s = s.replaceAll("自然", "自然/裸妆");
        } else if (s.contains("裸妆") && !s.contains("自然/裸妆")) {
            s = s.replaceAll("裸妆", "自然/裸妆");
        } else if (s.contains("闪光") && !s.contains("闪光/珠光")) {
            s = s.replaceAll("闪光", "闪光/珠光");
        } else if (s.contains("珠光") && !s.contains("闪光/珠光")) {
            s = s.replaceAll("珠光", "闪光/珠光");
        }


        s = s.replaceAll("[`~!@$%^&*()+=|{}':;',\\[\\].<>?~！@￥%……& amp;*（）——+|{}【】‘；：”“’。，？|-]", "");

        //模糊匹配
        List<Fuzz> fuzzList = commodityMapper.getAllFuzzs();
        for (Fuzz fuzz : fuzzList) {
            //System.out.println(fuzz.toString());
            if (s.contains(fuzz.getFuzzyWord1())) {
                s = s.replaceAll(fuzz.getFuzzyWord1(), fuzz.getSqlId());
            }
            if (s.contains(fuzz.getFuzzyWord2())) {
                s = s.replaceAll(fuzz.getFuzzyWord2(), fuzz.getSqlId());
            }
        }

        //不知道怎么回事，HanLP明明添加了词典但是遇到像“纪梵希唇釉”这样的就会被分成“纪梵 希唇 釉”这样的，中文+唇釉/唇彩/唇霜都有问题，所以只能强制性加“的”
        int i = 0;
        while (i < s.length()) {
            if (s.charAt(i) == '唇') {
                if (i > 0 && (s.charAt(i - 1) == '蔻' || s.charAt(i - 1) == '兰' || s.charAt(i - 1) == '记' || s.charAt(i - 1) == '秀' || s.charAt(i - 1) == '雅' || s.charAt(i - 1) == '希' || s.charAt(i - 1) == '莲' || s.charAt(i - 1) == '子')) {
                    s = s.substring(0, i) + "的" + s.substring(i);
                }
            }
            i++;
        }

        System.out.println("格式化之后的问句:" + s);
        return s;
    }

    private GraphInfo makeGraphInfo(QuestionGraph graph) {
        GraphInfo res = new GraphInfo();
        //下面开始构建返回前端的图
//        List<Node> nodes = new ArrayList<>();
//        List<Edge> edges = new ArrayList<>();
        ArrayList<QGItem> graphNodes = graph.getNodes();
        ArrayList<Integer> graphNodeIds = graph.getNodeIds();
        int[][] graphMatrix = graph.getGraph();
        String color = "#778899";
        for (int i = 0; i < graphNodes.size(); i++) {
            QGItem item = graphNodes.get(i);
            if (item.getType() == QGItem.QGItemType.attr) {
                color = "#87CEFA";
            }
            if (item.getType() == QGItem.QGItemType.column) {
                color = "#90EE90";
            }
            if (item.getType() == QGItem.QGItemType.question) {
                color = "#9370DB";
            }
            int index = graphNodeIds.indexOf(item.getID());//它在矩阵的下标
            res.addNode(new Node(index, item.getValue(), color));//node的ID用矩阵下标表示
        }
        for (int i = 0; i < graph.getSize() - 1; i++) {
            for (int j = i + 1; j < graph.getSize(); j++) {
                if (graphMatrix[i][j] == 1) {
                    Edge edge = new Edge(i, j);
                    res.addEdge(edge);
                }
            }
        }
        return res;


    }

    private ArrayList<QGItem> formatQuestionWord(ArrayList<QGItem> DFSResult) {
        //修改之后才能实现“MAC口红的产地有哪些”这种问题
        if (DFSResult.get(0).getValue().equals("哪些")) {
            if (DFSResult.get(1).getType() == QGItem.QGItemType.column) {
                QGItem root = DFSResult.get(0);
                root.setValue("什么");
                ArrayList<QGItem> newDFSResult = new ArrayList<>();
                newDFSResult.add(root);
                newDFSResult.addAll(DFSResult.subList(1, DFSResult.size()));
                return newDFSResult;
            }
        }
        return DFSResult;
    }

}
