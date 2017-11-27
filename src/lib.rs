#![feature(lang_items)]
#![no_std]

#[no_mangle]
pub fn add(a: i32, b: i32) -> i32 {
    return a + b + fib(25)
}

#[no_mangle]
pub fn fib(x: i32) -> i32 {
    match x {
        0 | 1 => x,
        _ => {
            fib(x - 2) + fib(x - 1)
        }
    }
}

#[lang = "panic_fmt"]
#[no_mangle]
pub extern fn rust_begin_panic(_msg: core::fmt::Arguments,
                               _file: &'static str,
                               _line: u32,
                               _column: u32) -> ! {
                                   loop {}
}
