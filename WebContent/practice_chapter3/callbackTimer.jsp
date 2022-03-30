<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Timer</title>

<style>
	#time_box {
		width : 450px;
		height: 200px;
		background-color: orange;
	}
	.btns {
		width : 150px;
		height : 24px;
		cursor: pointer;
	}

</style>

<script>

//타이머 시작을 하면 함수 호출
/*
let _setTime = 5000;
setTimeout(function (){
	
	console.log('종료'); // 여기다가 종료시 일어날 이벤트.
	
}, _setTime);
*/



/*
	구현 기능 목록
	1. 타이머 시작
	2. 타이머 일시정지
	3. 타이머 종료
	4. 알람 등록

	이벤트 - 콜백
	1. 알람 발생 이벤트		-- 종료 시, 알람 울리는 기능..?
	2. 시간 업데이트 이벤트 -- 현재시간 반환..?

	---------------------------------
	필요한 것
	시작/일시정지/종료 버튼 - 시작/일시정지/종료 기능 (1,2,3)
	타이머 시간표시
	종료 시, 알람 표시하기
*/



</script>


</head>
<body>

<div id="time_box"></div>

<input type="button" id="start_btn"  class="btns" value="시작">
<input type="button" id="pause_btn" class="btns" value="일시정지">
<input type="button" id="stop_btn" class="btns" value="종료">

</body>
</html>