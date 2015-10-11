<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Nested Tabs</h1>

        <p>Tab控件的Content部分其实是Panel控件，所以跟Panel一样可以嵌入其他控件</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>点击Tab面板切换显示的内容</p>

        <div class="property">
            <e:tabs id="tabs" style="width:60%;height:250px">
                <e:tab id="tab-1" title="Sub Tab" style="padding:8px;">
                    <e:tabs id="subtabs" fit="true">
                        <e:tab title="Titel1" closable="true">
                            Content 1
                        </e:tab>
                        <e:tab title="Titel2" closable="true">
                            Content 2
                        </e:tab>
                        <e:tab title="Titel3" closable="true">
                            Content 3
                        </e:tab>
                    </e:tabs>
                </e:tab>
                <e:tab title="Ajax" href="../dynamic.jsp"/>
                <e:tab title="iFrame" iconCls="icon-help" href="http://www.baidu.com" iframe="true"/>
            </e:tabs>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="TabsNested.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Nested Tabs&lt;/h1>

                                &lt;p>Tab控件的Content部分其实是Panel控件，所以跟Panel一样可以嵌入其他控件&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击Tab面板切换显示的内容&lt;/p>

                                &lt;div class="property">
                                    &lt;e:tabs id="tabs" style="width:60%;height:250px">
                                        &lt;e:tab id="tab-1" title="Sub Tab" style="padding:8px;">
                                            &lt;e:tabs id="subtabs" fit="true">
                                                &lt;e:tab title="Titel1" closable="true">
                                                    Content 1
                                                &lt;/e:tab>
                                                &lt;e:tab title="Titel2" closable="true">
                                                    Content 2
                                                &lt;/e:tab>
                                                &lt;e:tab title="Titel3" closable="true">
                                                    Content 3
                                                &lt;/e:tab>
                                            &lt;/e:tabs>
                                        &lt;/e:tab>
                                        &lt;e:tab title="Ajax" href="../dynamic.jsp"/>
                                        &lt;e:tab title="iFrame" iconCls="icon-help" href="http://www.baidu.com" iframe="true"/>
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
    </script>
</e:templateOverride>
<%@include file="../_TagsDemoTemplate.jsp" %>
