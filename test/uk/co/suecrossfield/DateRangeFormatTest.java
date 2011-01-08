package uk.co.suecrossfield;

import static java.util.Calendar.DECEMBER;
import static java.util.Calendar.FEBRUARY;
import static java.util.Calendar.JANUARY;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

import java.util.Date;
import java.util.GregorianCalendar;

import org.junit.Before;
import org.junit.Test;

public class DateRangeFormatTest {
	
	protected static final Date JAN_01 = new GregorianCalendar(2011, JANUARY, 1).getTime();
	protected static final Date JAN_02 = new GregorianCalendar(2011, JANUARY, 2).getTime();
	protected static final Date JAN_31 = new GregorianCalendar(2011, JANUARY, 31).getTime();
	protected static final Date FEB_01 = new GregorianCalendar(2011, FEBRUARY, 1).getTime();
	protected static final Date DEC_31 = new GregorianCalendar(2010, DECEMBER, 31).getTime();;
	private DateRangeFormat formatter;

	@Before
	public void setup() {
		formatter = new DateRangeFormat();
	}

	@Test
	public void sameDayRange() {
		assertThat(formatter.format(dateRange(JAN_01, JAN_01)), is("Jan 1st 2011"));
	}

	private DateRange dateRange(Date startDate, Date endDate) {
		return new DateRangeBuilder().from(startDate).to(endDate);
	}

	@Test
	public void oneDayRange() {
		assertThat(formatter.format(dateRange(JAN_01, JAN_02)), is("Jan 1st Ð 2nd 2011"));
	}

	@Test
	public void oneDayRangeOverMonthBoundary() {
		assertThat(formatter.format(dateRange(JAN_31, FEB_01)), is("Jan 31st Ð Feb 1st 2011"));
	}

	@Test
	public void oneDayRangeOverYearBoundary() {
		assertThat(formatter.format(dateRange(DEC_31, JAN_01)), is("Dec 31st 2010 Ð Jan 1st 2011"));
	}

}
