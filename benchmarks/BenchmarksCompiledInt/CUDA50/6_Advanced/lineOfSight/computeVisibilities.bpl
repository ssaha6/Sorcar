type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$angles"} {:global} {:elem_width 32} {:source_name "angles"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$angles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$angles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$angles: bool;

axiom {:array_info "$$scannedAngles"} {:global} {:elem_width 32} {:source_name "scannedAngles"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$scannedAngles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$scannedAngles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$scannedAngles: bool;

var {:source_name "visibilities"} {:global} $$visibilities: [int]int;

axiom {:array_info "$$visibilities"} {:global} {:elem_width 8} {:source_name "visibilities"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$visibilities: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$visibilities: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$visibilities: bool;

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

function FEQ32(int, int) : bool;

function FLT32(int, int) : bool;

function {:inline true} BV1_ZEXT8(x: int) : int
{
  x
}

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

procedure {:source_name "computeVisibilities_kernel"} {:kernel} $_Z26computeVisibilities_kernelPKfS0_iPh($numAngles: int);
  requires !_READ_HAS_OCCURRED_$$angles && !_WRITE_HAS_OCCURRED_$$angles && !_ATOMIC_HAS_OCCURRED_$$angles;
  requires !_READ_HAS_OCCURRED_$$scannedAngles && !_WRITE_HAS_OCCURRED_$$scannedAngles && !_ATOMIC_HAS_OCCURRED_$$scannedAngles;
  requires !_READ_HAS_OCCURRED_$$visibilities && !_WRITE_HAS_OCCURRED_$$visibilities && !_ATOMIC_HAS_OCCURRED_$$visibilities;
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
  modifies _WRITE_HAS_OCCURRED_$$visibilities, _WRITE_READ_BENIGN_FLAG_$$visibilities, _WRITE_READ_BENIGN_FLAG_$$visibilities;



implementation {:source_name "computeVisibilities_kernel"} {:kernel} $_Z26computeVisibilities_kernelPKfS0_iPh($numAngles: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $numAngles);
    v1$2 := BV32_ULT(v0$2, $numAngles);
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
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$visibilities(p0$1, v0$1, BV1_ZEXT8((if FEQ32(v2$1, v3$1) || FLT32(v2$1, v3$1) then 1 else 0)), $$visibilities[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$visibilities(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$visibilities(p0$2, v0$2, BV1_ZEXT8((if FEQ32(v2$2, v3$2) || FLT32(v2$2, v3$2) then 1 else 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$visibilities"} true;
    $$visibilities[v0$1] := (if p0$1 then BV1_ZEXT8((if FEQ32(v2$1, v3$1) || FLT32(v2$1, v3$1) then 1 else 0)) else $$visibilities[v0$1]);
    $$visibilities[v0$2] := (if p0$2 then BV1_ZEXT8((if FEQ32(v2$2, v3$2) || FLT32(v2$2, v3$2) then 1 else 0)) else $$visibilities[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 40 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$angles: int;

procedure {:inline 1} _LOG_READ_$$angles(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$angles;



implementation {:inline 1} _LOG_READ_$$angles(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then true else _READ_HAS_OCCURRED_$$angles);
    return;
}



procedure _CHECK_READ_$$angles(_P: bool, _offset: int, _value: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$angles);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$angles: bool;

procedure {:inline 1} _LOG_WRITE_$$angles(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$angles, _WRITE_READ_BENIGN_FLAG_$$angles;



implementation {:inline 1} _LOG_WRITE_$$angles(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then true else _WRITE_HAS_OCCURRED_$$angles);
    _WRITE_READ_BENIGN_FLAG_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$angles);
    return;
}



procedure _CHECK_WRITE_$$angles(_P: bool, _offset: int, _value: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles != _value);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles != _value);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$angles(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$angles;



implementation {:inline 1} _LOG_ATOMIC_$$angles(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$angles);
    return;
}



procedure _CHECK_ATOMIC_$$angles(_P: bool, _offset: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$angles(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$angles;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$angles(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$angles := (if _P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$angles);
    return;
}



const _WATCHED_VALUE_$$scannedAngles: int;

procedure {:inline 1} _LOG_READ_$$scannedAngles(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$scannedAngles;



implementation {:inline 1} _LOG_READ_$$scannedAngles(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$scannedAngles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scannedAngles == _value then true else _READ_HAS_OCCURRED_$$scannedAngles);
    return;
}



procedure _CHECK_READ_$$scannedAngles(_P: bool, _offset: int, _value: int);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$scannedAngles);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$scannedAngles: bool;

procedure {:inline 1} _LOG_WRITE_$$scannedAngles(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$scannedAngles, _WRITE_READ_BENIGN_FLAG_$$scannedAngles;



implementation {:inline 1} _LOG_WRITE_$$scannedAngles(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$scannedAngles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scannedAngles == _value then true else _WRITE_HAS_OCCURRED_$$scannedAngles);
    _WRITE_READ_BENIGN_FLAG_$$scannedAngles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scannedAngles == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$scannedAngles);
    return;
}



procedure _CHECK_WRITE_$$scannedAngles(_P: bool, _offset: int, _value: int);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scannedAngles != _value);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scannedAngles != _value);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$scannedAngles(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$scannedAngles;



implementation {:inline 1} _LOG_ATOMIC_$$scannedAngles(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$scannedAngles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$scannedAngles);
    return;
}



procedure _CHECK_ATOMIC_$$scannedAngles(_P: bool, _offset: int);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset);
  requires {:source_name "scannedAngles"} {:array "$$scannedAngles"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$scannedAngles(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$scannedAngles;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$scannedAngles(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$scannedAngles := (if _P && _WRITE_HAS_OCCURRED_$$scannedAngles && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$scannedAngles);
    return;
}



const _WATCHED_VALUE_$$visibilities: int;

procedure {:inline 1} _LOG_READ_$$visibilities(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$visibilities;



implementation {:inline 1} _LOG_READ_$$visibilities(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$visibilities := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visibilities == _value then true else _READ_HAS_OCCURRED_$$visibilities);
    return;
}



procedure _CHECK_READ_$$visibilities(_P: bool, _offset: int, _value: int);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$visibilities);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$visibilities: bool;

procedure {:inline 1} _LOG_WRITE_$$visibilities(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$visibilities, _WRITE_READ_BENIGN_FLAG_$$visibilities;



implementation {:inline 1} _LOG_WRITE_$$visibilities(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$visibilities := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visibilities == _value then true else _WRITE_HAS_OCCURRED_$$visibilities);
    _WRITE_READ_BENIGN_FLAG_$$visibilities := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visibilities == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$visibilities);
    return;
}



procedure _CHECK_WRITE_$$visibilities(_P: bool, _offset: int, _value: int);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visibilities != _value);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visibilities != _value);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$visibilities(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$visibilities;



implementation {:inline 1} _LOG_ATOMIC_$$visibilities(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$visibilities := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$visibilities);
    return;
}



procedure _CHECK_ATOMIC_$$visibilities(_P: bool, _offset: int);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset);
  requires {:source_name "visibilities"} {:array "$$visibilities"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visibilities(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$visibilities;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visibilities(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$visibilities := (if _P && _WRITE_HAS_OCCURRED_$$visibilities && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$visibilities);
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
