type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data_refY"} {:global} $$data_refY: [int]int;

axiom {:array_info "$$data_refY"} {:global} {:elem_width 32} {:source_name "data_refY"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_refY: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_refY: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_refY: bool;

var {:source_name "data_refX"} {:global} $$data_refX: [int]int;

axiom {:array_info "$$data_refX"} {:global} {:elem_width 32} {:source_name "data_refX"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data_refX: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data_refX: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data_refX: bool;

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

function FADD64(int, int) : int;

function FCOS64(int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSIN64(int) : int;

function FSUB64(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "run"} {:kernel} $_Z3runPfS_();
  requires !_READ_HAS_OCCURRED_$$data_refY && !_WRITE_HAS_OCCURRED_$$data_refY && !_ATOMIC_HAS_OCCURRED_$$data_refY;
  requires !_READ_HAS_OCCURRED_$$data_refX && !_WRITE_HAS_OCCURRED_$$data_refX && !_ATOMIC_HAS_OCCURRED_$$data_refX;
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
  modifies _READ_HAS_OCCURRED_$$data_refY, _READ_HAS_OCCURRED_$$data_refX, _WRITE_HAS_OCCURRED_$$data_refY, _WRITE_READ_BENIGN_FLAG_$$data_refY, _WRITE_READ_BENIGN_FLAG_$$data_refY, _WRITE_HAS_OCCURRED_$$data_refX, _WRITE_READ_BENIGN_FLAG_$$data_refX, _WRITE_READ_BENIGN_FLAG_$$data_refX;



implementation {:source_name "run"} {:kernel} $_Z3runPfS_()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$data_refY(true, v0$1, $$data_refY[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$data_refY(true, v0$2, $$data_refY[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data_refY"} true;
    v1$1 := $$data_refY[v0$1];
    v1$2 := $$data_refY[v0$2];
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$data_refX(true, v0$1, $$data_refX[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$data_refX(true, v0$2, $$data_refX[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data_refX"} true;
    v2$1 := $$data_refX[v0$1];
    v2$2 := $$data_refX[v0$2];
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$data_refY(true, v0$1, FP64_CONV32(FSUB64(FMUL64(FP32_CONV64(v1$1), FCOS64(4569220451632414720)), FMUL64(FP32_CONV64(v2$1), FSIN64(4569220451632414720)))), $$data_refY[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refY(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$data_refY(true, v0$2, FP64_CONV32(FSUB64(FMUL64(FP32_CONV64(v1$2), FCOS64(4569220451632414720)), FMUL64(FP32_CONV64(v2$2), FSIN64(4569220451632414720)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_refY"} true;
    $$data_refY[v0$1] := FP64_CONV32(FSUB64(FMUL64(FP32_CONV64(v1$1), FCOS64(4569220451632414720)), FMUL64(FP32_CONV64(v2$1), FSIN64(4569220451632414720))));
    $$data_refY[v0$2] := FP64_CONV32(FSUB64(FMUL64(FP32_CONV64(v1$2), FCOS64(4569220451632414720)), FMUL64(FP32_CONV64(v2$2), FSIN64(4569220451632414720))));
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$data_refY(true, v0$1, $$data_refY[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$data_refY(true, v0$2, $$data_refY[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data_refY"} true;
    v3$1 := $$data_refY[v0$1];
    v3$2 := $$data_refY[v0$2];
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$data_refX(true, v0$1, $$data_refX[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$data_refX(true, v0$2, $$data_refX[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data_refX"} true;
    v4$1 := $$data_refX[v0$1];
    v4$2 := $$data_refX[v0$2];
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$data_refX(true, v0$1, FP64_CONV32(FADD64(FMUL64(FP32_CONV64(v3$1), FSIN64(4569220451632414720)), FMUL64(FP32_CONV64(v4$1), FCOS64(4569220451632414720)))), $$data_refX[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refX(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$data_refX(true, v0$2, FP64_CONV32(FADD64(FMUL64(FP32_CONV64(v3$2), FSIN64(4569220451632414720)), FMUL64(FP32_CONV64(v4$2), FCOS64(4569220451632414720)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data_refX"} true;
    $$data_refX[v0$1] := FP64_CONV32(FADD64(FMUL64(FP32_CONV64(v3$1), FSIN64(4569220451632414720)), FMUL64(FP32_CONV64(v4$1), FCOS64(4569220451632414720))));
    $$data_refX[v0$2] := FP64_CONV32(FADD64(FMUL64(FP32_CONV64(v3$2), FSIN64(4569220451632414720)), FMUL64(FP32_CONV64(v4$2), FCOS64(4569220451632414720))));
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$data_refY: int;

procedure {:inline 1} _LOG_READ_$$data_refY(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_refY;



implementation {:inline 1} _LOG_READ_$$data_refY(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_refY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refY == _value then true else _READ_HAS_OCCURRED_$$data_refY);
    return;
}



procedure _CHECK_READ_$$data_refY(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_refY);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_refY: bool;

procedure {:inline 1} _LOG_WRITE_$$data_refY(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_refY, _WRITE_READ_BENIGN_FLAG_$$data_refY;



implementation {:inline 1} _LOG_WRITE_$$data_refY(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_refY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refY == _value then true else _WRITE_HAS_OCCURRED_$$data_refY);
    _WRITE_READ_BENIGN_FLAG_$$data_refY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refY == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_refY);
    return;
}



procedure _CHECK_WRITE_$$data_refY(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refY != _value);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refY != _value);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_refY(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_refY;



implementation {:inline 1} _LOG_ATOMIC_$$data_refY(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_refY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_refY);
    return;
}



procedure _CHECK_ATOMIC_$$data_refY(_P: bool, _offset: int);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_refY"} {:array "$$data_refY"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refY(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_refY;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refY(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_refY := (if _P && _WRITE_HAS_OCCURRED_$$data_refY && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_refY);
    return;
}



const _WATCHED_VALUE_$$data_refX: int;

procedure {:inline 1} _LOG_READ_$$data_refX(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data_refX;



implementation {:inline 1} _LOG_READ_$$data_refX(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data_refX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refX == _value then true else _READ_HAS_OCCURRED_$$data_refX);
    return;
}



procedure _CHECK_READ_$$data_refX(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data_refX);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data_refX: bool;

procedure {:inline 1} _LOG_WRITE_$$data_refX(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data_refX, _WRITE_READ_BENIGN_FLAG_$$data_refX;



implementation {:inline 1} _LOG_WRITE_$$data_refX(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data_refX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refX == _value then true else _WRITE_HAS_OCCURRED_$$data_refX);
    _WRITE_READ_BENIGN_FLAG_$$data_refX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refX == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data_refX);
    return;
}



procedure _CHECK_WRITE_$$data_refX(_P: bool, _offset: int, _value: int);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refX != _value);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data_refX != _value);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data_refX(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data_refX;



implementation {:inline 1} _LOG_ATOMIC_$$data_refX(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data_refX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data_refX);
    return;
}



procedure _CHECK_ATOMIC_$$data_refX(_P: bool, _offset: int);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset);
  requires {:source_name "data_refX"} {:array "$$data_refX"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refX(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data_refX;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data_refX(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data_refX := (if _P && _WRITE_HAS_OCCURRED_$$data_refX && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data_refX);
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
