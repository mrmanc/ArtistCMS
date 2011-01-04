package uk.co.suecrossfield.stripes;

import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;
import uk.co.suecrossfield.manager.EventManager;
import uk.co.suecrossfield.model.Event;

@UrlBinding(value = "/cv.html")
public class CVActionBean extends BaseActionBean {
	private List <Event> pastEvents;
	
	@DefaultHandler
	public Resolution land() {
		this.pastEvents = new EventManager().loadPastEvents();
		return new ForwardResolution("WEB-INF/cv.jsp");
	}
	

	public List<Event> getPastEvents() {
		return pastEvents;
	}

	public void setPastEvents(List<Event> pastEvents) {
		this.pastEvents = pastEvents;
	}
}
