/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */

//1
var map = function(arr, fn) {
    const transformedArray = [];
    
    for (let i = 0; i < arr.length; i++) {
        transformedArray.push(fn(arr[i], i));
    }
    
    return transformedArray;
};

//1-a
var map = function(arr, fn) {
    const transformedArray = [];
    for (let i = 0; i < arr.length; i++) transformedArray.push(fn(arr[i], i));
    return transformedArray;
};

//1-b
var map = function(arr, fn) {
    for (let i = 0; i < arr.length; i++) arr[i] = fn(arr[i], i);
    return arr;
};

//2 | FE
var map = function(arr, fn) {
    const transformedArray = [];

    arr.forEach((element, index) => {
        transformedArray.push(fn(element, index));
    });
    return transformedArray;
};

//var map = function(arr, fn) {
//    return arr.map((element, index) => fn(element, index));
//}; <= BUILT IN 'Array.map' METHOD

//3 | Array.Map
var map = function(arr, fn) {
    return arr.map((elem, index) => fn(elem, index));
};

//3-a | Array.Map.short
var map = function(arr, fn) {
    return arr.map(fn);
};