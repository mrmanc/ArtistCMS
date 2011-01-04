package uk.co.suecrossfield.manager;

import java.util.Calendar;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import uk.co.suecrossfield.PMFSingleton;
import uk.co.suecrossfield.model.Event;

public class EventManager {

	public List<Event> loadCurrentEvents() {
		PersistenceManager manager = PMFSingleton.get().getPersistenceManager();
		return (List<Event>)manager.newQuery("select from " + Event.class.getName()).execute();
	}

	public List<Event> loadPastEvents() {
		PersistenceManager manager = PMFSingleton.get().getPersistenceManager();
		Query query = manager.newQuery("select from " + Event.class.getName() + " where endDate < sysdate");
		query.declareImports("import java.util.Date");
		query.setFilter("endDate < today");
		query.declareParameters("Date today");
		query.setOrdering("endDate desc");
		return (List<Event>)query.execute(Calendar.getInstance().getTime());
	}

	public Event loadEvent(final Event event) {
		Event result = null;
		PersistenceManager manager = PMFSingleton.get().getPersistenceManager();
		try {
			result = (Event)manager.getObjectById(Event.class, event.getId());
		}
		finally {
			manager.close();
		}
		return result;
	}

	public void saveEvent(final Event event) {
		PersistenceManager manager = PMFSingleton.get().getPersistenceManager();
		try {
			if (event.getId() == null) {
				Event test = manager.makePersistent(event);
				System.out.println("Created event with id " + test.getId());
			}
			else {
				Event loadedEvent = (Event)manager.getObjectById(Event.class, event.getId());
				loadedEvent.setStartDate(event.getStartDate());
				loadedEvent.setEndDate(event.getEndDate());
				loadedEvent.setDescription(event.getDescription());
				loadedEvent.setLink(event.getLink());
				loadedEvent.setLocation(event.getLocation());
			}
		}
		finally {
			manager.close();
		}
	}
	

	public void deleteEvent(final Event event) {
		PersistenceManager manager = PMFSingleton.get().getPersistenceManager();
		try {
			manager.deletePersistent((Event)manager.getObjectById(Event.class, event.getId()));
		}
		finally {
			manager.close();
		}
	}
}
