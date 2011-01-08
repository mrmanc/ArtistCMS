package uk.co.suecrossfield;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;

public class CoarseDateRangeFormatTest extends DateRangeFormatTest {

	private CoarseDateRangeFormat formatter;

	@Before
	public void setup() {
		formatter = new CoarseDateRangeFormat();
	}

	@Test
	public void sameDayRange() {
		assertThat(formatter.format(dateRange(JAN_01, JAN_01)), is("Jan 2011"));
	}

	private DateRange dateRange(Date startDate, Date endDate) {
		return new DateRangeBuilder().from(startDate).to(endDate);
	}

	@Test
	public void oneDayRange() {
		assertThat(formatter.format(dateRange(JAN_01, JAN_02)), is("Jan 2011"));
	}

	@Test
	public void oneDayRangeOverMonthBoundary() {
		assertThat(formatter.format(dateRange(JAN_31, FEB_01)), is("Jan - Feb 2011"));
	}

	@Test
	public void oneDayRangeOverYearBoundary() {
		assertThat(formatter.format(dateRange(DEC_31, JAN_01)), is("Dec 2010 - Jan 2011"));
	}
}
