<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.Property" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Menu</h1>

        <p>实现了easyui的menu控件,Menu控件常用于右击菜单。与Button可以组合成MenuButton</p>

        <div class="property">
           <p>在页面上右击出现Menu右击菜单</p>
            <e:menu id="menu" >
                <e:menuitem text="New" />
                <e:submenu label="Open" >
                    <e:menuitem  >
                        <b>Word</b>
                    </e:menuitem>
                    <e:menuitem text="Excel" />
                    <e:menuitem text="PPT" />
                    <e:menuitem text="Excel" />
                    <e:submenu label="M1" >
                        <e:menuitem text="sub1" />
                        <e:menuitem text="sub2" />
                        <e:menuitem text="sub3" />
                    </e:submenu>
                </e:submenu>
                <e:menuitem text="Save" iconCls="icon-save" />
                <e:menuitem iconCls="icon-man">
                    <a href="http://my.oschina.net/FengJ" target="_blank">About Me</a>
                </e:menuitem>
                <e:menuitem text="Close" />
            </e:menu>
        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，提供了SubMenu、MenuItem标签来配合Menu实现完整效果</p>
        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'zIndex',type:'Int',description:'Menu 所在div的style zIndex值',defaultValue:'110000'}," +
                    "{name:'minWidth',type:'Int',description:'Menu的最小宽度',defaultValue:'120'}," +
                    "{name:'duration',type:'Int',description:'隐藏Menu的动画延迟',defaultValue:'100'}," +
                    "{name:'hideOnUnhover',type:'Boolean',description:'是否在鼠标离开Menu的时候，隐藏Menu',defaultValue:'true'}," +
                    "{name:'target',type:'String',description:'右击菜单绑定到的目标元素',defaultValue:'document'}," +
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
                <e:tab title="MenuBasic.jsp">
                    <pre class="brush:xml">
                        &lt;e:menu id="menu" >
                            &lt;e:menuitem text="New" />
                            &lt;e:submenu label="Open" >
                                &lt;e:menuitem  >
                                    &lt;b>Word&lt;/b>
                                &lt;/e:menuitem>
                                &lt;e:menuitem text="Excel" />
                                &lt;e:menuitem text="PPT" />
                                &lt;e:menuitem text="Excel" />
                                &lt;e:submenu label="M1" >
                                    &lt;e:menuitem text="sub1" />
                                    &lt;e:menuitem text="sub2" />
                                    &lt;e:menuitem text="sub3" />
                                &lt;/e:submenu>
                            &lt;/e:submenu>
                            &lt;e:menuitem text="Save" iconCls="icon-save" />
                            &lt;e:menuitem iconCls="icon-man">
                                &lt;a href="http://my.oschina.net/FengJ" target="_blank">About Me&lt;/a>
                            &lt;/e:menuitem>
                            &lt;e:menuitem text="Close" />
                        &lt;/e:menu>
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
