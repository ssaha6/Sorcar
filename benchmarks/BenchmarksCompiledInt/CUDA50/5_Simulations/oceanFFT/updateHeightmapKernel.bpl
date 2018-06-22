type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "heightMap"} {:global} $$heightMap: [int]int;

axiom {:array_info "$$heightMap"} {:global} {:elem_width 32} {:source_name "heightMap"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$heightMap: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$heightMap: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$heightMap: bool;

axiom {:array_info "$$ht"} {:global} {:elem_width 32} {:source_name "ht"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ht: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ht: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ht: bool;

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

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FMUL32(int, int) : int;

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

procedure {:source_name "updateHeightmapKernel"} {:kernel} $_Z21updateHeightmapKernelPfP6float2j($width: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 256 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$heightMap && !_WRITE_HAS_OCCURRED_$$heightMap && !_ATOMIC_HAS_OCCURRED_$$heightMap;
  requires !_READ_HAS_OCCURRED_$$ht && !_WRITE_HAS_OCCURRED_$$ht && !_ATOMIC_HAS_OCCURRED_$$ht;
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
  modifies _WRITE_HAS_OCCURRED_$$heightMap, _WRITE_READ_BENIGN_FLAG_$$heightMap, _WRITE_READ_BENIGN_FLAG_$$heightMap;



implementation {:source_name "updateHeightmapKernel"} {:kernel} $_Z21updateHeightmapKernelPfP6float2j($width: int)
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
    v2$1 := BV32_ADD(BV32_MUL(v1$1, $width), v0$1);
    v2$2 := BV32_ADD(BV32_MUL(v1$2, $width), v0$2);
    havoc v3$1, v3$2;
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$heightMap(true, v2$1, FMUL32(v3$1, (if BV32_AND(BV32_ADD(v0$1, v1$1), 1) != 0 then -1082130432 else 1065353216)), $$heightMap[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$heightMap(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$heightMap(true, v2$2, FMUL32(v3$2, (if BV32_AND(BV32_ADD(v0$2, v1$2), 1) != 0 then -1082130432 else 1065353216)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$heightMap"} true;
    $$heightMap[v2$1] := FMUL32(v3$1, (if BV32_AND(BV32_ADD(v0$1, v1$1), 1) != 0 then -1082130432 else 1065353216));
    $$heightMap[v2$2] := FMUL32(v3$2, (if BV32_AND(BV32_ADD(v0$2, v1$2), 1) != 0 then -1082130432 else 1065353216));
    return;
}



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$heightMap: int;

procedure {:inline 1} _LOG_READ_$$heightMap(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$heightMap;



implementation {:inline 1} _LOG_READ_$$heightMap(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$heightMap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$heightMap == _value then true else _READ_HAS_OCCURRED_$$heightMap);
    return;
}



procedure _CHECK_READ_$$heightMap(_P: bool, _offset: int, _value: int);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$heightMap);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$heightMap: bool;

procedure {:inline 1} _LOG_WRITE_$$heightMap(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$heightMap, _WRITE_READ_BENIGN_FLAG_$$heightMap;



implementation {:inline 1} _LOG_WRITE_$$heightMap(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$heightMap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$heightMap == _value then true else _WRITE_HAS_OCCURRED_$$heightMap);
    _WRITE_READ_BENIGN_FLAG_$$heightMap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$heightMap == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$heightMap);
    return;
}



procedure _CHECK_WRITE_$$heightMap(_P: bool, _offset: int, _value: int);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$heightMap != _value);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$heightMap != _value);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$heightMap(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$heightMap;



implementation {:inline 1} _LOG_ATOMIC_$$heightMap(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$heightMap := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$heightMap);
    return;
}



procedure _CHECK_ATOMIC_$$heightMap(_P: bool, _offset: int);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset);
  requires {:source_name "heightMap"} {:array "$$heightMap"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$heightMap(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$heightMap;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$heightMap(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$heightMap := (if _P && _WRITE_HAS_OCCURRED_$$heightMap && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$heightMap);
    return;
}



const _WATCHED_VALUE_$$ht: int;

procedure {:inline 1} _LOG_READ_$$ht(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ht;



implementation {:inline 1} _LOG_READ_$$ht(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ht == _value then true else _READ_HAS_OCCURRED_$$ht);
    return;
}



procedure _CHECK_READ_$$ht(_P: bool, _offset: int, _value: int);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ht);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ht: bool;

procedure {:inline 1} _LOG_WRITE_$$ht(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ht, _WRITE_READ_BENIGN_FLAG_$$ht;



implementation {:inline 1} _LOG_WRITE_$$ht(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ht == _value then true else _WRITE_HAS_OCCURRED_$$ht);
    _WRITE_READ_BENIGN_FLAG_$$ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ht == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ht);
    return;
}



procedure _CHECK_WRITE_$$ht(_P: bool, _offset: int, _value: int);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ht != _value);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ht != _value);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ht(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ht;



implementation {:inline 1} _LOG_ATOMIC_$$ht(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ht := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ht);
    return;
}



procedure _CHECK_ATOMIC_$$ht(_P: bool, _offset: int);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset);
  requires {:source_name "ht"} {:array "$$ht"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ht(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ht;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ht(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ht := (if _P && _WRITE_HAS_OCCURRED_$$ht && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ht);
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
