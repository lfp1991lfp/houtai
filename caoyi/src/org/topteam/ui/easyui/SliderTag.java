package org.topteam.ui.easyui;

import javax.servlet.jsp.JspWriter;
import java.io.IOException;

/**
 * Created by 枫 on 2014/8/13.
 */
public class SliderTag extends TagRender {
    public static final String TAG = "slider";

    private String classStyle;
    private String style;
    private String mode;
    private Boolean reversed;
    private Boolean showTip;
    private Boolean disabled;
    private String value;
    private int min = -1;
    private int max = -1;
    private int step = -1;
    private Object rule;

    @Override
    public String getEasyuiTag() {
        return TAG;
    }

    @Override
    public int renderBody() {
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public void renderStart(JspWriter out) {
        try {
            out.write("<input ");
            if (id != null) {
                out.write(" id=\"" + id + "\"");
            }
            if (getClassStyle() != null) {
                out.write(" class=\"" + getClassStyle() + "\"");
            }
            if (getStyle() != null) {
                out.write(" style=\"" + getStyle() + "\"");
            }
            if (getValue() != null) {
                out.write(" value=\"" + getValue() + "\"");
            }
            out.write(" data-options=\"" + optionsToString());
            out.write("\"");
            out.write(">");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void renderEnd(JspWriter out) {

    }

    public String getClassStyle() {
        return classStyle;
    }

    public void setClassStyle(String classStyle) {
        this.classStyle = classStyle;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public Boolean getReversed() {
        return reversed;
    }

    public void setReversed(Boolean reversed) {
        this.reversed = reversed;
    }

    public Boolean getShowTip() {
        return showTip;
    }

    public void setShowTip(Boolean showTip) {
        this.showTip = showTip;
    }

    public Boolean getDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disabled) {
        this.disabled = disabled;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public int getStep() {
        return step;
    }

    public void setStep(int step) {
        this.step = step;
    }

    public Object getRule() {
        return rule;
    }

    public void setRule(Object rule) {
        this.rule = rule;
    }
}
