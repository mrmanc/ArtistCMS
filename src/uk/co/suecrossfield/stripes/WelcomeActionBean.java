package uk.co.suecrossfield.stripes;

import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;
import uk.co.suecrossfield.manager.EventManager;
import uk.co.suecrossfield.model.Event;

@UrlBinding(value = "/index.html")
public class WelcomeActionBean extends BaseActionBean {
	private static final String INDEX_JSP = "WEB-INF/index.jsp";
	private List<Event> currentEvents;
	public WelcomeActionBean() {
	}
	
	
	public List<Event> getCurrentEvents() {
		return currentEvents;
	}

	public void setCurrentEvents(List<Event> currentEvents) {
		this.currentEvents = currentEvents;
	}

	@DefaultHandler
	public Resolution land() {
		this.currentEvents = new EventManager().loadCurrentEvents();
		return new ForwardResolution(INDEX_JSP);
	}

}
