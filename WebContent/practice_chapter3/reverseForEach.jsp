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
	let bb = [];
	for (let i = aa.length; i >= 0; i-- ) {
		bb.push(i);
	}
	return bb;
}

console.log(reverseForeach());

/*
const array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
Array.prototype.reverseForEach = function (forEach, array) {
	forEach(array).reverse();
}
*/

/*
const array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
Array.prototype.reverseForEach = function (forEach, param) {
	
	let result = [];
	result.push(forEach(param.reverse()));
	
	return result;
}
console.log(array.reverseForEach());
*/


Array.prototype.reverseForEach = function(callback) {
    this.reverse().forEach(callback);
};

const array = [1, 2, 3, 4, 5, 6, 7, 8, 9];

array.reverseForEach((el, index) => {
    console.log('element : ', el);
    console.log('index : ', index);
})


console.log('-----------------------------------------------------------');


Array.prototype.reverseForEach2 = function (callback) {
	for (let i = this.length -1; i >= 0; i--) {
		callback(this[i], i);
	}
}

const array2 = array.reverseForEach2(function (ele, i){

    console.log('ele : ', ele);
    console.log('i : ' + i);
});

console.log(array2);

</script>

</body>
</html>