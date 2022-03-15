const fruits = ["apple", "banana", "cherry", "pineapple"];

const result = fruits.reduce((prev, cur, index) => {
  return index % 2 === 0 ? [...prev, cur] : prev;
}, []);

// 1st  => prev: [], cur: "apple"
// 2nd  => prev: ["apple"], cur: "banana"
// 3rd  => prev: ["apple", "banana"], cur: "cherry"
// 4th...

result;

// reduce (cb)          => initial이 없음으로 prev가 index===0이 되고 cur이 index===1부터 시작
// reduce(cb, initial)  => intial이 따로 선언이 되었기 때문에 prev가 initial이고 cur이 index===0부터 시작

const users = ["Denis", "Yoon", "Esther"];

// map version
const mapResult = users.map((val) => `${val}_from_Korea`);

mapResult;

// reduce version
// spread operator
const reduceResult = users.reduce(
  (prev, cur) => [...prev, `${cur}_from_Korea`],
  []
);

reduceResult;

const box = [];
const box2 = [...box];
box2.push("Dog");

box === box2;

const yoon = {
  name: "Yoon",
  age: 29,
};

const denis = {
  ...yoon,
  name: "Denis",
};

yoon.age = 30;

yoon.age;
denis.age;

// [], ["Dog"]

// 상태 메모리 주소값

// 예제
const array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const map1 = array1.map((x) => x * 2);
const array2 = [];
for (let i = 0; i < 9; i++) {
  array2.push(i + 1);
}
console.log(array2);

const map2 = array1.map((x) => array2.map((y) => y * x));
console.log(map2);

// ["Denis", "Yoon"] => [<p>Denis</p>, <p>Yoon</p>]

// (val)=> <p>{val}</p>

const nums = [9, 3, 21, -3, 100];

const max = nums.reduce((prev, cur) => (prev >= cur ? prev : cur));

max;

() => {
  return a;
};
() => a;

// function Staff(name, age, nationality) {
//     this.name = name;
//     this.age = age;
//     this.nationality = nationality;
//  }

//  const jimin = new Staff('지민', 29, '한국');
//  const yoon = new Staff('소정', 29, '한국');

class Staff {
  constructor(name, age, nationality) {
    this.name = name;
    this.age = age;
    this.nationality = nationality;
  }
}

const jimin = new Staff("지민", 29, "한국");
const yoon = new Staff("소정", 29, "한국");
