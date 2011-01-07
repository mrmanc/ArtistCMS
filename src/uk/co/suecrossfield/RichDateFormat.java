package uk.co.suecrossfield;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class RichDateFormat {

	private static final String MARKED_DAY_PATTERN = "\\{([0-9]*)\\}";
	private static final long serialVersionUID = -2443432773649243627L;
	private SimpleDateFormat simpleDateFormat;

	public RichDateFormat(String format) {
		simpleDateFormat = buildDateFormatter(format);
	}

	SimpleDateFormat buildDateFormatter(String format) {
		return new SimpleDateFormat(format.replaceAll("dth", "{d}"));
	}

	public final String format(Date arg0) {
		String formattedDate = simpleDateFormat.format(arg0);
		if (formattedDate.matches(".*"+MARKED_DAY_PATTERN+".*")) {
			int day = extractDay(formattedDate);
			formattedDate = formattedDate.replaceAll(MARKED_DAY_PATTERN, new NthNumberFormat().format(day));
		}
		return formattedDate;
	}

	int extractDay(String formatted) {
		Pattern pattern = Pattern.compile("\\{([0-9]*)\\}");
		Matcher matcher = pattern.matcher(formatted);
		matcher.find();
		int day = Integer.valueOf(matcher.group(1));
		return day;
	}

}
