(module
  ;; types
  (type $u8arr (sub (array (mut i8))))
  (type $sig_i_l (sub (func (param i64) (result i32))))
  (type $sig_l_l (sub (func (param i64) (result i64)))) 
  (type $sig_u8arr_i (func (param i32) (result (ref $u8arr))))
  (type $sig_i_u8arrl (func (param (ref $u8arr)) (param i64) (result i32)))
  (type $sig_v_u8arrli (func (param (ref $u8arr)) (param i64) (param i32)))

  ;; create table
  (table 1 1 funcref (ref.func $fn_l_l))

  ;; int functions
  (func $fn_i_l (type $sig_i_l)
    i32.const 0
  )
  
  (func $fn_l_l (type $sig_l_l)
    local.get 0
  )

  ;; array functions
  (func $alloc_u8arr (type $sig_u8arr_i)
    local.get 0
    array.new_default $u8arr
  )

  (func $u8arr_get (type $sig_i_u8arrl)
    local.get 0
    local.get 1
    i32.const 0
    (call_indirect 0 (type $sig_i_l))
    (array.get_u $u8arr)
  )
  
  (func $u8arr_set (type $sig_v_u8arrli)
    local.get 0
    local.get 1
    i32.const 0
    (call_indirect 0 (type $sig_i_l))
    local.get 2
    (array.set $u8arr)
  )

  ;; exports
  (export "fn_i_l" (func $fn_i_l))
  (export "fn_l_l" (func $fn_l_l))
  (export "alloc_u8arr" (func $alloc_u8arr))
  (export "u8arr_get" (func $u8arr_get))
  (export "u8arr_set" (func $u8arr_set))
)
