type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$op1"} {:global} {:elem_width 32} {:source_name "op1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$op1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$op1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$op1: bool;

axiom {:array_info "$$op2"} {:global} {:elem_width 32} {:source_name "op2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$op2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$op2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$op2: bool;

var {:source_name "sum"} {:global} $$sum: [int]int;

axiom {:array_info "$$sum"} {:global} {:elem_width 32} {:source_name "sum"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sum: bool;

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

function FADD32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "AddKernel"} {:kernel} $_Z9AddKernelPKfS0_iPf($count: int);
  requires !_READ_HAS_OCCURRED_$$op1 && !_WRITE_HAS_OCCURRED_$$op1 && !_ATOMIC_HAS_OCCURRED_$$op1;
  requires !_READ_HAS_OCCURRED_$$op2 && !_WRITE_HAS_OCCURRED_$$op2 && !_ATOMIC_HAS_OCCURRED_$$op2;
  requires !_READ_HAS_OCCURRED_$$sum && !_WRITE_HAS_OCCURRED_$$sum && !_ATOMIC_HAS_OCCURRED_$$sum;
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
  modifies _WRITE_HAS_OCCURRED_$$sum, _WRITE_READ_BENIGN_FLAG_$$sum, _WRITE_READ_BENIGN_FLAG_$$sum;



implementation {:source_name "AddKernel"} {:kernel} $_Z9AddKernelPKfS0_iPf($count: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(local_id_x$1, BV32_MUL(group_id_x$1, group_size_x));
    v0$2 := BV32_ADD(local_id_x$2, BV32_MUL(group_id_x$2, group_size_x));
    v1$1 := BV32_SGE(v0$1, $count);
    v1$2 := BV32_SGE(v0$2, $count);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p1$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$sum(p1$1, v0$1, FADD32(v2$1, v3$1), $$sum[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sum(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$sum(p1$2, v0$2, FADD32(v2$2, v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sum"} true;
    $$sum[v0$1] := (if p1$1 then FADD32(v2$1, v3$1) else $$sum[v0$1]);
    $$sum[v0$2] := (if p1$2 then FADD32(v2$2, v3$2) else $$sum[v0$2]);
    return;
}



axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1200 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$op1: int;

procedure {:inline 1} _LOG_READ_$$op1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$op1;



implementation {:inline 1} _LOG_READ_$$op1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$op1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op1 == _value then true else _READ_HAS_OCCURRED_$$op1);
    return;
}



procedure _CHECK_READ_$$op1(_P: bool, _offset: int, _value: int);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$op1);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$op1: bool;

procedure {:inline 1} _LOG_WRITE_$$op1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$op1, _WRITE_READ_BENIGN_FLAG_$$op1;



implementation {:inline 1} _LOG_WRITE_$$op1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$op1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op1 == _value then true else _WRITE_HAS_OCCURRED_$$op1);
    _WRITE_READ_BENIGN_FLAG_$$op1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$op1);
    return;
}



procedure _CHECK_WRITE_$$op1(_P: bool, _offset: int, _value: int);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op1 != _value);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op1 != _value);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$op1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$op1;



implementation {:inline 1} _LOG_ATOMIC_$$op1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$op1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$op1);
    return;
}



procedure _CHECK_ATOMIC_$$op1(_P: bool, _offset: int);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "op1"} {:array "$$op1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$op1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$op1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$op1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$op1 := (if _P && _WRITE_HAS_OCCURRED_$$op1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$op1);
    return;
}



const _WATCHED_VALUE_$$op2: int;

procedure {:inline 1} _LOG_READ_$$op2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$op2;



implementation {:inline 1} _LOG_READ_$$op2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$op2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op2 == _value then true else _READ_HAS_OCCURRED_$$op2);
    return;
}



procedure _CHECK_READ_$$op2(_P: bool, _offset: int, _value: int);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$op2);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$op2: bool;

procedure {:inline 1} _LOG_WRITE_$$op2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$op2, _WRITE_READ_BENIGN_FLAG_$$op2;



implementation {:inline 1} _LOG_WRITE_$$op2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$op2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op2 == _value then true else _WRITE_HAS_OCCURRED_$$op2);
    _WRITE_READ_BENIGN_FLAG_$$op2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$op2);
    return;
}



procedure _CHECK_WRITE_$$op2(_P: bool, _offset: int, _value: int);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op2 != _value);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$op2 != _value);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$op2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$op2;



implementation {:inline 1} _LOG_ATOMIC_$$op2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$op2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$op2);
    return;
}



procedure _CHECK_ATOMIC_$$op2(_P: bool, _offset: int);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "op2"} {:array "$$op2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$op2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$op2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$op2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$op2 := (if _P && _WRITE_HAS_OCCURRED_$$op2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$op2);
    return;
}



const _WATCHED_VALUE_$$sum: int;

procedure {:inline 1} _LOG_READ_$$sum(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sum;



implementation {:inline 1} _LOG_READ_$$sum(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sum == _value then true else _READ_HAS_OCCURRED_$$sum);
    return;
}



procedure _CHECK_READ_$$sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sum);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sum: bool;

procedure {:inline 1} _LOG_WRITE_$$sum(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sum, _WRITE_READ_BENIGN_FLAG_$$sum;



implementation {:inline 1} _LOG_WRITE_$$sum(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sum == _value then true else _WRITE_HAS_OCCURRED_$$sum);
    _WRITE_READ_BENIGN_FLAG_$$sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sum == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sum);
    return;
}



procedure _CHECK_WRITE_$$sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sum != _value);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sum != _value);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sum(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sum;



implementation {:inline 1} _LOG_ATOMIC_$$sum(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sum);
    return;
}



procedure _CHECK_ATOMIC_$$sum(_P: bool, _offset: int);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset);
  requires {:source_name "sum"} {:array "$$sum"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sum(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sum;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sum(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sum := (if _P && _WRITE_HAS_OCCURRED_$$sum && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sum);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
