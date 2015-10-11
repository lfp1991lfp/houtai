package com.caoyi.common.lang;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class PageTag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5448982377023031801L;

	private int pageNo;

	private int recordCount;

	private int pageSize;

	private String url;

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub

		int pageCount = (this.recordCount + this.pageSize - 1) / this.pageSize;
		StringBuilder sb = new StringBuilder();
		sb.append("<div class='cutpage' >");
		if (this.recordCount != 0) {
			if (this.pageNo > pageCount) {
				this.pageNo = pageCount;
			}
			if (this.pageNo < 1) {
				this.pageNo = 1;
			}
			HttpServletRequest request = (HttpServletRequest) this.pageContext
					.getRequest();
			Enumeration e = request.getParameterNames();
			String name = null;
			String value = null;
			while (e.hasMoreElements()) {
				name = (String) e.nextElement();
				value = request.getParameter(name);
				if (name.equals("page")) {
					if (value != null && !"".equals(value)) {
						this.pageNo = Integer.parseInt(value);
					} else {
						sb.append("<input type='hidden' name=\"").append(name)
								.append("\" value=\"").append(value)
								.append("\"/>");
					}
				}
			}
			if (this.pageNo == 1) {
				sb.append("<a><span>上一页</span></a>");
			} else {
				sb.append("<a href='" + this.url + "?page = "
						+ (this.pageNo - 1) + "'><span>上一页</span></a>");
			}
			int start = 1;
			if (this.pageNo > 4) {
				start = this.pageNo - 1;
				sb.append("<a href='" + this.url
						+ "?page = 1'><span>1</span></a>");
				sb.append("<a href='" + this.url
						+ "?page = 2'><span>2</span></a>");
				sb.append("...");
			}
			int end = this.pageNo + 1;
			if (end > pageCount) {
				end = pageCount;
			}
			for (int i = start; i <= end; i++) {
				if (this.pageNo == i) {
					sb.append(
							"<a href='javascript:void(0);' class=\"current\">")
							.append("<span>" + i + "</span>").append("</a>");
				} else {
					sb.append("<a href='" + this.url + "?page=" + i + "'>")
							.append("<span>" + i + "</span>").append("</a>");
				}
			}
			if (end < pageCount - 2) {
				sb.append("...");
			}
			if (end < pageCount - 1) {
				sb.append(
						"<a href='" + this.url + "?page=" + (pageCount - 1)
								+ "'>").append(
						"<span>" + (pageCount - 1) + "</span></a>");
			}
			if (end < pageCount) {
				sb.append("<a href='" + this.url + "?page=" + pageCount + "'>")
						.append("<span>" + pageCount + "</span></a>");
			}
			if (this.pageNo == pageCount)
				sb.append("<a><span>下一页 ").append("</a></span>");
			else {
				sb.append("<a href='" + this.url + "?page=" + (this.pageNo + 1)
						+ "'><span>下一页 </span></a>");
			}
		}
		sb.append("</div>");
		try {
			this.pageContext.getOut().println(sb.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return 0;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
