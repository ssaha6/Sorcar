type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_graph_mask"} {:global} $$g_graph_mask: [int]int;

axiom {:array_info "$$g_graph_mask"} {:global} {:elem_width 8} {:source_name "g_graph_mask"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_mask: bool;

var {:source_name "g_updating_graph_mask"} {:global} $$g_updating_graph_mask: [int]int;

axiom {:array_info "$$g_updating_graph_mask"} {:global} {:elem_width 8} {:source_name "g_updating_graph_mask"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_updating_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_updating_graph_mask: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask: bool;

var {:source_name "g_graph_visited"} {:global} $$g_graph_visited: [int]int;

axiom {:array_info "$$g_graph_visited"} {:global} {:elem_width 8} {:source_name "g_graph_visited"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_visited: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_visited: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_visited: bool;

var {:source_name "g_over"} {:global} $$g_over: [int]int;

axiom {:array_info "$$g_over"} {:global} {:elem_width 8} {:source_name "g_over"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_over: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_over: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_over: bool;

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

function BV8_SEXT32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "BFS_2"} {:kernel} $BFS_2($no_of_nodes: int);
  requires !_READ_HAS_OCCURRED_$$g_graph_mask && !_WRITE_HAS_OCCURRED_$$g_graph_mask && !_ATOMIC_HAS_OCCURRED_$$g_graph_mask;
  requires !_READ_HAS_OCCURRED_$$g_updating_graph_mask && !_WRITE_HAS_OCCURRED_$$g_updating_graph_mask && !_ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask;
  requires !_READ_HAS_OCCURRED_$$g_graph_visited && !_WRITE_HAS_OCCURRED_$$g_graph_visited && !_ATOMIC_HAS_OCCURRED_$$g_graph_visited;
  requires !_READ_HAS_OCCURRED_$$g_over && !_WRITE_HAS_OCCURRED_$$g_over && !_ATOMIC_HAS_OCCURRED_$$g_over;
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
  modifies _READ_HAS_OCCURRED_$$g_updating_graph_mask, _WRITE_HAS_OCCURRED_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask, _WRITE_HAS_OCCURRED_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited, _WRITE_HAS_OCCURRED_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over, _WRITE_HAS_OCCURRED_$$g_updating_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask;



implementation {:source_name "BFS_2"} {:kernel} $BFS_2($no_of_nodes: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $no_of_nodes);
    v1$2 := BV32_SLT(v0$2, $no_of_nodes);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$g_updating_graph_mask(p0$1, v0$1, $$g_updating_graph_mask[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$g_updating_graph_mask(p0$2, v0$2, $$g_updating_graph_mask[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_updating_graph_mask"} true;
    v2$1 := (if p0$1 then $$g_updating_graph_mask[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$g_updating_graph_mask[v0$2] else v2$2);
    v3$1 := (if p0$1 then BV8_SEXT32(v2$1) != 0 else v3$1);
    v3$2 := (if p0$2 then BV8_SEXT32(v2$2) != 0 else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$g_graph_mask(p1$1, v0$1, 1, $$g_graph_mask[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$g_graph_mask(p1$2, v0$2, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_graph_mask"} true;
    $$g_graph_mask[v0$1] := (if p1$1 then 1 else $$g_graph_mask[v0$1]);
    $$g_graph_mask[v0$2] := (if p1$2 then 1 else $$g_graph_mask[v0$2]);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$g_graph_visited(p1$1, v0$1, 1, $$g_graph_visited[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$g_graph_visited(p1$2, v0$2, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_graph_visited"} true;
    $$g_graph_visited[v0$1] := (if p1$1 then 1 else $$g_graph_visited[v0$1]);
    $$g_graph_visited[v0$2] := (if p1$2 then 1 else $$g_graph_visited[v0$2]);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$g_over(p1$1, 0, 1, $$g_over[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(p1$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$g_over(p1$2, 0, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_over"} true;
    $$g_over[0] := (if p1$1 then 1 else $$g_over[0]);
    $$g_over[0] := (if p1$2 then 1 else $$g_over[0]);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$g_updating_graph_mask(p1$1, v0$1, 0, $$g_updating_graph_mask[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$g_updating_graph_mask(p1$2, v0$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_updating_graph_mask"} true;
    $$g_updating_graph_mask[v0$1] := (if p1$1 then 0 else $$g_updating_graph_mask[v0$1]);
    $$g_updating_graph_mask[v0$2] := (if p1$2 then 0 else $$g_updating_graph_mask[v0$2]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 3907 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$g_graph_mask: int;

procedure {:inline 1} _LOG_READ_$$g_graph_mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_graph_mask;



implementation {:inline 1} _LOG_READ_$$g_graph_mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then true else _READ_HAS_OCCURRED_$$g_graph_mask);
    return;
}



procedure _CHECK_READ_$$g_graph_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_mask: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_graph_mask;



implementation {:inline 1} _LOG_WRITE_$$g_graph_mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_mask);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
    return;
}



procedure _CHECK_WRITE_$$g_graph_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask != _value);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_mask != _value);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_mask;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_mask);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_mask(_P: bool, _offset: int);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_mask"} {:array "$$g_graph_mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_mask := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_mask);
    return;
}



const _WATCHED_VALUE_$$g_updating_graph_mask: int;

procedure {:inline 1} _LOG_READ_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_updating_graph_mask;



implementation {:inline 1} _LOG_READ_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_updating_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_updating_graph_mask == _value then true else _READ_HAS_OCCURRED_$$g_updating_graph_mask);
    return;
}



procedure _CHECK_READ_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask: bool;

procedure {:inline 1} _LOG_WRITE_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_updating_graph_mask, _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask;



implementation {:inline 1} _LOG_WRITE_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_updating_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_updating_graph_mask == _value then true else _WRITE_HAS_OCCURRED_$$g_updating_graph_mask);
    _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_updating_graph_mask == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask);
    return;
}



procedure _CHECK_WRITE_$$g_updating_graph_mask(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_updating_graph_mask != _value);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_updating_graph_mask != _value);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_updating_graph_mask(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask;



implementation {:inline 1} _LOG_ATOMIC_$$g_updating_graph_mask(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_updating_graph_mask);
    return;
}



procedure _CHECK_ATOMIC_$$g_updating_graph_mask(_P: bool, _offset: int);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_updating_graph_mask"} {:array "$$g_updating_graph_mask"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask := (if _P && _WRITE_HAS_OCCURRED_$$g_updating_graph_mask && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_updating_graph_mask);
    return;
}



const _WATCHED_VALUE_$$g_graph_visited: int;

procedure {:inline 1} _LOG_READ_$$g_graph_visited(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_graph_visited;



implementation {:inline 1} _LOG_READ_$$g_graph_visited(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then true else _READ_HAS_OCCURRED_$$g_graph_visited);
    return;
}



procedure _CHECK_READ_$$g_graph_visited(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_visited: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_visited(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_visited, _WRITE_READ_BENIGN_FLAG_$$g_graph_visited;



implementation {:inline 1} _LOG_WRITE_$$g_graph_visited(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_visited);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
    return;
}



procedure _CHECK_WRITE_$$g_graph_visited(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited != _value);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_visited != _value);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_visited(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_visited;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_visited(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_visited);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_visited(_P: bool, _offset: int);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_visited"} {:array "$$g_graph_visited"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_visited;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_visited(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_visited := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_visited && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_visited);
    return;
}



const _WATCHED_VALUE_$$g_over: int;

procedure {:inline 1} _LOG_READ_$$g_over(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_over;



implementation {:inline 1} _LOG_READ_$$g_over(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then true else _READ_HAS_OCCURRED_$$g_over);
    return;
}



procedure _CHECK_READ_$$g_over(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_over);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_over: bool;

procedure {:inline 1} _LOG_WRITE_$$g_over(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_over, _WRITE_READ_BENIGN_FLAG_$$g_over;



implementation {:inline 1} _LOG_WRITE_$$g_over(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then true else _WRITE_HAS_OCCURRED_$$g_over);
    _WRITE_READ_BENIGN_FLAG_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_over);
    return;
}



procedure _CHECK_WRITE_$$g_over(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over != _value);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_over != _value);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_over(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_over;



implementation {:inline 1} _LOG_ATOMIC_$$g_over(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_over := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_over);
    return;
}



procedure _CHECK_ATOMIC_$$g_over(_P: bool, _offset: int);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_over"} {:array "$$g_over"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_over;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_over(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_over := (if _P && _WRITE_HAS_OCCURRED_$$g_over && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_over);
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
