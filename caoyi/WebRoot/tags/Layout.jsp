<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.Property" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: JiangFeng
  Date: 2014/8/18
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Layout</h1>

        <p>实现了easyui的layout控件，并且提供了LayoutUnit子控件来表示各个区域</p>

        <div class="property">
            <e:layout id="layout" style="width:900px;height:400px">
                <e:layoutUnit region="north" style="height:60px" id="a"> 
                    North
                </e:layoutUnit>
                <e:layoutUnit region="south" style="height:60px" split="true" id="b">
                    South
                </e:layoutUnit>
                <e:layoutUnit region="east" style="width:150px" split="true" title="East" id="c">
                    East
                </e:layoutUnit>
                <e:layoutUnit region="west" style="width:150px" split="true" title="West" id="d">
                    West
                </e:layoutUnit>
                <e:layoutUnit region="center" id="e">
                    <e:datagrid id="dg" fit="true" url="../datagrid_data.json" fitColumns="true" pagination="true">
                        <e:columns frozen="true">
                            <e:column field="itemid" width="15%">
                                Item ID
                            </e:column>
                            <e:column field="productid" width="15%" sortable="true">Product</e:column>
                            <e:column field="listprice" width="15%">List Price</e:column>
                            <e:column field="unitcost" width="15%" title="单价"/>
                            <e:column field="attr1" width="15%">Product</e:column>
                            <e:column field="status" width="15%">List Price</e:column>
                        </e:columns>
                    </e:datagrid>
                </e:layoutUnit>
            </e:layout>
        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，Layout提供了EasyUI的基本布局以及分割页面区块，在需要做自适应宽度高度的时候，最好使用Layout。Layout之间可以做嵌套</p>
        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'fit',type:'Boolean',description:'根据父容器设置是否为自适应高度、宽度',defaultValue:'false'}," +
                    "]";
            List<Property> data = JSON.parseArray(p, Property.class);
        %>
        <div class="property">
            <e:datagrid id="propertyBlock" title="Layout Properties" data="<%=data %>" fitColumns="true"
                        style="width:80%;margin-left: 20px;">
                <e:columns>
                    <e:column title="名称" field="name" width="13%"/>
                    <e:column title="类型" field="type" width="13%"/>
                    <e:column title="说明" field="description" width="60%"/>
                    <e:column title="默认值" field="defaultValue" width="12%"/>
                </e:columns>
            </e:datagrid>
        </div>

        <%
            String p2 = "[" +
                    "{name:'style',type:'String',description:'Html style样式定义,控制宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'title',type:'String',description:'设置region的标题，如果不设置title，则不显示头部',defaultValue:'null'}," +
                    "{name:'border',type:'Boolean',description:'是否显示边框',defaultValue:'true'}," +
                    "{name:'split',type:'Boolean',description:'是否可以改变region的大小',defaultValue:'false'}," +
                    "{name:'iconCls',type:'String',description:'region头部的图标',defaultValue:'null'}," +
                    "{name:'href',type:'String',description:'加载其他页面到内容部分',defaultValue:'null'}," +
                    "{name:'collapsible',type:'Boolean',description:'是否可以收缩、展开，对center无效',defaultValue:'null'}," +
                    "{name:'minWidth',type:'Int',description:'设置region的最小宽度',defaultValue:'null'}," +
                    "{name:'minHeight',type:'Int',description:'设置region的最小高度',defaultValue:'null'}," +
                    "{name:'maxWidth',type:'Int',description:'设置region的最大宽度',defaultValue:'null'}," +
                    "{name:'maxHeight',type:'Int',description:'设置region的最大高度',defaultValue:'null'}," +
                    "]";
            List<Property> data2 = JSON.parseArray(p2, Property.class);
        %>
        <div class="property">
            <e:datagrid id="property2" title="LayoutUnit Properties" data="<%=data2 %>" fitColumns="true"
                        style="width:80%;margin-left: 20px;">
                <e:columns>
                    <e:column title="名称" field="name" width="13%"/>
                    <e:column title="类型" field="type" width="13%"/>
                    <e:column title="说明" field="description" width="60%"/>
                    <e:column title="默认值" field="defaultValue" width="12%"/>
                </e:columns>
            </e:datagrid>
        </div>

    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="Layout.jsp">
                    <pre class="brush:xml">
                        &lt;e:layout id="layout" style="width:900px;height:400px">
                            &lt;e:layoutUnit region="north" style="height:60px">
                                North
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="south" style="height:60px" split="true">
                                South
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="east" style="width:150px" split="true" title="East">
                                East
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="west" style="width:150px" split="true" title="West">
                                West
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="center">
                                &lt;e:datagrid id="dg" fit="true" url="../datagrid_data.json" fitColumns="true" pagination="true">
                                    &lt;e:columns frozen="true">
                                        &lt;e:column field="itemid" width="15%">
                                            Item ID
                                        &lt;/e:column>
                                        &lt;e:column field="productid" width="15%" sortable="true">Product&lt;/e:column>
                                        &lt;e:column field="listprice" width="15%">List Price&lt;/e:column>
                                        &lt;e:column field="unitcost" width="15%" title="单价"/>
                                        &lt;e:column field="attr1" width="15%">Product&lt;/e:column>
                                        &lt;e:column field="status" width="15%">List Price&lt;/e:column>
                                    &lt;/e:columns>
                                &lt;/e:datagrid>
                            &lt;/e:layoutUnit>
                        &lt;/e:layout>
                    </pre>
                </e:tab>
            </e:tabs>
        </div>
    </div>

</e:templateOverride>

<e:templateOverride name="script">
    <script type="text/javascript">
        SyntaxHighlighter.all();
    </script>
</e:templateOverride>

<%@include file="../_TagsDemoTemplate.jsp" %>
