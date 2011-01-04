package uk.co.suecrossfield.stripes;

import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;
import uk.co.suecrossfield.manager.EventManager;
import uk.co.suecrossfield.model.Event;

public class EditEventsActionBean extends BaseActionBean {

	private static final String JSP_EVENTS = "WEB-INF/admin/events.jsp";
	private Event event;
	private List<Event> allEvents;

	public List<Event> getAllEvents() {
		return allEvents;
	}

	public void setAllEvents(List<Event> allEvents) {
		this.allEvents = allEvents;
	}

	@DefaultHandler
	public Resolution land() {
		this.allEvents = new EventManager().loadCurrentEvents();
		return new ForwardResolution(JSP_EVENTS);
	}
	
	public Resolution editEvent() {
		this.event = new EventManager().loadEvent(event);
		return land();
	}
	public Resolution saveEvent() {
		new EventManager().saveEvent(event);
		return new RedirectResolution(this.getClass());
	}
	
	public Resolution deleteEvent() {
		new EventManager().deleteEvent(event);
		return new RedirectResolution(this.getClass());
	}
	
	public Event getEvent() {
		return event;
	}
	public void setEvent(Event newEvent) {
		this.event = newEvent;
	}
}
