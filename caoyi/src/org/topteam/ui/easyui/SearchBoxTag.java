package org.topteam.ui.easyui;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

/**
 * Created by 枫 on 2014/8/20.
 */
public class SearchBoxTag extends TextBoxTag {
    public static final String TAG = "searchbox";

    private String searcher;
    @Override
    public String getEasyuiTag() {
        return TAG;
    }
    
    @Override
    public void renderStart(JspWriter out) {
        try {
            out.write("<input");
            if (getId() != null) {
                out.write(" id=\"" + getId() + "\"");
            }
            if (getName() != null) {
                out.write(" name=\"" + getName() + "\"");
            } else {
                out.write(" name=\"" + getId() + "\"");
            }
            if (getSearcher() != null) {
                out.write(" searcher=\"" + getSearcher() + "\"");
            }
            if (getValue() != null) {
                out.write(" value='" + getValue() + "'");
            }
            if (getClassStyle() != null) {
                out.write(" class=\"" + getClassStyle() + "\"");
            }
            if (getStyle() != null) {
                out.write(" style=\"" + getStyle() + "\"");
            }
            if (getType() != null) {
                out.write(" type='" + getType() + "'");
            }
            out.write(" data-options=\"");
            out.write(optionsToString());
            out.write("\"");
            out.write(">");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public String getSearcher() {
		return searcher;
	}

	public void setSearcher(String searcher) {
		this.searcher = searcher;
	}
}
