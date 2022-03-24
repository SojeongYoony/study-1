## `javascript` this
- 객체 자신을 의미하는 키워드이다.
- 객체 내부에서만 사용된다.
- this.속성 또는 this['속성'] 중 한 가지 방법을 사용한다.

## `java` this
- 현재 객체를 의미함
- this. : 현재 클래스의 field / method를 의미함.
- 현재 실행되고 있는 컨텍스트에 속한 객체에 대한 레퍼런스

## Function.prototype.call`javascript`
* `call()` 메소드는 주어진 `this`값 및 각각 전달된 인수와 함께 함수를 호출 <br>
	**주의** : apply()와 거의 동일하지만, call()은 인수목록 / apply()는 인수배열 하나를 받음

###### 객체 생성자 연결에 `call` 사용
```javascript
function Product(name, price) { // 생성자 함수 Product
	this.name = name;				// Product 객체의 속성 => name, price
	this.price = price;
}

function Food(name, price) {		
	Product.call(this, name, price); // Product 함수를 불러옴 
	this.category = 'food';			 // Food라는 객체는 Product 속성 + category 속성이 추가되어 새로운 객체로 반환 됨
}

console.log( new Food('cheese', 5).name ); // 결과 Food 객체는 name, price, category 속성을 가지고 있음
```

###### 익명 함수 호출에 `call()` 사용
* 익명 함수를 만들고 배열 내 모든 객체에서 이를 호출하기 위해 `call` 사용
* 익명 함수의 주목적은 배열 내 객체의 정확한 인덱스를 출력할 수 있는 모든 객체에 print 함수를 추가하는 것


```javascript

var animals = [
  { species: 'Lion', name: 'King' },
  { species: 'Whale', name: 'Fail' }
];

for (var i = 0; i < animals.length; i++) {
  (function(i) {
    this.print = function() { 	 // 각 객체에  print속성의 함수를 추가 // this는 animals 배열의 객체요소들.
      console.log('#' + i + ' ' + this.species
                  + ': ' + this.name);
    }								 // for문이 돌때마다 함수를 각 객체 안에 정의함
    this.print(); 			    // print함수를 호출하는 익명함수 전달받는 매개변수는 i
  }).call(animals[i], i);	    // 이때 call이 print함수를 호출하는 익명함수를 호출
  									// call은 function(i){this.print();}를 호출
}
 
```

## Function.prototype.apply
* `apply()` 메서드는 주어진 `this` 값과 배열 (또는 유사 배열 객체)로 제공되는 `arguments`로 함수를 호출

###### `arguments` 객체
* 함수에 전달된 인수에 해당하는 Array 형태의 객체

###### 참고
call()과 유사하나 call()은 함수에 전달 될 인수 리스트를 받고, <br>
apply()는 인수들의 단일 배열을 받는다. 

<br>
<hr>
<br>

## Function.prototype.bind
* 새로운 함수를 생성한다.
* 받게되는 첫 인자의 value로는 this 키워드를 설정하고, 이어지는 인자들은 바인드 된 함수의 인수에 제공된다.


<br>
