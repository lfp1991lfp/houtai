<%--
  Created by IntelliJ IDEA.
  User: JiangFeng
  Date: 2014/8/18
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Accordion Tools</h1>

        <p>Accordion可以通过Facet在Tab上面添加tools</p>

        <div class="property">
            <e:accordion id="acc" style="width:600;height:400px" selected="2">
                <e:tab title="About" iconCls="icon-ok" style="padding:10px">
                    <h3>EasyUI Accordion</h3>
                    <p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily</p>
                </e:tab>
                <e:tab title="Help" iconCls="icon-help" style="padding:10px">
                    <p>Accordion依赖于Panel，每个Tab具有Panel的所有功能。可以通过Event处理简单事件，EventListener绑定相关事件监听，结合jeasyui.js来处理负责的dom操作。</p>
                </e:tab>
                <e:tab title="DataGrid" iconCls="icon-search" style="padding:10px">
                    <e:datagrid id="dg" fit="true" url="../datagrid_data.json" fitColumns="true" pagination="true">
                        <e:columns frozen="true">
                            <e:column field="itemid" width="15%">
                                Item ID
                            </e:column>
                            <e:column field="productid" width="15%" sortable="true">Product</e:column>
                            <e:column field="listprice" width="15%">List Price</e:column>
                            <e:column field="unitcost" width="15%" title="单价"/>
                            <e:column field="attr1" width="15%">Product</e:column>
                            <e:column field="status" width="15%">List Price</e:column>
                        </e:columns>
                    </e:datagrid>
                    <e:facet name="tools">
                        <e:button id="reload-btn" classStyle="icon-reload" plain="true">
                            <e:event event="click" target="dg" action="reload" />
                        </e:button>
                    </e:facet>
                </e:tab>
                <e:tab title="Ajax" href="../dynamic.jsp" style="padding:20px;" />
            </e:accordion>
        </div>
    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="Panel.jsp">
                    <pre class="brush:xml">
                         &lt;e:accordion id="acc" style="width:600;height:400px" selected="2">
                             &lt;e:tab title="About" iconCls="icon-ok" style="padding:10px">
                                 &lt;h3>EasyUI Accordion&lt;/h3>
                                 &lt;p>Accordion is a part of easyui framework for jQuery. It lets you define your accordion component on web page more easily&lt;/p>
                             &lt;/e:tab>
                             &lt;e:tab title="Help" iconCls="icon-help" style="padding:10px">
                                 &lt;p>Accordion依赖于Panel，每个Tab具有Panel的所有功能。可以通过Event处理简单事件，EventListener绑定相关事件监听，结合jeasyui.js来处理负责的dom操作。&lt;/p>
                             &lt;/e:tab>
                             &lt;e:tab title="DataGrid" iconCls="icon-search" style="padding:10px">
                                 &lt;e:datagrid id="dg" fit="true" url="../datagrid_data.json" fitColumns="true" pagination="true">
                                     &lt;e:columns frozen="true">
                                         &lt;e:column field="itemid" width="15%">
                                             Item ID
                                         &lt;/e:column>
                                         &lt;e:column field="productid" width="15%" sortable="true">Product&lt;/e:column>
                                         &lt;e:column field="listprice" width="15%">List Price&lt;/e:column>
                                         &lt;e:column field="unitcost" width="15%" title="单价"/>
                                         &lt;e:column field="attr1" width="15%">Product&lt;/e:column>
                                         &lt;e:column field="status" width="15%">List Price&lt;/e:column>
                                     &lt;/e:columns>
                                 &lt;/e:datagrid>
                                 &lt;e:facet name="tools">
                                     &lt;e:button id="reload-btn" classStyle="icon-reload" plain="true">
                                         &lt;e:event event="click" target="dg" action="reload" />
                                     &lt;/e:button>
                                 &lt;/e:facet>
                             &lt;/e:tab>
                             &lt;e:tab title="Ajax" href="../dynamic.jsp" style="padding:20px;" />
                         &lt;/e:accordion>
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
