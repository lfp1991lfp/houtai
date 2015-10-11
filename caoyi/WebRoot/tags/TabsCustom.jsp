<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="e" uri="org.topteam/easyui" %>

<e:templateOverride name="head">
    <style scoped="scoped">
        .tt-inner{
            display:inline-block;
            line-height:12px;
            padding-top:5px;
        }
        .tt-inner img{
            border:0;
        }
    </style>
</e:templateOverride>
<e:templateOverride name="body">
    <div class="tag-info">
        <h1>Tab Position</h1>

        <p>Tab控件可以对标签部分进行一些个性化的设置</p>
    </div>

    <div class="tag-info">
        <h2>Example</h2>

        <div class="property">
            <e:tabs id="tabs" style="width:700px;height:250px" tabHeight="60" tabWidth="100">
                <e:tab id="tab-1" title="<span class='tt-inner'><img src='../static/images/modem.png'/><br>Modem</span>" style="padding:8px;">
                    A modem (modulator-demodulator) is a device that modulates an analog carrier signal to encode digital information, and also demodulates such a carrier signal to decode the transmitted information.
                </e:tab>
                <e:tab title="<span class='tt-inner'><img src='../static/images/scanner.png'/><br>Scanner</span>" style="padding:10px">
                    In computing, an image scanner—often abbreviated to just scanner—is a device that optically scans images, printed text, handwriting, or an object, and converts it to a digital image.
                </e:tab>
            </e:tabs>
        </div>

        <h2>Resource</h2>

        <div class="property">
            <e:tabs id="example">
                <e:tab title="TabsCustom.jsp">
                    <pre class="brush:xml">

                        &lt;e:tabs id="tabs" style="width:700px;height:250px" tabHeight="60" tabWidth="100">
                            &lt;e:tab id="tab-1" title="&lt;span class='tt-inner'>&lt;img src='../static/images/modem.png'/>&lt;br>Modem&lt;/span>" style="padding:8px;">
                                A modem (modulator-demodulator) is a device that modulates an analog carrier signal to encode digital information, and also demodulates such a carrier signal to decode the transmitted information.
                            &lt;/e:tab>
                            &lt;e:tab title="&lt;span class='tt-inner'>&lt;img src='../static/images/scanner.png'/>&lt;br>Scanner&lt;/span>" style="padding:10px">
                                In computing, an image scanner—often abbreviated to just scanner—is a device that optically scans images, printed text, handwriting, or an object, and converts it to a digital image.
                            &lt;/e:tab>
                        &lt;/e:tabs>

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
