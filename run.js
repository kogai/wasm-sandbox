require("webassembly")
  // .load("program.wasm")
  // .load("lib.wasm")
  .load("lib.optimized.wasm")
  .then(module => {
    console.log("1 + 2 + fib(10) = " + module.exports.add(1, 2));
  })
  .catch(console.error);
