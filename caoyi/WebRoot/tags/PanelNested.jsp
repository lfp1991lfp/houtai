<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Nested Panel</h1>

        <p>Panel窗口可以布局的容器，里面可以放置其他控件。</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>Panel中内嵌Layout布局</p>

        <div class="property">
            <e:panel id="panel" style="width:50%; height:200px;padding:2px;" title="Nested Panel">
                <e:layout id="layout" fit="true">
                    <e:layoutUnit region="west" style="width:25%" split="true" id="a">
                        Left
                    </e:layoutUnit>
                    <e:layoutUnit region="center" id="b">
                        Center
                    </e:layoutUnit>
                    <e:layoutUnit region="east" style="width:25%" id="c">
                        Right
                    </e:layoutUnit>
                </e:layout>
            </e:panel>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="PanelNested.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Nested Panel&lt;/h1>

                                &lt;p>Panel窗口可以布局的容器，里面可以放置其他控件。&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>Panel中内嵌Layout布局&lt;/p>

                                &lt;div class="property">
                                    &lt;e:panel id="panel" style="width:50%; height:200px;padding:2px;" title="Nested Panel">
                                        &lt;e:layout id="layout" fit="true">
                                            &lt;e:layoutUnit region="west" style="width:25%" split="true">
                                                Left
                                            &lt;/e:layoutUnit>
                                            &lt;e:layoutUnit region="center" >
                                                Center
                                            &lt;/e:layoutUnit>
                                            &lt;e:layoutUnit region="east" style="width:25%">
                                                Right
                                            &lt;/e:layoutUnit>
                                        &lt;/e:layout>
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
