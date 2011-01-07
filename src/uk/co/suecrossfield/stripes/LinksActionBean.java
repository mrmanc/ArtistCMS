package uk.co.suecrossfield.stripes;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding(value = "/links.html")
public class LinksActionBean extends BaseActionBean {
	public LinksActionBean() {
	}

	@DefaultHandler
	public Resolution land() {
		return new ForwardResolution("WEB-INF/links.jsp");
	}

}
