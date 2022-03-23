package chapter2;

import java.util.Arrays;

public class CopyOf {

	public static void main(String[] args) {
		//Arrays.copyOf(original, newLength)
		
		int[] arr1 = {1, 2, 3, 4, 5, 6, 7};
		int[] copied1 = Arrays.copyOf(arr1, 10);
		System.out.println(arr1);
		System.out.println(copied1);

	}

}
