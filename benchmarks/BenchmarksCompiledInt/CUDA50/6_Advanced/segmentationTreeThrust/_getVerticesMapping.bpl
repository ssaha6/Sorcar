type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "clusteredVerticesIDs"} {:global} $$clusteredVerticesIDs: [int]int;

axiom {:array_info "$$clusteredVerticesIDs"} {:global} {:elem_width 32} {:source_name "clusteredVerticesIDs"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$clusteredVerticesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs: bool;

axiom {:array_info "$$newVerticesIDs"} {:global} {:elem_width 32} {:source_name "newVerticesIDs"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$newVerticesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$newVerticesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$newVerticesIDs: bool;

var {:source_name "verticesMapping"} {:global} $$verticesMapping: [int]int;

axiom {:array_info "$$verticesMapping"} {:global} {:elem_width 32} {:source_name "verticesMapping"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$verticesMapping: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$verticesMapping: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$verticesMapping: bool;

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

function __other_bv32(int) : int;

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

procedure {:source_name "getVerticesMapping"} {:kernel} $_Z18getVerticesMappingPKjS0_Pjj($verticesCount: int);
  requires {:sourceloc_num 0} {:thread 1} (if $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] != $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] then 1 else 0) != 0;
  requires {:sourceloc_num 0} {:thread 2} (if $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] != $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] != $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 2} (if $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] != $$clusteredVerticesIDs[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$clusteredVerticesIDs && !_WRITE_HAS_OCCURRED_$$clusteredVerticesIDs && !_ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs;
  requires !_READ_HAS_OCCURRED_$$newVerticesIDs && !_WRITE_HAS_OCCURRED_$$newVerticesIDs && !_ATOMIC_HAS_OCCURRED_$$newVerticesIDs;
  requires !_READ_HAS_OCCURRED_$$verticesMapping && !_WRITE_HAS_OCCURRED_$$verticesMapping && !_ATOMIC_HAS_OCCURRED_$$verticesMapping;
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
  modifies _WRITE_HAS_OCCURRED_$$verticesMapping, _WRITE_READ_BENIGN_FLAG_$$verticesMapping, _WRITE_READ_BENIGN_FLAG_$$verticesMapping;



implementation {:source_name "getVerticesMapping"} {:kernel} $_Z18getVerticesMappingPKjS0_Pjj($verticesCount: int)
{
  var v3$1: int;
  var v3$2: int;
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
    v2$1 := (if p0$1 then $$clusteredVerticesIDs[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$clusteredVerticesIDs[v0$2] else v2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$verticesMapping(p0$1, v2$1, v3$1, $$verticesMapping[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesMapping(p0$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$verticesMapping(p0$2, v2$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$verticesMapping"} true;
    $$verticesMapping[v2$1] := (if p0$1 then v3$1 else $$verticesMapping[v2$1]);
    $$verticesMapping[v2$2] := (if p0$2 then v3$2 else $$verticesMapping[v2$2]);
    return;
}



axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1322 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$clusteredVerticesIDs: int;

procedure {:inline 1} _LOG_READ_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$clusteredVerticesIDs;



implementation {:inline 1} _LOG_READ_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$clusteredVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusteredVerticesIDs == _value then true else _READ_HAS_OCCURRED_$$clusteredVerticesIDs);
    return;
}



procedure _CHECK_READ_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs: bool;

procedure {:inline 1} _LOG_WRITE_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs, _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs;



implementation {:inline 1} _LOG_WRITE_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusteredVerticesIDs == _value then true else _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs);
    _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusteredVerticesIDs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs);
    return;
}



procedure _CHECK_WRITE_$$clusteredVerticesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusteredVerticesIDs != _value);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$clusteredVerticesIDs != _value);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$clusteredVerticesIDs(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs;



implementation {:inline 1} _LOG_ATOMIC_$$clusteredVerticesIDs(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$clusteredVerticesIDs);
    return;
}



procedure _CHECK_ATOMIC_$$clusteredVerticesIDs(_P: bool, _offset: int);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset);
  requires {:source_name "clusteredVerticesIDs"} {:array "$$clusteredVerticesIDs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs := (if _P && _WRITE_HAS_OCCURRED_$$clusteredVerticesIDs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$clusteredVerticesIDs);
    return;
}



const _WATCHED_VALUE_$$newVerticesIDs: int;

procedure {:inline 1} _LOG_READ_$$newVerticesIDs(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$newVerticesIDs;



implementation {:inline 1} _LOG_READ_$$newVerticesIDs(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$newVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVerticesIDs == _value then true else _READ_HAS_OCCURRED_$$newVerticesIDs);
    return;
}



procedure _CHECK_READ_$$newVerticesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs: bool;

procedure {:inline 1} _LOG_WRITE_$$newVerticesIDs(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$newVerticesIDs, _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs;



implementation {:inline 1} _LOG_WRITE_$$newVerticesIDs(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$newVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVerticesIDs == _value then true else _WRITE_HAS_OCCURRED_$$newVerticesIDs);
    _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVerticesIDs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs);
    return;
}



procedure _CHECK_WRITE_$$newVerticesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVerticesIDs != _value);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newVerticesIDs != _value);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$newVerticesIDs(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$newVerticesIDs;



implementation {:inline 1} _LOG_ATOMIC_$$newVerticesIDs(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$newVerticesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$newVerticesIDs);
    return;
}



procedure _CHECK_ATOMIC_$$newVerticesIDs(_P: bool, _offset: int);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset);
  requires {:source_name "newVerticesIDs"} {:array "$$newVerticesIDs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVerticesIDs(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newVerticesIDs(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs := (if _P && _WRITE_HAS_OCCURRED_$$newVerticesIDs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$newVerticesIDs);
    return;
}



const _WATCHED_VALUE_$$verticesMapping: int;

procedure {:inline 1} _LOG_READ_$$verticesMapping(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$verticesMapping;



implementation {:inline 1} _LOG_READ_$$verticesMapping(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$verticesMapping := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesMapping == _value then true else _READ_HAS_OCCURRED_$$verticesMapping);
    return;
}



procedure _CHECK_READ_$$verticesMapping(_P: bool, _offset: int, _value: int);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$verticesMapping);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$verticesMapping: bool;

procedure {:inline 1} _LOG_WRITE_$$verticesMapping(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$verticesMapping, _WRITE_READ_BENIGN_FLAG_$$verticesMapping;



implementation {:inline 1} _LOG_WRITE_$$verticesMapping(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$verticesMapping := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesMapping == _value then true else _WRITE_HAS_OCCURRED_$$verticesMapping);
    _WRITE_READ_BENIGN_FLAG_$$verticesMapping := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesMapping == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$verticesMapping);
    return;
}



procedure _CHECK_WRITE_$$verticesMapping(_P: bool, _offset: int, _value: int);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesMapping != _value);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesMapping != _value);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$verticesMapping(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$verticesMapping;



implementation {:inline 1} _LOG_ATOMIC_$$verticesMapping(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$verticesMapping := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$verticesMapping);
    return;
}



procedure _CHECK_ATOMIC_$$verticesMapping(_P: bool, _offset: int);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset);
  requires {:source_name "verticesMapping"} {:array "$$verticesMapping"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesMapping(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$verticesMapping;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesMapping(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$verticesMapping := (if _P && _WRITE_HAS_OCCURRED_$$verticesMapping && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$verticesMapping);
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
