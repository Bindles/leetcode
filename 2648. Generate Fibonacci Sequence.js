// 2648. Generate Fibonacci Sequence
callCount = 5
/**
 * @return {Generator<number>}
 */
var fibGenerator = function*() {
    let a = 0, b = 1
    while (true) {
        yield a;
        [a, b] = [b, a+b]
    }
};

/**
 * const gen = fibGenerator();
 * gen.next().value; // 0
 * gen.next().value; // 1
 */