package uk.co.suecrossfield;
import java.text.FieldPosition;
import java.text.NumberFormat;
import java.text.ParsePosition;


public class NthNumberFormat extends NumberFormat {
	private static final long serialVersionUID = 1777197709015931511L;

	public String format(int i) {
		if (i > 10 && i < 14) {
			return i + "th";
		}
		else {
			int end = i % 10;
			switch (end) {
			case 1:
				return i + "st";
			case 2:
				return i + "nd";
			case 3:
				return i + "rd";
			default:
				return i + "th";
			}
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
