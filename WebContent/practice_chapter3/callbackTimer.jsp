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
		height: 140px;
		background-color: orange;
		display: flex;
	}
	.time {
		margin: 0 auto;
		display: inline;
		width: 30%;
		font-weight: 900;
		font-size: 100px;
		text-align: center;
	}
	.btns {
		width : 150px;
		height : 24px;
		cursor: pointer;
	}

</style>


</head>

<body>

<!-- 

	web server / WAS
	browser -> HTML을 읽는다

	

 -->



<div id="time_box">

	<div id="hour" class="time">00</div>
	<div id="minute" class="time">00</div>
	<div id="second" class="time">00</div>

</div>

<input type="button" id="start_btn"  class="btns" value="시작" >
<input type="button" id="pause_btn" class="btns" value="일시정지">
<input type="button" id="stop_btn" class="btns" value="종료">

<br>
<br>

<input type="text" id="input_">




<script>
// request Animation / interval : 비동기로 작동 됨 (실행되는 동안 다른 걸 실행해도 각각 실행이 가능 함)
// 멀티 쓰레드의 개념.

// requestAnimation은 interval 주기를 정할 수 없고 setInterval은 밀리세컨 단위로 정할 수 있음


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
	1. 알람 발생 이벤트		-- 사용자가 지정한 시간마다 알람발생
	2. 시간 업데이트 이벤트 -- 현재시간 반환..?

	---------------------------------
	필요한 것
	시작/일시정지/종료 버튼 - 시작/일시정지/종료 기능 (1,2,3)
	타이머 시간표시
	종료 시, 알람 표시하기
	
	TODO
	실행되었을 경우, 시작버튼 동작 금지 
*/


var second = 0;
var minute = 0;
var hour = 0;
var interval;


function startTimer(){
	console.log('started?');
	second ++;
	
	if (second >= 60) {
		second = 0;
		minute ++;
	}
	
	if (minute >= 60) {
		minute = 0;
		hour ++;
	}
	
	displayTime(second, minute, hour);
}



let _setTime = 5000;
setTimeout(function (){
	
	alert(_setTime, '시간이 되었다.'); // 여기다가 종료시 일어날 이벤트.
	
}, _setTime);


/* ------------------------- format / display ---------------------------- */


function format(num){
	   return  (num < 10 ? '0' : '') + num
}

function displayTime(second, minute, hour){
	
	$('#second').text(format(second));
	$('#minute').text(format(minute));
	$('#hour').text(format(hour));
	
}

/* ------------------------- btns event ---------------------------- */
	
$('#start_btn').on('click', function(){
	
	if (interval == null) {
		startTimer();
		interval = setInterval(startTimer, 1000);
	}
	
})


$('#pause_btn').on('click', function(){
	clearInterval(interval);
	interval = null;
})


$('#stop_btn').on('click', function(){
	clearInterval(interval); // button을 종료시키는거고 interval은 별개이기때문에 종료되지 않음 clearInterval이라는게 있음.
	second = 0;
	minute = 0;
	hour = 0;
	interval = null;
	displayTime(second, minute, hour);
})

	
	
	
	
	
	
	
	
	
	
	
$(document).ready(function(){
	
}) // ready function

// function stopTimer(){
// }





// frame 초당 실행되는 수


</script>
</body>
</html>