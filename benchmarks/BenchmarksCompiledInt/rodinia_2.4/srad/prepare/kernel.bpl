type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$d_I"} {:global} {:elem_width 32} {:source_name "d_I"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_I: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_I: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_I: bool;

var {:source_name "d_sums"} {:global} $$d_sums: [int]int;

axiom {:array_info "$$d_sums"} {:global} {:elem_width 32} {:source_name "d_sums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_sums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_sums: bool;

var {:source_name "d_sums2"} {:global} $$d_sums2: [int]int;

axiom {:array_info "$$d_sums2"} {:global} {:elem_width 32} {:source_name "d_sums2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_sums2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_sums2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_sums2: bool;

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

function BV32_SEXT64(int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "prepare_kernel"} {:kernel} $prepare_kernel($d_Ne: int);
  requires !_READ_HAS_OCCURRED_$$d_I && !_WRITE_HAS_OCCURRED_$$d_I && !_ATOMIC_HAS_OCCURRED_$$d_I;
  requires !_READ_HAS_OCCURRED_$$d_sums && !_WRITE_HAS_OCCURRED_$$d_sums && !_ATOMIC_HAS_OCCURRED_$$d_sums;
  requires !_READ_HAS_OCCURRED_$$d_sums2 && !_WRITE_HAS_OCCURRED_$$d_sums2 && !_ATOMIC_HAS_OCCURRED_$$d_sums2;
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
  modifies _WRITE_HAS_OCCURRED_$$d_sums, _WRITE_READ_BENIGN_FLAG_$$d_sums, _WRITE_READ_BENIGN_FLAG_$$d_sums, _WRITE_HAS_OCCURRED_$$d_sums2, _WRITE_READ_BENIGN_FLAG_$$d_sums2, _WRITE_READ_BENIGN_FLAG_$$d_sums2;



implementation {:source_name "prepare_kernel"} {:kernel} $prepare_kernel($d_Ne: int)
{
  var v1$1: bool;
  var v1$2: bool;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
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
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 512), local_id_x$2);
    v1$1 := BV64_SLT(BV32_SEXT64(v0$1), $d_Ne);
    v1$2 := BV64_SLT(BV32_SEXT64(v0$2), $d_Ne);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$d_sums(p0$1, v0$1, v2$1, $$d_sums[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$d_sums(p0$2, v0$2, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_sums"} true;
    $$d_sums[v0$1] := (if p0$1 then v2$1 else $$d_sums[v0$1]);
    $$d_sums[v0$2] := (if p0$2 then v2$2 else $$d_sums[v0$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$d_sums2(p0$1, v0$1, FMUL32(v3$1, v4$1), $$d_sums2[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums2(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$d_sums2(p0$2, v0$2, FMUL32(v3$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_sums2"} true;
    $$d_sums2[v0$1] := (if p0$1 then FMUL32(v3$1, v4$1) else $$d_sums2[v0$1]);
    $$d_sums2[v0$2] := (if p0$2 then FMUL32(v3$2, v4$2) else $$d_sums2[v0$2]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 450 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$d_I: int;

procedure {:inline 1} _LOG_READ_$$d_I(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_I;



implementation {:inline 1} _LOG_READ_$$d_I(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then true else _READ_HAS_OCCURRED_$$d_I);
    return;
}



procedure _CHECK_READ_$$d_I(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_I);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_I: bool;

procedure {:inline 1} _LOG_WRITE_$$d_I(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_I, _WRITE_READ_BENIGN_FLAG_$$d_I;



implementation {:inline 1} _LOG_WRITE_$$d_I(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then true else _WRITE_HAS_OCCURRED_$$d_I);
    _WRITE_READ_BENIGN_FLAG_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_I);
    return;
}



procedure _CHECK_WRITE_$$d_I(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I != _value);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_I != _value);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_I(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_I;



implementation {:inline 1} _LOG_ATOMIC_$$d_I(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_I := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_I);
    return;
}



procedure _CHECK_ATOMIC_$$d_I(_P: bool, _offset: int);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_I"} {:array "$$d_I"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_I(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_I;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_I(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_I := (if _P && _WRITE_HAS_OCCURRED_$$d_I && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_I);
    return;
}



const _WATCHED_VALUE_$$d_sums: int;

procedure {:inline 1} _LOG_READ_$$d_sums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_sums;



implementation {:inline 1} _LOG_READ_$$d_sums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums == _value then true else _READ_HAS_OCCURRED_$$d_sums);
    return;
}



procedure _CHECK_READ_$$d_sums(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_sums);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_sums: bool;

procedure {:inline 1} _LOG_WRITE_$$d_sums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_sums, _WRITE_READ_BENIGN_FLAG_$$d_sums;



implementation {:inline 1} _LOG_WRITE_$$d_sums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums == _value then true else _WRITE_HAS_OCCURRED_$$d_sums);
    _WRITE_READ_BENIGN_FLAG_$$d_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_sums);
    return;
}



procedure _CHECK_WRITE_$$d_sums(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums != _value);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums != _value);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_sums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_sums;



implementation {:inline 1} _LOG_ATOMIC_$$d_sums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_sums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_sums);
    return;
}



procedure _CHECK_ATOMIC_$$d_sums(_P: bool, _offset: int);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_sums"} {:array "$$d_sums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_sums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_sums := (if _P && _WRITE_HAS_OCCURRED_$$d_sums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_sums);
    return;
}



const _WATCHED_VALUE_$$d_sums2: int;

procedure {:inline 1} _LOG_READ_$$d_sums2(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_sums2;



implementation {:inline 1} _LOG_READ_$$d_sums2(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_sums2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums2 == _value then true else _READ_HAS_OCCURRED_$$d_sums2);
    return;
}



procedure _CHECK_READ_$$d_sums2(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_sums2);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_sums2: bool;

procedure {:inline 1} _LOG_WRITE_$$d_sums2(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_sums2, _WRITE_READ_BENIGN_FLAG_$$d_sums2;



implementation {:inline 1} _LOG_WRITE_$$d_sums2(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_sums2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums2 == _value then true else _WRITE_HAS_OCCURRED_$$d_sums2);
    _WRITE_READ_BENIGN_FLAG_$$d_sums2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_sums2);
    return;
}



procedure _CHECK_WRITE_$$d_sums2(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums2 != _value);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_sums2 != _value);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_sums2(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_sums2;



implementation {:inline 1} _LOG_ATOMIC_$$d_sums2(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_sums2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_sums2);
    return;
}



procedure _CHECK_ATOMIC_$$d_sums2(_P: bool, _offset: int);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_sums2"} {:array "$$d_sums2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums2(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_sums2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_sums2(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_sums2 := (if _P && _WRITE_HAS_OCCURRED_$$d_sums2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_sums2);
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
