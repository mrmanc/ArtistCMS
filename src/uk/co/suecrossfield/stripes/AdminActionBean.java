package uk.co.suecrossfield.stripes;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

public class AdminActionBean extends BaseActionBean {
	@DefaultHandler
	public Resolution land() {
		return new ForwardResolution("WEB-INF/admin/index.jsp");
	}
}
