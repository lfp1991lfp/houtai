package org.topteam.ui.easyui;

import org.topteam.ui.model.JsFunction;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * Created by 枫 on 2014/8/12.
 */
public class DateBoxTag extends ComboTag {
    public static final String TAG = "datebox";

    private String currentText;
    private String closeText;
    private String okText;
    private String formatter = "yyyy-MM-dd";
    private String onSelect;
    
    @Override
    public String getEasyuiTag() {
        return TAG;
    }

    @Override
    public Map<String, Object> getOptions() {
        Map<String, Object> options = super.getOptions();
        options.put("currentText", getCurrentText());
        options.put("closeText", getCloseText());
        options.put("okText", getOkText());
        options.put("onSelect", getOnSelect());
        if(getFormatter()!=null){
            options.put("formatter", new JsFunction("function(date){return jeasyui.util.date2String(date,'"+getFormatter()+"');}"));
         //   options.put("parser", new JsFunction("function(s){return jeasyui.util.string2Date(s,'"+formatter+"');}"));
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

    public String getFormatter() {
        return formatter;
    }

    public void setFormatter(String formatter) {
        this.formatter = formatter;
    }

    public String getCurrentText() {
        return currentText;
    }

    public void setCurrentText(String currentText) {
        this.currentText = currentText;
    }

    public String getCloseText() {
        return closeText;
    }

    public void setCloseText(String closeText) {
        this.closeText = closeText;
    }

    public String getOkText() {
        return okText;
    }

    public void setOkText(String okText) {
        this.okText = okText;
    }

	public String getOnSelect() {
		return onSelect;
	}

	public void setOnSelect(String onSelect) {
		this.onSelect = onSelect;
	}
}
