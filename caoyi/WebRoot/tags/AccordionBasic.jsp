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
        <h1>Accordion</h1>

        <p>实现了easyui的Accordion，使用Tab控件作为子标签</p>

        <div class="property">
            <e:accordion id="acc" style="width:600;height:200px" >
                <e:tab title="About" iconCls="icon-ok" style="padding:10px">
                    <h3>EasyUI Accordion</h3>
                    <p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily</p>
                </e:tab>
                <e:tab title="Help" iconCls="icon-help" style="padding:10px">
                    <p>Accordion依赖于Panel，每个Tab具有Panel的所有功能。可以通过Event处理简单事件，EventListener绑定相关事件监听，结合jeasyui.js来处理负责的dom操作。</p>
                </e:tab>
                <e:tab title="TreeMenu" iconCls="icon-search" style="padding:10px">
                    <e:tree id="treeMenu">
                        <e:treeNode text="Foods">
                            <e:treeNode text="Fruits">
                                <e:treeNode text="Apple" />
                                <e:treeNode text="Orange" />
                            </e:treeNode>
                        </e:treeNode>
                    </e:tree>
                </e:tab>
            </e:accordion>
        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，结合使用Tab控件实现了EasyUI的Accordion。</p>
        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制Panel的宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'fit',type:'Boolean',description:'是否根据父容器设置为自适应高度、宽度',defaultValue:'false'}," +
                    "{name:'border',type:'Boolean',description:'是否显示边框',defaultValue:'true'}," +
                    "{name:'animate',type:'Boolean',description:'在展开收缩Tab的时候是否显示动画效果',defaultValue:'true'}," +
                    "{name:'multiple',type:'Boolean',description:'是否可以同时展开多个Tab',defaultValue:'false'}," +
                    "{name:'selected',type:'Boolean',description:'初始化时默认展开的Tab的下标',defaultValue:'0'}," +
                    "]";
            List<Property> data = JSON.parseArray(p, Property.class);
        %>
        <div class="property">
            <e:datagrid id="propertyBlock" title="Properties" data="<%=data %>" fitColumns="true"
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
                <e:tab title="Panel.jsp">
                    <pre class="brush:xml">
                         &lt;e:accordion id="acc" style="width:600;height:200px">
                             &lt;e:tab title="About" iconCls="icon-ok" style="padding:10px">
                                 &lt;h3>EasyUI Accordion&lt;/h3>
                                 &lt;p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily&lt;/p>
                             &lt;/e:tab>
                             &lt;e:tab title="Help" iconCls="icon-help" style="padding:10px">
                                 &lt;p>Accordion依赖于Panel，每个Tab具有Panel的所有功能。可以通过Event处理简单事件，EventListener绑定相关事件监听，结合jeasyui.js来处理负责的dom操作。&lt;/p>
                             &lt;/e:tab>
                             &lt;e:tab title="TreeMenu" iconCls="icon-search" style="padding:10px">
                                 &lt;e:tree id="treeMenu">
                                     &lt;e:treeNode text="Foods">
                                         &lt;e:treeNode text="Fruits">
                                             &lt;e:treeNode text="Apple" />
                                             &lt;e:treeNode text="Orange" />
                                         &lt;/e:treeNode>
                                     &lt;/e:treeNode>
                                 &lt;/e:tree>
                             &lt;/e:tab>
                         &lt;/e:accordion>
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
