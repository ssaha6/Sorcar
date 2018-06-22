type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d"} {:global} $$d: [int]int;

axiom {:array_info "$$d"} {:global} {:elem_width 64} {:source_name "d"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d: bool;

axiom {:array_info "$$mul2"} {:global} {:elem_width 64} {:source_name "mul2"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mul2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mul2: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mul2: bool;

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

function FDIV64(int, int) : int;

function FSUB64(int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

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

procedure {:source_name "kernel4"} {:kernel} $kernel4($n: int, $tsteps: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 0) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d && !_WRITE_HAS_OCCURRED_$$d && !_ATOMIC_HAS_OCCURRED_$$d;
  requires !_READ_HAS_OCCURRED_$$mul2 && !_WRITE_HAS_OCCURRED_$$mul2 && !_ATOMIC_HAS_OCCURRED_$$mul2;
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
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:source_name "kernel4"} {:kernel} $kernel4($n: int, $tsteps: int)
{
  var v0$1: int;
  var v0$2: int;


  $0:
    havoc v0$1, v0$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$d(true, 0, FDIV64(FSUB64(-9223372036854775808, v0$1), 4611686018427387904), $$d[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$d(true, 0, FDIV64(FSUB64(-9223372036854775808, v0$2), 4611686018427387904));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d"} true;
    $$d[0] := FDIV64(FSUB64(-9223372036854775808, v0$1), 4611686018427387904);
    $$d[0] := FDIV64(FSUB64(-9223372036854775808, v0$2), 4611686018427387904);
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

const _WATCHED_VALUE_$$d: int;

procedure {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _READ_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_READ_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d: bool;

procedure {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _WRITE_HAS_OCCURRED_$$d);
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



procedure _CHECK_WRITE_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_ATOMIC_$$d(_P: bool, _offset: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



const _WATCHED_VALUE_$$mul2: int;

procedure {:inline 1} _LOG_READ_$$mul2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$mul2;



implementation {:inline 1} _LOG_READ_$$mul2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mul2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mul2 == _value then true else _READ_HAS_OCCURRED_$$mul2);
    return;
}



procedure _CHECK_READ_$$mul2(_P: bool, _offset: int, _value: int);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mul2);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mul2: bool;

procedure {:inline 1} _LOG_WRITE_$$mul2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$mul2, _WRITE_READ_BENIGN_FLAG_$$mul2;



implementation {:inline 1} _LOG_WRITE_$$mul2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mul2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mul2 == _value then true else _WRITE_HAS_OCCURRED_$$mul2);
    _WRITE_READ_BENIGN_FLAG_$$mul2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mul2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mul2);
    return;
}



procedure _CHECK_WRITE_$$mul2(_P: bool, _offset: int, _value: int);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mul2 != _value);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mul2 != _value);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mul2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$mul2;



implementation {:inline 1} _LOG_ATOMIC_$$mul2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mul2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mul2);
    return;
}



procedure _CHECK_ATOMIC_$$mul2(_P: bool, _offset: int);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "mul2"} {:array "$$mul2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mul2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$mul2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mul2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mul2 := (if _P && _WRITE_HAS_OCCURRED_$$mul2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mul2);
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
