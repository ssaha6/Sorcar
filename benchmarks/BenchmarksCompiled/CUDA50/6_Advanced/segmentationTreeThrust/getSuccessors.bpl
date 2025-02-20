type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$verticesOffsets"} {:global} {:elem_width 32} {:source_name "verticesOffsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$verticesOffsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$verticesOffsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$verticesOffsets: bool;

axiom {:array_info "$$minScannedEdges"} {:global} {:elem_width 32} {:source_name "minScannedEdges"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$minScannedEdges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$minScannedEdges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$minScannedEdges: bool;

var {:source_name "successors"} {:global} $$successors: [bv32]bv32;

axiom {:array_info "$$successors"} {:global} {:elem_width 32} {:source_name "successors"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$successors: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$successors: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$successors: bool;

const _WATCHED_OFFSET: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "getSuccessors"} {:kernel} $_Z13getSuccessorsPKjS0_Pjjj($verticesCount: bv32, $edgesCount: bv32);
  requires !_READ_HAS_OCCURRED_$$verticesOffsets && !_WRITE_HAS_OCCURRED_$$verticesOffsets && !_ATOMIC_HAS_OCCURRED_$$verticesOffsets;
  requires !_READ_HAS_OCCURRED_$$minScannedEdges && !_WRITE_HAS_OCCURRED_$$minScannedEdges && !_ATOMIC_HAS_OCCURRED_$$minScannedEdges;
  requires !_READ_HAS_OCCURRED_$$successors && !_WRITE_HAS_OCCURRED_$$successors && !_ATOMIC_HAS_OCCURRED_$$successors;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$successors, _WRITE_READ_BENIGN_FLAG_$$successors, _WRITE_READ_BENIGN_FLAG_$$successors;



implementation {:source_name "getSuccessors"} {:kernel} $_Z13getSuccessorsPKjS0_Pjjj($verticesCount: bv32, $edgesCount: bv32)
{
  var $0$1: bv32;
  var $0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $verticesCount);
    v1$2 := BV32_ULT(v0$2, $verticesCount);
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
    v2$1 := (if p0$1 then BV32_ULT(v0$1, BV32_SUB($verticesCount, 1bv32)) else v2$1);
    v2$2 := (if p0$2 then BV32_ULT(v0$2, BV32_SUB($verticesCount, 1bv32)) else v2$2);
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p2$1 := (if p0$1 && !v2$1 then !v2$1 else p2$1);
    p2$2 := (if p0$2 && !v2$2 then !v2$2 else p2$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v3$1 := (if p1$1 then _HAVOC_bv32$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_bv32$2 else v3$2);
    $0$1 := (if p1$1 then BV32_SUB(v3$1, 1bv32) else $0$1);
    $0$2 := (if p1$2 then BV32_SUB(v3$2, 1bv32) else $0$2);
    $0$1 := (if p2$1 then BV32_SUB($edgesCount, 1bv32) else $0$1);
    $0$2 := (if p2$2 then BV32_SUB($edgesCount, 1bv32) else $0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v4$1 := (if p0$1 then _HAVOC_bv32$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_bv32$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$successors(p0$1, v0$1, v4$1, $$successors[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$successors(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$successors(p0$2, v0$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$successors"} true;
    $$successors[v0$1] := (if p0$1 then v4$1 else $$successors[v0$1]);
    $$successors[v0$2] := (if p0$2 then v4$2 else $$successors[v0$2]);
    return;
}



axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1322bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$verticesOffsets: bv32;

procedure {:inline 1} _LOG_READ_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$verticesOffsets;



implementation {:inline 1} _LOG_READ_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then true else _READ_HAS_OCCURRED_$$verticesOffsets);
    return;
}



procedure _CHECK_READ_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$verticesOffsets: bool;

procedure {:inline 1} _LOG_WRITE_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$verticesOffsets, _WRITE_READ_BENIGN_FLAG_$$verticesOffsets;



implementation {:inline 1} _LOG_WRITE_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then true else _WRITE_HAS_OCCURRED_$$verticesOffsets);
    _WRITE_READ_BENIGN_FLAG_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
    return;
}



procedure _CHECK_WRITE_$$verticesOffsets(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets != _value);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$verticesOffsets != _value);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$verticesOffsets(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$verticesOffsets;



implementation {:inline 1} _LOG_ATOMIC_$$verticesOffsets(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$verticesOffsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$verticesOffsets);
    return;
}



procedure _CHECK_ATOMIC_$$verticesOffsets(_P: bool, _offset: bv32);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);
  requires {:source_name "verticesOffsets"} {:array "$$verticesOffsets"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesOffsets(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$verticesOffsets;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$verticesOffsets(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$verticesOffsets := (if _P && _WRITE_HAS_OCCURRED_$$verticesOffsets && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$verticesOffsets);
    return;
}



const _WATCHED_VALUE_$$minScannedEdges: bv32;

procedure {:inline 1} _LOG_READ_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$minScannedEdges;



implementation {:inline 1} _LOG_READ_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$minScannedEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$minScannedEdges == _value then true else _READ_HAS_OCCURRED_$$minScannedEdges);
    return;
}



procedure _CHECK_READ_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$minScannedEdges);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$minScannedEdges: bool;

procedure {:inline 1} _LOG_WRITE_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$minScannedEdges, _WRITE_READ_BENIGN_FLAG_$$minScannedEdges;



implementation {:inline 1} _LOG_WRITE_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$minScannedEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$minScannedEdges == _value then true else _WRITE_HAS_OCCURRED_$$minScannedEdges);
    _WRITE_READ_BENIGN_FLAG_$$minScannedEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$minScannedEdges == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$minScannedEdges);
    return;
}



procedure _CHECK_WRITE_$$minScannedEdges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$minScannedEdges != _value);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$minScannedEdges != _value);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$minScannedEdges(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$minScannedEdges;



implementation {:inline 1} _LOG_ATOMIC_$$minScannedEdges(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$minScannedEdges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$minScannedEdges);
    return;
}



procedure _CHECK_ATOMIC_$$minScannedEdges(_P: bool, _offset: bv32);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset);
  requires {:source_name "minScannedEdges"} {:array "$$minScannedEdges"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$minScannedEdges(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$minScannedEdges;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$minScannedEdges(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$minScannedEdges := (if _P && _WRITE_HAS_OCCURRED_$$minScannedEdges && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$minScannedEdges);
    return;
}



const _WATCHED_VALUE_$$successors: bv32;

procedure {:inline 1} _LOG_READ_$$successors(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$successors;



implementation {:inline 1} _LOG_READ_$$successors(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$successors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$successors == _value then true else _READ_HAS_OCCURRED_$$successors);
    return;
}



procedure _CHECK_READ_$$successors(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$successors);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$successors: bool;

procedure {:inline 1} _LOG_WRITE_$$successors(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$successors, _WRITE_READ_BENIGN_FLAG_$$successors;



implementation {:inline 1} _LOG_WRITE_$$successors(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$successors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$successors == _value then true else _WRITE_HAS_OCCURRED_$$successors);
    _WRITE_READ_BENIGN_FLAG_$$successors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$successors == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$successors);
    return;
}



procedure _CHECK_WRITE_$$successors(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$successors != _value);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$successors != _value);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$successors(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$successors;



implementation {:inline 1} _LOG_ATOMIC_$$successors(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$successors := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$successors);
    return;
}



procedure _CHECK_ATOMIC_$$successors(_P: bool, _offset: bv32);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset);
  requires {:source_name "successors"} {:array "$$successors"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$successors(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$successors;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$successors(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$successors := (if _P && _WRITE_HAS_OCCURRED_$$successors && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$successors);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
