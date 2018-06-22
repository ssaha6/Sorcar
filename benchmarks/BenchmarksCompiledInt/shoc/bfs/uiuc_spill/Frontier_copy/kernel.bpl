type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "frontier"} {:global} $$frontier: [int]int;

axiom {:array_info "$$frontier"} {:global} {:elem_width 32} {:source_name "frontier"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier: bool;

axiom {:array_info "$$frontier2"} {:global} {:elem_width 32} {:source_name "frontier2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier2: bool;

var {:source_name "frontier_length"} {:global} $$frontier_length: [int]int;

axiom {:array_info "$$frontier_length"} {:global} {:elem_width 32} {:source_name "frontier_length"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier_length: bool;

axiom {:array_info "$$g_mutex"} {:global} {:elem_width 32} {:source_name "g_mutex"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_mutex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_mutex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_mutex: bool;

axiom {:array_info "$$g_mutex2"} {:global} {:elem_width 32} {:source_name "g_mutex2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_mutex2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_mutex2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_mutex2: bool;

axiom {:array_info "$$g_q_offsets"} {:global} {:elem_width 32} {:source_name "g_q_offsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_q_offsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_q_offsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_q_offsets: bool;

axiom {:array_info "$$g_q_size"} {:global} {:elem_width 32} {:source_name "g_q_size"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_q_size: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_q_size: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_q_size: bool;

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

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "Frontier_copy"} {:kernel} $Frontier_copy();
  requires !_READ_HAS_OCCURRED_$$frontier && !_WRITE_HAS_OCCURRED_$$frontier && !_ATOMIC_HAS_OCCURRED_$$frontier;
  requires !_READ_HAS_OCCURRED_$$frontier2 && !_WRITE_HAS_OCCURRED_$$frontier2 && !_ATOMIC_HAS_OCCURRED_$$frontier2;
  requires !_READ_HAS_OCCURRED_$$frontier_length && !_WRITE_HAS_OCCURRED_$$frontier_length && !_ATOMIC_HAS_OCCURRED_$$frontier_length;
  requires !_READ_HAS_OCCURRED_$$g_mutex && !_WRITE_HAS_OCCURRED_$$g_mutex && !_ATOMIC_HAS_OCCURRED_$$g_mutex;
  requires !_READ_HAS_OCCURRED_$$g_mutex2 && !_WRITE_HAS_OCCURRED_$$g_mutex2 && !_ATOMIC_HAS_OCCURRED_$$g_mutex2;
  requires !_READ_HAS_OCCURRED_$$g_q_offsets && !_WRITE_HAS_OCCURRED_$$g_q_offsets && !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
  requires !_READ_HAS_OCCURRED_$$g_q_size && !_WRITE_HAS_OCCURRED_$$g_q_size && !_ATOMIC_HAS_OCCURRED_$$g_q_size;
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
  modifies _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:source_name "Frontier_copy"} {:kernel} $Frontier_copy()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := $$frontier_length[0];
    v1$2 := $$frontier_length[0];
    v2$1 := BV32_ULT(v0$1, v1$1);
    v2$2 := BV32_ULT(v0$2, v1$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$frontier(p0$1, v0$1, v3$1, $$frontier[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$frontier(p0$2, v0$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[v0$1] := (if p0$1 then v3$1 else $$frontier[v0$1]);
    $$frontier[v0$2] := (if p0$2 then v3$2 else $$frontier[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 10 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$frontier: int;

procedure {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _READ_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_READ_$$frontier(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _WRITE_HAS_OCCURRED_$$frontier);
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



procedure _CHECK_WRITE_$$frontier(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_ATOMIC_$$frontier(_P: bool, _offset: int);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



const _WATCHED_VALUE_$$frontier2: int;

procedure {:inline 1} _LOG_READ_$$frontier2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$frontier2;



implementation {:inline 1} _LOG_READ_$$frontier2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then true else _READ_HAS_OCCURRED_$$frontier2);
    return;
}



procedure _CHECK_READ_$$frontier2(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier2);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier2: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2;



implementation {:inline 1} _LOG_WRITE_$$frontier2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then true else _WRITE_HAS_OCCURRED_$$frontier2);
    _WRITE_READ_BENIGN_FLAG_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier2);
    return;
}



procedure _CHECK_WRITE_$$frontier2(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 != _value);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 != _value);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier2;



implementation {:inline 1} _LOG_ATOMIC_$$frontier2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier2);
    return;
}



procedure _CHECK_ATOMIC_$$frontier2(_P: bool, _offset: int);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier2 := (if _P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier2);
    return;
}



const _WATCHED_VALUE_$$frontier_length: int;

procedure {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _READ_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_READ_$$frontier_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier_length);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier_length: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _WRITE_HAS_OCCURRED_$$frontier_length);
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



procedure _CHECK_WRITE_$$frontier_length(_P: bool, _offset: int, _value: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_ATOMIC_$$frontier_length(_P: bool, _offset: int);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



const _WATCHED_VALUE_$$g_mutex: int;

procedure {:inline 1} _LOG_READ_$$g_mutex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_mutex;



implementation {:inline 1} _LOG_READ_$$g_mutex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then true else _READ_HAS_OCCURRED_$$g_mutex);
    return;
}



procedure _CHECK_READ_$$g_mutex(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_mutex);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_mutex: bool;

procedure {:inline 1} _LOG_WRITE_$$g_mutex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_mutex, _WRITE_READ_BENIGN_FLAG_$$g_mutex;



implementation {:inline 1} _LOG_WRITE_$$g_mutex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then true else _WRITE_HAS_OCCURRED_$$g_mutex);
    _WRITE_READ_BENIGN_FLAG_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_mutex);
    return;
}



procedure _CHECK_WRITE_$$g_mutex(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex != _value);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex != _value);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_mutex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_mutex;



implementation {:inline 1} _LOG_ATOMIC_$$g_mutex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_mutex);
    return;
}



procedure _CHECK_ATOMIC_$$g_mutex(_P: bool, _offset: int);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_mutex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_mutex := (if _P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_mutex);
    return;
}



const _WATCHED_VALUE_$$g_mutex2: int;

procedure {:inline 1} _LOG_READ_$$g_mutex2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_mutex2;



implementation {:inline 1} _LOG_READ_$$g_mutex2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then true else _READ_HAS_OCCURRED_$$g_mutex2);
    return;
}



procedure _CHECK_READ_$$g_mutex2(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_mutex2: bool;

procedure {:inline 1} _LOG_WRITE_$$g_mutex2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_mutex2, _WRITE_READ_BENIGN_FLAG_$$g_mutex2;



implementation {:inline 1} _LOG_WRITE_$$g_mutex2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then true else _WRITE_HAS_OCCURRED_$$g_mutex2);
    _WRITE_READ_BENIGN_FLAG_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
    return;
}



procedure _CHECK_WRITE_$$g_mutex2(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 != _value);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 != _value);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_mutex2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_mutex2;



implementation {:inline 1} _LOG_ATOMIC_$$g_mutex2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_mutex2);
    return;
}



procedure _CHECK_ATOMIC_$$g_mutex2(_P: bool, _offset: int);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_mutex2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_mutex2 := (if _P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
    return;
}



const _WATCHED_VALUE_$$g_q_offsets: int;

procedure {:inline 1} _LOG_READ_$$g_q_offsets(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_q_offsets;



implementation {:inline 1} _LOG_READ_$$g_q_offsets(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then true else _READ_HAS_OCCURRED_$$g_q_offsets);
    return;
}



procedure _CHECK_READ_$$g_q_offsets(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_q_offsets: bool;

procedure {:inline 1} _LOG_WRITE_$$g_q_offsets(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_q_offsets, _WRITE_READ_BENIGN_FLAG_$$g_q_offsets;



implementation {:inline 1} _LOG_WRITE_$$g_q_offsets(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then true else _WRITE_HAS_OCCURRED_$$g_q_offsets);
    _WRITE_READ_BENIGN_FLAG_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
    return;
}



procedure _CHECK_WRITE_$$g_q_offsets(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets != _value);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets != _value);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_q_offsets(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_q_offsets;



implementation {:inline 1} _LOG_ATOMIC_$$g_q_offsets(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_q_offsets);
    return;
}



procedure _CHECK_ATOMIC_$$g_q_offsets(_P: bool, _offset: int);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_offsets(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_q_offsets;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_offsets(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_q_offsets := (if _P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
    return;
}



const _WATCHED_VALUE_$$g_q_size: int;

procedure {:inline 1} _LOG_READ_$$g_q_size(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_q_size;



implementation {:inline 1} _LOG_READ_$$g_q_size(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then true else _READ_HAS_OCCURRED_$$g_q_size);
    return;
}



procedure _CHECK_READ_$$g_q_size(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_q_size);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_q_size: bool;

procedure {:inline 1} _LOG_WRITE_$$g_q_size(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_q_size, _WRITE_READ_BENIGN_FLAG_$$g_q_size;



implementation {:inline 1} _LOG_WRITE_$$g_q_size(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then true else _WRITE_HAS_OCCURRED_$$g_q_size);
    _WRITE_READ_BENIGN_FLAG_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_q_size);
    return;
}



procedure _CHECK_WRITE_$$g_q_size(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size != _value);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size != _value);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_q_size(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_q_size;



implementation {:inline 1} _LOG_ATOMIC_$$g_q_size(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_q_size);
    return;
}



procedure _CHECK_ATOMIC_$$g_q_size(_P: bool, _offset: int);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_size(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_q_size;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_size(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_q_size := (if _P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_q_size);
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
