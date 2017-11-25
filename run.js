require("webassembly")
  // .load("program.wasm")
  .load("target/wasm32-unknown-emscripten/release/deps/libwasm_sandbox-ec4258fd5a138076.rlib")
  .then(module => {
    console.log("1 + 2 = " + module.exports.add(1, 2));
  })
  .catch(console.error);
