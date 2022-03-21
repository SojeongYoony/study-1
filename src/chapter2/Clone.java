package chapter2;

public class Clone {

	public static void main(String[] args) {

		StudentBean student = new StudentBean(29, "윤소정", null);
		System.out.println(student.toString());
		
		
		int a[] = {1, 2, 3, 4, 5};
		System.out.println(a + "");			// [I@15db9742
	
		int b[] = a.clone();
		System.out.println(b + "");			// [I@6d06d69c

		System.out.println(a == b);		 // false 
		System.out.println(a.equals(b)); // false
		System.out.println(a.length == b.length);
		
	}

}
