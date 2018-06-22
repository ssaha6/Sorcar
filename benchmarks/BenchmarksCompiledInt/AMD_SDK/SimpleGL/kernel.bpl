type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "pos"} {:global} $$pos: [int]int;

axiom {:array_info "$$pos"} {:global} {:elem_width 32} {:source_name "pos"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pos: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pos: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FCOS32(int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSIN32(int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "sineWave"} {:kernel} $sineWave($width: int, $height: int, $time: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$pos && !_WRITE_HAS_OCCURRED_$$pos && !_ATOMIC_HAS_OCCURRED_$$pos;
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
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:source_name "sineWave"} {:kernel} $sineWave($width: int, $height: int, $time: int)
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
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := FADD32(FMUL32(FDIV32(UI32_TO_FP32(v0$1), UI32_TO_FP32($width)), 1073741824), -1082130432);
    v2$2 := FADD32(FMUL32(FDIV32(UI32_TO_FP32(v0$2), UI32_TO_FP32($width)), 1073741824), -1082130432);
    v3$1 := FADD32(FMUL32(FDIV32(UI32_TO_FP32(v1$1), UI32_TO_FP32($height)), 1073741824), -1082130432);
    v3$2 := FADD32(FMUL32(FDIV32(UI32_TO_FP32(v1$2), UI32_TO_FP32($height)), 1073741824), -1082130432);
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), v2$1, $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$pos(true, BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4)] := v2$1;
    $$pos[BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4)] := v2$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1), FMUL32(FMUL32(FSIN32(FADD32(FMUL32(v2$1, 1082130432), $time)), FCOS32(FADD32(FMUL32(v3$1, 1082130432), $time))), 1056964608), $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1), FMUL32(FMUL32(FSIN32(FADD32(FMUL32(v2$2, 1082130432), $time)), FCOS32(FADD32(FMUL32(v3$2, 1082130432), $time))), 1056964608));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 1)] := FMUL32(FMUL32(FSIN32(FADD32(FMUL32(v2$1, 1082130432), $time)), FCOS32(FADD32(FMUL32(v3$1, 1082130432), $time))), 1056964608);
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 1)] := FMUL32(FMUL32(FSIN32(FADD32(FMUL32(v2$2, 1082130432), $time)), FCOS32(FADD32(FMUL32(v3$2, 1082130432), $time))), 1056964608);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2), v3$1, $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2), v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 2)] := v3$1;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 2)] := v3$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3), 1065353216, $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$pos(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3), 1065353216);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pos"} true;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, $width), v0$1), 4), 3)] := 1065353216;
    $$pos[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, $width), v0$2), 4), 3)] := 1065353216;
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$pos: int;

procedure {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_READ_$$pos(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _READ_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_READ_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pos);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pos: bool;

procedure {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pos, _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _LOG_WRITE_$$pos(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then true else _WRITE_HAS_OCCURRED_$$pos);
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pos);
    return;
}



procedure _CHECK_WRITE_$$pos(_P: bool, _offset: int, _value: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pos != _value);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pos;



implementation {:inline 1} _LOG_ATOMIC_$$pos(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pos := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pos);
    return;
}



procedure _CHECK_ATOMIC_$$pos(_P: bool, _offset: int);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);
  requires {:source_name "pos"} {:array "$$pos"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pos;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pos(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pos := (if _P && _WRITE_HAS_OCCURRED_$$pos && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pos);
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
