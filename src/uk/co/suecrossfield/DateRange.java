package uk.co.suecrossfield;

import static java.util.Calendar.MONTH;
import static java.util.Calendar.YEAR;
import static java.util.Calendar.getInstance;

import java.util.Calendar;
import java.util.Date;

public class DateRange {

	private Calendar startCal;
	private Calendar endCal;

	public DateRange(Date startDate, Date endDate) {
		if (startDate.compareTo(endDate) > 1) {
			throw new IllegalArgumentException("Can't end before you start");
		}
		startCal = getInstance();
		startCal.setTime(startDate);
		endCal = getInstance();
		endCal.setTime(endDate);
	}

	public Date getStartDate() {
		return this.startCal.getTime();
	}

	public boolean startAndEndsOnSameDay() {
		return this.startCal.compareTo(this.endCal) == 0;
	}

	public Date getEndDate() {
		return this.endCal.getTime();
	}

	public boolean startsAndEndsInSameMonth() {
		return startCal.get(MONTH) == endCal.get(MONTH);
	}

	public boolean startsAndEndsInSameYear() {
		return startCal.get(YEAR) == endCal.get(YEAR);
	}

}
