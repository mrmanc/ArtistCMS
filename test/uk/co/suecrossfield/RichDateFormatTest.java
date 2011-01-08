package uk.co.suecrossfield;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertThat;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.junit.Test;



public class RichDateFormatTest {

	private static final Date JAN_1 = new GregorianCalendar(2011, Calendar.JANUARY, 1).getTime();

	@Test
	public void formatNormalDate() {
		assertThat(new RichDateFormat("d MMM yyyy").format(JAN_1), is("1 Jan 2011"));
	}

	@Test
	public void richFormatDate() {
		assertThat(new RichDateFormat("dth MMM yyyy").format(JAN_1), is("1st Jan 2011"));
		assertThat(new RichDateFormat("dth {dth} MMM yyyy").format(JAN_1), is("1st {1st} Jan 2011"));
		assertThat(new RichDateFormat("dth MMM dth yyyy").format(JAN_1), is("1st Jan 1st 2011"));
		assertThat(new RichDateFormat("dth MMM yyyy dth").format(JAN_1), is("1st Jan 2011 1st"));
	}
	
	@Test
	public void buildDateFormatter() {
		assertThat(new RichDateFormat("").buildDateFormatter("dth MMM yyyy").format(JAN_1), is("{1} Jan 2011"));
	}
	
	@Test
	public void extractDay() {
		assertThat(new RichDateFormat("").extractDay("{1}"), is(1));
		assertThat(new RichDateFormat("").extractDay("{11}"), is(11));
		assertThat(new RichDateFormat("").extractDay("{111}"), is(111));
	}
	
}
