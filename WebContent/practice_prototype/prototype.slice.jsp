<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>slice</title>


</head>
<body>

	<h1> Array.prototype.slice </h1>
	
	<script>
	/*
		let fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
		let citrus = fruits.slice(1,3);
		let threeFruits =fruits.slice(0,3);
		console.log('--- Arra.prototype.slice ---')
		console.log(citrus);
		console.log(threeFruits);
		console.log(fruits);
		
		// Using slice, create newCar from myCar.
		let myHonda = { color: 'red', wheels: 4, engine: { cylinders: 4, size: 2.2 } }
		console.log('---myHonda Info---')
		console.log(myHonda);
		console.log(myHonda.color);
		console.log(myHonda.wheels);
		console.log(myHonda.engine);
		
		let myCar = [myHonda, 2, 'cherry condition', 'purchased 1997']
		console.log('---myCar Info---');
		console.log(myCar);
		
		let newCar = myCar.slice(0, 2)
		console.log('---newCar Info---');
		console.log(newCar);
		console.log(newCar[0]);
		console.log(newCar[1]);
		console.log(newCar[0].color);
		console.log(newCar[0].wheels);
		console.log(newCar[2]); // undefined : myHonda의 idx 0,1만 복사함 -> 두번째 idx는 안나와야함.
		
		console.log('--- End Info ---');
		// Display the values of myCar, newCar, and the color of myHonda
		// referenced from both arrays.
		console.log('myCar = ' + JSON.stringify(myCar))

		console.log('red?' + myCar[0].color); // red
		console.log(myCar[0].engine); // {cylinders:4, size:2.2}
		console.log(myCar[0].engine.cylinders); // 4
		console.log(myCar[0].engine.size); // 2.2
		console.log(myCar[1]); // 2
		console.log(myCar[2]); // cherry condition
		console.log(myCar[3]); // purchased 1997
		
		console.log('newCar = ' + JSON.stringify(newCar)); // + 문자열을 해서 값 확인할 때, JSON.stringify()해야 객체 모양이 보임
		console.log(newCar + 'newCar Info'); // 안하면 [object, Object]로 보임
				
		console.log('myCar[0].color = ' + myCar[0].color)
		console.log('newCar[0].color = ' + newCar[0].color)

		// Change the color of myHonda.
		myHonda.color = 'purple'
		console.log('The new color of my Honda is ' + myHonda.color)

		// Display the color of myHonda referenced from both arrays.
		console.log('myCar[0].color = ' + myCar[0].color)
		console.log('newCar[0].color = ' + newCar[0].color)
	*/
	</script>
	
	<script>
	
	
	const arr33 = [1, 2, 3, 5, 5];
	const copiedarr33 = arr33.slice();
	console.log(copiedarr33);
	
	copiedarr33[0] = 0;
	copiedarr33[1] = 0;
	copiedarr33[2] = 0;
	copiedarr33[3] = 0;
	
	console.log(arr33);       // 1 2 3 5 5	
	console.log(copiedarr33); // 0 0 0 0 5
	
	
	// slice : 배열 자체는 메모리 할당이 다시 되고 배열속 객체의 property는 참조하므로 얕은 복사라고 하는 것임.
	// String과 number type은 slice한 요소를 건드려도 원본 배열은 수정되지 않음.
	
	let fruitList = [];
	function Fruit (name, price, num) {
		this.name = name;
		this.price = price;
		this.num = num;
	}
	
	let orange = new Fruit('orange', 5000, 1);
	let apple = new Fruit('apple', 2500, 2);
	let grape = new Fruit('grape', 3000, 3);
	
	fruitList.push(orange);
	fruitList.push(apple);
	fruitList.push(grape); 
	console.log(Fruit);
	console.log(orange);
	console.log(apple);
	console.log(grape);
	
	console.log('------------------------');
	console.log(fruitList);
	let copiedFruitList = fruitList.slice();
	console.log(copiedFruitList);
	
	console.log('------------------------');
	
	copiedFruitList[0].name = 'apple';
	copiedFruitList[2].name = 'apple'; 
	console.log(fruitList);
	console.log(copiedFruitList);


	
	// 객체 생성과 동시에 fruitList 배열에 넣기	
	let fruitList = [];
	function Fruit (name, price, num) {
		this.name = name;
		this.price = price;
		this.num = num;
	}
	
	
	function fruitBucket(objFruit) {
		fruitList.push(objFruit); // fruitList에 만들어진 new 객체를 요소로 추가하고
		return objFruit;  		  // 반환은 객체로 한다.
	}
	
	fruitBucket(new Fruit('orange', 5000, 1));	
	fruitBucket(new Fruit('grape', 6000, 2));	
	fruitBucket(new Fruit('pineapple', 7000, 3));	
	console.log(fruitList);
	
	fruitList.forEach(function(fruit, i) {
		console.log(fruit);
		console.log(fruit.name);
		console.log(fruit.price);
	})
	
	
	</script>
	

</body>
</html>