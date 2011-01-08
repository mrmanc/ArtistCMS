package uk.co.suecrossfield.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import uk.co.suecrossfield.CoarseDateRangeFormat;
import uk.co.suecrossfield.DateRange;
import uk.co.suecrossfield.DateRangeFormat;
import uk.co.suecrossfield.RichDateFormat;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Event {
	private static final String DASH = " - ";
	private static final String DATE_FORMAT_DAY = "dth";
	private static final String DATE_FORMAT_MONTH_YEAR = "MMM yyyy";
	private static final RichDateFormat DATE_FORMAT_MONTH_DAY = new RichDateFormat("MMM dth");
	private static final String DATE_FORMAT_MONTH = "MMM";
	private static final RichDateFormat DATE_FORMAT_YEAR = new RichDateFormat("yyyy");
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long id;
	@Persistent
	private Date startDate;
	@Persistent
	private Date endDate;
	@Persistent
	private String description;
	@Persistent
	private String location;
	@Persistent
	private String link;
	
	public String getShortDate() {
		// String result = "";
		// if (startDate != null) {
		// if (this.isOneMonthEvent()) {
		// result = monthAndYearOf(startDate);
		// }
		// else {
		// result = monthOf(startDate) + DASH + monthAndYearOf(endDate);
		// }
		// }
		// return result;
		return new CoarseDateRangeFormat().format(new DateRange(startDate, endDate));
	}
	
	private String monthOf(Date date) {
		return new SimpleDateFormat(DATE_FORMAT_MONTH).format(date);
	}

	private String monthAndYearOf(Date date) {
		return new SimpleDateFormat(DATE_FORMAT_MONTH_YEAR).format(date);
	}

	public String getDate() {
		// String result = "";
		// if(startDate != null) {
		//			
		// if (this.isOneDayEvent()) {
		// result = monthAndDayOf(startDate) + " " + yearOf(startDate);
		// }
		// else {
		// if (this.isOneMonthEvent()) {
		// result = monthAndDayOf(startDate) + DASH + dayOf(endDate) + " " +
		// yearOf(endDate);
		// }
		// else {
		// result = monthAndDayOf(startDate) + DASH + monthAndDayOf(endDate) +
		// " " + yearOf(endDate);
		// }
		// }
		// }
		// return result;
		return new DateRangeFormat().format(new DateRange(startDate, endDate));
	}

	private boolean isOneMonthEvent() {
		return sameMonth(startDate, endDate);
	}

	private boolean sameMonth(Date startDate, Date endDate) {
		Calendar startCal = new GregorianCalendar();
		startCal.setTime(startDate);
		Calendar endCal = new GregorianCalendar();
		endCal.setTime(endDate);
		boolean sameMonth = startCal.get(Calendar.MONTH) == endCal.get(Calendar.MONTH);
		return sameMonth;
	}

	private String dayOf(Date date) {
		return new RichDateFormat(DATE_FORMAT_DAY).format(date);
	}

	private String monthAndDayOf(Date date) {
		return DATE_FORMAT_MONTH_DAY.format(date);
	}

	private String yearOf(Date date) {
		return DATE_FORMAT_YEAR.format(date);
	}

	private boolean isOneDayEvent() {
		return endDate == null || startDate.compareTo(endDate) == 0;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}
