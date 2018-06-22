type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$verticesOffsets"} {:global} {:elem_width 32} {:source_name "verticesOffsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$verticesOffsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$verticesOffsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$verticesOffsets: bool;

var {:source_name "flags"} {:global} $$flags: [int]int;

axiom {:array_info "$$flags"} {:global} {:elem_width 32} {:source_name "flags"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$flags: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$flags: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$flags: bool;

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

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "markSegments"} {:kernel} $_Z12markSegmentsPKjPjj($verticesCount: int);
  requires !_READ_HAS_OCCURRED_$$verticesOffsets && !_WRITE_HAS_OCCURRED_$$verticesOffsets && !_ATOMIC_HAS_OCCURRED_$$verticesOffsets;
  requires !_READ_HAS_OCCURRED_$$flags && !_WRITE_HAS_OCCURRED_$$flags && !_ATOMIC_HAS_OCCURRED_$$flags;
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
  modifies _WRITE_HAS_OCCURRED_$$flags, _WRITE_READ_BENIGN_FLAG_$$flags, _WRITE_READ_BENIGN_FLAG_$$flags;



implementation {:source_name "markSegments"} {:kernel} $_Z12markSegmentsPKjPjj($verticesCount: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $verticesCount);
    v1$2 := BV32_ULT(v0$2, $verticesCount);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$flags(p0$1, v2$1, 1, $$flags[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$flags(p0$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$flags(p0$2, v2$2, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$flags"} true;
    $$flags[v2$1] := (if p0$1 then 1 else $$flags[v2$1]);
    $$flags[v2$2] := (if p0$2 then 1 else $$flags[v2$2]);
    return;
}



axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 4800 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$verticesOffsets: int;

procedure {:inline 1} _LOG_READ_$$verticesOffsets(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$verticesOffsets;



implementation {:inline 1} _LOG_READ_$$verticesOffsets(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then true else _READ_HAS_OCCURRED_$$verticesOffsets);
    return;
}



procedure _CHECK_READ_$$verticesOffsets(_P: bool, _offset: int, _value: int);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$verticesOffsets: bool;

procedure {:inline 1} _LOG_WRITE_$$verticesOffsets(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$verticesOffsets, _WRITE_READ_BENIGN_FLAG_$$verticesOffsets;



implementation {:inline 1} _LOG_WRITE_$$verticesOffsets(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then true else _WRITE_HAS_OCCURRED_$$verticesOffsets);
    _WRITE_READ_BENIGN_FLAG_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
    return;
}



procedure _CHECK_WRITE_$$verticesOffsets(_P: bool, _offset: int, _value: int);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets != _value);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets != _value);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$verticesOffsets(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$verticesOffsets;



implementation {:inline 1} _LOG_ATOMIC_$$verticesOffsets(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$verticesOffsets);
    return;
}



procedure _CHECK_ATOMIC_$$verticesOffsets(_P: bool, _offset: int);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesOffsets(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$verticesOffsets;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesOffsets(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$verticesOffsets := (if _P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
    return;
}



const _WATCHED_VALUE_$$flags: int;

procedure {:inline 1} _LOG_READ_$$flags(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$flags;



implementation {:inline 1} _LOG_READ_$$flags(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$flags := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flags == _value then true else _READ_HAS_OCCURRED_$$flags);
    return;
}



procedure _CHECK_READ_$$flags(_P: bool, _offset: int, _value: int);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$flags);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$flags: bool;

procedure {:inline 1} _LOG_WRITE_$$flags(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$flags, _WRITE_READ_BENIGN_FLAG_$$flags;



implementation {:inline 1} _LOG_WRITE_$$flags(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$flags := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flags == _value then true else _WRITE_HAS_OCCURRED_$$flags);
    _WRITE_READ_BENIGN_FLAG_$$flags := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flags == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$flags);
    return;
}



procedure _CHECK_WRITE_$$flags(_P: bool, _offset: int, _value: int);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flags != _value);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flags != _value);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$flags(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$flags;



implementation {:inline 1} _LOG_ATOMIC_$$flags(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$flags := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$flags);
    return;
}



procedure _CHECK_ATOMIC_$$flags(_P: bool, _offset: int);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset);
  requires {:source_name "flags"} {:array "$$flags"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flags(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$flags;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flags(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$flags := (if _P && _WRITE_HAS_OCCURRED_$$flags && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$flags);
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
