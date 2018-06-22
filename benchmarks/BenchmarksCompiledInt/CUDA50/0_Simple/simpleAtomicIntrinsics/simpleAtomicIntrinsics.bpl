type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(y: int, x$1: [int]int, x$2: [int]int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

const _WATCHED_OFFSET: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

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

procedure {:source_name "testKernel"} {:kernel} $_Z10testKernelPi();
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:source_name "testKernel"} {:kernel} $_Z10testKernelPi()
{
  var v3$1: int;
  var v3$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 1} _LOG_ATOMIC_$$g_odata(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_ATOMIC_$$g_odata(true, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_ATOMIC_$$g_odata(true, 1);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_ATOMIC_$$g_odata(true, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v2$1, v2$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_ATOMIC_$$g_odata(true, 2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 3} _CHECK_ATOMIC_$$g_odata(true, 2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v3$1, v3$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_ATOMIC_$$g_odata(true, 3);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 4} _CHECK_ATOMIC_$$g_odata(true, 3);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v4$1, v4$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_ATOMIC_$$g_odata(true, 4);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 5} _CHECK_ATOMIC_$$g_odata(true, 4);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v5$1, v5$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_ATOMIC_$$g_odata(true, 5);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 6} _CHECK_ATOMIC_$$g_odata(true, 5);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v6$1, v6$2;
    call {:sourceloc} {:sourceloc_num 7} _LOG_ATOMIC_$$g_odata(true, 6);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 7} _CHECK_ATOMIC_$$g_odata(true, 6);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_ATOMIC_$$g_odata(true, 7);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 8} _CHECK_ATOMIC_$$g_odata(true, 7);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v8$1, v8$2;
    call {:sourceloc} {:sourceloc_num 9} _LOG_ATOMIC_$$g_odata(true, 8);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 9} _CHECK_ATOMIC_$$g_odata(true, 8);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v9$1, v9$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_ATOMIC_$$g_odata(true, 9);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 10} _CHECK_ATOMIC_$$g_odata(true, 9);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v10$1, v10$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_ATOMIC_$$g_odata(true, 10);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 11} _CHECK_ATOMIC_$$g_odata(true, 10);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_odata"} true;
    havoc v11$1, v11$2;
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
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
