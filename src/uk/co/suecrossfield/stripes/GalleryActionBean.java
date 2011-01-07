package uk.co.suecrossfield.stripes;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding(value = "/gallery.html")
public class GalleryActionBean extends BaseActionBean {
	public GalleryActionBean() {
	}

	@DefaultHandler
	public Resolution land() {
		return new ForwardResolution("WEB-INF/gallery.jsp");
	}

}
