<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</head>
<body>
	<h1>prototype</h1>
	
	<script>
	
		function Person1() {
			this.eyes = 2;
			this.nose = 1;
		}
		
		let yoon1 = new Person1();
		let kim1 = new Person1();
		console.log(yoon1); // Person1 {eyes: 2, nose: 1}
		console.log(JSON.stringify(yoon1) + " : yoon1"); // {eyes: 2, nose: 1}
		console.log(JSON.stringify(kim1) + " : kim1");
		console.log(yoon1.eyes); // 2
		console.log(kim1.nose);  // 1
		
		
		function Person2() {
			Person2.prototype.eyes = 2;
			Person2.prototype.nose = 1;
		}
		
		let yoon2 = new Person2();
		let kim2 = new Person2();
		console.log(JSON.stringify(yoon2) + "yoon2");
		console.log(JSON.stringify(yoon2.eyes) + " : yoon2.eyes");
		console.log(JSON.stringify(kim2.eyes) + " : kim2.eyes");
	
	</script>
	


</body>
</html>