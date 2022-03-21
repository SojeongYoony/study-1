<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>

let aa = [1, 2, 3, 4, 5, 6, 7, 8, 9];


function reverseForeach () {
	let i = aa.length;
	let bb = [];
	for (i; i >= 0; i-- ) {
		bb.push(i);
	}
	return bb;
}

console.log(reverseForeach());

</script>

</body>
</html>