//JAVASCRIPT
//2418. Sort the People 
/**
 * @param {string[]} names
 * @param {number[]} heights
 * @return {string[]}
 */
function sortPeople(names = ["Mary","John","Emma"], heights = [180,165,170]) {
  const people = heights
      .map((height, i) => [names[i], height])
      .sort((a, b) => b[1] - a[1])
      .map((x) => x[0]);
  return people;
};
console.log(sortPeople())

function sortPeople(names = ["Mary","John","Emma"], heights = [180,165,170]) {
  return names.map((item,i)=>[item,heights[i]]).sort((a,b)=>b[1]-a[1]).map(item=>item[0])
};
console.log(sortPeople())

function sortPeople(names = ["Mary","John","Emma"], heights = [180,165,170]) {
  let arr=names.map((el,i)=>[el,heights[i]])
  return (arr.sort((a,b)=>b[1]-a[1])).map(el=>el[0])
};
console.log(sortPeople())

function sortPeople(names = ["Mary","John","Emma"], heights = [180,165,170]) {
  return names.map((e, i) => e + heights[i]).sort((a, b) => b.match(/\d+/) - a.match(/\d+/)).join(' ').replace(/[0-9]/g, '').split(" ")
};
console.log(sortPeople())
