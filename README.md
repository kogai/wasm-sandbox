C -> WA
yarn wa compile -o program.wasm program.c

C -> MachineCode?
yarn wa assemble program.wasm -o program.native

WA -> S-exp
yarn wa disassemble -o program.wast program.wasm

MachineCode? -> S-exp
yarn wa disassemble -o program.wast program.native

rustup target add wasm32-unknown-emscripten
cargo build --target wasm32-unknown-emscripten

UPDATED
https://www.hellorust.com/news/native-wasm-target.html

rustup update
rustup target add wasm32-unknown-unknown --toolchain nightly
rustc +nightly --target wasm32-unknown-unknown -O src/lib.rs --crate-type=cdylib

wasm-gc lib.wasm lib.optimized.wasm
yarn wa disassemble -o lib.wast lib.wasm
yarn wa disassemble -o lib.optimized.wast lib.optimized.wasm
