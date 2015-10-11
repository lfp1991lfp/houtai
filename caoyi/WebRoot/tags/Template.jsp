<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.Property" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>JSP Template</h1>

        <p>JSP模板默认只支持include方法嵌入模板，TemplateBlock以及TemplateOverride提供了模板集成的实现，这里需要借助jsp的include标签。</p>
    </div>
    <div class="tag-info">
        <h2>
            依赖
        </h2>

        <p>jsp include标签，必须放在继承页面的最下面
        <pre class="brush:xml">&lt;%@include file="../_TagsDemoTempalte.jsp"%&gt; </pre>
        </p>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <%
            String p = "[{name:'name',type:'String',description:'必填值，模板模块名称，在每个模板中不能出现重复',defaultValue:''}]";
            List<Property> data = JSON.parseArray(p, Property.class);
        %>
        <div class="property">
            <e:datagrid id="propertyBlock" title="TemplateBlock Properties" data="<%=data %>" fitColumns="true"
                        style="width:80%;margin-left: 20px;">
                <e:columns>
                    <e:column title="名称" field="name" width="13%"/>
                    <e:column title="类型" field="type" width="13%"/>
                    <e:column title="说明" field="description" width="60%"/>
                    <e:column title="默认值" field="defaultValue" width="12%"/>
                </e:columns>
            </e:datagrid>
        </div>
        <div class="property">
            <e:datagrid id="propertyOverride" title="TemplateOverride Properties" data="<%=data %>" fitColumns="true"
                        style="width:80%;margin: 20px;">
                <e:columns>
                    <e:column title="名称" field="name" width="13%"/>
                    <e:column title="类型" field="type" width="13%"/>
                    <e:column title="说明" field="description" width="60%"/>
                    <e:column title="默认值" field="defaultValue" width="12%"/>
                </e:columns>
            </e:datagrid>
        </div>
    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example" style="height:300px">
                <e:tab title="_Template.jsp">
                <pre class="brush:xml">
                    &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>
                    &lt;html lang="zh-CN">
                    &lt;head>
                        &lt;meta charset="UTF-8">
                        &lt;title>jeasyui - The JSP component library for EasyUI &lt;/title>
                        &lt;e:resource location="static" name="jquery.min.js"/>
                        &lt;e:resources location="static/easyui" theme="metro"/>
                        &lt;e:resource location="static" name="jeasyui.js"/>
                        ...
                        &lt;e:templateBlock name="head"/>
                    &lt;/head>
                    &lt;e:body>
                        &lt;e:templateBlock name="body"/>
                        &lt;e:templateBlock name="script"/>
                    &lt;/e:body>
                    &lt;/html>
                </pre>
                </e:tab>
                <e:tab title="Override.jsp">
                <pre class="brush:xml">
                    &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                    &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                    &lt;e:templateOverride name="body">
                         Body Override
                    &lt;/e:templateOverride>

                    &lt;e:templateOverride name="script">
                        Script Override
                    &lt;/e:templateOverride>

                    &lt;%@include file="../_Template.jsp" %>
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
