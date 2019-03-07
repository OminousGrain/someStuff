// Type JavaScript here and click "Run Code" or press Ctrl + s
console.log('Hello, world!');


// Challenge 1
function addTwo(num) {
  return num+=2;

}

// To check if you've completed it, uncomment these console.logs!
console.log(addTwo(3));
console.log(addTwo(10));


// Challenge 2
function addS(word) {
  return word+'s';

}

// uncomment these to check your work
 console.log(addS('pizza'));
 console.log(addS('bagel'));


// Challenge 3
function map(array, callback) {
  return array.map(callback)

}

 console.log(map([1, 2, 3], addTwo));


// Challenge 4
function forEach(array, callback) {
  console.log(array)
  const output=[]
  array.forEach((item)=>{output.push(callback(item))});
  
  return output;

}

// see for yourself if your forEach works!

 console.log(forEach([1, 2, 3], addTwo));

//--------------------------------------------------
// Extension
//--------------------------------------------------

//Extension 1
function mapWith(array, callback) {
  const output=[]
  array.forEach((item)=>{output.push(callback(item))});
  

}

//Extension 2
function reduce(array, callback, initialValue) {

  return array.reduce(callback,0)
}
var nums = [4, 1, 3];

var add = function(a, b) { return a + b; }
console.log(reduce(nums, add, 0))

//Extension 3
// console.log(intersection([5, 10, 15, 20], [15, 88, 1, 5, 7], [1, 10, 15, 5, 20]));
// should log: [5, 15]

//lets start off with the intersection of two arrays

function intersection(...arrays) {

  
  

   console.log(arrays)
   union=[]


   for(let i=0;i<arrays[0].length;i++){
      console.log('*********************')
     console.log(`testing for occurence of ${arrays[0][i]}`)
     let score=1;

     for(let x=1;x<arrays.length;x++){
       console.log(`seeing if  ${arrays[0][i]} occurs in ${arrays[x]}`)
        //something is wrong with this condition
       if(arrays[x].indexOf(arrays[0][i])!== -1){
         score++
          
        }
     }
     console.log(`${arrays[0][i]} occurs ${score} times`)
     //if score of test number is equal to the number of arrays then it appears in all three
     if(score===arrays.length){
       union.push(arrays[0][i])
     }
   }
 
 console.log('test')
 console.log(union)




}

intersection([5, 10, 15, 20], [15, 88, 1, 5, 7],[20, 88, 1, 5, 7]);


  
  
 
  
  
 
  



 console.log(intersection([5, 10, 15, 20], [15, 88, 1, 5, 7], [1, 10, 15, 5, 20]));
// should log: [5, 15]

//Extension 4
function union(arrays) {

}

// console.log(union([5, 10, 15], [15, 88, 1, 5, 7], [100, 15, 10, 1, 5]));
// should log: [5, 10, 15, 88, 1, 7, 100]

//Extension 5
function objOfMatches(array1, array2, callback) {

}

// console.log(objOfMatches(['hi', 'howdy', 'bye', 'later', 'hello'], ['HI', 'Howdy', 'BYE', 'LATER', 'hello'], function(str) { return str.toUpperCase(); }));
// should log: { hi: 'HI', bye: 'BYE', later: 'LATER' }

//Extension 6
function multiMap(arrVals, arrCallbacks) {

}

// console.log(multiMap(['catfood', 'glue', 'beer'], [function(str) { return str.toUpperCase(); }, function(str) { return str[0].toUpperCase() + str.slice(1).toLowerCase(); }, function(str) { return str + str; }]));
// should log: { catfood: ['CATFOOD', 'Catfood', 'catfoodcatfood'], glue: ['GLUE', 'Glue', 'glueglue'], beer: ['BEER', 'Beer', 'beerbeer'] }
