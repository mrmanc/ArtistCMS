package uk.co.suecrossfield.model;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import uk.co.suecrossfield.CoarseDateRangeFormat;
import uk.co.suecrossfield.DateRange;
import uk.co.suecrossfield.DateRangeFormat;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Event {
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
		return new CoarseDateRangeFormat().format(new DateRange(startDate, endDate));
	}
	public String getDate() {
		return new DateRangeFormat().format(new DateRange(startDate, endDate));
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
