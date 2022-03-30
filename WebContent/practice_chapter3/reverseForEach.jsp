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
	
	// if와 instanceof를 사용하여 function이거나 아니거나 등을 확인하여 예외처리를 할 수 있다
	// ex (if instanceof call !== callback) {
	//	
	//	callback = function()	
	//}
	
	
	for (let i = this.length -1; i >= 0; i--) {
		callback(this[i], i);
	}
}

const array2 = array.reverseForEach2(function (ele, i){

    console.log('ele : ', ele);
    console.log('i : ' + i);
});

console.log(array2);


// 반환값이 true이면 반복 중단하기
// forEach는 무조건 배열 전체를 순환 하므로, 원하는 인덱스까지만 순호나하고 싶은걸 궇ㄴ하라나는 뜻 이었음
// 마지막으로 순환한 i값 (중단 되었을 당시의 index 값)



</script>

</body>
</html>