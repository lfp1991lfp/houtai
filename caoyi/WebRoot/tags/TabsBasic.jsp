<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="org.topteam.demo.Property" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Tabs Basic</h1>

        <p>完全实现了EasyUI的Tabs控件</p>
    </div>

    <div class="tag-info">
        <h2>控件说明</h2>
        <p>EasyUI 控件，Tab的中间部分通过Panel控件展示内容。同时只能展示一个Tab的内容，每个Tab标签包括标题，图标，关闭按钮或者其他一些自定义按钮。</p>

        <%
            String p = "[{name:'id',type:'String',description:'必填值，控件ID，在每个模板中不能出现重复',defaultValue:''}," +
                    "{name:'style',type:'String',description:'Html style样式定义,控制Panel的宽高等属性',defaultValue:'null'}," +
                    "{name:'classStyle',type:'String',description:'Html class 样式属性定义',defaultValue:'null'}," +
                    "{name:'fit',type:'Boolean',description:'根据父容器设置Panel是否为自适应高度、宽度',defaultValue:'false'}," +
                    "{name:'border',type:'Boolean',description:'是否显示Panel的边框',defaultValue:'true'}," +
                    "{name:'plain',type:'Boolean',description:'是否显示扁平化显示Tab标签部分',defaultValue:'false'}," +
                    "{name:'scrollIncrement',type:'Integer',description:'定义在Tab内容页中滚轮每次滚动的像素',defaultValue:'100'}," +
                    "{name:'scrollDuration',type:'Integer',description:'定义在Tab内容页中滚轮每次滚动的动画延迟毫秒数',defaultValue:'400'}," +
                    "{name:'tools',type:'String',description:'Tabs的工具条，只能填写页面中一个div的id，比如 tools=#tab-tools。简易使用Facet标签实现',defaultValue:'null'}," +
                    "{name:'toolPosition',type:'String',description:'工具条的位置',defaultValue:'right'}," +
                    "{name:'tabPosition',type:'String',description:'Tab标签的位置，Possible values: top,bottom,left,right. ',defaultValue:'top'}," +
                    "{name:'headerWidth',type:'Integer',description:'Tab标签部分的高度',defaultValue:'150'}," +
                    "{name:'tabWidth',type:'Integer',description:'每一个Tab标签的宽度',defaultValue:'auto'}," +
                    "{name:'selected',type:'Integer',description:'初始化默认选中的Tab的下标',defaultValue:'0'}," +
                    "{name:'showHeader',type:'Boolean',description:'是否显示Tab的标签部分',defaultValue:'true'}," +
                    "]";
            List<Property> data = JSON.parseArray(p, Property.class );
        %>
        <div class="property">
            <e:datagrid id="propertyBlock" title="Properties" data="<%=data %>" fitColumns="true"
                        style="width:80%;margin-left: 20px;">
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
        <h2>Example</h2>

        <p>点击Tab面板切换显示的内容</p>

        <div class="property">
            <e:tabs id="tabs" style="width:60%;height:200px">
                <e:tab id="tab-1" title="About" style="padding:20px;">
                    jeasyui是一款基于easyui封装构建的JSP控件库。
                    <e:facet name="tools">
                        <e:button id="refresh-btn" classStyle="icon-mini-refresh" plain="true"
                                  onclick="alert('refresh')"/>
                    </e:facet>
                </e:tab>
                <e:tab title="My Documents">
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
                </e:tab>
                <e:tab title="Help" iconCls="icon-help">
                    This is the help content.
                </e:tab>
            </e:tabs>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="TabsBasic.jsp">
                    <pre class="brush:xml">

                        &lt;%@ page contentType="text/html;charset=UTF-8" language="java" %>
                        &lt;%@taglib prefix="e" uri="org.topteam/easyui" %>

                        &lt;e:templateOverride name="body">
                            &lt;div class="tag-info">
                                &lt;h1>Tabs Basic&lt;/h1>

                                &lt;p>完全实现了EasyUI的Tabs控件&lt;/p>
                            &lt;/div>

                            &lt;div class="tag-info">
                                &lt;h2>Example&lt;/h2>

                                &lt;p>点击Tab面板切换显示的内容&lt;/p>

                                &lt;div class="property">
                                    &lt;e:tabs id="tabs" style="width:60%;height:200px">
                                        &lt;e:tab title="About">
                                            jeasyui是一款基于easyui封装构建的JSP控件库。
                                        &lt;/e:tab>
                                        &lt;e:tab title="My Documents">
                                            &lt;e:tree id="tree">
                                                &lt;e:treeNode text="My Documents">
                                                    &lt;e:treeNode text="Photos" state="closed">
                                                        &lt;e:treeNode text="Firend" />
                                                        &lt;e:treeNode text="Baby" />
                                                    &lt;/e:treeNode>
                                                    &lt;e:treeNode text="Program Files">
                                                        &lt;e:treeNode text="Intel" />
                                                        &lt;e:treeNode text="Java" />
                                                    &lt;/e:treeNode>
                                                &lt;/e:treeNode>
                                            &lt;/e:tree>
                                        &lt;/e:tab>
                                        &lt;e:tab title="Help" iconCls="icon-help">
                                            This is the help content.
                                        &lt;/e:tab>
                                    &lt;/e:tabs>
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
