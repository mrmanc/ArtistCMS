package uk.co.suecrossfield;

public class DateRangeFormat {

	public String format(DateRange dateRange) {
		if (dateRange.startAndEndsOnSameDay()) {
			return formatSameDay(dateRange);
		}
		else if (dateRange.startsAndEndsInSameMonth()) {
			return formatSameMonth(dateRange);
		}
		else if (dateRange.startsAndEndsInSameYear()) {
			return formatSameYear(dateRange);
		}
		else {
			return defaultFormat(dateRange);
		}
	}

	protected String defaultFormat(DateRange dateRange) {
		return startMonthDayYear(dateRange) + " - " + endDayMonthYear(dateRange);
	}

	protected String formatSameYear(DateRange dateRange) {
		return startMonthDay(dateRange) + " - " + endMonthDayYear(dateRange);
	}

	protected String formatSameDay(DateRange dateRange) {
		return startMonthDayYear(dateRange);
	}

	protected String formatSameMonth(DateRange dateRange) {
		return startMonthDay(dateRange) + " - " + endDayYear(dateRange);
	}

	protected String endDayMonthYear(DateRange dateRange) {
		return monthDayYear().format(dateRange.getEndDate());
	}

	protected String endMonthDayYear(DateRange dateRange) {
		return monthDayYear().format(dateRange.getEndDate());
	}

	protected String startMonthDay(DateRange dateRange) {
		return monthDay().format(dateRange.getStartDate());
	}

	protected String startMonthDayYear(DateRange dateRange) {
		return monthDayYear().format(dateRange.getStartDate());
	}

	protected String endDayYear(DateRange dateRange) {
		return dayYear().format(dateRange.getEndDate());
	}

	protected RichDateFormat dayYear() {
		return new RichDateFormat("dth" + " " + "yyyy");
	}

	protected RichDateFormat monthDay() {
		return new RichDateFormat("MMM" + " " + "dth");
	}

	protected RichDateFormat monthDayYear() {
		return new RichDateFormat("MMM" + " " + "dth" + " " + "yyyy");
	}

}
