<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.Property" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>MenuButton</h1>

        <p>实现了easyui的MenuButton控件,一般结合Menu可以实现下拉菜单的功能</p>

        <div class="property">
            <e:panel id="panel" style="width:90%;padding:5px;">
                <e:button id="home" text="Home" plain="true"/>
                <e:menuButton id="edit" text="Edit" iconCls="icon-edit">
                    <e:menuitem text="Undo" iconCls="icon-undo"/>
                    <e:menuitem text="Redo" iconCls="icon-redo"/>
                    <e:separator />
                    <e:submenu label="Toolbar">
                        <e:menuitem text="Link" />
                        <e:menuitem text="Address" />
                    </e:submenu>
                </e:menuButton>
                <e:menuButton id="help" text="Help" iconCls="icon-help">
                    <e:menuitem text="Help" />
                    <e:menuitem text="Update" />
                </e:menuButton>
                <e:menuButton id="about" text="About" custom="true">
                    <img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">
                    <p style="font-size:14px;color:#444;">Try jQuery EasyUI to build your modern, interactive, javascript applications.</p>
                </e:menuButton>
            </e:panel>

        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，继承了Button控件的相关属性，下面是个性化的属性。</p>
        <%
            String p = "[{name:'plain',type:'Boolean',description:'MenuButton默认为无边框的风格',defaultValue:'true'}," +
                    "{name:'menuAlign',type:'String',description:'菜单出现的位置，可选[left,right]',defaultValue:'left'}," +
                    "{name:'duration',type:'Int',description:'隐藏Menu的动画延迟',defaultValue:'100'}," +
                    "{name:'custom',type:'Boolean',description:'显示的菜单是否为自定义的Html',defaultValue:'false'}," +
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

    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="MenuButtonBasic.jsp">
                    <pre class="brush:xml">
                        &lt;e:panel id="panel" style="width:90%;padding:5px;">
                            &lt;e:button id="home" text="Home" plain="true"/>
                            &lt;e:menuButton id="edit" text="Edit" iconCls="icon-edit">
                                &lt;e:menuitem text="Undo" iconCls="icon-undo"/>
                                &lt;e:menuitem text="Redo" iconCls="icon-redo"/>
                                &lt;e:separator />
                                &lt;e:submenu label="Toolbar">
                                    &lt;e:menuitem text="Link" />
                                    &lt;e:menuitem text="Address" />
                                &lt;/e:submenu>
                            &lt;/e:menuButton>
                            &lt;e:menuButton id="help" text="Help" iconCls="icon-help">
                                &lt;e:menuitem text="Help" />
                                &lt;e:menuitem text="Update" />
                            &lt;/e:menuButton>
                            &lt;e:menuButton id="about" text="About" custom="true">
                                &lt;img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">
                                &lt;p style="font-size:14px;color:#444;">Try jQuery EasyUI to build your modern, interactive, javascript applications.&lt;/p>
                            &lt;/e:menuButton>
                        &lt;/e:panel>
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
