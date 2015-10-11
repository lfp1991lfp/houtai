<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="head">
    <script>

        var je = jeasyui();
        function addLayout(){
            var region = jeasyui('regions').val();
            var options = {region:region};
            if (region=='north' || region=='south'){
                options.height = 60;
            } else {
                options.width = 150;
                options.split = true;
                options.title = jeasyui('regions').text();
            }
            jeasyui('layout').add(options);
        }
    </script>
</e:templateOverride>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Add and Remove Layout</h1>

        <p>点击按钮来新增或者移除Layout的Region</p>

        <div class="property">
            Select Region Panel:
            <e:comboBox id="regions" >               
                <e:selectItem itemValue="north" itemLabel="North" />
                <e:selectItem itemValue="south" itemLabel="South" />
                <e:selectItem itemValue="east" itemLabel="East" selected="true"/>
                <e:selectItem itemValue="west" itemLabel="West" />
            </e:comboBox>
            <e:button id="add-tbn" text="Add">
                <e:eventListener event="click" listener="addLayout" />
            </e:button>
            <e:button id="remove-tbn" text="Remove">
                <e:event event="click" target="layout" action="remove">
                    <e:param expression="jeasyui('regions').val()"/>
                </e:event>
            </e:button>
        </div>

        <div class="property">
            <e:layout id="layout" style="width:900px;height:400px">
                <e:layoutUnit region="north" style="height:60px" id="a">
                    North
                </e:layoutUnit>
                <e:layoutUnit region="south" style="height:60px" split="true" id="b">
                    South
                </e:layoutUnit>
                <e:layoutUnit region="east" style="width:150px" split="true" title="East" id="c">
                    East
                </e:layoutUnit>
                <e:layoutUnit region="west" style="width:150px" split="true" title="West" id="d">
                    West
                </e:layoutUnit>
                <e:layoutUnit region="center" id="e">
                    Center
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
                <e:tab title="LayoutAction.jsp">
                    <pre class="brush:xml">
                        &lt;e:templateOverride name="head">
                            &lt;script>

                                var je = jeasyui();
                                function addLayout(){
                                    var region = jeasyui('regions').val();
                                    var options = {region:region};
                                    if (region=='north' || region=='south'){
                                        options.height = 60;
                                    } else {
                                        options.width = 150;
                                        options.split = true;
                                        options.title = jeasyui('regions').text();
                                    }
                                    jeasyui('layout').add(options);
                                }
                            &lt;/script>
                        &lt;/e:templateOverride>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Add and Remove Layout&lt;/h1>

                                &lt;p>点击按钮来新增或者移除Layout的Region&lt;/p>

                                &lt;div class="property">
                                    Select Region Panel:
                                    &lt;e:comboBox id="regions" >
                                        &lt;e:selectItem itemValue="south" itemLabel="South" />
                                        &lt;e:selectItem itemValue="north" itemLabel="North" />
                                        &lt;e:selectItem itemValue="east" itemLabel="East" />
                                        &lt;e:selectItem itemValue="west" itemLabel="West" />
                                    &lt;/e:comboBox>
                                    &lt;e:button id="add-tbn" text="Add">
                                        &lt;e:eventListener event="click" listener="addLayout" />
                                    &lt;/e:button>
                                    &lt;e:button id="remove-tbn" text="Remove">
                                        &lt;e:event event="click" target="layout" action="remove">
                                            &lt;e:param expression="jeasyui('regions').val()"/>
                                        &lt;/e:event>
                                    &lt;/e:button>
                                &lt;/div>

                                &lt;div class="property">
                                    &lt;e:layout id="layout" style="width:900px;height:400px">
                                        &lt;e:layoutUnit region="north" style="height:60px">
                                            North
                                        &lt;/e:layoutUnit>
                                        &lt;e:layoutUnit region="south" style="height:60px" split="true">
                                            South
                                        &lt;/e:layoutUnit>
                                        &lt;e:layoutUnit region="east" style="width:150px" split="true" title="East">
                                            East
                                        &lt;/e:layoutUnit>
                                        &lt;e:layoutUnit region="west" style="width:150px" split="true" title="West">
                                            West
                                        &lt;/e:layoutUnit>
                                        &lt;e:layoutUnit region="center">
                                            Center
                                        &lt;/e:layoutUnit>
                                    &lt;/e:layout>
                                &lt;/div>
                            &lt;/div>
                        &lt;/e:templateOverride>
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
