type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$d_locations"} {:global} {:elem_width 32} {:source_name "d_locations"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_locations: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_locations: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_locations: bool;

var {:source_name "d_distances"} {:global} $$d_distances: [int]int;

axiom {:array_info "$$d_distances"} {:global} {:elem_width 32} {:source_name "d_distances"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_distances: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_distances: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_distances: bool;

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

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

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

procedure {:source_name "NearestNeighbor"} {:kernel} $NearestNeighbor($numRecords: int, $lat: int, $lng: int);
  requires !_READ_HAS_OCCURRED_$$d_locations && !_WRITE_HAS_OCCURRED_$$d_locations && !_ATOMIC_HAS_OCCURRED_$$d_locations;
  requires !_READ_HAS_OCCURRED_$$d_distances && !_WRITE_HAS_OCCURRED_$$d_distances && !_ATOMIC_HAS_OCCURRED_$$d_distances;
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
  modifies _WRITE_HAS_OCCURRED_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:source_name "NearestNeighbor"} {:kernel} $NearestNeighbor($numRecords: int, $lat: int, $lng: int)
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
    v1$1 := BV32_SLT(v0$1, $numRecords);
    v1$2 := BV32_SLT(v0$2, $numRecords);
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
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$d_distances(p0$1, v0$1, FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$1), FSUB32($lat, v3$1)), FMUL32(FSUB32($lng, v4$1), FSUB32($lng, v5$1)))), $$d_distances[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$d_distances(p0$2, v0$2, FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$2), FSUB32($lat, v3$2)), FMUL32(FSUB32($lng, v4$2), FSUB32($lng, v5$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_distances"} true;
    $$d_distances[v0$1] := (if p0$1 then FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$1), FSUB32($lat, v3$1)), FMUL32(FSUB32($lng, v4$1), FSUB32($lng, v5$1)))) else $$d_distances[v0$1]);
    $$d_distances[v0$2] := (if p0$2 then FSQRT32(FADD32(FMUL32(FSUB32($lat, v2$2), FSUB32($lat, v3$2)), FMUL32(FSUB32($lng, v4$2), FSUB32($lng, v5$2)))) else $$d_distances[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 892 then 1 else 0) != 0;

axiom (if num_groups_x == 48 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$d_locations: int;

procedure {:inline 1} _LOG_READ_$$d_locations(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_locations;



implementation {:inline 1} _LOG_READ_$$d_locations(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then true else _READ_HAS_OCCURRED_$$d_locations);
    return;
}



procedure _CHECK_READ_$$d_locations(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_locations);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_locations: bool;

procedure {:inline 1} _LOG_WRITE_$$d_locations(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_locations, _WRITE_READ_BENIGN_FLAG_$$d_locations;



implementation {:inline 1} _LOG_WRITE_$$d_locations(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then true else _WRITE_HAS_OCCURRED_$$d_locations);
    _WRITE_READ_BENIGN_FLAG_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_locations);
    return;
}



procedure _CHECK_WRITE_$$d_locations(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations != _value);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_locations != _value);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_locations(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_locations;



implementation {:inline 1} _LOG_ATOMIC_$$d_locations(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_locations := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_locations);
    return;
}



procedure _CHECK_ATOMIC_$$d_locations(_P: bool, _offset: int);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_locations"} {:array "$$d_locations"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_locations(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_locations;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_locations(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_locations := (if _P && _WRITE_HAS_OCCURRED_$$d_locations && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_locations);
    return;
}



const _WATCHED_VALUE_$$d_distances: int;

procedure {:inline 1} _LOG_READ_$$d_distances(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_distances;



implementation {:inline 1} _LOG_READ_$$d_distances(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then true else _READ_HAS_OCCURRED_$$d_distances);
    return;
}



procedure _CHECK_READ_$$d_distances(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_distances);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_distances: bool;

procedure {:inline 1} _LOG_WRITE_$$d_distances(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_distances, _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:inline 1} _LOG_WRITE_$$d_distances(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then true else _WRITE_HAS_OCCURRED_$$d_distances);
    _WRITE_READ_BENIGN_FLAG_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_distances);
    return;
}



procedure _CHECK_WRITE_$$d_distances(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances != _value);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_distances != _value);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_distances(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_distances;



implementation {:inline 1} _LOG_ATOMIC_$$d_distances(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_distances := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_distances);
    return;
}



procedure _CHECK_ATOMIC_$$d_distances(_P: bool, _offset: int);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_distances"} {:array "$$d_distances"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_distances;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_distances(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_distances := (if _P && _WRITE_HAS_OCCURRED_$$d_distances && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_distances);
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
