type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Output"} {:global} $$d_Output: [int]int;

axiom {:array_info "$$d_Output"} {:global} {:elem_width 32} {:source_name "d_Output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Output: bool;

axiom {:array_info "$$d_Input"} {:global} {:elem_width 32} {:source_name "d_Input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Input: bool;

const _WATCHED_OFFSET: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "fwtBatch2Kernel"} {:kernel} $_Z15fwtBatch2KernelPfS_i($stride: int);
  requires {:sourceloc_num 0} {:thread 1} (if $stride == 2048 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Output && !_WRITE_HAS_OCCURRED_$$d_Output && !_ATOMIC_HAS_OCCURRED_$$d_Output;
  requires !_READ_HAS_OCCURRED_$$d_Input && !_WRITE_HAS_OCCURRED_$$d_Input && !_ATOMIC_HAS_OCCURRED_$$d_Input;
  requires BV32_SGT(group_size_x, 0);
  requires BV32_SGT(num_groups_x, 0);
  requires BV32_SGE(group_id_x$1, 0);
  requires BV32_SGE(group_id_x$2, 0);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0);
  requires BV32_SGE(local_id_x$2, 0);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0);
  requires BV32_SGT(num_groups_y, 0);
  requires BV32_SGE(group_id_y$1, 0);
  requires BV32_SGE(group_id_y$2, 0);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0);
  requires BV32_SGE(local_id_y$2, 0);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0);
  requires BV32_SGT(num_groups_z, 0);
  requires BV32_SGE(group_id_z$1, 0);
  requires BV32_SGE(group_id_z$2, 0);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0);
  requires BV32_SGE(local_id_z$2, 0);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output;



implementation {:source_name "fwtBatch2Kernel"} {:kernel} $_Z15fwtBatch2KernelPfS_i($stride: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v8$1: int;
  var v8$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV32_MUL(BV32_MUL(group_size_x, num_groups_x), 4);
    v2$1 := BV32_MUL(group_id_y$1, v1);
    v2$2 := BV32_MUL(group_id_y$2, v1);
    v3$1 := BV32_MUL(group_id_y$1, v1);
    v3$2 := BV32_MUL(group_id_y$2, v1);
    v4$1 := BV32_AND(v0$1, BV32_SUB($stride, 1));
    v4$2 := BV32_AND(v0$2, BV32_SUB($stride, 1));
    v5$1 := BV32_ADD(BV32_SHL(BV32_SUB(v0$1, v4$1), 2), v4$1);
    v5$2 := BV32_ADD(BV32_SHL(BV32_SUB(v0$2, v4$2), 2), v4$2);
    v6$1 := BV32_ADD(v5$1, $stride);
    v6$2 := BV32_ADD(v5$2, $stride);
    v7$1 := BV32_ADD(v6$1, $stride);
    v7$2 := BV32_ADD(v6$2, $stride);
    v8$1 := BV32_ADD(v7$1, $stride);
    v8$2 := BV32_ADD(v7$2, $stride);
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    v13$1 := FADD32(v9$1, v11$1);
    v13$2 := FADD32(v9$2, v11$2);
    v14$1 := FSUB32(v9$1, v11$1);
    v14$2 := FSUB32(v9$2, v11$2);
    v15$1 := FADD32(v10$1, v12$1);
    v15$2 := FADD32(v10$2, v12$2);
    v16$1 := FSUB32(v10$1, v12$1);
    v16$2 := FSUB32(v10$2, v12$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$d_Output(true, BV32_ADD(v3$1, v5$1), FADD32(v13$1, v15$1), $$d_Output[BV32_ADD(v3$1, v5$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(true, BV32_ADD(v3$2, v5$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$d_Output(true, BV32_ADD(v3$2, v5$2), FADD32(v13$2, v15$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Output"} true;
    $$d_Output[BV32_ADD(v3$1, v5$1)] := FADD32(v13$1, v15$1);
    $$d_Output[BV32_ADD(v3$2, v5$2)] := FADD32(v13$2, v15$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$d_Output(true, BV32_ADD(v3$1, v6$1), FSUB32(v13$1, v15$1), $$d_Output[BV32_ADD(v3$1, v6$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(true, BV32_ADD(v3$2, v6$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$d_Output(true, BV32_ADD(v3$2, v6$2), FSUB32(v13$2, v15$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Output"} true;
    $$d_Output[BV32_ADD(v3$1, v6$1)] := FSUB32(v13$1, v15$1);
    $$d_Output[BV32_ADD(v3$2, v6$2)] := FSUB32(v13$2, v15$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$d_Output(true, BV32_ADD(v3$1, v7$1), FADD32(v14$1, v16$1), $$d_Output[BV32_ADD(v3$1, v7$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(true, BV32_ADD(v3$2, v7$2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$d_Output(true, BV32_ADD(v3$2, v7$2), FADD32(v14$2, v16$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Output"} true;
    $$d_Output[BV32_ADD(v3$1, v7$1)] := FADD32(v14$1, v16$1);
    $$d_Output[BV32_ADD(v3$2, v7$2)] := FADD32(v14$2, v16$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$d_Output(true, BV32_ADD(v3$1, v8$1), FSUB32(v14$1, v16$1), $$d_Output[BV32_ADD(v3$1, v8$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(true, BV32_ADD(v3$2, v8$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$d_Output(true, BV32_ADD(v3$2, v8$2), FSUB32(v14$2, v16$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Output"} true;
    $$d_Output[BV32_ADD(v3$1, v8$1)] := FSUB32(v14$1, v16$1);
    $$d_Output[BV32_ADD(v3$2, v8$2)] := FSUB32(v14$2, v16$2);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 8192 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$d_Output: int;

procedure {:inline 1} _LOG_READ_$$d_Output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Output;



implementation {:inline 1} _LOG_READ_$$d_Output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then true else _READ_HAS_OCCURRED_$$d_Output);
    return;
}



procedure _CHECK_READ_$$d_Output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Output);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Output: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output;



implementation {:inline 1} _LOG_WRITE_$$d_Output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then true else _WRITE_HAS_OCCURRED_$$d_Output);
    _WRITE_READ_BENIGN_FLAG_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Output);
    return;
}



procedure _CHECK_WRITE_$$d_Output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output != _value);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output != _value);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Output;



implementation {:inline 1} _LOG_ATOMIC_$$d_Output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Output);
    return;
}



procedure _CHECK_ATOMIC_$$d_Output(_P: bool, _offset: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Output := (if _P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Output);
    return;
}



const _WATCHED_VALUE_$$d_Input: int;

procedure {:inline 1} _LOG_READ_$$d_Input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Input;



implementation {:inline 1} _LOG_READ_$$d_Input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then true else _READ_HAS_OCCURRED_$$d_Input);
    return;
}



procedure _CHECK_READ_$$d_Input(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Input);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Input: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Input, _WRITE_READ_BENIGN_FLAG_$$d_Input;



implementation {:inline 1} _LOG_WRITE_$$d_Input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then true else _WRITE_HAS_OCCURRED_$$d_Input);
    _WRITE_READ_BENIGN_FLAG_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Input);
    return;
}



procedure _CHECK_WRITE_$$d_Input(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input != _value);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input != _value);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Input;



implementation {:inline 1} _LOG_ATOMIC_$$d_Input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Input);
    return;
}



procedure _CHECK_ATOMIC_$$d_Input(_P: bool, _offset: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Input := (if _P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Input);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
