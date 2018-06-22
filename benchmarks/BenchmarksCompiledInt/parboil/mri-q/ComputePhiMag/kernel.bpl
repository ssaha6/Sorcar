type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$phiR"} {:global} {:elem_width 32} {:source_name "phiR"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$phiR: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$phiR: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$phiR: bool;

axiom {:array_info "$$phiI"} {:global} {:elem_width 32} {:source_name "phiI"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$phiI: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$phiI: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$phiI: bool;

var {:source_name "phiMag"} {:global} $$phiMag: [int]int;

axiom {:array_info "$$phiMag"} {:global} {:elem_width 32} {:source_name "phiMag"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$phiMag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$phiMag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$phiMag: bool;

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

procedure {:source_name "ComputePhiMag_GPU"} {:kernel} $ComputePhiMag_GPU($numK: int);
  requires !_READ_HAS_OCCURRED_$$phiR && !_WRITE_HAS_OCCURRED_$$phiR && !_ATOMIC_HAS_OCCURRED_$$phiR;
  requires !_READ_HAS_OCCURRED_$$phiI && !_WRITE_HAS_OCCURRED_$$phiI && !_ATOMIC_HAS_OCCURRED_$$phiI;
  requires !_READ_HAS_OCCURRED_$$phiMag && !_WRITE_HAS_OCCURRED_$$phiMag && !_ATOMIC_HAS_OCCURRED_$$phiMag;
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
  modifies _WRITE_HAS_OCCURRED_$$phiMag, _WRITE_READ_BENIGN_FLAG_$$phiMag, _WRITE_READ_BENIGN_FLAG_$$phiMag;



implementation {:source_name "ComputePhiMag_GPU"} {:kernel} $ComputePhiMag_GPU($numK: int)
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
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_SLT(v0$1, $numK);
    v1$2 := BV32_SLT(v0$2, $numK);
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
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$phiMag(p0$1, v0$1, FADD32(FMUL32(v2$1, v2$1), FMUL32(v3$1, v3$1)), $$phiMag[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiMag(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$phiMag(p0$2, v0$2, FADD32(FMUL32(v2$2, v2$2), FMUL32(v3$2, v3$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$phiMag"} true;
    $$phiMag[v0$1] := (if p0$1 then FADD32(FMUL32(v2$1, v2$1), FMUL32(v3$1, v3$1)) else $$phiMag[v0$1]);
    $$phiMag[v0$2] := (if p0$2 then FADD32(FMUL32(v2$2, v2$2), FMUL32(v3$2, v3$2)) else $$phiMag[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 12 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$phiR: int;

procedure {:inline 1} _LOG_READ_$$phiR(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$phiR;



implementation {:inline 1} _LOG_READ_$$phiR(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$phiR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiR == _value then true else _READ_HAS_OCCURRED_$$phiR);
    return;
}



procedure _CHECK_READ_$$phiR(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$phiR);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$phiR: bool;

procedure {:inline 1} _LOG_WRITE_$$phiR(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$phiR, _WRITE_READ_BENIGN_FLAG_$$phiR;



implementation {:inline 1} _LOG_WRITE_$$phiR(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$phiR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiR == _value then true else _WRITE_HAS_OCCURRED_$$phiR);
    _WRITE_READ_BENIGN_FLAG_$$phiR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiR == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$phiR);
    return;
}



procedure _CHECK_WRITE_$$phiR(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiR != _value);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiR != _value);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$phiR(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$phiR;



implementation {:inline 1} _LOG_ATOMIC_$$phiR(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$phiR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$phiR);
    return;
}



procedure _CHECK_ATOMIC_$$phiR(_P: bool, _offset: int);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset);
  requires {:source_name "phiR"} {:array "$$phiR"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiR(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$phiR;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiR(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$phiR := (if _P && _WRITE_HAS_OCCURRED_$$phiR && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$phiR);
    return;
}



const _WATCHED_VALUE_$$phiI: int;

procedure {:inline 1} _LOG_READ_$$phiI(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$phiI;



implementation {:inline 1} _LOG_READ_$$phiI(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$phiI := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiI == _value then true else _READ_HAS_OCCURRED_$$phiI);
    return;
}



procedure _CHECK_READ_$$phiI(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$phiI);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$phiI: bool;

procedure {:inline 1} _LOG_WRITE_$$phiI(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$phiI, _WRITE_READ_BENIGN_FLAG_$$phiI;



implementation {:inline 1} _LOG_WRITE_$$phiI(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$phiI := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiI == _value then true else _WRITE_HAS_OCCURRED_$$phiI);
    _WRITE_READ_BENIGN_FLAG_$$phiI := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiI == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$phiI);
    return;
}



procedure _CHECK_WRITE_$$phiI(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiI != _value);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiI != _value);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$phiI(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$phiI;



implementation {:inline 1} _LOG_ATOMIC_$$phiI(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$phiI := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$phiI);
    return;
}



procedure _CHECK_ATOMIC_$$phiI(_P: bool, _offset: int);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset);
  requires {:source_name "phiI"} {:array "$$phiI"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiI(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$phiI;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiI(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$phiI := (if _P && _WRITE_HAS_OCCURRED_$$phiI && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$phiI);
    return;
}



const _WATCHED_VALUE_$$phiMag: int;

procedure {:inline 1} _LOG_READ_$$phiMag(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$phiMag;



implementation {:inline 1} _LOG_READ_$$phiMag(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$phiMag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiMag == _value then true else _READ_HAS_OCCURRED_$$phiMag);
    return;
}



procedure _CHECK_READ_$$phiMag(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$phiMag);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$phiMag: bool;

procedure {:inline 1} _LOG_WRITE_$$phiMag(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$phiMag, _WRITE_READ_BENIGN_FLAG_$$phiMag;



implementation {:inline 1} _LOG_WRITE_$$phiMag(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$phiMag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiMag == _value then true else _WRITE_HAS_OCCURRED_$$phiMag);
    _WRITE_READ_BENIGN_FLAG_$$phiMag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiMag == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$phiMag);
    return;
}



procedure _CHECK_WRITE_$$phiMag(_P: bool, _offset: int, _value: int);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiMag != _value);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$phiMag != _value);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$phiMag(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$phiMag;



implementation {:inline 1} _LOG_ATOMIC_$$phiMag(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$phiMag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$phiMag);
    return;
}



procedure _CHECK_ATOMIC_$$phiMag(_P: bool, _offset: int);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset);
  requires {:source_name "phiMag"} {:array "$$phiMag"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiMag(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$phiMag;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$phiMag(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$phiMag := (if _P && _WRITE_HAS_OCCURRED_$$phiMag && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$phiMag);
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
