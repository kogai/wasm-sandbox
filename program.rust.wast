(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (table 1 1 anyfunc)
 (memory $0 17)
 (export "memory" (memory $0))
 (export "add" (func $add))
 (export "fib" (func $fib))
 (export "rust_begin_unwind" (func $rust_begin_unwind))
 (func $add (type $0) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (i32.add
    (get_local $var$1)
    (get_local $var$0)
   )
   (call $fib
    (i32.const 25)
   )
  )
 )
 (func $fib (type $1) (param $var$0 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $var$0)
     (i32.const 2)
    )
   )
   (return
    (get_local $var$0)
   )
  )
  (i32.add
   (call $fib
    (i32.add
     (get_local $var$0)
     (i32.const -2)
    )
   )
   (call $fib
    (i32.add
     (get_local $var$0)
     (i32.const -1)
    )
   )
  )
 )
 (func $rust_begin_unwind (type $2) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (param $var$3 i32) (param $var$4 i32) (param $var$5 i32) (param $var$6 i32) (param $var$7 i32) (param $var$8 i32) (param $var$9 i32)
  (loop $label$0
   (br $label$0)
  )
 )
 ;; custom section "linking", size 3
)

