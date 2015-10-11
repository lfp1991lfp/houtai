<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Load Panel Content</h1>

        <p>Panel可以通过ajax加载其他页面来显示，并且可以渲染页面中的控件,包括控件的相关js事件。</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>点击Panel右上角的刷新按钮，来加载 dynamic.jsp 页面到Panel中。</p>

        <div class="property">
            <e:panel id="panel" style="width:50%; height:100px;padding:10px;" title="Panel Custom Tools"
                     iconCls="icon-save" closable="true">
                jeasyui是一款基于easyui封装构建的JSP控件库。

                <e:facet name="tools">
                    <e:button id="load-btn" classStyle="icon-reload" plain="true">
                        <e:event event="click" target="panel" action="refresh">
                            <e:param value="../dynamic.jsp"/>
                        </e:event>
                    </e:button>
                </e:facet>
            </e:panel>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="PanelLoadContent.jsp">
                    <pre class="brush:xml">

                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Load Panel Content&lt;/h1>

                                &lt;p>Panel可以通过ajax加载其他页面来显示，并且可以渲染页面中的控件,包括控件的相关js事件。&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击Panel右上角的自定义按钮&lt;/p>

                                &lt;div class="property">
                                    &lt;e:panel id="panel" style="width:50%; height:100px;padding:10px;" title="Panel Custom Tools"
                                             iconCls="icon-save" closable="true">
                                        jeasyui是一款基于easyui封装构建的JSP控件库。

                                        &lt;e:facet name="tools">
                                            &lt;e:button id="load-btn" classStyle="icon-reload" plain="true">
                                                &lt;e:event event="click" target="panel" action="refresh">
                                                    &lt;e:param value="../dynamic.jsp"/>
                                                &lt;/e:event>
                                            &lt;/e:button>
                                        &lt;/e:facet>
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
                <e:tab title="dynamic.jsp">
                    <pre class="brush:xml">
                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;p>动态加载进来的内容，包括控件渲染，以及事件&lt;/p>
                            &lt;e:button id="dy" text="Dynamic" classStyle="c-danger">
                                &lt;e:eventListener event="click" listener="dynamicBtnClick" />
                            &lt;/e:button>

                            &lt;script>
                                function dynamicBtnClick(){
                                    alert('dynamic load');
                                }
                            &lt;/script>
                        &lt;/e:templateOverride>

                        &lt;%@include file="_template.jsp" %>
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
