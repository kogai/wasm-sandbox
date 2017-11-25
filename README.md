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
