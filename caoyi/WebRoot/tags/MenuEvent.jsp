<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="head">
    <script>
        function menuHandler(item) {
            $('#panel').prepend('<p>Click Item: ' + item.name + '</p>');
        }
    </script>
</e:templateOverride>
<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Menu Events</h1>

        <div class="property">
            <p>在Panel上右击出现Menu右击菜单</p>

            <e:panel id="panel" style="width:600px;height:250px" title="Panel">

            </e:panel>
            <e:menu id="menu" target="panel">
                <e:menuitem text="New" name="New"/>
                <e:submenu label="Open">
                    <e:menuitem name="Word">
                        <b>Word</b>
                    </e:menuitem>
                    <e:menuitem text="Excel" name="Excel"/>
                    <e:menuitem text="PPT" name="PPT"/>
                    <e:menuitem text="Excel" name="Excel"/>
                    <e:submenu label="M1">
                        <e:menuitem text="sub1" name="sub1"/>
                        <e:menuitem text="sub2" name="sub2"/>
                        <e:menuitem text="sub3" name="sub3"/>
                    </e:submenu>
                </e:submenu>
                <e:menuitem text="Save" iconCls="icon-save" name="Save"/>
                <e:menuitem iconCls="icon-man" name="About Me">
                    <a href="http://my.oschina.net/FengJ" target="_blank">About Me</a>
                </e:menuitem>
                <e:menuitem text="Close" name="Close"/>
            </e:menu>
            <e:eventListener for="menu" event="onClick" listener="menuHandler"/>
        </div>
    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="MenuEvents.jsp">
                    <pre class="brush:xml">
                        &lt;e:panel id="panel" style="width:600px;height:250px" title="Panel">

                        &lt;/e:panel>
                        &lt;e:menu id="menu" target="panel">
                            &lt;e:menuitem text="New" name="New"/>
                            &lt;e:submenu label="Open">
                                &lt;e:menuitem name="Word">
                                    &lt;b>Word&lt;/b>
                                &lt;/e:menuitem>
                                &lt;e:menuitem text="Excel" name="Excel"/>
                                &lt;e:menuitem text="PPT" name="PPT"/>
                                &lt;e:menuitem text="Excel" name="Excel"/>
                                &lt;e:submenu label="M1">
                                    &lt;e:menuitem text="sub1" name="sub1"/>
                                    &lt;e:menuitem text="sub2" name="sub2"/>
                                    &lt;e:menuitem text="sub3" name="sub3"/>
                                &lt;/e:submenu>
                            &lt;/e:submenu>
                            &lt;e:menuitem text="Save" iconCls="icon-save" name="Save"/>
                            &lt;e:menuitem iconCls="icon-man" name="About Me">
                                &lt;a href="http://my.oschina.net/FengJ" target="_blank">About Me&lt;/a>
                            &lt;/e:menuitem>
                            &lt;e:menuitem text="Close" name="Close"/>
                        &lt;/e:menu>
                        &lt;e:eventListener for="menu" event="onClick" listener="menuHandler"/>
                        &lt;script>
                            function menuHandler(item) {
                                $('#panel').prepend('&lt;p>Click Item: ' + item.name + '&lt;/p>');
                            }
                        &lt;/script>
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
