type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$LMatrix"} {:global} {:elem_width 64} {:source_name "LMatrix"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$LMatrix: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$LMatrix: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$LMatrix: bool;

var {:source_name "inplaceMatrix"} {:global} $$inplaceMatrix: [int]int;

axiom {:array_info "$$inplaceMatrix"} {:global} {:elem_width 64} {:source_name "inplaceMatrix"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inplaceMatrix: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inplaceMatrix: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inplaceMatrix: bool;

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

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

procedure {:source_name "kernelLUCombine"} {:kernel} $kernelLUCombine();
  requires !_READ_HAS_OCCURRED_$$LMatrix && !_WRITE_HAS_OCCURRED_$$LMatrix && !_ATOMIC_HAS_OCCURRED_$$LMatrix;
  requires !_READ_HAS_OCCURRED_$$inplaceMatrix && !_WRITE_HAS_OCCURRED_$$inplaceMatrix && !_ATOMIC_HAS_OCCURRED_$$inplaceMatrix;
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
  modifies _WRITE_HAS_OCCURRED_$$inplaceMatrix, _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix, _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix;



implementation {:source_name "kernelLUCombine"} {:kernel} $kernelLUCombine()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v2$1 := BV32_SGT(v0$1, v1$1);
    v2$2 := BV32_SGT(v0$2, v1$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    v3$1 := (if p0$1 then BV32_MUL(group_size_x, num_groups_x) else v3$1);
    v3$2 := (if p0$2 then BV32_MUL(group_size_x, num_groups_x) else v3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$inplaceMatrix(p0$1, BV32_ADD(BV32_MUL(v0$1, v3$1), v1$1), v4$1, $$inplaceMatrix[BV32_ADD(BV32_MUL(v0$1, v3$1), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$inplaceMatrix(p0$2, BV32_ADD(BV32_MUL(v0$2, v3$2), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$inplaceMatrix(p0$2, BV32_ADD(BV32_MUL(v0$2, v3$2), v1$2), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$inplaceMatrix"} true;
    $$inplaceMatrix[BV32_ADD(BV32_MUL(v0$1, v3$1), v1$1)] := (if p0$1 then v4$1 else $$inplaceMatrix[BV32_ADD(BV32_MUL(v0$1, v3$1), v1$1)]);
    $$inplaceMatrix[BV32_ADD(BV32_MUL(v0$2, v3$2), v1$2)] := (if p0$2 then v4$2 else $$inplaceMatrix[BV32_ADD(BV32_MUL(v0$2, v3$2), v1$2)]);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$LMatrix: int;

procedure {:inline 1} _LOG_READ_$$LMatrix(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$LMatrix;



implementation {:inline 1} _LOG_READ_$$LMatrix(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$LMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LMatrix == _value then true else _READ_HAS_OCCURRED_$$LMatrix);
    return;
}



procedure _CHECK_READ_$$LMatrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$LMatrix);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$LMatrix: bool;

procedure {:inline 1} _LOG_WRITE_$$LMatrix(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$LMatrix, _WRITE_READ_BENIGN_FLAG_$$LMatrix;



implementation {:inline 1} _LOG_WRITE_$$LMatrix(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$LMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LMatrix == _value then true else _WRITE_HAS_OCCURRED_$$LMatrix);
    _WRITE_READ_BENIGN_FLAG_$$LMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LMatrix == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$LMatrix);
    return;
}



procedure _CHECK_WRITE_$$LMatrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LMatrix != _value);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LMatrix != _value);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$LMatrix(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$LMatrix;



implementation {:inline 1} _LOG_ATOMIC_$$LMatrix(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$LMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$LMatrix);
    return;
}



procedure _CHECK_ATOMIC_$$LMatrix(_P: bool, _offset: int);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset);
  requires {:source_name "LMatrix"} {:array "$$LMatrix"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LMatrix(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$LMatrix;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LMatrix(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$LMatrix := (if _P && _WRITE_HAS_OCCURRED_$$LMatrix && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$LMatrix);
    return;
}



const _WATCHED_VALUE_$$inplaceMatrix: int;

procedure {:inline 1} _LOG_READ_$$inplaceMatrix(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$inplaceMatrix;



implementation {:inline 1} _LOG_READ_$$inplaceMatrix(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inplaceMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inplaceMatrix == _value then true else _READ_HAS_OCCURRED_$$inplaceMatrix);
    return;
}



procedure _CHECK_READ_$$inplaceMatrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix: bool;

procedure {:inline 1} _LOG_WRITE_$$inplaceMatrix(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$inplaceMatrix, _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix;



implementation {:inline 1} _LOG_WRITE_$$inplaceMatrix(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inplaceMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inplaceMatrix == _value then true else _WRITE_HAS_OCCURRED_$$inplaceMatrix);
    _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inplaceMatrix == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix);
    return;
}



procedure _CHECK_WRITE_$$inplaceMatrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inplaceMatrix != _value);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inplaceMatrix != _value);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inplaceMatrix(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$inplaceMatrix;



implementation {:inline 1} _LOG_ATOMIC_$$inplaceMatrix(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inplaceMatrix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inplaceMatrix);
    return;
}



procedure _CHECK_ATOMIC_$$inplaceMatrix(_P: bool, _offset: int);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset);
  requires {:source_name "inplaceMatrix"} {:array "$$inplaceMatrix"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inplaceMatrix(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inplaceMatrix(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix := (if _P && _WRITE_HAS_OCCURRED_$$inplaceMatrix && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inplaceMatrix);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
