package org.topteam.ui.easyui;

import java.util.Map;

/**
 * Created by 枫 on 2014/8/13.
 */
public class FileBoxTag extends TextBoxTag {

    public static final String TAG = "filebox";

    private String buttonText;
    private String buttonIcon;
    private String buttonAlign;

    @Override
    public String getEasyuiTag() {
        return TAG;
    }

    @Override
    public Map<String, Object> getOptions() {
        Map<String, Object> options = super.getOptions();
        options.put("buttonText", getButtonText());
        options.put("buttonIcon", getButtonIcon());
        options.put("buttonAlign", getButtonAlign());
        return options;
    }

    @Override
    public String getButtonText() {
        return buttonText;
    }

    @Override
    public void setButtonText(String buttonText) {
        this.buttonText = buttonText;
    }

    @Override
    public String getButtonIcon() {
        return buttonIcon;
    }

    @Override
    public void setButtonIcon(String buttonIcon) {
        this.buttonIcon = buttonIcon;
    }

    @Override
    public String getButtonAlign() {
        return buttonAlign;
    }

    @Override
    public void setButtonAlign(String buttonAlign) {
        this.buttonAlign = buttonAlign;
    }
}
