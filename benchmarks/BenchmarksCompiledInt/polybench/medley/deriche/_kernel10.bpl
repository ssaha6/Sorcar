type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "a3"} {:global} $$a3: [int]int;

axiom {:array_info "$$a3"} {:global} {:elem_width 32} {:source_name "a3"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a3: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a3: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a3: bool;

var {:source_name "a7"} {:global} $$a7: [int]int;

axiom {:array_info "$$a7"} {:global} {:elem_width 32} {:source_name "a7"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a7: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a7: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a7: bool;

axiom {:array_info "$$k"} {:global} {:elem_width 32} {:source_name "k"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$k: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$k: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$k: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_SEXT64(int) : int;

function FADD32(int, int) : int;

function FEXP32(int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "kernel10"} {:kernel} $kernel10($alpha: int, $h: int, $w: int);
  requires {:sourceloc_num 0} {:thread 1} (if $h == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $w == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($h, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($h, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($w, 0) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($w, -2147483647) then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($h, 0) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($h, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($w, 1) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($w, 2147483647) then 1 else 0)))), BV32_AND(BV32_AND(BV1_ZEXT32((if $h == 0 then 1 else 0)), BV1_ZEXT32((if BV32_SLE($w, 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($w), -2147483648) then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$a3 && !_WRITE_HAS_OCCURRED_$$a3 && !_ATOMIC_HAS_OCCURRED_$$a3;
  requires !_READ_HAS_OCCURRED_$$a7 && !_WRITE_HAS_OCCURRED_$$a7 && !_ATOMIC_HAS_OCCURRED_$$a7;
  requires !_READ_HAS_OCCURRED_$$k && !_WRITE_HAS_OCCURRED_$$k && !_ATOMIC_HAS_OCCURRED_$$k;
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
  modifies _WRITE_HAS_OCCURRED_$$a7, _WRITE_READ_BENIGN_FLAG_$$a7, _WRITE_READ_BENIGN_FLAG_$$a7, _WRITE_HAS_OCCURRED_$$a3, _WRITE_READ_BENIGN_FLAG_$$a3, _WRITE_READ_BENIGN_FLAG_$$a3;



implementation {:source_name "kernel10"} {:kernel} $kernel10($alpha: int, $h: int, $w: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;


  $0:
    havoc v0$1, v0$2;
    v1$1 := FMUL32(FMUL32(v0$1, FEXP32(FMUL32(FSUB32(-2147483648, $alpha), 1069066811))), FADD32($alpha, 1065353216));
    v1$2 := FMUL32(FMUL32(v0$2, FEXP32(FMUL32(FSUB32(-2147483648, $alpha), 1069066811))), FADD32($alpha, 1065353216));
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$a7(true, 0, v1$1, $$a7[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$a7(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$a7(true, 0, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$a7"} true;
    $$a7[0] := v1$1;
    $$a7[0] := v1$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$a3(true, 0, v1$1, $$a3[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$a3(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$a3(true, 0, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$a3"} true;
    $$a3[0] := v1$1;
    $$a3[0] := v1$2;
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

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

const _WATCHED_VALUE_$$a3: int;

procedure {:inline 1} _LOG_READ_$$a3(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$a3;



implementation {:inline 1} _LOG_READ_$$a3(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a3 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a3 == _value then true else _READ_HAS_OCCURRED_$$a3);
    return;
}



procedure _CHECK_READ_$$a3(_P: bool, _offset: int, _value: int);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a3);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a3: bool;

procedure {:inline 1} _LOG_WRITE_$$a3(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$a3, _WRITE_READ_BENIGN_FLAG_$$a3;



implementation {:inline 1} _LOG_WRITE_$$a3(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a3 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a3 == _value then true else _WRITE_HAS_OCCURRED_$$a3);
    _WRITE_READ_BENIGN_FLAG_$$a3 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a3 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a3);
    return;
}



procedure _CHECK_WRITE_$$a3(_P: bool, _offset: int, _value: int);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a3 != _value);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a3 != _value);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a3(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$a3;



implementation {:inline 1} _LOG_ATOMIC_$$a3(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a3 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a3);
    return;
}



procedure _CHECK_ATOMIC_$$a3(_P: bool, _offset: int);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset);
  requires {:source_name "a3"} {:array "$$a3"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a3(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$a3;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a3(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a3 := (if _P && _WRITE_HAS_OCCURRED_$$a3 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a3);
    return;
}



const _WATCHED_VALUE_$$a7: int;

procedure {:inline 1} _LOG_READ_$$a7(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$a7;



implementation {:inline 1} _LOG_READ_$$a7(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then true else _READ_HAS_OCCURRED_$$a7);
    return;
}



procedure _CHECK_READ_$$a7(_P: bool, _offset: int, _value: int);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a7);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a7: bool;

procedure {:inline 1} _LOG_WRITE_$$a7(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$a7, _WRITE_READ_BENIGN_FLAG_$$a7;



implementation {:inline 1} _LOG_WRITE_$$a7(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then true else _WRITE_HAS_OCCURRED_$$a7);
    _WRITE_READ_BENIGN_FLAG_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a7);
    return;
}



procedure _CHECK_WRITE_$$a7(_P: bool, _offset: int, _value: int);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 != _value);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 != _value);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a7(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$a7;



implementation {:inline 1} _LOG_ATOMIC_$$a7(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a7);
    return;
}



procedure _CHECK_ATOMIC_$$a7(_P: bool, _offset: int);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a7(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$a7;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a7(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a7 := (if _P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a7);
    return;
}



const _WATCHED_VALUE_$$k: int;

procedure {:inline 1} _LOG_READ_$$k(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$k;



implementation {:inline 1} _LOG_READ_$$k(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$k := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$k == _value then true else _READ_HAS_OCCURRED_$$k);
    return;
}



procedure _CHECK_READ_$$k(_P: bool, _offset: int, _value: int);
  requires {:source_name "k"} {:array "$$k"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$k);
  requires {:source_name "k"} {:array "$$k"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$k: bool;

procedure {:inline 1} _LOG_WRITE_$$k(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$k, _WRITE_READ_BENIGN_FLAG_$$k;



implementation {:inline 1} _LOG_WRITE_$$k(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$k := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$k == _value then true else _WRITE_HAS_OCCURRED_$$k);
    _WRITE_READ_BENIGN_FLAG_$$k := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$k == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$k);
    return;
}



procedure _CHECK_WRITE_$$k(_P: bool, _offset: int, _value: int);
  requires {:source_name "k"} {:array "$$k"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$k != _value);
  requires {:source_name "k"} {:array "$$k"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$k != _value);
  requires {:source_name "k"} {:array "$$k"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$k(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$k;



implementation {:inline 1} _LOG_ATOMIC_$$k(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$k := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$k);
    return;
}



procedure _CHECK_ATOMIC_$$k(_P: bool, _offset: int);
  requires {:source_name "k"} {:array "$$k"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset);
  requires {:source_name "k"} {:array "$$k"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$k(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$k;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$k(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$k := (if _P && _WRITE_HAS_OCCURRED_$$k && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$k);
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
