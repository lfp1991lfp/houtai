<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Panel Custom Tools</h1>

        <p>Panel窗口自定义操作按钮演示。自定义按钮的添加通过在panel标签中嵌入Facet控件实现。</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>点击Panel右上角的自定义按钮</p>

        <div class="property">
            <e:panel id="panel" style="width:50%; height:100px;padding:10px;" title="Panel Custom Tools"
                     iconCls="icon-save" closable="true">
                jeasyui是一款基于easyui封装构建的JSP控件库。

                <e:facet name="tools">
                    <e:button id="add-btn" classStyle="icon-add" plain="true" onclick="javascript:alert('add')"/>
                    <e:button id="edit-btn" classStyle="icon-edit" plain="true" onclick="javascript:alert('edit')"/>
                    <e:button id="cancel-btn" classStyle="icon-cancel" plain="true"
                              onclick="javascript:alert('cancel')"/>
                </e:facet>
            </e:panel>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="PanelCustomTools.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Panel Custom Tools&lt;/h1>

                                &lt;p>Panel窗口自定义操作按钮演示。&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击Panel右上角的自定义按钮&lt;/p>

                                &lt;div class="property">
                                    &lt;e:panel id="panel" style="width:50%; height:100px;padding:10px;" title="Panel Custom Tools" iconCls="icon-save" closable="true">
                                        jeasyui是一款基于easyui封装构建的JSP控件库。

                                        &lt;e:facet name="tools">
                                            &lt;e:button id="add-btn" classStyle="icon-add" plain="true" onclick="javascript:alert('add')" />
                                            &lt;e:button id="edit-btn" classStyle="icon-edit" plain="true" onclick="javascript:alert('edit')" />
                                            &lt;e:button id="cancel-btn" classStyle="icon-cancel" plain="true" onclick="javascript:alert('cancel')" />
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
