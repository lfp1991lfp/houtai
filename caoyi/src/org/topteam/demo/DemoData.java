package org.topteam.demo;

import com.alibaba.fastjson.JSON;
import org.topteam.ui.model.SelectItem;
import org.topteam.ui.model.TreeNode;

import java.util.Arrays;
import java.util.List;

/**
 * Created by JiangFeng on 2014/8/8.
 */
public class DemoData {
    private String list = "[\n" +
            "    {\"productid\":\"FI-SW-01\",\"productname\":\"Koi\",\"unitcost\":10.00,\"status\":\"P\",\"listprice\":36.50,\"attr1\":\"Large\",\"itemid\":\"EST-1\"},\n" +
            "    {\"productid\":\"K9-DL-01\",\"productname\":\"Dalmation\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":18.50,\"attr1\":\"Spotted Adult Female\",\"itemid\":\"EST-10\"},\n" +
            "    {\"productid\":\"RP-SN-01\",\"productname\":\"Rattlesnake\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":38.50,\"attr1\":\"Venomless\",\"itemid\":\"EST-11\"},\n" +
            "    {\"productid\":\"RP-SN-01\",\"productname\":\"Rattlesnake\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":26.50,\"attr1\":\"Rattleless\",\"itemid\":\"EST-12\"},\n" +
            "    {\"productid\":\"RP-LI-02\",\"productname\":\"Iguana\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":35.50,\"attr1\":\"Green Adult\",\"itemid\":\"EST-13\"},\n" +
            "    {\"productid\":\"FL-DSH-01\",\"productname\":\"Manx\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":158.50,\"attr1\":\"Tailless\",\"itemid\":\"EST-14\"},\n" +
            "    {\"productid\":\"FL-DSH-01\",\"productname\":\"Manx\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":83.50,\"attr1\":\"With tail\",\"itemid\":\"EST-15\"},\n" +
            "    {\"productid\":\"FL-DLH-02\",\"productname\":\"Persian\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":23.50,\"attr1\":\"Adult Female\",\"itemid\":\"EST-16\"},\n" +
            "    {\"productid\":\"FL-DLH-02\",\"productname\":\"Persian\",\"unitcost\":12.00,\"status\":\"P\",\"listprice\":89.50,\"attr1\":\"Adult Male\",\"itemid\":\"EST-17\"},\n" +
            "    {\"productid\":\"AV-CB-01\",\"productname\":\"Amazon Parrot\",\"unitcost\":92.00,\"status\":\"P\",\"listprice\":63.50,\"attr1\":\"Adult Male\",\"itemid\":\"EST-18\"}\n" +
            "]";
    private List<Product> products;


    public DemoData() {
        products = JSON.parseArray(list, Product.class);
    }

    public List<SelectItem> getSelectItems() {
        SelectItem i1 = new SelectItem("1", "本科");
        SelectItem i2 = new SelectItem("2", "高中");
        SelectItem i3 = new SelectItem("3", "初中", true);
        SelectItem i4 = new SelectItem("4", "小学");
        return Arrays.asList(i1, i2, i3, i4);
    }

    public List<TreeNode> getDepts(){
        TreeNode root = new TreeNode();
        root.setText("所有部门");
        TreeNode dept1 = new TreeNode();
        dept1.setId("0001");
        dept1.setText("开发部");
        TreeNode dept2 = new TreeNode();
        dept2.setId("0002");
        dept2.setText("综合部");
        root.getChildren().add(dept1);
        root.getChildren().add(dept2);
        return Arrays.asList(root);
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
