package regex;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

public class RegExTest {
	@Test
	public void ex1() {
	    String pattern = "ab.";
	    assertFalse("ab".matches(pattern));
	    assertTrue("abc".matches(pattern));

	    pattern = "ab\\s\\S";
	    assertFalse("ab  ".matches(pattern));
	    assertTrue("ab c".matches(pattern));
	}
}
