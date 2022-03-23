package chapter2;

import java.util.Arrays;

public class CopyOf {

	public static void main(String[] args) {
		//Arrays.copyOf(original, newLength)
		
		int[] arr1 = {1, 2, 3, 4, 5, 6, 7};
		int[] copied1 = Arrays.copyOf(arr1, 10);
		for (int i = 0; i <= copied1.length -1; i++ ) {
				System.out.print(copied1[i]); // 1234567000
		}
		
		System.out.println();
		System.out.println("------------------------------------------");
		
		int[] copied2 = Arrays.copyOfRange(arr1, 5, 7);
		for (int i = 0; i <= copied2.length -1; i++ ) {
			System.out.print(copied2[i]); // 6, 7
		}
		

	}

}
