type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$survivedEdgesIDs"} {:global} {:elem_width 32} {:source_name "survivedEdgesIDs"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$survivedEdgesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$survivedEdgesIDs: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs: bool;

axiom {:array_info "$$verticesMapping"} {:global} {:elem_width 32} {:source_name "verticesMapping"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$verticesMapping: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$verticesMapping: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$verticesMapping: bool;

axiom {:array_info "$$edges"} {:global} {:elem_width 32} {:source_name "edges"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edges: bool;

axiom {:array_info "$$weights"} {:global} {:elem_width 32} {:source_name "weights"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$weights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$weights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$weights: bool;

var {:source_name "newEdges"} {:global} $$newEdges: [int]int;

axiom {:array_info "$$newEdges"} {:global} {:elem_width 32} {:source_name "newEdges"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$newEdges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$newEdges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$newEdges: bool;

var {:source_name "newWeights"} {:global} $$newWeights: [int]int;

axiom {:array_info "$$newWeights"} {:global} {:elem_width 32} {:source_name "newWeights"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$newWeights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$newWeights: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$newWeights: bool;

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

procedure {:source_name "makeNewEdges"} {:kernel} $_Z12makeNewEdgesPKjS0_S0_PKfPjPfj($edgesCount: int);
  requires !_READ_HAS_OCCURRED_$$survivedEdgesIDs && !_WRITE_HAS_OCCURRED_$$survivedEdgesIDs && !_ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs;
  requires !_READ_HAS_OCCURRED_$$verticesMapping && !_WRITE_HAS_OCCURRED_$$verticesMapping && !_ATOMIC_HAS_OCCURRED_$$verticesMapping;
  requires !_READ_HAS_OCCURRED_$$edges && !_WRITE_HAS_OCCURRED_$$edges && !_ATOMIC_HAS_OCCURRED_$$edges;
  requires !_READ_HAS_OCCURRED_$$weights && !_WRITE_HAS_OCCURRED_$$weights && !_ATOMIC_HAS_OCCURRED_$$weights;
  requires !_READ_HAS_OCCURRED_$$newEdges && !_WRITE_HAS_OCCURRED_$$newEdges && !_ATOMIC_HAS_OCCURRED_$$newEdges;
  requires !_READ_HAS_OCCURRED_$$newWeights && !_WRITE_HAS_OCCURRED_$$newWeights && !_ATOMIC_HAS_OCCURRED_$$newWeights;
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
  modifies _WRITE_HAS_OCCURRED_$$newEdges, _WRITE_READ_BENIGN_FLAG_$$newEdges, _WRITE_READ_BENIGN_FLAG_$$newEdges, _WRITE_HAS_OCCURRED_$$newWeights, _WRITE_READ_BENIGN_FLAG_$$newWeights, _WRITE_READ_BENIGN_FLAG_$$newWeights;



implementation {:source_name "makeNewEdges"} {:kernel} $_Z12makeNewEdgesPKjS0_S0_PKfPjPfj($edgesCount: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $edgesCount);
    v1$2 := BV32_ULT(v0$2, $edgesCount);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$newEdges(p0$1, v0$1, v4$1, $$newEdges[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newEdges(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$newEdges(p0$2, v0$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newEdges"} true;
    $$newEdges[v0$1] := (if p0$1 then v4$1 else $$newEdges[v0$1]);
    $$newEdges[v0$2] := (if p0$2 then v4$2 else $$newEdges[v0$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$newWeights(p0$1, v0$1, v5$1, $$newWeights[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$newWeights(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$newWeights(p0$2, v0$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$newWeights"} true;
    $$newWeights[v0$1] := (if p0$1 then v5$1 else $$newWeights[v0$1]);
    $$newWeights[v0$2] := (if p0$2 then v5$2 else $$newWeights[v0$2]);
    return;
}



axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 11377 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$survivedEdgesIDs: int;

procedure {:inline 1} _LOG_READ_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$survivedEdgesIDs;



implementation {:inline 1} _LOG_READ_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$survivedEdgesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$survivedEdgesIDs == _value then true else _READ_HAS_OCCURRED_$$survivedEdgesIDs);
    return;
}



procedure _CHECK_READ_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs: bool;

procedure {:inline 1} _LOG_WRITE_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$survivedEdgesIDs, _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs;



implementation {:inline 1} _LOG_WRITE_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$survivedEdgesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$survivedEdgesIDs == _value then true else _WRITE_HAS_OCCURRED_$$survivedEdgesIDs);
    _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$survivedEdgesIDs == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs);
    return;
}



procedure _CHECK_WRITE_$$survivedEdgesIDs(_P: bool, _offset: int, _value: int);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$survivedEdgesIDs != _value);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$survivedEdgesIDs != _value);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$survivedEdgesIDs(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs;



implementation {:inline 1} _LOG_ATOMIC_$$survivedEdgesIDs(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$survivedEdgesIDs);
    return;
}



procedure _CHECK_ATOMIC_$$survivedEdgesIDs(_P: bool, _offset: int);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset);
  requires {:source_name "survivedEdgesIDs"} {:array "$$survivedEdgesIDs"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs := (if _P && _WRITE_HAS_OCCURRED_$$survivedEdgesIDs && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$survivedEdgesIDs);
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



const _WATCHED_VALUE_$$edges: int;

procedure {:inline 1} _LOG_READ_$$edges(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$edges;



implementation {:inline 1} _LOG_READ_$$edges(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edges == _value then true else _READ_HAS_OCCURRED_$$edges);
    return;
}



procedure _CHECK_READ_$$edges(_P: bool, _offset: int, _value: int);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edges);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edges: bool;

procedure {:inline 1} _LOG_WRITE_$$edges(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$edges, _WRITE_READ_BENIGN_FLAG_$$edges;



implementation {:inline 1} _LOG_WRITE_$$edges(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edges == _value then true else _WRITE_HAS_OCCURRED_$$edges);
    _WRITE_READ_BENIGN_FLAG_$$edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edges == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edges);
    return;
}



procedure _CHECK_WRITE_$$edges(_P: bool, _offset: int, _value: int);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edges != _value);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edges != _value);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edges(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$edges;



implementation {:inline 1} _LOG_ATOMIC_$$edges(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edges);
    return;
}



procedure _CHECK_ATOMIC_$$edges(_P: bool, _offset: int);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset);
  requires {:source_name "edges"} {:array "$$edges"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edges(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$edges;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edges(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edges := (if _P && _WRITE_HAS_OCCURRED_$$edges && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edges);
    return;
}



const _WATCHED_VALUE_$$weights: int;

procedure {:inline 1} _LOG_READ_$$weights(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$weights;



implementation {:inline 1} _LOG_READ_$$weights(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then true else _READ_HAS_OCCURRED_$$weights);
    return;
}



procedure _CHECK_READ_$$weights(_P: bool, _offset: int, _value: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$weights);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$weights: bool;

procedure {:inline 1} _LOG_WRITE_$$weights(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$weights, _WRITE_READ_BENIGN_FLAG_$$weights;



implementation {:inline 1} _LOG_WRITE_$$weights(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then true else _WRITE_HAS_OCCURRED_$$weights);
    _WRITE_READ_BENIGN_FLAG_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$weights);
    return;
}



procedure _CHECK_WRITE_$$weights(_P: bool, _offset: int, _value: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights != _value);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weights != _value);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$weights(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$weights;



implementation {:inline 1} _LOG_ATOMIC_$$weights(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$weights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$weights);
    return;
}



procedure _CHECK_ATOMIC_$$weights(_P: bool, _offset: int);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);
  requires {:source_name "weights"} {:array "$$weights"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weights(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$weights;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weights(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$weights := (if _P && _WRITE_HAS_OCCURRED_$$weights && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$weights);
    return;
}



const _WATCHED_VALUE_$$newEdges: int;

procedure {:inline 1} _LOG_READ_$$newEdges(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$newEdges;



implementation {:inline 1} _LOG_READ_$$newEdges(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$newEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newEdges == _value then true else _READ_HAS_OCCURRED_$$newEdges);
    return;
}



procedure _CHECK_READ_$$newEdges(_P: bool, _offset: int, _value: int);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$newEdges);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$newEdges: bool;

procedure {:inline 1} _LOG_WRITE_$$newEdges(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$newEdges, _WRITE_READ_BENIGN_FLAG_$$newEdges;



implementation {:inline 1} _LOG_WRITE_$$newEdges(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$newEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newEdges == _value then true else _WRITE_HAS_OCCURRED_$$newEdges);
    _WRITE_READ_BENIGN_FLAG_$$newEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newEdges == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$newEdges);
    return;
}



procedure _CHECK_WRITE_$$newEdges(_P: bool, _offset: int, _value: int);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newEdges != _value);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newEdges != _value);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$newEdges(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$newEdges;



implementation {:inline 1} _LOG_ATOMIC_$$newEdges(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$newEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$newEdges);
    return;
}



procedure _CHECK_ATOMIC_$$newEdges(_P: bool, _offset: int);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset);
  requires {:source_name "newEdges"} {:array "$$newEdges"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newEdges(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$newEdges;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newEdges(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$newEdges := (if _P && _WRITE_HAS_OCCURRED_$$newEdges && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$newEdges);
    return;
}



const _WATCHED_VALUE_$$newWeights: int;

procedure {:inline 1} _LOG_READ_$$newWeights(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$newWeights;



implementation {:inline 1} _LOG_READ_$$newWeights(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$newWeights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newWeights == _value then true else _READ_HAS_OCCURRED_$$newWeights);
    return;
}



procedure _CHECK_READ_$$newWeights(_P: bool, _offset: int, _value: int);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$newWeights);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$newWeights: bool;

procedure {:inline 1} _LOG_WRITE_$$newWeights(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$newWeights, _WRITE_READ_BENIGN_FLAG_$$newWeights;



implementation {:inline 1} _LOG_WRITE_$$newWeights(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$newWeights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newWeights == _value then true else _WRITE_HAS_OCCURRED_$$newWeights);
    _WRITE_READ_BENIGN_FLAG_$$newWeights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newWeights == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$newWeights);
    return;
}



procedure _CHECK_WRITE_$$newWeights(_P: bool, _offset: int, _value: int);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newWeights != _value);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$newWeights != _value);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$newWeights(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$newWeights;



implementation {:inline 1} _LOG_ATOMIC_$$newWeights(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$newWeights := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$newWeights);
    return;
}



procedure _CHECK_ATOMIC_$$newWeights(_P: bool, _offset: int);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset);
  requires {:source_name "newWeights"} {:array "$$newWeights"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newWeights(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$newWeights;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$newWeights(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$newWeights := (if _P && _WRITE_HAS_OCCURRED_$$newWeights && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$newWeights);
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
