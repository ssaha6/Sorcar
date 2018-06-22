type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "theArray"} {:global} $$theArray: [int]int;

axiom {:array_info "$$theArray"} {:global} {:elem_width 32} {:source_name "theArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$theArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$theArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$theArray: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

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

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "bitonicSort"} {:kernel} $bitonicSort($stage: int, $passOfStage: int, $width: int, $direction: int);
  requires !_READ_HAS_OCCURRED_$$theArray && !_WRITE_HAS_OCCURRED_$$theArray && !_ATOMIC_HAS_OCCURRED_$$theArray;
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
  modifies _READ_HAS_OCCURRED_$$theArray, _WRITE_HAS_OCCURRED_$$theArray, _WRITE_READ_BENIGN_FLAG_$$theArray, _WRITE_READ_BENIGN_FLAG_$$theArray;



implementation {:source_name "bitonicSort"} {:kernel} $bitonicSort($stage: int, $passOfStage: int, $width: int, $direction: int)
{
  var $sortIncreasing.0$1: int;
  var $sortIncreasing.0$2: int;
  var $greater.0$1: int;
  var $greater.0$2: int;
  var $lesser.0$1: int;
  var $lesser.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1 := BV32_SHL(1, BV32_AND(BV32_SUB($stage, $passOfStage), 31));
    v2$1 := BV32_ADD(BV32_UREM(v0$1, v1), BV32_MUL(BV32_UDIV(v0$1, v1), BV32_MUL(2, v1)));
    v2$2 := BV32_ADD(BV32_UREM(v0$2, v1), BV32_MUL(BV32_UDIV(v0$2, v1), BV32_MUL(2, v1)));
    v3$1 := BV32_ADD(v2$1, v1);
    v3$2 := BV32_ADD(v2$2, v1);
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$theArray(true, v2$1, $$theArray[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$theArray(true, v2$2, $$theArray[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$theArray"} true;
    v4$1 := $$theArray[v2$1];
    v4$2 := $$theArray[v2$2];
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$theArray(true, v3$1, $$theArray[v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$theArray(true, v3$2, $$theArray[v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$theArray"} true;
    v5$1 := $$theArray[v3$1];
    v5$2 := $$theArray[v3$2];
    v6$1 := BV32_UREM(BV32_UDIV(v0$1, BV32_SHL(1, BV32_AND($stage, 31))), 2) == 1;
    v6$2 := BV32_UREM(BV32_UDIV(v0$2, BV32_SHL(1, BV32_AND($stage, 31))), 2) == 1;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p0$1 := (if v6$1 then v6$1 else p0$1);
    p0$2 := (if v6$2 then v6$2 else p0$2);
    p1$1 := (if !v6$1 then !v6$1 else p1$1);
    p1$2 := (if !v6$2 then !v6$2 else p1$2);
    $sortIncreasing.0$1 := (if p0$1 then BV32_SUB(1, $direction) else $sortIncreasing.0$1);
    $sortIncreasing.0$2 := (if p0$2 then BV32_SUB(1, $direction) else $sortIncreasing.0$2);
    $sortIncreasing.0$1 := (if p1$1 then $direction else $sortIncreasing.0$1);
    $sortIncreasing.0$2 := (if p1$2 then $direction else $sortIncreasing.0$2);
    v7$1 := BV32_UGT(v4$1, v5$1);
    v7$2 := BV32_UGT(v4$2, v5$2);
    p2$1 := (if v7$1 then v7$1 else p2$1);
    p2$2 := (if v7$2 then v7$2 else p2$2);
    p3$1 := (if !v7$1 then !v7$1 else p3$1);
    p3$2 := (if !v7$2 then !v7$2 else p3$2);
    $greater.0$1, $lesser.0$1 := (if p2$1 then v4$1 else $greater.0$1), (if p2$1 then v5$1 else $lesser.0$1);
    $greater.0$2, $lesser.0$2 := (if p2$2 then v4$2 else $greater.0$2), (if p2$2 then v5$2 else $lesser.0$2);
    $greater.0$1, $lesser.0$1 := (if p3$1 then v5$1 else $greater.0$1), (if p3$1 then v4$1 else $lesser.0$1);
    $greater.0$2, $lesser.0$2 := (if p3$2 then v5$2 else $greater.0$2), (if p3$2 then v4$2 else $lesser.0$2);
    v8$1 := $sortIncreasing.0$1 != 0;
    v8$2 := $sortIncreasing.0$2 != 0;
    p4$1 := (if v8$1 then v8$1 else p4$1);
    p4$2 := (if v8$2 then v8$2 else p4$2);
    p5$1 := (if !v8$1 then !v8$1 else p5$1);
    p5$2 := (if !v8$2 then !v8$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$theArray(p4$1, v2$1, $lesser.0$1, $$theArray[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(p4$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$theArray(p4$2, v2$2, $lesser.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$theArray"} true;
    $$theArray[v2$1] := (if p4$1 then $lesser.0$1 else $$theArray[v2$1]);
    $$theArray[v2$2] := (if p4$2 then $lesser.0$2 else $$theArray[v2$2]);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$theArray(p4$1, v3$1, $greater.0$1, $$theArray[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(p4$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$theArray(p4$2, v3$2, $greater.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$theArray"} true;
    $$theArray[v3$1] := (if p4$1 then $greater.0$1 else $$theArray[v3$1]);
    $$theArray[v3$2] := (if p4$2 then $greater.0$2 else $$theArray[v3$2]);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$theArray(p5$1, v2$1, $greater.0$1, $$theArray[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(p5$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$theArray(p5$2, v2$2, $greater.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$theArray"} true;
    $$theArray[v2$1] := (if p5$1 then $greater.0$1 else $$theArray[v2$1]);
    $$theArray[v2$2] := (if p5$2 then $greater.0$2 else $$theArray[v2$2]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$theArray(p5$1, v3$1, $lesser.0$1, $$theArray[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(p5$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$theArray(p5$2, v3$2, $lesser.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$theArray"} true;
    $$theArray[v3$1] := (if p5$1 then $lesser.0$1 else $$theArray[v3$1]);
    $$theArray[v3$2] := (if p5$2 then $lesser.0$2 else $$theArray[v3$2]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$theArray: int;

procedure {:inline 1} _LOG_READ_$$theArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$theArray;



implementation {:inline 1} _LOG_READ_$$theArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$theArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$theArray == _value then true else _READ_HAS_OCCURRED_$$theArray);
    return;
}



procedure _CHECK_READ_$$theArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$theArray);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$theArray: bool;

procedure {:inline 1} _LOG_WRITE_$$theArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$theArray, _WRITE_READ_BENIGN_FLAG_$$theArray;



implementation {:inline 1} _LOG_WRITE_$$theArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$theArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$theArray == _value then true else _WRITE_HAS_OCCURRED_$$theArray);
    _WRITE_READ_BENIGN_FLAG_$$theArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$theArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$theArray);
    return;
}



procedure _CHECK_WRITE_$$theArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$theArray != _value);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$theArray != _value);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$theArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$theArray;



implementation {:inline 1} _LOG_ATOMIC_$$theArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$theArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$theArray);
    return;
}



procedure _CHECK_ATOMIC_$$theArray(_P: bool, _offset: int);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "theArray"} {:array "$$theArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$theArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$theArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$theArray := (if _P && _WRITE_HAS_OCCURRED_$$theArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$theArray);
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
