<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.DemoData" %>
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

<%
    DemoData demo = new DemoData();
%>

<e:templateOverride name="head">
    <script>
        function clickEvent() {
            alert('Event Listener');
        }

    </script>
</e:templateOverride>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Form</h1>

        <p>实现了easyui的Form控件。</p>

        <div class="property">
            <e:panel id="formPanel" title="Form" style="width:1000px;height:410px;">
                <e:form id="form" url="../submit.jsp" classStyle="form-area">
                    <div class="input-control">
                        <label class="right">姓名：</label>
                        <e:inputText classStyle="long" id="txt1" required="true" iconCls="icon-man"
                                     iconWidth="36">
                        </e:inputText>
                        <label class="right">密码：</label>
                        <e:inputText classStyle="long" id="psw" prompt="Password" iconCls="icon-lock"
                                     iconWidth="36" required="true" type="password"/>
                    </div>
                    <div class="input-control">
                        <label class="right">账号：</label>
                        <e:validateInput classStyle="long" id="acount" required="true"/>
                        <label class="right">邮箱：</label>
                        <e:validateInput classStyle="long" id="txt3" validType="email"/>
                    </div>
                    <div class="input-control">
                        <label class="right">性别：</label>
                        <e:selectOneRadio id="sex" classStyle="long">
                            <e:selectItem itemValue="0" itemLabel="男" selected="true" />
                            <e:selectItem itemValue="1" itemLabel="女" />
                        </e:selectOneRadio>
                        <label class="right">学历：</label>
                        <e:comboBox id="xl" classStyle="long">
                            <e:selectItem itemValue="" itemLabel="请选择"/>
                            <e:selectItems value="<%=demo.getSelectItems() %>"/>
                        </e:comboBox>
                    </div>
                    <div class="input-control">
                        <label class="right">爱好：</label>
                        <e:selectManyCheckbox id="love" classStyle="long" checkAllable="true" columns="4">
                            <e:selectItem itemValue="0" itemLabel="篮球" />
                            <e:selectItem itemValue="1" itemLabel="足球" />
                            <e:selectItem itemValue="2" itemLabel="羽毛球" />
                            <e:selectItem itemValue="3" itemLabel="兵乓球" />
                            <e:selectItem itemValue="4" itemLabel="看书" />
                            <e:selectItem itemValue="5" itemLabel="游戏" />
                        </e:selectManyCheckbox>
                        <label class="right">出生日期：</label>
                        <e:inputDate id="birthday" classStyle="long"/>
                    </div>
                    <div class="input-control">
                        <label class="right">注册时间：</label>
                        <e:inputDateTime id="registerTime" classStyle="long"/>
                        <label class="right">年龄：</label>
                        <e:inputNumberSpinner id="spinner" value="0" increment="1" min="0" max="150"/>
                    </div>

                    <div class="input-control">
                        <label class="right">所属部门：</label>
                        <e:comboTree id="comboTree" data="<%=demo.getDepts() %>" classStyle="long"/>
                        <label class="right"> </label>
                    </div>

                    <div style="margin: 30 0 0 100px">
                        <e:button id="submitBtn" text="提交" iconCls="icon-save">
                            <e:event event="click" target="form" action="submit"/>
                        </e:button>
                        <e:button id="resetBtn" text="重置" iconCls="icon-reload">
                            <e:event event="click" target="form" action="reset"/>
                        </e:button>
                    </div>
                </e:form>

            </e:panel>

        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，按钮一般是事件的触发。可以通过Event来操作其他控件，也可以作为其他控件的tools。</p>
        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'method',type:'String',description:'form提交的方式',defaultValue:'post'}," +
                    "{name:'novalidate',type:'Boolean',description:'是否不进行验证',defaultValue:'false'}," +
                    "{name:'ajax',type:'Boolean',description:'是否通过ajax提交',defaultValue:'true'}," +
                    "{name:'queryParams',type:'Object',description:'json字符串或者java对象，当form提交时作为额外参数被提交',defaultValue:'null'}," +
                    "{name:'url',type:'String',description:'form提交的地址',defaultValue:'null'}," +
                    "{name:'data',type:'Object',description:'java对象，在form加载时通过load事件绑定数据',defaultValue:'null'}," +
                    "{name:'loadUrl',type:'String',description:'在form加载后通过远程url获取json数据，填充数据',defaultValue:''}," +
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
                <e:tab title="FormBasic.jsp">
                    <pre class="brush:xml">
                       &lt;e:panel id="formPanel" title="Form" style="width:1000px;height:410px;">
                           &lt;e:form id="form" url="../submit.jsp" classStyle="form-area">
                               &lt;div class="input-control">
                                   &lt;label class="right">姓名：&lt;/label>
                                   &lt;e:inputText classStyle="long" id="txt1" required="true" iconCls="icon-man"
                                                iconWidth="36">
                                   &lt;/e:inputText>
                                   &lt;label class="right">密码：&lt;/label>
                                   &lt;e:inputText classStyle="long" id="psw" prompt="Password" iconCls="icon-lock"
                                                iconWidth="36" required="true" type="password"/>
                               &lt;/div>
                               &lt;div class="input-control">
                                   &lt;label class="right">账号：&lt;/label>
                                   &lt;e:validateInput classStyle="long" id="acount" required="true"/>
                                   &lt;label class="right">邮箱：&lt;/label>
                                   &lt;e:validateInput classStyle="long" id="txt3" validType="email"/>
                               &lt;/div>
                               &lt;div class="input-control">
                                   &lt;label class="right">性别：&lt;/label>
                                   &lt;e:selectOneRadio id="sex" classStyle="long">
                                       &lt;e:selectItem itemValue="0" itemLabel="男" selected="true" />
                                       &lt;e:selectItem itemValue="1" itemLabel="女" />
                                   &lt;/e:selectOneRadio>
                                   &lt;label class="right">学历：&lt;/label>
                                   &lt;e:comboBox id="xl" classStyle="long">
                                       &lt;e:selectItem itemValue="" itemLabel="请选择"/>
                                       &lt;e:selectItems value="&lt;%=demo.getSelectItems() %>"/>
                                   &lt;/e:comboBox>
                               &lt;/div>
                               &lt;div class="input-control">
                                   &lt;label class="right">爱好：&lt;/label>
                                   &lt;e:selectManyCheckbox id="love" classStyle="long" checkAllable="true" columns="4">
                                       &lt;e:selectItem itemValue="0" itemLabel="篮球" />
                                       &lt;e:selectItem itemValue="1" itemLabel="足球" />
                                       &lt;e:selectItem itemValue="2" itemLabel="羽毛球" />
                                       &lt;e:selectItem itemValue="3" itemLabel="兵乓球" />
                                       &lt;e:selectItem itemValue="4" itemLabel="看书" />
                                       &lt;e:selectItem itemValue="5" itemLabel="游戏" />
                                   &lt;/e:selectManyCheckbox>
                                   &lt;label class="right">出生日期：&lt;/label>
                                   &lt;e:inputDate id="birthday" classStyle="long"/>
                               &lt;/div>
                               &lt;div class="input-control">
                                   &lt;label class="right">注册时间：&lt;/label>
                                   &lt;e:inputDateTime id="registerTime" classStyle="long"/>
                                   &lt;label class="right">年龄：&lt;/label>
                                   &lt;e:inputNumberSpinner id="spinner" value="0" increment="1" min="0" max="150"/>
                               &lt;/div>

                               &lt;div class="input-control">
                                   &lt;label class="right">所属部门：&lt;/label>
                                   &lt;e:comboTree id="comboTree" data="&lt;%=demo.getDepts() %>" classStyle="long"/>
                                   &lt;label class="right"> &lt;/label>
                               &lt;/div>

                               &lt;div style="margin: 30 0 0 100px">
                                   &lt;e:button id="submitBtn" text="提交" iconCls="icon-save">
                                       &lt;e:event event="click" target="form" action="submit"/>
                                   &lt;/e:button>
                                   &lt;e:button id="resetBtn" text="重置" iconCls="icon-reload">
                                       &lt;e:event event="click" target="form" action="reset"/>
                                   &lt;/e:button>
                               &lt;/div>
                           &lt;/e:form>

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
