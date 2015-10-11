<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Tabs Tools</h1>

        <p>Tab控件可以在标签上面自定义按钮</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>点击Tab标签上面的按钮，这里演示了通过Event标签实现一些EasyUI控件事件的操作。</p>

        <div class="property">
            <e:tabs id="tabs" style="width:60%;height:200px">
                <e:tab id="tab-1" title="About" style="padding:20px;">
                    jeasyui是一款基于easyui封装构建的JSP控件库。
                    <e:facet name="tools">
                        <e:button id="edit-btn" classStyle="icon-mini-edit" plain="true"
                                  onclick="alert('edit')"/>
                        <e:button id="refresh-btn" classStyle="icon-mini-refresh" plain="true"
                                  onclick="alert('refresh')"/>
                    </e:facet>
                </e:tab>
                <e:tab title="Help" iconCls="icon-help" closable="true">
                    This is the help content.
                </e:tab>

                <e:facet name="tools">
                    <e:button id="add-btn" classStyle="icon-add" plain="true">
                        <e:event event="click" target="tabs" action="add">
                            <e:param name="title" expression="'Tab'+index()" />
                            <e:param name="content" expression="Content'+index()" />
                            <e:param name="closable" value="true" />
                            <e:param name="selected" value="true" />
                        </e:event>
                    </e:button>
                    <e:button id="remove-btn" classStyle="icon-remove" plain="true">
                        <e:event event="click" target="tabs" action="close">
                            <e:param expression="jeasyui('tabs').getSelectedIndex()" />
                        </e:event>
                    </e:button>
                </e:facet>
            </e:tabs>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="TabsTools.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Tabs Tools&lt;/h1>

                                &lt;p>Tab控件可以在标签上面自定义按钮&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击Tab标签上面的按钮，这里演示了通过Event标签实现一些EasyUI控件事件的操作。&lt;/p>

                                &lt;div class="property">
                                    &lt;e:tabs id="tabs" style="width:60%;height:200px">
                                        &lt;e:tab id="tab-1" title="About" style="padding:20px;">
                                            jeasyui是一款基于easyui封装构建的JSP控件库。
                                            &lt;e:facet name="tools">
                                                &lt;e:button id="edit-btn" classStyle="icon-mini-edit" plain="true"
                                                          onclick="alert('edit')"/>
                                                &lt;e:button id="refresh-btn" classStyle="icon-mini-refresh" plain="true"
                                                          onclick="alert('refresh')"/>
                                            &lt;/e:facet>
                                        &lt;/e:tab>
                                        &lt;e:tab title="Help" iconCls="icon-help" closable="true">
                                            This is the help content.
                                        &lt;/e:tab>

                                        &lt;e:facet name="tools">
                                            &lt;e:button id="add-btn" classStyle="icon-add" plain="true">
                                                &lt;e:event event="click" target="tabs" action="add">
                                                    &lt;e:param name="title" expression="'Tab'+index()" />
                                                    &lt;e:param name="content" value="&lt;div style=\"padding:10px\">Content&lt;/div>" />
                                                    &lt;e:param name="closable" value="true" />
                                                    &lt;e:param name="selected" value="true" />
                                                &lt;/e:event>
                                            &lt;/e:button>
                                            &lt;e:button id="remove-btn" classStyle="icon-remove" plain="true">
                                                &lt;e:event event="click" target="tabs" action="close">
                                                    &lt;e:param expression="jeasyui('tabs').getSelectedIndex()" />
                                                &lt;/e:event>
                                            &lt;/e:button>
                                        &lt;/e:facet>
                                    &lt;/e:tabs>
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

        var i = 0;
        function index(){
           return i++;
        }
    </script>
</e:templateOverride>
<%@include file="../_TagsDemoTemplate.jsp" %>
