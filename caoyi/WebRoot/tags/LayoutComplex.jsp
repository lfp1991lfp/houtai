<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>


<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Complex Layout</h1>

        <p>通过Layout可以简单的写出比较复杂的自适应布局</p>

        <div class="property">
            <e:layout id="layout" style="width:900px;height:400px">
                <e:layoutUnit region="north" style="height:60px" id="a">
                    North
                </e:layoutUnit>
                <e:layoutUnit region="south" style="height:60px" split="true" id="b">
                    South
                </e:layoutUnit>
                <e:layoutUnit region="east" style="width:150px" split="true" title="East" collapsible="false" id="c">
                    <e:tree id="tree">
                        <e:treeNode text="My Documents">
                            <e:treeNode text="Photos" state="closed">
                                <e:treeNode text="Firend"/>
                                <e:treeNode text="Baby"/>
                            </e:treeNode>
                            <e:treeNode text="Program Files">
                                <e:treeNode text="Intel"/>
                                <e:treeNode text="Java"/>
                            </e:treeNode>
                        </e:treeNode>
                    </e:tree>
                </e:layoutUnit>
                <e:layoutUnit region="west" style="width:150px" split="true" title="West" id="e">
                    <e:accordion id="acc" fit="true" selected="1">
                        <e:tab title="Title1">Content1</e:tab>
                        <e:tab title="Title2">Content2</e:tab>
                        <e:tab title="Title3">Content3</e:tab>
                    </e:accordion>
                </e:layoutUnit>
                <e:layoutUnit region="center" title="Main Title" iconCls="icon-ok" id="e">
                    <e:layout id="main-lay" fit="true">
                        <e:layoutUnit region="north" split="true" style="height:60px" id="f"/>
                        <e:layoutUnit region="west" split="true"  style="width:100px" id="g"/>
                        <e:layoutUnit region="center" split="true" id="h"/>
                    </e:layout>
                </e:layoutUnit>
            </e:layout>
        </div>
    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="LayoutComplex.jsp">
                    <pre class="brush:xml">
                        &lt;e:layout id="layout" style="width:900px;height:400px">
                            &lt;e:layoutUnit region="north" style="height:60px">
                                North
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="south" style="height:60px" split="true">
                                South
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="east" style="width:150px" split="true" title="East">
                                &lt;e:tree id="tree">
                                    &lt;e:treeNode text="My Documents">
                                        &lt;e:treeNode text="Photos" state="closed">
                                            &lt;e:treeNode text="Firend"/>
                                            &lt;e:treeNode text="Baby"/>
                                        &lt;/e:treeNode>
                                        &lt;e:treeNode text="Program Files">
                                            &lt;e:treeNode text="Intel"/>
                                            &lt;e:treeNode text="Java"/>
                                        &lt;/e:treeNode>
                                    &lt;/e:treeNode>
                                &lt;/e:tree>
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="west" style="width:150px" split="true" title="West">
                                &lt;e:accordion id="acc" fit="true" selected="1">
                                    &lt;e:tab title="Title1">Content1&lt;/e:tab>
                                    &lt;e:tab title="Title2">Content2&lt;/e:tab>
                                    &lt;e:tab title="Title3">Content3&lt;/e:tab>
                                &lt;/e:accordion>
                            &lt;/e:layoutUnit>
                            &lt;e:layoutUnit region="center" title="Main Title" iconCls="icon-ok">
                                &lt;e:layout id="main-lay" fit="true">
                                    &lt;e:layoutUnit region="north" split="true" style="height:60px" />
                                    &lt;e:layoutUnit region="west" split="true"  style="width:100px" />
                                    &lt;e:layoutUnit region="center" split="true" />
                                &lt;/e:layout>
                            &lt;/e:layoutUnit>
                        &lt;/e:layout>
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
