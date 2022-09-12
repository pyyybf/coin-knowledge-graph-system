package com.example.coin.blImpl.question;

import java.util.ArrayList;
import java.util.Stack;

import static com.example.coin.blImpl.question.QGItem.QGItemType.*;

/**
 * 使用邻接矩阵存储问题图
 */
public class QuestionGraph {

    private int[][] graph;

    private ArrayList<QGItem> nodes;

    private ArrayList<Integer> nodeIds;

    private int questionWordIndex = -1;

    private int size;

    public QuestionGraph(int maxSize) {
        this.nodes = new ArrayList<QGItem>();
        this.nodeIds = new ArrayList<Integer>();
        this.graph = new int[maxSize][maxSize];
    }

    public void addNode(QGItem item){
        if (!this.nodeIds.contains(item.getID())) {
            this.nodes.add(item);
            this.nodeIds.add(item.getID());
            this.size++;
            if (item.getType()==question)
                this.questionWordIndex = this.nodeIds.indexOf(item.getID());
        }
    }

    public void addEdge(QGItem item1,QGItem item2){
        this.graph[nodeIds.indexOf(item1.getID())]
                [nodeIds.indexOf(item2.getID())] = 1;
        this.graph[nodeIds.indexOf(item2.getID())]
                [nodeIds.indexOf(item1.getID())] = 1;
    }

    public boolean hasNode(int id){
        return this.nodeIds.contains(id);
    }

    public int getSize() {
        return size;
    }

    /**
     * 删减无意义词
     */
    public void reduce(){
        ArrayList<Integer> exclusionIDs=new ArrayList<>();//存已经被删除的节点的word.ID
        for (QGItem item : this.nodes){
            int index = nodeIds.indexOf(item.getID());//这个是该QGItem在二维数组的下标
            if (item.getType()== other){
                exclusionIDs.add(nodeIds.get(index));//该节点最后都是要被删除的
                int degree = 0;
                for (int i = 0; i < size; i++) {
                    degree+=this.graph[index][i];//该节点的度
                }
                if (degree<=1){
                    //如果度为1则直接删除和该节点相邻的边
                    for (int i = 0; i < size; i++) {
                        this.graph[i][index] = 0;
                        this.graph[index][i] = 0;
                    }
                }else if (degree == 2){
                    //度为2则连接相邻的两个节点
                    int indexs[] = new int[2];
                    int j = 0;
                    for (int i = 0; i < size; i++)
                        if(this.graph[index][i]==1)
                            indexs[j++] = i;//indexs只有两个元素indexs[0]和indexs[1]，分别存和它相邻的两个节点下标
                    for (int i = 0; i < size; i++) {
                        //删除所有该节点的边
                        this.graph[i][index] = 0;
                        this.graph[index][i] = 0;
                    }
                    this.graph[indexs[0]][indexs[1]] = 1;
                    this.graph[indexs[1]][indexs[0]] = 1;//把和该节点相邻的节点连接
                }else {
                    //度>3：把该节点删去并将和该节点相连的节点都连到最后和该节点相连的column或attr节点上
                    int labelIndex = -1;
                    for (int i = 0; i < size; i++) {
                        if (this.graph[index][i] == 1 && (this.nodes.get(i).getType() == column||this.nodes.get(i).getType() == attr)) {
                            labelIndex = i;
                            //labelIndex变成了最后和该节点相连的label节点的下标
                        }
                    }
                    for (int i = 0; i < size; i++) {
                        if (this.graph[i][index] == 1){
                            //原来把原来和该节点相连的节点改为和labelIndex那个节点相连
                            this.graph[i][index] = 0;
                            this.graph[index][i] = 0;
                            if (i!=labelIndex){//防止自向边
                                this.graph[i][labelIndex] = 1;
                                this.graph[labelIndex][i] = 1;
                            }
                        }
                    }
                }
            }
        }
        //this.printGraph();
        //最后重新整理得到新的矩阵
        for(int i=0;i<exclusionIDs.size();i++){
            int exclusionID=exclusionIDs.get(i);
            int exclusionIndex=nodeIds.indexOf(exclusionID);
            //System.out.println("去掉"+exclusionIndex);
            nodes.remove(exclusionIndex);
            nodeIds.remove(exclusionIndex);
            for(int j=exclusionIndex;j<size-1;j++){
                for(int x=0;x<size;x++){
                    graph[j][x]=graph[j+1][x];
                }
            }
            for(int j=exclusionIndex;j<size-1;j++){
                for(int x=0;x<size;x++){
                    graph[x][j]=graph[x][j+1];
                }
            }
            size--;
            if(questionWordIndex>exclusionIndex){
                questionWordIndex--;
            }
        }
    }

    public int[][] getGraph() {
        return graph;
    }

    public ArrayList<Integer> getNodeIds() {
        return nodeIds;
    }

    public ArrayList<QGItem> getNodes() {
        return nodes;
    }

    public void printGraph(){
        //System.out.println(this.nodes);
        for(int i=0;i<this.nodes.size();i++){
            QGItem item=nodes.get(i);
            System.out.println("二维矩阵下标:"+nodeIds.indexOf(item.getID())+" ,值:"+item.getValue()+" ,类型:"+item.getType());
        }
        for (int i = 0; i < this.size; i++) {
            for (int j = 0; j < this.size; j++) {
                System.out.print(this.graph[i][j]+"  ");
            }
            System.out.println();
        }
    }

    public void makeTree(){
        //创建树的父子关系
        Stack<Integer> stack=new Stack<>();
        stack.push(questionWordIndex);
        while(!stack.empty()){
            int i=stack.pop();
            QGItem item=this.nodes.get(i);
            for(int j=0;j<size;j++){
                if(this.graph[i][j]==1){
                    stack.push(j);
                    System.out.println(item.getValue()+"添加孩子"+this.nodes.get(j).getValue());
                    item.addChild(this.nodes.get(j));
                    this.graph[i][j]=0;
                    this.graph[j][i]=0;
                }
            }
        }
    }

    public ArrayList<QGItem> DFS(){
        //进行树的深度优先遍历
        ArrayList<QGItem> result=new ArrayList<>();
        Stack<QGItem> stack=new Stack<>();
        QGItem root=this.nodes.get(questionWordIndex);
        stack.push(root);
        while(!stack.empty()){
            QGItem item=stack.pop();
            result.add(item);
            for(int i=0;i<item.getChildren().size();i++){
                stack.push(item.getChildren().get(i));
            }
        }
        return result;
    }

}
