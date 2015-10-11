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
        <h1>Panel</h1>

        <p>实现了easyui的panel，通过EventListener, Event 控制panel的事件监听以及操作</p>

        <div class="property">
            <e:button id="openPanel" text="Open">
                <e:event event="click" target="panel" action="open"/>
            </e:button>
            <e:button id="closePanel" text="Close">
                <e:event event="click" target="panel" action="close"/>
            </e:button>
        </div>
        <div class="property">
            <e:panel id="panel" style="width:650px;height:150px;" title="Basic Panel" closable="true">
                <p>
                    jeasyui是一款基于easyui封装构建的JSP控件库。
                </p>
            </e:panel>
        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，很多控件都是继承了Panel，或者主要用Panel来加载显示用户数据。</p>
        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制Panel的宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'title',type:'String',description:'Panel控件Head标题，如果title为null，则不显示Head',defaultValue:'null'}," +
                    "{name:'left',type:'int',description:'Panel控件距离左边的位置，Panel通过样式margin控制距离左边位置是无效的',defaultValue:'null'}," +
                    "{name:'top',type:'int',description:'Panel控件距离上边的位置，Panel通过样式margin控制距离上边位置是无效的',defaultValue:'null'}," +
                    "{name:'cls',type:'String',description:'为Panel添加class值',defaultValue:'null'}," +
                    "{name:'headerCls',type:'String',description:'为Panel Head部分添加class值',defaultValue:'null'}," +
                    "{name:'bodyCls',type:'String',description:'为Panel Body部分添加class值',defaultValue:'null'}," +
                    "{name:'fit',type:'Boolean',description:'根据父容器设置Panel是否为自适应高度、宽度',defaultValue:'false'}," +
                    "{name:'border',type:'Boolean',description:'是否显示Panel的边框',defaultValue:'true'}," +
                    "{name:'doSize',type:'Boolean',description:'如果设置为true,Panel在创建的时候会resize ',defaultValue:'true'}," +
                    "{name:'noheader',type:'Boolean',description:'如果设置为true,Panel Head部分不会渲染',defaultValue:'false'}," +
                    "{name:'content',type:'String',description:'通过content属性来设置Panel的Content内容',defaultValue:'null'}," +
                    "{name:'collapsible',type:'Boolean',description:'是否显示折叠按钮',defaultValue:'false'}," +
                    "{name:'minimizable',type:'Boolean',description:'是否显示最小化按钮',defaultValue:'false'}," +
                    "{name:'maximizable',type:'Boolean',description:'是否显示最大化按钮',defaultValue:'false'}," +
                    "{name:'closable',type:'Boolean',description:'是否显示关闭按钮',defaultValue:'false'}," +
                    "{name:'collapsed',type:'Boolean',description:'Panel初始化的时候是否折叠',defaultValue:'false'}," +
                    "{name:'minimized',type:'Boolean',description:'Panel初始化的时候是否最小化',defaultValue:'false'}," +
                    "{name:'maximized',type:'Boolean',description:'Panel初始化的时候是否最大化',defaultValue:'false'}," +
                    "{name:'closed',type:'Boolean',description:'Panel初始化的时候是否关闭',defaultValue:'false'}," +
                    "{name:'href',type:'String',description:'加载远程页面显示到Panel中间。值得的是在Panel打开或者展开之前内容不会被加载',defaultValue:'null'}," +
                    "{name:'cache',type:'Boolean',description:'是否缓存从远程地址加载的内容',defaultValue:'true'}," +
                    "{name:'loadingMessage',type:'String',description:'在加载远程数据过程中显示的文字',defaultValue:'Loading…'}," +
                    "{name:'method',type:'String',description:'加载远程数据的Http请求方式',defaultValue:'get'}" +
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
                        &lt;div class="property">
                            &lt;e:button id="openPanel" text="Open">
                                &lt;e:event event="click" target="panel" action="open"/>
                            &lt;/e:button>
                            &lt;e:button id="closePanel" text="Close">
                                &lt;e:event event="click" target="panel" action="close"/>
                            &lt;/e:button>
                        &lt;/div>
                        &lt;div class="property">
                            &lt;e:panel id="panel" style="width:650px;height:150px;" title="Basic Panel"  closable="true">
                                &lt;p>
                                    jeasyui是一款基于easyui封装构建的JSP控件库。
                                &lt;/p>
                            &lt;/e:panel>
                        &lt;/div>
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
