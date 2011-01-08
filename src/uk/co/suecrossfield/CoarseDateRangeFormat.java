package uk.co.suecrossfield;

public class CoarseDateRangeFormat extends DateRangeFormat {
	@Override
	protected RichDateFormat dayYear() {
		return new RichDateFormat(YEAR_FORMAT);
	}

	@Override
	protected RichDateFormat monthDay() {
		return new RichDateFormat(MONTH_FORMAT);
	}

	@Override
	protected RichDateFormat monthDayYear() {
		return new RichDateFormat(MONTH_FORMAT + " " + YEAR_FORMAT);
	}

	@Override
	protected String formatSameMonth(DateRange dateRange) {
		return startMonthYear(dateRange);
	}

	private String startMonthYear(DateRange dateRange) {
		return monthDayYear().format(dateRange.getStartDate());
	}
}
