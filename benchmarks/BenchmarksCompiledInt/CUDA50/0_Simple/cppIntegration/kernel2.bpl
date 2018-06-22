type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_data"} {:global} $$g_data: [int]int;

axiom {:array_info "$$g_data"} {:global} {:elem_width 32} {:source_name "g_data"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_data: bool;

axiom {:array_info "$$data"} {:elem_width 32} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: int;

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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel2"} {:kernel} $_Z7kernel2P4int2();
  requires !_READ_HAS_OCCURRED_$$g_data && !_WRITE_HAS_OCCURRED_$$g_data && !_ATOMIC_HAS_OCCURRED_$$g_data;
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
  modifies _READ_HAS_OCCURRED_$$g_data, _WRITE_HAS_OCCURRED_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:source_name "kernel2"} {:kernel} $_Z7kernel2P4int2()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;


  $0:
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$g_data(true, BV32_MUL(local_id_x$1, 2), $$g_data[BV32_MUL(local_id_x$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$g_data(true, BV32_MUL(local_id_x$2, 2), $$g_data[BV32_MUL(local_id_x$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v0$1 := $$g_data[BV32_MUL(local_id_x$1, 2)];
    v0$2 := $$g_data[BV32_MUL(local_id_x$2, 2)];
    $$data$0$1 := v0$1;
    $$data$0$2 := v0$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$g_data(true, BV32_ADD(BV32_MUL(local_id_x$1, 2), 1), $$g_data[BV32_ADD(BV32_MUL(local_id_x$1, 2), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$g_data(true, BV32_ADD(BV32_MUL(local_id_x$2, 2), 1), $$g_data[BV32_ADD(BV32_MUL(local_id_x$2, 2), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_data"} true;
    v1$1 := $$g_data[BV32_ADD(BV32_MUL(local_id_x$1, 2), 1)];
    v1$2 := $$g_data[BV32_ADD(BV32_MUL(local_id_x$2, 2), 1)];
    $$data$1$1 := v1$1;
    $$data$1$2 := v1$2;
    v2$1 := $$data$0$1;
    v2$2 := $$data$0$2;
    v3$1 := $$data$1$1;
    v3$2 := $$data$1$2;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$g_data(true, BV32_MUL(local_id_x$1, 2), BV32_SUB(v2$1, v3$1), $$g_data[BV32_MUL(local_id_x$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(true, BV32_MUL(local_id_x$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$g_data(true, BV32_MUL(local_id_x$2, 2), BV32_SUB(v2$2, v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_data"} true;
    $$g_data[BV32_MUL(local_id_x$1, 2)] := BV32_SUB(v2$1, v3$1);
    $$g_data[BV32_MUL(local_id_x$2, 2)] := BV32_SUB(v2$2, v3$2);
    return;
}



axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$data$0$1: int;

var $$data$0$2: int;

var $$data$1$1: int;

var $$data$1$2: int;

const _WATCHED_VALUE_$$g_data: int;

procedure {:inline 1} _LOG_READ_$$g_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_data;



implementation {:inline 1} _LOG_READ_$$g_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then true else _READ_HAS_OCCURRED_$$g_data);
    return;
}



procedure _CHECK_READ_$$g_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_data);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_data: bool;

procedure {:inline 1} _LOG_WRITE_$$g_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_data, _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:inline 1} _LOG_WRITE_$$g_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then true else _WRITE_HAS_OCCURRED_$$g_data);
    _WRITE_READ_BENIGN_FLAG_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_data);
    return;
}



procedure _CHECK_WRITE_$$g_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data != _value);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_data != _value);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_data;



implementation {:inline 1} _LOG_ATOMIC_$$g_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_data);
    return;
}



procedure _CHECK_ATOMIC_$$g_data(_P: bool, _offset: int);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_data"} {:array "$$g_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_data := (if _P && _WRITE_HAS_OCCURRED_$$g_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_data);
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
