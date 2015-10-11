package org.topteam.ui.model;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.util.*;

/**
 * Created by 枫 on 2014/9/22.
 */
public abstract class EasyTreeModel<T> {
    private List<TreeNode> nodes = new ArrayList<TreeNode>();

    private HttpServletRequest req;

    private TreeNode root;

    public EasyTreeModel() {
    }

    public EasyTreeModel(HttpServletRequest req) {
        this.req = req;
    }

    public List<T> load(String parentId) throws Exception {
        return null;
    }

    public List<T> load() throws Exception {
        return null;
    }

    public abstract TreeNode model2Node(T t);

    public List<TreeNode> generate() throws Exception {
        if (req != null) {
            String parentId = req.getParameter("id");
            return generate(parentId);
        }
        return generate(null);
    }

    private List<TreeNode> wrapRoot(){
        if(getRoot() == null){
            return nodes;
        }else{
            TreeNode root = getRoot();
            root.getChildren().addAll(nodes);
            return Arrays.asList(root);
        }
    }

    public List<TreeNode> generate(String parentId) throws Exception {
        List<T> data = load(parentId);
        for (T t : data) {
            nodes.add(model2Node(t));
        }
        return wrapRoot();
    }

    public List<TreeNode> generate(String idField, String parentField) throws Exception {
        List<T> data = load();
        Map<String, TreeNode> nodeMap = new TreeMap<String, TreeNode>();
        for (T t : data) {
            TreeNode node = model2Node(t);
            nodeMap.put(node.getId(), node);
        }
        for (T t : data) {
            Field idF = t.getClass().getDeclaredField(idField);
            Field parentF = t.getClass().getDeclaredField(parentField);
            idF.setAccessible(true);
            parentF.setAccessible(true);
            String id = idF.get(t).toString();
            String parent = parentF.get(t) == null ? null : parentF.get(t).toString();
            TreeNode meNode = nodeMap.get(id);
            if (parent != null) {
                TreeNode parentNode = nodeMap.get(parent);
                if (parentNode != null) {
                    parentNode.getChildren().add(meNode);
                    parentNode.setState("closed");
                } else {
                    nodes.add(meNode);
                }
            } else {
                nodes.add(meNode);
            }
        }
        return wrapRoot();
    }

    public List<TreeNode> generate(String codeField, int length) throws Exception {
        List<T> data = load();
        Map<String, TreeNode> nodeMap = new HashMap<String, TreeNode>();
        for (T t : data) {
            Field codeF = t.getClass().getDeclaredField(codeField);
            codeF.setAccessible(true);
            Object codeO = codeF.get(t);
            if(codeO == null || codeO.toString().length()<length){
                continue;
            }
            String code = codeO.toString();
            TreeNode node = model2Node(t);
            nodeMap.put(code, node);
        }
        for(T t : data){
            Field codeF = t.getClass().getDeclaredField(codeField);
            codeF.setAccessible(true);
            Object codeO = codeF.get(t);
            if(codeO == null || codeO.toString().length()<length){
                continue;
            }
            String code = codeO.toString();
            String parentCode = code.substring(0, code.length() - length);
            TreeNode meNode = nodeMap.get(code);
            if(parentCode.length() == 0){
                nodes.add(meNode);
            }else{
                TreeNode parentNode = nodeMap.get(parentCode);
                if(parentNode!=null){
                    parentNode.getChildren().add(meNode);
                    parentNode.setState("closed");
                }else{
                    nodes.add(meNode);
                }

            }
        }
        return wrapRoot();
    }

    public TreeNode getRoot() {
        return root;
    }

    public void setRoot(TreeNode root) {
        this.root = root;
    }
}
