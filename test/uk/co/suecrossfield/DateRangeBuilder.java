package uk.co.suecrossfield;

import java.util.Date;


public class DateRangeBuilder {

	private Date startDate;

	public DateRangeBuilder from(Date startDate) {
		this.startDate = startDate;
		return this;
	}

	public DateRange to(Date endDate) {
		return new DateRange(startDate, endDate);
	}

}
