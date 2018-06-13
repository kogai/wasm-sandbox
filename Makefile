program.rust.wasm: src/lib.rs
	cargo +nightly build --target wasm32-unknown-unknown --release
	wasm-gc target/wasm32-unknown-unknown/release/wasm_sandbox.wasm -o program.rust.wasm
	ls -lah | grep program.rust

install:
	rustup target add wasm32-unknown-unknown --toolchain nightly  
	cargo install wasm-gc

