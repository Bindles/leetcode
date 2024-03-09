/**
 * @param {...(null|boolean|number|string|Array|Object)} args
 * @return {number}
 */
var argumentsLength = function(...args) {
  return args.length;
};
args=[{}, null, "3"]
console.log(argumentsLength(...args))