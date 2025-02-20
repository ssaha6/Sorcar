type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "pathDistanceBuffer"} {:global} $$pathDistanceBuffer: [int]int;

axiom {:array_info "$$pathDistanceBuffer"} {:global} {:elem_width 32} {:source_name "pathDistanceBuffer"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pathDistanceBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pathDistanceBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer: bool;

var {:source_name "pathBuffer"} {:global} $$pathBuffer: [int]int;

axiom {:array_info "$$pathBuffer"} {:global} {:elem_width 32} {:source_name "pathBuffer"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pathBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pathBuffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pathBuffer: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

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

function {:inline true} BV33_ADD(x: int, y: int) : int
{
  x + y
}

procedure {:inline 1} $__add_noovfl_unsigned_32(x$1: int, y$1: int, x$2: int, y$2: int) returns (z$1: int, z$2: int);



implementation {:inline 1} $__add_noovfl_unsigned_32(x$1: int, y$1: int, x$2: int, y$2: int) returns (z$1: int, z$2: int)
{

  anon0:
    assume BV_EXTRACT(BV33_ADD(BV_CONCAT(0, x$1), BV_CONCAT(0, y$1)), 33, 32) == 0 && BV_EXTRACT(BV33_ADD(BV_CONCAT(0, x$2), BV_CONCAT(0, y$2)), 33, 32) == 0;
    z$1 := BV32_ADD(x$1, y$1);
    z$2 := BV32_ADD(x$2, y$2);
    return;
}



procedure {:source_name "floydWarshallPass"} {:kernel} $floydWarshallPass($numNodes: int, $pass: int);
  requires {:sourceloc_num 0} {:thread 1} (if $numNodes == 64 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $pass == 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$pathDistanceBuffer && !_WRITE_HAS_OCCURRED_$$pathDistanceBuffer && !_ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer;
  requires !_READ_HAS_OCCURRED_$$pathBuffer && !_WRITE_HAS_OCCURRED_$$pathBuffer && !_ATOMIC_HAS_OCCURRED_$$pathBuffer;
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
  modifies _READ_HAS_OCCURRED_$$pathDistanceBuffer, _WRITE_HAS_OCCURRED_$$pathDistanceBuffer, _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer, _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer, _WRITE_HAS_OCCURRED_$$pathBuffer, _WRITE_READ_BENIGN_FLAG_$$pathBuffer, _WRITE_READ_BENIGN_FLAG_$$pathBuffer;



implementation {:source_name "floydWarshallPass"} {:kernel} $floydWarshallPass($numNodes: int, $pass: int)
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
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1), $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2), $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$pathDistanceBuffer"} true;
    v2$1 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)];
    v2$2 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)];
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL(v1$1, $numNodes), $pass), $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), $pass)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL(v1$2, $numNodes), $pass), $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), $pass)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$pathDistanceBuffer"} true;
    v3$1 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), $pass)];
    v3$2 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), $pass)];
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL($pass, $numNodes), v0$1), $$pathDistanceBuffer[BV32_ADD(BV32_MUL($pass, $numNodes), v0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$pathDistanceBuffer(true, BV32_ADD(BV32_MUL($pass, $numNodes), v0$2), $$pathDistanceBuffer[BV32_ADD(BV32_MUL($pass, $numNodes), v0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$pathDistanceBuffer"} true;
    v4$1 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL($pass, $numNodes), v0$1)];
    v4$2 := $$pathDistanceBuffer[BV32_ADD(BV32_MUL($pass, $numNodes), v0$2)];
    call v5$1, v5$2 := $__add_noovfl_unsigned_32(v3$1, v4$1, v3$2, v4$2);
    v6$1 := BV32_ULT(v5$1, v2$1);
    v6$2 := BV32_ULT(v5$2, v2$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v6$1 then v6$1 else p0$1);
    p0$2 := (if v6$2 then v6$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$pathDistanceBuffer(p0$1, BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1), v5$1, $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer(p0$2, BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$pathDistanceBuffer(p0$2, BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDistanceBuffer"} true;
    $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)] := (if p0$1 then v5$1 else $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)]);
    $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)] := (if p0$2 then v5$2 else $$pathDistanceBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)]);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$pathBuffer(p0$1, BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1), $pass, $$pathBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathBuffer(p0$2, BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$pathBuffer(p0$2, BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2), $pass);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathBuffer"} true;
    $$pathBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)] := (if p0$1 then $pass else $$pathBuffer[BV32_ADD(BV32_MUL(v1$1, $numNodes), v0$1)]);
    $$pathBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)] := (if p0$2 then $pass else $$pathBuffer[BV32_ADD(BV32_MUL(v1$2, $numNodes), v0$2)]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 8 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$pathDistanceBuffer: int;

procedure {:inline 1} _LOG_READ_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pathDistanceBuffer;



implementation {:inline 1} _LOG_READ_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pathDistanceBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDistanceBuffer == _value then true else _READ_HAS_OCCURRED_$$pathDistanceBuffer);
    return;
}



procedure _CHECK_READ_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer: bool;

procedure {:inline 1} _LOG_WRITE_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pathDistanceBuffer, _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer;



implementation {:inline 1} _LOG_WRITE_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pathDistanceBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDistanceBuffer == _value then true else _WRITE_HAS_OCCURRED_$$pathDistanceBuffer);
    _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDistanceBuffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer);
    return;
}



procedure _CHECK_WRITE_$$pathDistanceBuffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDistanceBuffer != _value);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDistanceBuffer != _value);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pathDistanceBuffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer;



implementation {:inline 1} _LOG_ATOMIC_$$pathDistanceBuffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pathDistanceBuffer);
    return;
}



procedure _CHECK_ATOMIC_$$pathDistanceBuffer(_P: bool, _offset: int);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset);
  requires {:source_name "pathDistanceBuffer"} {:array "$$pathDistanceBuffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer := (if _P && _WRITE_HAS_OCCURRED_$$pathDistanceBuffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pathDistanceBuffer);
    return;
}



const _WATCHED_VALUE_$$pathBuffer: int;

procedure {:inline 1} _LOG_READ_$$pathBuffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pathBuffer;



implementation {:inline 1} _LOG_READ_$$pathBuffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pathBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathBuffer == _value then true else _READ_HAS_OCCURRED_$$pathBuffer);
    return;
}



procedure _CHECK_READ_$$pathBuffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pathBuffer);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pathBuffer: bool;

procedure {:inline 1} _LOG_WRITE_$$pathBuffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pathBuffer, _WRITE_READ_BENIGN_FLAG_$$pathBuffer;



implementation {:inline 1} _LOG_WRITE_$$pathBuffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pathBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathBuffer == _value then true else _WRITE_HAS_OCCURRED_$$pathBuffer);
    _WRITE_READ_BENIGN_FLAG_$$pathBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathBuffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pathBuffer);
    return;
}



procedure _CHECK_WRITE_$$pathBuffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathBuffer != _value);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathBuffer != _value);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pathBuffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pathBuffer;



implementation {:inline 1} _LOG_ATOMIC_$$pathBuffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pathBuffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pathBuffer);
    return;
}



procedure _CHECK_ATOMIC_$$pathBuffer(_P: bool, _offset: int);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset);
  requires {:source_name "pathBuffer"} {:array "$$pathBuffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathBuffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pathBuffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathBuffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pathBuffer := (if _P && _WRITE_HAS_OCCURRED_$$pathBuffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pathBuffer);
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
