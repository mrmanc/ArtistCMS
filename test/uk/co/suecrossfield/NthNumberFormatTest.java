package uk.co.suecrossfield;
import java.util.Arrays;
import java.util.Collection;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

import uk.co.suecrossfield.NthNumberFormat;

@RunWith(Parameterized.class)

public class NthNumberFormatTest {
	
	private final int number;
	private final String expected;

	public NthNumberFormatTest(int number, String expected) {
		this.number = number;
		this.expected = expected;
	}
	
	@Parameters
	public static Collection<Object[]> numbers() {
		return Arrays.asList(new Object [][] {
				{1,"1st"},
				{2,"2nd"},
				{3,"3rd"},
				{4,"4th"},
				{5,"5th"},
				{6,"6th"},
				{7,"7th"},
				{8,"8th"},
				{9,"9th"},
				{10,"10th"},
				{11,"11th"},
				{12,"12th"},
				{13,"13th"},
				{14,"14th"},
				{15,"15th"},
				{16,"16th"},
				{17,"17th"},
				{18,"18th"},
				{19,"19th"},
				{20,"20th"},
				{21,"21st"},
				{22,"22nd"},
				{23,"23rd"},
				{24,"24th"},
				{25,"25th"},
				{26,"26th"},
				{27,"27th"},
				{28,"28th"},
				{29,"29th"},
				{30,"30th"},
				{99,"99th"},
				{100,"100th"},
				{101,"101st"},
				{111,"111th"},
				{112,"112th"},
				{113,"113th"},
				{114,"114th"},
				{115,"115th"},
				{116,"116th"},
				{117,"117th"},
				{118,"118th"},
				{119,"119th"},
				{120,"120th"},
				{121,"121st"},
				{122,"122nd"},
				{123,"123rd"},
				{124,"124th"},
				{211,"211th"},
				{212,"212th"},
				{213,"213th"},
				{214,"214th"},
				{221,"221st"},
				{222,"222nd"},
				{223,"223rd"},
				{224,"224th"},
		});
	}
	
	@Test
	public void number() {
		Assert.assertEquals(expected, new NthNumberFormat().format(number));
	}
}
