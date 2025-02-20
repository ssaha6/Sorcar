type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$d_locations"} {:global} {:elem_width 32} {:source_name "d_locations"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_locations: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_locations: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_locations: bool;

var {:source_name "d_distances"} {:global} $$d_distances: [bv32]bv32;

axiom {:array_info "$$d_distances"} {:global} {:elem_width 32} {:source_name "d_distances"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_distances: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_distances: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_distances: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function FADD32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function FSQRT32(bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

procedure {:source_name "NearestNeighbor"} {:kernel} $NearestNeighbor($numRecords: bv32, $lat: bv32, $lng: bv32);
  requires !_READ_HAS_OCCURRED_$$d_locations && !_WRITE_HAS_OCCURRED_$$d_locations && !_ATOMIC_HAS_OCCURRED_$$d_locations;
  requires !_READ_HAS_OCCURRED_$$d_distances && !_WRITE_HAS_OCCURRED_$$d_distances && !_ATOMIC_HAS_OCCURRED_$$d_distances;
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
  modifies _WRITE_HAS_OCCURRED_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:source_name "NearestNeighbor"} {:kernel} $NearestNeighbor($numRecords: bv32, $lat: bv32, $lng: bv32)
{
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $numRecords);
    v1$2 := BV32_SLT(v0$2, $numRecords);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p0$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_bv32$2 else v2$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v3$1 := (if p0$1 then _HAVOC_bv32$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_bv32$2 else v3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v4$1 := (if p0$1 then _HAVOC_bv32$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_bv32$2 else v4$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v5$1 := (if p0$1 then _HAVOC_bv32$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_bv32$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$d_distances(p0$1, v0$1, FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$1), FSUB32($lat, v3$1)), FMUL32(FSUB32($lng, v4$1), FSUB32($lng, v5$1)))), $$d_distances[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$d_distances(p0$2, v0$2, FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$2), FSUB32($lat, v3$2)), FMUL32(FSUB32($lng, v4$2), FSUB32($lng, v5$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_distances"} true;
    $$d_distances[v0$1] := (if p0$1 then FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$1), FSUB32($lat, v3$1)), FMUL32(FSUB32($lng, v4$1), FSUB32($lng, v5$1)))) else $$d_distances[v0$1]);
    $$d_distances[v0$2] := (if p0$2 then FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$2), FSUB32($lat, v3$2)), FMUL32(FSUB32($lng, v4$2), FSUB32($lng, v5$2)))) else $$d_distances[v0$2]);
    return;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 892bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 48bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$d_locations: bv32;

procedure {:inline 1} _LOG_READ_$$d_locations(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_locations;



implementation {:inline 1} _LOG_READ_$$d_locations(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then true else _READ_HAS_OCCURRED_$$d_locations);
    return;
}



procedure _CHECK_READ_$$d_locations(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_locations);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_locations: bool;

procedure {:inline 1} _LOG_WRITE_$$d_locations(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_locations, _WRITE_READ_BENIGN_FLAG_$$d_locations;



implementation {:inline 1} _LOG_WRITE_$$d_locations(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then true else _WRITE_HAS_OCCURRED_$$d_locations);
    _WRITE_READ_BENIGN_FLAG_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_locations);
    return;
}



procedure _CHECK_WRITE_$$d_locations(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations != _value);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations != _value);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_locations(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_locations;



implementation {:inline 1} _LOG_ATOMIC_$$d_locations(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_locations);
    return;
}



procedure _CHECK_ATOMIC_$$d_locations(_P: bool, _offset: bv32);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_locations(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_locations;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_locations(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_locations := (if _P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_locations);
    return;
}



const _WATCHED_VALUE_$$d_distances: bv32;

procedure {:inline 1} _LOG_READ_$$d_distances(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_distances;



implementation {:inline 1} _LOG_READ_$$d_distances(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then true else _READ_HAS_OCCURRED_$$d_distances);
    return;
}



procedure _CHECK_READ_$$d_distances(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_distances);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_distances: bool;

procedure {:inline 1} _LOG_WRITE_$$d_distances(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:inline 1} _LOG_WRITE_$$d_distances(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then true else _WRITE_HAS_OCCURRED_$$d_distances);
    _WRITE_READ_BENIGN_FLAG_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_distances);
    return;
}



procedure _CHECK_WRITE_$$d_distances(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances != _value);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances != _value);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_distances(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_distances;



implementation {:inline 1} _LOG_ATOMIC_$$d_distances(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_distances);
    return;
}



procedure _CHECK_ATOMIC_$$d_distances(_P: bool, _offset: bv32);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_distances := (if _P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_distances);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;
