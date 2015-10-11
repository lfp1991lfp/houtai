<%--
  Created by IntelliJ IDEA.
  User: 枫
  Date: 2014/8/18
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Panel Tools</h1>

        <p>Panel窗口默认相关操作按钮演示。</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>点击下面按钮操作Panel</p>

        <div class="property">
            <e:button id="openPanel" text="Open">
                <e:event event="click" target="panel" action="open"/>
            </e:button>
            <e:button id="closePanel" text="Close">
                <e:event event="click" target="panel" action="close"/>
            </e:button>
            <e:button id="minPanel" text="Minimize">
                <e:event event="click" target="panel" action="minimize"/>
            </e:button>
            <e:button id="maxPanel" text="Maximize">
                <e:event event="click" target="panel" action="maximize"/>
            </e:button>
            <e:button id="restorePanel" text="Restore Size">
                <e:event event="click" target="panel" action="restore"/>
            </e:button>
            <e:button id="expandPanel" text="Expand">
                <e:event event="click" target="panel" action="expand"/>
            </e:button>
            <e:button id="collapsePanel" text="Collapse">
                <e:event event="click" target="panel" action="collapse"/>
            </e:button>
        </div>
        <div class="property">
            <e:panel id="panel2" style="padding:2px;width:60%; height:250px;" left="20" >
                <e:panel id="panel" style="width:50%; height:150px;padding:10px;" title="Panel" collapsible="true" minimizable="true"
                         maximizable="true" closable="true">
                    jeasyui是一款基于easyui封装构建的JSP控件库。
                </e:panel>
            </e:panel>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="PanelTools.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Panel Tools&lt;/h1>

                                &lt;p>Panel窗口默认相关操作按钮演示。&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击下面按钮操作Panel&lt;/p>

                                &lt;div class="property">
                                    &lt;e:button id="openPanel" text="Open">
                                        &lt;e:event event="click" target="panel" action="open"/>
                                    &lt;/e:button>
                                    &lt;e:button id="closePanel" text="Close">
                                        &lt;e:event event="click" target="panel" action="close"/>
                                    &lt;/e:button>
                                    &lt;e:button id="minPanel" text="Minimize">
                                        &lt;e:event event="click" target="panel" action="minimize"/>
                                    &lt;/e:button>
                                    &lt;e:button id="maxPanel" text="Maximize">
                                        &lt;e:event event="click" target="panel" action="maximize"/>
                                    &lt;/e:button>
                                    &lt;e:button id="restorePanel" text="Restore Size">
                                        &lt;e:event event="click" target="panel" action="restore"/>
                                    &lt;/e:button>
                                    &lt;e:button id="expandPanel" text="Expand">
                                        &lt;e:event event="click" target="panel" action="expand"/>
                                    &lt;/e:button>
                                    &lt;e:button id="collapsePanel" text="Collapse">
                                        &lt;e:event event="click" target="panel" action="collapse"/>
                                    &lt;/e:button>
                                &lt;/div>
                                &lt;div class="property">
                                    &lt;e:panel id="panel2" style="padding:2px;width:60%; height:300px;" left="20" >
                                        &lt;e:panel id="panel" style="width:50%; height:150px;" title="Panel" collapsible="true" minimizable="true"
                                                 maximizable="true" closable="true">
                                            jeasyui是一款基于easyui封装构建的JSP控件库。
                                        &lt;/e:panel>
                                    &lt;/e:panel>
                                &lt;/div>

                            &lt;/div>
                        &lt;/e:templateOverride>
                        &lt;e:templateOverride name="script">
                            &lt;script type="text/javascript">
                                SyntaxHighlighter.all();
                            &lt;/script>
                        &lt;/e:templateOverride>

                        &lt;%@include file="../_TagsDemoTemplate.jsp" %>

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
