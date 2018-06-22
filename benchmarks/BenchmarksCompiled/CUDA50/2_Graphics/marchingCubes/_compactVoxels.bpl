type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "compactedVoxelArray"} {:global} $$compactedVoxelArray: [bv32]bv32;

axiom {:array_info "$$compactedVoxelArray"} {:global} {:elem_width 32} {:source_name "compactedVoxelArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$compactedVoxelArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$compactedVoxelArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray: bool;

var {:source_name "voxelOccupied"} {:global} $$voxelOccupied: [bv32]bv32;

axiom {:array_info "$$voxelOccupied"} {:global} {:elem_width 32} {:source_name "voxelOccupied"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$voxelOccupied: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$voxelOccupied: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$voxelOccupied: bool;

var {:source_name "voxelOccupiedScan"} {:global} $$voxelOccupiedScan: [bv32]bv32;

axiom {:array_info "$$voxelOccupiedScan"} {:global} {:elem_width 32} {:source_name "voxelOccupiedScan"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$voxelOccupiedScan: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$voxelOccupiedScan: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan: bool;

const _WATCHED_OFFSET: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function __other_bv32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV34_ADD(bv34, bv34) : bv34;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:inline true} __add_noovfl_2(v0: bv32, v1: bv32) : bv1
{
  (if BV34_ADD(0bv2 ++ v0, 0bv2 ++ v1)[34:32] == 0bv2 then 1bv1 else 0bv1)
}

procedure {:source_name "compactVoxels"} {:kernel} $_Z13compactVoxelsPjS_S_j($numVoxels: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if BV32_ULT(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)) ==> BV32_ULE(BV32_ADD($$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)], $$voxelOccupied[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)]), $$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)]) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 0} {:thread 2} (if BV32_ULT(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)) ==> BV32_ULE(BV32_ADD($$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)], $$voxelOccupied[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)]), $$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)]) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_ULT(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)) ==> __add_noovfl_2($$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)], $$voxelOccupied[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)]) == 1bv1 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 2} (if BV32_ULT(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2), BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1)) ==> __add_noovfl_2($$voxelOccupiedScan[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)], $$voxelOccupied[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2)]) == 1bv1 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$compactedVoxelArray && !_WRITE_HAS_OCCURRED_$$compactedVoxelArray && !_ATOMIC_HAS_OCCURRED_$$compactedVoxelArray;
  requires !_READ_HAS_OCCURRED_$$voxelOccupied && !_WRITE_HAS_OCCURRED_$$voxelOccupied && !_ATOMIC_HAS_OCCURRED_$$voxelOccupied;
  requires !_READ_HAS_OCCURRED_$$voxelOccupiedScan && !_WRITE_HAS_OCCURRED_$$voxelOccupiedScan && !_ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan;
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
  modifies _WRITE_HAS_OCCURRED_$$compactedVoxelArray, _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray, _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray;



implementation {:source_name "compactVoxels"} {:kernel} $_Z13compactVoxelsPjS_S_j($numVoxels: bv32)
{
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, num_groups_x), group_id_x$1), group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, num_groups_x), group_id_x$2), group_size_x), local_id_x$2);
    v1$1 := $$voxelOccupied[v0$1];
    v1$2 := $$voxelOccupied[v0$2];
    v2$1 := v1$1 != 0bv32;
    v2$2 := v1$2 != 0bv32;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    v3$1 := (if p0$1 then BV32_ULT(v0$1, $numVoxels) else v3$1);
    v3$2 := (if p0$2 then BV32_ULT(v0$2, $numVoxels) else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    v4$1 := (if p1$1 then $$voxelOccupiedScan[v0$1] else v4$1);
    v4$2 := (if p1$2 then $$voxelOccupiedScan[v0$2] else v4$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$compactedVoxelArray(p1$1, v4$1, v0$1, $$compactedVoxelArray[v4$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray(p1$2, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$compactedVoxelArray(p1$2, v4$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$compactedVoxelArray"} true;
    $$compactedVoxelArray[v4$1] := (if p1$1 then v0$1 else $$compactedVoxelArray[v4$1]);
    $$compactedVoxelArray[v4$2] := (if p1$2 then v0$2 else $$compactedVoxelArray[v4$2]);
    return;
}



axiom (if group_size_x == 128bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$compactedVoxelArray: bv32;

procedure {:inline 1} _LOG_READ_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$compactedVoxelArray;



implementation {:inline 1} _LOG_READ_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$compactedVoxelArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$compactedVoxelArray == _value then true else _READ_HAS_OCCURRED_$$compactedVoxelArray);
    return;
}



procedure _CHECK_READ_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray: bool;

procedure {:inline 1} _LOG_WRITE_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$compactedVoxelArray, _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray;



implementation {:inline 1} _LOG_WRITE_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$compactedVoxelArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$compactedVoxelArray == _value then true else _WRITE_HAS_OCCURRED_$$compactedVoxelArray);
    _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$compactedVoxelArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray);
    return;
}



procedure _CHECK_WRITE_$$compactedVoxelArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$compactedVoxelArray != _value);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$compactedVoxelArray != _value);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$compactedVoxelArray(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray;



implementation {:inline 1} _LOG_ATOMIC_$$compactedVoxelArray(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$compactedVoxelArray);
    return;
}



procedure _CHECK_ATOMIC_$$compactedVoxelArray(_P: bool, _offset: bv32);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "compactedVoxelArray"} {:array "$$compactedVoxelArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray := (if _P && _WRITE_HAS_OCCURRED_$$compactedVoxelArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$compactedVoxelArray);
    return;
}



const _WATCHED_VALUE_$$voxelOccupied: bv32;

procedure {:inline 1} _LOG_READ_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$voxelOccupied;



implementation {:inline 1} _LOG_READ_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then true else _READ_HAS_OCCURRED_$$voxelOccupied);
    return;
}



procedure _CHECK_READ_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$voxelOccupied: bool;

procedure {:inline 1} _LOG_WRITE_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$voxelOccupied, _WRITE_READ_BENIGN_FLAG_$$voxelOccupied;



implementation {:inline 1} _LOG_WRITE_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then true else _WRITE_HAS_OCCURRED_$$voxelOccupied);
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
    return;
}



procedure _CHECK_WRITE_$$voxelOccupied(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied != _value);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupied != _value);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$voxelOccupied(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$voxelOccupied;



implementation {:inline 1} _LOG_ATOMIC_$$voxelOccupied(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$voxelOccupied := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$voxelOccupied);
    return;
}



procedure _CHECK_ATOMIC_$$voxelOccupied(_P: bool, _offset: bv32);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);
  requires {:source_name "voxelOccupied"} {:array "$$voxelOccupied"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupied(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$voxelOccupied;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupied(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupied := (if _P && _WRITE_HAS_OCCURRED_$$voxelOccupied && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$voxelOccupied);
    return;
}



const _WATCHED_VALUE_$$voxelOccupiedScan: bv32;

procedure {:inline 1} _LOG_READ_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$voxelOccupiedScan;



implementation {:inline 1} _LOG_READ_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$voxelOccupiedScan := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupiedScan == _value then true else _READ_HAS_OCCURRED_$$voxelOccupiedScan);
    return;
}



procedure _CHECK_READ_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan: bool;

procedure {:inline 1} _LOG_WRITE_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$voxelOccupiedScan, _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan;



implementation {:inline 1} _LOG_WRITE_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$voxelOccupiedScan := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupiedScan == _value then true else _WRITE_HAS_OCCURRED_$$voxelOccupiedScan);
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupiedScan == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan);
    return;
}



procedure _CHECK_WRITE_$$voxelOccupiedScan(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupiedScan != _value);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$voxelOccupiedScan != _value);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$voxelOccupiedScan(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan;



implementation {:inline 1} _LOG_ATOMIC_$$voxelOccupiedScan(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$voxelOccupiedScan);
    return;
}



procedure _CHECK_ATOMIC_$$voxelOccupiedScan(_P: bool, _offset: bv32);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset);
  requires {:source_name "voxelOccupiedScan"} {:array "$$voxelOccupiedScan"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan := (if _P && _WRITE_HAS_OCCURRED_$$voxelOccupiedScan && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$voxelOccupiedScan);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
