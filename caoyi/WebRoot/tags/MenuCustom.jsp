<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Custom Menu Item</h1>

        <div class="property">
            <p>在页面上右击出现Menu右击菜单</p>
            <e:menu id="menu">
                <e:menuitem text="New"/>
                <e:submenu label="Open" custom="true">
                    <div style="font-weight:bold;font-size:16px">Select your Language:</div>
                    <ul style="margin:0;padding:0 0 0 40px">
                        <li><a href="javascript:void(0)">Java</a></li>
                        <li><a href="javascript:void(0)">Basic</a></li>
                        <li><a href="javascript:void(0)">C++</a></li>
                        <li><a href="javascript:void(0)">Fortran</a></li>
                        <li>
                            <span>Other</span>
                            <input>
                        </li>
                    </ul>
                    <div style="padding:10px 0 0 30px">
                        <e:button id="ok-btn" text="Ok" iconCls="icon-ok" />
                    </div>
                </e:submenu>
                <e:menuitem text="Save" iconCls="icon-save"/>
                <e:menuitem iconCls="icon-man">
                    <a href="http://my.oschina.net/FengJ" target="_blank">About Me</a>
                </e:menuitem>
                <e:menuitem text="Close"/>
            </e:menu>
        </div>
    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="MenuCustom.jsp">
                    <pre class="brush:xml">
                        &lt;e:menu id="menu">
                            &lt;e:menuitem text="New"/>
                            &lt;e:submenu label="Open" custom="true">
                                &lt;div style="font-weight:bold;font-size:16px">Select your Language:&lt;/div>
                                &lt;ul style="margin:0;padding:0 0 0 40px">
                                    &lt;li>&lt;a href="javascript:void(0)">Java&lt;/a>&lt;/li>
                                    &lt;li>&lt;a href="javascript:void(0)">Basic&lt;/a>&lt;/li>
                                    &lt;li>&lt;a href="javascript:void(0)">C++&lt;/a>&lt;/li>
                                    &lt;li>&lt;a href="javascript:void(0)">Fortran&lt;/a>&lt;/li>
                                    &lt;li>
                                        &lt;span>Other&lt;/span>
                                        &lt;input>
                                    &lt;/li>
                                &lt;/ul>
                                &lt;div style="padding:10px 0 0 30px">
                                    &lt;e:button id="ok-btn" text="Ok" iconCls="icon-ok" />
                                &lt;/div>
                            &lt;/e:submenu>
                            &lt;e:menuitem text="Save" iconCls="icon-save"/>
                            &lt;e:menuitem iconCls="icon-man">
                                &lt;a href="http://my.oschina.net/FengJ" target="_blank">About Me&lt;/a>
                            &lt;/e:menuitem>
                            &lt;e:menuitem text="Close"/>
                        &lt;/e:menu>
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
