package uk.co.suecrossfield;

public class CoarseDateRangeFormat extends DateRangeFormat {
	@Override
	protected RichDateFormat dayYear() {
		return new RichDateFormat("yyyy");
	}

	@Override
	protected RichDateFormat monthDay() {
		return new RichDateFormat("MMM");
	}

	@Override
	protected RichDateFormat monthDayYear() {
		return new RichDateFormat("MMM" + " " + "yyyy");
	}

	@Override
	protected String formatSameMonth(DateRange dateRange) {
		return startMonthYear(dateRange);
	}

	private String startMonthYear(DateRange dateRange) {
		return monthDayYear().format(dateRange.getStartDate());
	}
}
