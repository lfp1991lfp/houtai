<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Tab Position</h1>

        <p>Tab控件的标签部分可以为 top, bottom, left, right</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <p>选择Position的位置，来动态改变Tab控件标签的位置</p>

        <div class="property">
            Position : 
            <e:comboBox id="position">
                <e:selectItem itemValue="top" itemLabel="top" />
                <e:selectItem itemValue="bottom" itemLabel="bottom" />
                <e:selectItem itemValue="left" itemLabel="left" />
                <e:selectItem itemValue="right" itemLabel="right" />
                <e:event event="onChange" target="tabs" >
                    <e:param name="tabPosition" expression="args[0]" />
                </e:event>
            </e:comboBox>
        </div>

        <div class="property">
            <e:tabs id="tabs" style="width:700px;height:250px">
                <e:tab id="tab-1" title="Sub Tab" style="padding:8px;">
                    <e:tabs id="subtabs" fit="true" tabWidth="100">
                        <e:tab title="Titel1" closable="true">
                            自定义标签宽度的Tab
                        </e:tab>
                        <e:tab title="Titel2" closable="true">
                            自定义标签宽度的Tab
                        </e:tab>
                        <e:tab title="Titel3" closable="true" tabWidth="150">
                            自定义标签宽度的Tab为150px
                        </e:tab>
                    </e:tabs>
                </e:tab>
                <e:tab title="Ajax" href="../dynamic.jsp"/>
            </e:tabs>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="TabPosition.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Tab Position&lt;/h1>

                                &lt;p>Tab控件的标签部分可以为 top, bottom, left, right&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>选择Position的位置，来动态改变Tab控件标签的位置&lt;/p>

                                &lt;div class="property">
                                    Position :
                                    &lt;e:comboBox id="position">
                                        &lt;e:selectItem itemValue="top" itemLabel="top" />
                                        &lt;e:selectItem itemValue="bottom" itemLabel="bottom" />
                                        &lt;e:selectItem itemValue="left" itemLabel="left" />
                                        &lt;e:selectItem itemValue="right" itemLabel="right" />
                                        &lt;e:event event="onChange" target="tabs" >
                                            &lt;e:param name="tabPosition" expression="args[0]" />
                                        &lt;/e:event>
                                    &lt;/e:comboBox>
                                &lt;/div>

                                &lt;div class="property">
                                    &lt;e:tabs id="tabs" style="width:700px;height:250px">
                                        &lt;e:tab id="tab-1" title="Sub Tab" style="padding:8px;">
                                            &lt;e:tabs id="subtabs" fit="true" tabWidth="100">
                                                &lt;e:tab title="Titel1" closable="true">
                                                    自定义标签宽度的Tab
                                                &lt;/e:tab>
                                                &lt;e:tab title="Titel2" closable="true">
                                                    自定义标签宽度的Tab
                                                &lt;/e:tab>
                                                &lt;e:tab title="Titel3" closable="true" tabWidth="150">
                                                    自定义标签宽度的Tab为150px
                                                &lt;/e:tab>
                                            &lt;/e:tabs>
                                        &lt;/e:tab>
                                        &lt;e:tab title="Ajax" href="../dynamic.jsp"/>
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
