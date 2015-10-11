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

<e:templateOverride name="head">
    <style>
        .c1, .c1:hover {
            color: #fff;
            border-color: #3c8b3c;
            background: #4cae4c;
            background: -webkit-linear-gradient(top, #4cae4c 0, #449d44 100%);
            background: -moz-linear-gradient(top, #4cae4c 0, #449d44 100%);
            background: -o-linear-gradient(top, #4cae4c 0, #449d44 100%);
            background: linear-gradient(to bottom, #4cae4c 0, #449d44 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4cae4c, endColorstr=#449d44, GradientType=0);
        }

        a.c1:hover {
            background: #449d44;
            filter: none;
        }

        .c2, .c2:hover {
            color: #fff;
            border-color: #5f5f5f;
            background: #747474;
            background: -webkit-linear-gradient(top, #747474 0, #676767 100%);
            background: -moz-linear-gradient(top, #747474 0, #676767 100%);
            background: -o-linear-gradient(top, #747474 0, #676767 100%);
            background: linear-gradient(to bottom, #747474 0, #676767 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#747474, endColorstr=#676767, GradientType=0);
        }

        a.c2:hover {
            background: #676767;
            filter: none;
        }

        .c3, .c3:hover {
            color: #333;
            border-color: #ff8080;
            background: #ffb3b3;
            background: -webkit-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
            background: -moz-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
            background: -o-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
            background: linear-gradient(to bottom, #ffb3b3 0, #ff9999 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffb3b3, endColorstr=#ff9999, GradientType=0);
        }

        a.c3:hover {
            background: #ff9999;
            filter: none;
        }

        .c4, .c4:hover {
            color: #333;
            border-color: #52d689;
            background: #b8eecf;
            background: -webkit-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
            background: -moz-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
            background: -o-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
            background: linear-gradient(to bottom, #b8eecf 0, #a4e9c1 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#b8eecf, endColorstr=#a4e9c1, GradientType=0);
        }

        a.c4:hover {
            background: #a4e9c1;
            filter: none;
        }

        .c5, .c5:hover {
            color: #fff;
            border-color: #b52b27;
            background: #d84f4b;
            background: -webkit-linear-gradient(top, #d84f4b 0, #c9302c 100%);
            background: -moz-linear-gradient(top, #d84f4b 0, #c9302c 100%);
            background: -o-linear-gradient(top, #d84f4b 0, #c9302c 100%);
            background: linear-gradient(to bottom, #d84f4b 0, #c9302c 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#d84f4b, endColorstr=#c9302c, GradientType=0);
        }

        a.c5:hover {
            background: #c9302c;
            filter: none;
        }

        .c6, .c6:hover {
            color: #fff;
            border-color: #1f637b;
            background: #2984a4;
            background: -webkit-linear-gradient(top, #2984a4 0, #24748f 100%);
            background: -moz-linear-gradient(top, #2984a4 0, #24748f 100%);
            background: -o-linear-gradient(top, #2984a4 0, #24748f 100%);
            background: linear-gradient(to bottom, #2984a4 0, #24748f 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#2984a4, endColorstr=#24748f, GradientType=0);
        }

        a.c6:hover {
            background: #24748f;
            filter: none;
        }

        .c7, .c7:hover {
            color: #333;
            border-color: #e68900;
            background: #ffab2e;
            background: -webkit-linear-gradient(top, #ffab2e 0, #ff9900 100%);
            background: -moz-linear-gradient(top, #ffab2e 0, #ff9900 100%);
            background: -o-linear-gradient(top, #ffab2e 0, #ff9900 100%);
            background: linear-gradient(to bottom, #ffab2e 0, #ff9900 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffab2e, endColorstr=#ff9900, GradientType=0);
        }

        a.c7:hover {
            background: #ff9900;
            filter: none;
        }

        .c8, .c8:hover {
            color: #fff;
            border-color: #4b72a4;
            background: #698cba;
            background: -webkit-linear-gradient(top, #698cba 0, #577eb2 100%);
            background: -moz-linear-gradient(top, #698cba 0, #577eb2 100%);
            background: -o-linear-gradient(top, #698cba 0, #577eb2 100%);
            background: linear-gradient(to bottom, #698cba 0, #577eb2 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#698cba, endColorstr=#577eb2, GradientType=0);
        }

        a.c8:hover {
            background: #577eb2;
            filter: none;
        }

    </style>

    <script>
        function clickEvent(){
            alert('Event Listener');
        }
    </script>
</e:templateOverride>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Button</h1>

        <p>实现了easyui的linkbutton控件,Button的事件处理通过JQuery来绑定。</p>

        <div class="property">
            <h5>Basic Buttons</h5>
            <e:panel id="Basic" border="false">
                <e:button id="add-btn" text="Add" iconCls="icon-add"/>
                <e:button id="remove-btn" text="Remove" iconCls="icon-remove" iconAlign="left"/>
                <e:button id="save-btn" text="Save" iconCls="icon-save"/>
                <e:button id="cut-btn" text="Cut" iconCls="icon-cut" disabled="true"/>
                <e:button id="text-btn" text="Text Button"/>
                <e:button id="target-btn" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"/>
            </e:panel>
            <h5>Fixed Width Buttons</h5>
            <e:panel id="FixedWidth" border="false">
                <e:button id="add-btn2" text="Add" iconCls="icon-add" style="width:100px"/>
                <e:button id="remove-btn2" text="Remove" iconCls="icon-remove" style="width:100px"/>
                <e:button id="save-btn2" text="Save" iconCls="icon-save" style="width:100px"/>
                <e:button id="cut-btn2" text="Cut" iconCls="icon-cut" disabled="true" style="width:100px"/>
                <e:button id="text-btn2" text="Text Button" style="width:100px"/>
                <e:button id="target-btn2" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"
                          style="width:100px"/>
            </e:panel>
            <h5>Plain Buttons</h5>
            <e:panel id="PlainButton" border="true" style="width:550px;">
                <e:button id="add-btn3" text="Add" iconCls="icon-add" plain="true"/>
                <e:button id="remove-btn3" text="Remove" iconCls="icon-remove" plain="true"/>
                <e:button id="save-btn3" text="Save" iconCls="icon-save" plain="true"/>
                <e:button id="cut-btn3" text="Cut" iconCls="icon-cut" disabled="true" plain="true"/>
                <e:button id="text-btn3" text="Text Button" plain="true"/>
                <e:button id="target-btn3" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"
                          plain="true"/>
                <e:button id="redo-btn" iconCls="icon-redo" plain="true"/>
                <e:button id="undo-btn" iconCls="icon-undo" plain="true"/>
                <e:button id="help-btn" iconCls="icon-help" plain="true"/>
            </e:panel>
            <h5>Large Buttons</h5>
            <e:panel id="LargeButton" border="false">
                <e:button id="pic-btn3" text="Picture" iconCls="icon-large-picture" size="large" iconAlign="top"/>
                <e:button id="cli-btn3" text="Clip Art" iconCls="icon-large-clipart" size="large" iconAlign="top"/>
                <e:button id="Shapes-btn3" text="Shapes" iconCls="icon-large-shapes" size="large" iconAlign="top"/>
                <e:button id="SmartArt-btn3" text="SmartArt" iconCls="icon-large-smartart" size="large"
                          iconAlign="top"/>
                <e:button id="Chart-btn3" text="Chart" iconCls="icon-large-chart" size="large" iconAlign="top"/>
            </e:panel>
            <h5>Style Buttons (样式见 color.css)</h5>
            <e:panel id="StyleButton" border="false">
                <e:button id="c1" classStyle="c1" text="button1"/>
                <e:button id="c2" classStyle="c2" text="button2"/>
                <e:button id="c3" classStyle="c3" text="button3"/>
                <e:button id="c4" classStyle="c4" text="button4"/>
                <e:button id="c5" classStyle="c5" text="button5"/>
                <e:button id="c6" classStyle="c6" text="button6"/>
                <e:button id="c7" classStyle="c7" text="button7"/>
                <e:button id="c8" classStyle="c8" text="button8"/>
            </e:panel>
            <h5>Button Action</h5>
            <e:panel id="ButtonAction" border="false">
                <e:button id="add-btn4" text="Click" iconCls="icon-add" onclick="javascript:alert('Click');"/>
                <e:button id="listen-btn4" text="Listener" >
                    <e:eventListener event="click" listener="clickEvent" />
                </e:button>
                <e:button id="event-btn4" text="Event" >
                    <e:event event="click" target="btn-1" action="disable" />
                </e:button>
                <e:button id="btn-1" text="Button" iconCls="icon-save" />
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
                    "{name:'disabled',type:'Boolean',description:'是否禁用',defaultValue:'false'}," +
                    "{name:'plain',type:'Boolean',description:'是否显示平滑风格',defaultValue:'false'}," +
                    "{name:'text',type:'String',description:'按钮上显示的文字',defaultValue:''}," +
                    "{name:'iconCls',type:'String',description:'按钮的图标',defaultValue:''}," +
                    "{name:'iconAlign',type:'String',description:'按钮图标的位置',defaultValue:'left'}," +
                    "{name:'size',type:'String',description:'按钮的大小 [large,small] easyui1.4 以后支持',defaultValue:'small'}," +
                    "{name:'href',type:'String',description:'按钮跳转的地址',defaultValue:''}," +
                    "{name:'target',type:'String',description:'打开新页面的方式，需要href的值不为空',defaultValue:'_blank'}," +
                    "{name:'onclick',type:'String',description:'html的onclick事件绑定方式',defaultValue:''}," +
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
                <e:tab title="Button.jsp">
                    <pre class="brush:xml">
                        &lt;div class="tag-info">
                            &lt;h1>Button&lt;/h1>

                            &lt;p>实现了easyui的linkbutton控件,Button的事件处理通过JQuery来绑定。&lt;/p>

                            &lt;div class="property">
                                &lt;h5>Basic Buttons&lt;/h5>
                                &lt;e:panel id="Basic" border="false">
                                    &lt;e:button id="add-btn" text="Add" iconCls="icon-add"/>
                                    &lt;e:button id="remove-btn" text="Remove" iconCls="icon-remove" iconAlign="left"/>
                                    &lt;e:button id="save-btn" text="Save" iconCls="icon-save"/>
                                    &lt;e:button id="cut-btn" text="Cut" iconCls="icon-cut" disabled="true"/>
                                    &lt;e:button id="text-btn" text="Text Button"/>
                                    &lt;e:button id="target-btn" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"/>
                                &lt;/e:panel>
                                &lt;h5>Fixed Width Buttons&lt;/h5>
                                &lt;e:panel id="FixedWidth" border="false">
                                    &lt;e:button id="add-btn2" text="Add" iconCls="icon-add" style="width:100px"/>
                                    &lt;e:button id="remove-btn2" text="Remove" iconCls="icon-remove" style="width:100px"/>
                                    &lt;e:button id="save-btn2" text="Save" iconCls="icon-save" style="width:100px"/>
                                    &lt;e:button id="cut-btn2" text="Cut" iconCls="icon-cut" disabled="true" style="width:100px"/>
                                    &lt;e:button id="text-btn2" text="Text Button" style="width:100px"/>
                                    &lt;e:button id="target-btn2" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"
                                              style="width:100px"/>
                                &lt;/e:panel>
                                &lt;h5>Plain Buttons&lt;/h5>
                                &lt;e:panel id="PlainButton" border="true" style="width:80%">
                                    &lt;e:button id="add-btn3" text="Add" iconCls="icon-add" plain="true"/>
                                    &lt;e:button id="remove-btn3" text="Remove" iconCls="icon-remove" plain="true"/>
                                    &lt;e:button id="save-btn3" text="Save" iconCls="icon-save" plain="true"/>
                                    &lt;e:button id="cut-btn3" text="Cut" iconCls="icon-cut" disabled="true" plain="true"/>
                                    &lt;e:button id="text-btn3" text="Text Button" plain="true"/>
                                    &lt;e:button id="target-btn3" text="About Me" href="http://my.oschina.net/FengJ" iconCls="icon-man"
                                              plain="true"/>
                                    &lt;e:button id="redo-btn" iconCls="icon-redo" plain="true"/>
                                    &lt;e:button id="undo-btn" iconCls="icon-undo" plain="true"/>
                                    &lt;e:button id="help-btn" iconCls="icon-help" plain="true"/>
                                &lt;/e:panel>
                                &lt;h5>Large Buttons&lt;/h5>
                                &lt;e:panel id="LargeButton" border="false">
                                    &lt;e:button id="pic-btn3" text="Picture" iconCls="icon-large-picture" size="large" iconAlign="top"/>
                                    &lt;e:button id="cli-btn3" text="Clip Art" iconCls="icon-large-clipart" size="large" iconAlign="top"/>
                                    &lt;e:button id="Shapes-btn3" text="Shapes" iconCls="icon-large-shapes" size="large" iconAlign="top"/>
                                    &lt;e:button id="SmartArt-btn3" text="SmartArt" iconCls="icon-large-smartart" size="large"
                                              iconAlign="top"/>
                                    &lt;e:button id="Chart-btn3" text="Chart" iconCls="icon-large-chart" size="large" iconAlign="top"/>
                                &lt;/e:panel>
                                &lt;h5>Style Buttons&lt;/h5>
                                &lt;e:panel id="StyleButton" border="false">
                                    &lt;e:button id="c1" classStyle="c1" text="button1"/>
                                    &lt;e:button id="c2" classStyle="c2" text="button2"/>
                                    &lt;e:button id="c3" classStyle="c3" text="button3"/>
                                    &lt;e:button id="c4" classStyle="c4" text="button4"/>
                                    &lt;e:button id="c5" classStyle="c5" text="button5"/>
                                    &lt;e:button id="c6" classStyle="c6" text="button6"/>
                                    &lt;e:button id="c7" classStyle="c7" text="button7"/>
                                    &lt;e:button id="c8" classStyle="c8" text="button8"/>
                                &lt;/e:panel>
                                &lt;h5>Button Action&lt;/h5>
                                &lt;e:panel id="ButtonAction" border="false">
                                    &lt;e:button id="add-btn4" text="Click" iconCls="icon-add" onclick="javascript:alert('Click');"/>
                                    &lt;e:button id="listen-btn4" text="Listener" >
                                        &lt;e:eventListener event="click" listener="clickEvent" />
                                    &lt;/e:button>
                                    &lt;e:button id="event-btn4" text="Event" >
                                        &lt;e:event event="click" target="btn-1" action="disable" />
                                    &lt;/e:button>
                                    &lt;e:button id="btn-1" text="Button" iconCls="icon-save" />
                                &lt;/e:panel>
                            &lt;/div>
                        &lt;/div>
                    </pre>
                </e:tab>
                <e:tab title="color.css">
                    <pre class="brush:css">
                        .c1, .c1:hover {
                            color: #fff;
                            border-color: #3c8b3c;
                            background: #4cae4c;
                            background: -webkit-linear-gradient(top, #4cae4c 0, #449d44 100%);
                            background: -moz-linear-gradient(top, #4cae4c 0, #449d44 100%);
                            background: -o-linear-gradient(top, #4cae4c 0, #449d44 100%);
                            background: linear-gradient(to bottom, #4cae4c 0, #449d44 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#4cae4c, endColorstr=#449d44, GradientType=0);
                        }

                        a.c1:hover {
                            background: #449d44;
                            filter: none;
                        }

                        .c2, .c2:hover {
                            color: #fff;
                            border-color: #5f5f5f;
                            background: #747474;
                            background: -webkit-linear-gradient(top, #747474 0, #676767 100%);
                            background: -moz-linear-gradient(top, #747474 0, #676767 100%);
                            background: -o-linear-gradient(top, #747474 0, #676767 100%);
                            background: linear-gradient(to bottom, #747474 0, #676767 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#747474, endColorstr=#676767, GradientType=0);
                        }

                        a.c2:hover {
                            background: #676767;
                            filter: none;
                        }

                        .c3, .c3:hover {
                            color: #333;
                            border-color: #ff8080;
                            background: #ffb3b3;
                            background: -webkit-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
                            background: -moz-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
                            background: -o-linear-gradient(top, #ffb3b3 0, #ff9999 100%);
                            background: linear-gradient(to bottom, #ffb3b3 0, #ff9999 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffb3b3, endColorstr=#ff9999, GradientType=0);
                        }

                        a.c3:hover {
                            background: #ff9999;
                            filter: none;
                        }

                        .c4, .c4:hover {
                            color: #333;
                            border-color: #52d689;
                            background: #b8eecf;
                            background: -webkit-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
                            background: -moz-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
                            background: -o-linear-gradient(top, #b8eecf 0, #a4e9c1 100%);
                            background: linear-gradient(to bottom, #b8eecf 0, #a4e9c1 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#b8eecf, endColorstr=#a4e9c1, GradientType=0);
                        }

                        a.c4:hover {
                            background: #a4e9c1;
                            filter: none;
                        }

                        .c5, .c5:hover {
                            color: #fff;
                            border-color: #b52b27;
                            background: #d84f4b;
                            background: -webkit-linear-gradient(top, #d84f4b 0, #c9302c 100%);
                            background: -moz-linear-gradient(top, #d84f4b 0, #c9302c 100%);
                            background: -o-linear-gradient(top, #d84f4b 0, #c9302c 100%);
                            background: linear-gradient(to bottom, #d84f4b 0, #c9302c 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#d84f4b, endColorstr=#c9302c, GradientType=0);
                        }

                        a.c5:hover {
                            background: #c9302c;
                            filter: none;
                        }

                        .c6, .c6:hover {
                            color: #fff;
                            border-color: #1f637b;
                            background: #2984a4;
                            background: -webkit-linear-gradient(top, #2984a4 0, #24748f 100%);
                            background: -moz-linear-gradient(top, #2984a4 0, #24748f 100%);
                            background: -o-linear-gradient(top, #2984a4 0, #24748f 100%);
                            background: linear-gradient(to bottom, #2984a4 0, #24748f 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#2984a4, endColorstr=#24748f, GradientType=0);
                        }

                        a.c6:hover {
                            background: #24748f;
                            filter: none;
                        }

                        .c7, .c7:hover {
                            color: #333;
                            border-color: #e68900;
                            background: #ffab2e;
                            background: -webkit-linear-gradient(top, #ffab2e 0, #ff9900 100%);
                            background: -moz-linear-gradient(top, #ffab2e 0, #ff9900 100%);
                            background: -o-linear-gradient(top, #ffab2e 0, #ff9900 100%);
                            background: linear-gradient(to bottom, #ffab2e 0, #ff9900 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffab2e, endColorstr=#ff9900, GradientType=0);
                        }

                        a.c7:hover {
                            background: #ff9900;
                            filter: none;
                        }

                        .c8, .c8:hover {
                            color: #fff;
                            border-color: #4b72a4;
                            background: #698cba;
                            background: -webkit-linear-gradient(top, #698cba 0, #577eb2 100%);
                            background: -moz-linear-gradient(top, #698cba 0, #577eb2 100%);
                            background: -o-linear-gradient(top, #698cba 0, #577eb2 100%);
                            background: linear-gradient(to bottom, #698cba 0, #577eb2 100%);
                            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#698cba, endColorstr=#577eb2, GradientType=0);
                        }

                        a.c8:hover {
                            background: #577eb2;
                            filter: none;
                        }
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
