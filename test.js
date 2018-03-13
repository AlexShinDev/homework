var a;
console.log(numbers());
console.log(a);
function numbers() {
  var a = 4;
  return a;
};



















// function timeConversion(s) {
//     var hour = s.slice(0,2);
//     hour = parseInt(hour, 10);
//     if (s.includes('AM') && hour === 12) hour -= 12;
//     s.includes('PM') && (hour += 12);
//     s = s.substring(2, 8);
//     console.log(hour.toString().concat(s));
// }

// // timeConversion("12:40:22AM");
// var money = 30;
// // console.log(30/4);
// money -= 30 / 4;

// console.log(money);

// var string = 'aefaef.asdfa';
// var reg = /\./g;
// console.log(string.includes('.'));
// console.log(string.search(reg));
// console.log(string.substring(6, string.length.last));

// function getFileExtension(i) {
//   if (i.includes('.')) {
//     var reg = /\./g;
//     var periodIndex = i.search(reg);
//     console.log(i.substring(periodIndex + 1, i.length.last));
//   }
// }

// getFileExtension('aefaef.asdfa');