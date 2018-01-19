package findbugsfindings;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class AllFindings {

	public static void main(String[] args) {
		System.out.println("Beginning findbugsfindings.");
		
		// IL_INFINITE_LOOP
		int nc = 20;
		while (nc > 0) {
			System.out.println("I'm in an infinite loop!");
		}
		
		// BC_IMPOSSIBLE_DOWNCAST_OF_TOARRAY
		Collection<String> strCollection = new ArrayList<String>(Arrays.asList("1", "2", "3"));
		String[] downcastReturn = getAsArray(strCollection);
		System.out.println(downcastReturn);
		
		// RV_EXCEPTION_NOT_THROWN
		int x = -9;
		if (x < 0) {
			new IllegalArgumentException("x must be nonnegative");
		}
	}
	
	public static String[] getAsArray(Collection<String> c) {
		return (String[]) c.toArray();
	}

}