<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="head">
    <script>
        function splitMenuClick() {
            alert(1);
        }
    </script>
</e:templateOverride>
<e:templateOverride name="body">
    <div class="tag-info">
        <h1>SplitButton</h1>

        <p>实现了easyui的SplitButton控件,SplitButton控件是MenuButton上面添加按钮的基本功能。</p>

        <div class="property">
            <e:panel id="panel" style="width:90%;padding:5px;">
                <e:splitButton id="home" text="Home" plain="true"/>
                <e:splitButton id="edit" text="Edit" iconCls="icon-edit">
                    <e:menuitem text="Undo" iconCls="icon-undo"/>
                    <e:menuitem text="Redo" iconCls="icon-redo"/>
                    <e:separator/>
                    <e:submenu label="Toolbar">
                        <e:menuitem text="Link"/>
                        <e:menuitem text="Address"/>
                    </e:submenu>
                    <e:eventListener event="click" listener="splitMenuClick"/>
                </e:splitButton>
                <e:splitButton id="help" text="Help" iconCls="icon-help">
                    <e:menuitem text="Help"/>
                    <e:menuitem text="Update"/>
                </e:splitButton>
                <e:splitButton id="about" text="About" custom="true">
                    <img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">

                    <p style="font-size:14px;color:#444;">Try jQuery EasyUI to build your modern, interactive,
                        javascript applications.</p>
                </e:splitButton>
            </e:panel>

        </div>
    </div>
    <div class="tag-info">
        <h2>控件说明</h2>

        <p>EasyUI 控件，继承了MenuButton控件的相关属性，属性跟MenuButton相同。</p>


    </div>
    <div class="tag-info">
        <h2>
            Example
        </h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="SplitButtonBasic.jsp">
                    <pre class="brush:xml">
                        &lt;e:panel id="panel" style="width:90%;padding:5px;">
                            &lt;e:splitButton id="home" text="Home" plain="true"/>
                            &lt;e:splitButton id="edit" text="Edit" iconCls="icon-edit">
                                &lt;e:menuitem text="Undo" iconCls="icon-undo"/>
                                &lt;e:menuitem text="Redo" iconCls="icon-redo"/>
                                &lt;e:separator/>
                                &lt;e:submenu label="Toolbar">
                                    &lt;e:menuitem text="Link"/>
                                    &lt;e:menuitem text="Address"/>
                                &lt;/e:submenu>
                                &lt;e:eventListener event="click" listener="splitMenuClick"/>
                            &lt;/e:splitButton>
                            &lt;e:splitButton id="help" text="Help" iconCls="icon-help">
                                &lt;e:menuitem text="Help"/>
                                &lt;e:menuitem text="Update"/>
                            &lt;/e:splitButton>
                            &lt;e:splitButton id="about" text="About" custom="true">
                                &lt;img src="http://www.jeasyui.com/images/logo1.png" style="width:150px;height:50px">

                                &lt;p style="font-size:14px;color:#444;">Try jQuery EasyUI to build your modern, interactive,
                                    javascript applications.&lt;/p>
                            &lt;/e:splitButton>
                        &lt;/e:panel>
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
