package org.topteam.ui.easyui;

import com.alibaba.fastjson.JSON;
import org.topteam.ui.model.JsFunction;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by 枫 on 2014/8/13.
 */
public class TimeSpinnerTag extends SpinnerTag {

    public static final String TAG = "timespinner";

    private String separator;
    private Boolean showSeconds;
    private int highlight = -1;
    private Object selections;

    private String formatter;

    @Override
    public String getEasyuiTag() {
        return TAG;
    }

    @Override
    public Map<String, Object> getOptions() {
        Map<String, Object> options = super.getOptions();
        options.put("separator", getSeparator());
        options.put("showSeconds", getShowSeconds());
        options.put("highlight", getHighlight());
        if (getSelections() != null) {
            if (getSelections() instanceof String) {
                List<int[]> aa = JSON.parseArray(getSelections().toString(), int[].class);
                int[][] bb = aa.toArray(new int[][]{});
                options.put("selections", bb);
            } else {
                options.put("selections", getSelections());
            }
        }
        if(getFormatter()!=null){
            options.put("formatter", new JsFunction("function(date){return jeasyui.util.date2String(date,'"+getFormatter()+"');}"));
            options.put("parser", new JsFunction("function(s){return jeasyui.util.string2Date(s,'"+getFormatter()+"');}"));
        }
        return options;
    }

    @Override
    public Object getValue() {
        Object obj = super.getValue();
        if (obj != null) {
            if (obj instanceof Date) {
                SimpleDateFormat sdf = new SimpleDateFormat(getFormatter());
                return sdf.format((Date) obj);
            }
        }
        return super.getValue();
    }

    public String getSeparator() {
        return separator;
    }

    public void setSeparator(String separator) {
        this.separator = separator;
    }

    public Boolean getShowSeconds() {
        return showSeconds;
    }

    public void setShowSeconds(Boolean showSeconds) {
        this.showSeconds = showSeconds;
    }

    public int getHighlight() {
        return highlight;
    }

    public void setHighlight(int highlight) {
        this.highlight = highlight;
    }

    public Object getSelections() {
        return selections;
    }

    public void setSelections(Object selections) {
        this.selections = selections;
    }

    public String getFormatter() {
        if (formatter == null) {
            formatter = (getShowSeconds() != null && getShowSeconds()) ? "HH:mm:ss" : "HH:mm";
        }
        return formatter;
    }

    public void setFormatter(String formatter) {
        this.formatter = formatter;
    }
}
