(module
 (type $0 (func (param i32 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) " \'\00\00")
 (export "add" (func $0))
 (func $0 (type $0) (param $var$0 i32) (param $var$1 i32) (result i32)
  (local $var$2 i32)
  (block $label$0 i32
   (block $label$1 i32
    (i32.store offset=12
     (tee_local $var$2
      (i32.sub
       (i32.load offset=4
        (i32.const 0)
       )
       (i32.const 16)
      )
     )
     (get_local $var$0)
    )
    (i32.store offset=8
     (get_local $var$2)
     (get_local $var$1)
    )
    (i32.add
     (i32.load offset=12
      (get_local $var$2)
     )
     (get_local $var$1)
    )
   )
  )
 )
)

