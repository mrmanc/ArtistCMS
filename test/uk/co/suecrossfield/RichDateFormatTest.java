package uk.co.suecrossfield;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import junit.framework.Assert;

import org.junit.Test;



public class RichDateFormatTest {

	private static final Date JAN_1 = new GregorianCalendar(2011, Calendar.JANUARY, 1).getTime();

	@Test
	public void formatNormalDate() {
		Assert.assertEquals("1 Jan 2011", new RichDateFormat("d MMM yyyy").format(JAN_1));
	}

	@Test
	public void richFormatDate() {
		Assert.assertEquals("1st Jan 2011", new RichDateFormat("dth MMM yyyy").format(JAN_1));
	}
	
	@Test
	public void buildDateFormatter() {
		Assert.assertEquals("{1} Jan 2011", new RichDateFormat("").buildDateFormatter("dth MMM yyyy").format(JAN_1));
	}
	
	@Test
	public void extractDay() {
		Assert.assertEquals(1, new RichDateFormat("").extractDay("{1}"));
		Assert.assertEquals(11, new RichDateFormat("").extractDay("{11}"));
		Assert.assertEquals(111, new RichDateFormat("").extractDay("{111}"));
	}
	
}
