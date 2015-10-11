package org.topteam.demo;

/**
 * Created by JiangFeng on 2014/8/8.
 */
public class Product {

    private String productid;
    private String productname;
    private String itemid;
    private double listprice;
    private double unitcost;
    private String attr1;
    private String status;

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public double getListprice() {
        return listprice;
    }

    public void setListprice(double listprice) {
        this.listprice = listprice;
    }

    public double getUnitcost() {
        return unitcost;
    }

    public void setUnitcost(double unitcost) {
        this.unitcost = unitcost;
    }

    public String getAttr1() {
        return attr1;
    }

    public void setAttr1(String attr1) {
        this.attr1 = attr1;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
