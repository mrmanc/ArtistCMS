package uk.co.suecrossfield;

public class DateRangeFormat {

	protected static final String YEAR_FORMAT = "yyyy";
	protected static final String DAY_FORMAT = "dth";
	protected static final String MONTH_FORMAT = "MMM";
	private static final String DASH = " Ð ";

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
		return startMonthDayYear(dateRange) + DASH + endDayMonthYear(dateRange);
	}

	protected String formatSameYear(DateRange dateRange) {
		return startMonthDay(dateRange) + DASH + endMonthDayYear(dateRange);
	}

	protected String formatSameDay(DateRange dateRange) {
		return startMonthDayYear(dateRange);
	}

	protected String formatSameMonth(DateRange dateRange) {
		return startMonthDay(dateRange) + DASH + endDayYear(dateRange);
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
		return new RichDateFormat(DAY_FORMAT + " " + YEAR_FORMAT);
	}

	protected RichDateFormat monthDay() {
		return new RichDateFormat(MONTH_FORMAT + " " + DAY_FORMAT);
	}

	protected RichDateFormat monthDayYear() {
		return new RichDateFormat(MONTH_FORMAT + " " + DAY_FORMAT + " " + YEAR_FORMAT);
	}

}
