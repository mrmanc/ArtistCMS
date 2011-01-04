package uk.co.suecrossfield.model;

import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Event {
	private static final String DATE_FORMAT_DAY = "dd";
	private static final SimpleDateFormat DATE_FORMAT_MONTH_DAY = new SimpleDateFormat("MMM dd");
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
	
	
	public String getDate() {
		String result = "";
		if(startDate != null) {
			Calendar startCal = new GregorianCalendar();
			startCal.setTime(startDate);
			
			if (endDate == null || startDate.compareTo(endDate) == 0) {
				result = DATE_FORMAT_MONTH_DAY.format(startDate);
			}
			else {
				Calendar endCal = new GregorianCalendar();
				endCal.setTime(endDate);
				if (startCal.get(Calendar.MONTH) == endCal.get(Calendar.MONTH)) {
					result = DATE_FORMAT_MONTH_DAY.format(startDate) + " - " + new SimpleDateFormat(DATE_FORMAT_DAY).format(endDate);
				}
				else {
					result = DATE_FORMAT_MONTH_DAY.format(startDate) + " - " + DATE_FORMAT_MONTH_DAY.format(endDate);
				}
			}
		}
		return result;
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
