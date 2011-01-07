package uk.co.suecrossfield;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;


public class NthNumberFormat extends NumberFormat {
	private static final long serialVersionUID = 1777197709015931511L;

	public String format(int number) {
		int modHundred = number % 100;
		if (modHundred > 10 && modHundred < 14) {
			return number + "th";
		}
		int end = number % 10;
		switch (end) {
		case 1:
			return number + "st";
		case 2:
			return number + "nd";
		case 3:
			return number + "rd";
		default:
			return number + "th";
		}
	}

	@Override
	public StringBuffer format(double number, StringBuffer toAppendTo,
			FieldPosition pos) {
		throw new UnsupportedOperationException();
	}

	@Override
	public StringBuffer format(long number, StringBuffer toAppendTo,
			FieldPosition pos) {
		throw new UnsupportedOperationException();
	}

	@Override
	public Number parse(String source, ParsePosition parsePosition) {
		throw new UnsupportedOperationException();
	}

}
