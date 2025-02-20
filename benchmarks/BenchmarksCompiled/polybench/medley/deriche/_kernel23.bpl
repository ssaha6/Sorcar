type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$y2"} {:global} {:elem_width 32} {:source_name "y2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y2: bool;

var {:source_name "yp1"} {:global} $$yp1: [bv32]bv32;

axiom {:array_info "$$yp1"} {:global} {:elem_width 32} {:source_name "yp1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$yp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$yp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$yp1: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel23"} {:kernel} $kernel23($h: bv32, $w: bv32, $c0: bv64, $c1_0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $h == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $w == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($h, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($w, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($w), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($h), $c1_0), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE($c1_0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$y2 ==> BV32_AND(BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $h), $w)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $h)), $c1_0) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$y2 && !_WRITE_HAS_OCCURRED_$$y2 && !_ATOMIC_HAS_OCCURRED_$$y2;
  requires !_READ_HAS_OCCURRED_$$yp1 && !_WRITE_HAS_OCCURRED_$$yp1 && !_ATOMIC_HAS_OCCURRED_$$yp1;
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
  modifies _WRITE_HAS_OCCURRED_$$yp1, _WRITE_READ_BENIGN_FLAG_$$yp1, _WRITE_READ_BENIGN_FLAG_$$yp1;



implementation {:source_name "kernel23"} {:kernel} $kernel23($h: bv32, $w: bv32, $c0: bv64, $c1_0: bv64)
{
  var v0$1: bv32;
  var v0$2: bv32;


  $0:
    havoc v0$1, v0$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$yp1(true, 0bv32, v0$1, $$yp1[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp1(true, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$yp1(true, 0bv32, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$yp1"} true;
    $$yp1[0bv32] := v0$1;
    $$yp1[0bv32] := v0$2;
    return;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$y2: bv32;

procedure {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _READ_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_READ_$$y2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y2);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y2: bool;

procedure {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$y2, _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _WRITE_HAS_OCCURRED_$$y2);
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



procedure _CHECK_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_ATOMIC_$$y2(_P: bool, _offset: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



const _WATCHED_VALUE_$$yp1: bv32;

procedure {:inline 1} _LOG_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$yp1;



implementation {:inline 1} _LOG_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then true else _READ_HAS_OCCURRED_$$yp1);
    return;
}



procedure _CHECK_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$yp1);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$yp1: bool;

procedure {:inline 1} _LOG_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$yp1, _WRITE_READ_BENIGN_FLAG_$$yp1;



implementation {:inline 1} _LOG_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then true else _WRITE_HAS_OCCURRED_$$yp1);
    _WRITE_READ_BENIGN_FLAG_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$yp1);
    return;
}



procedure _CHECK_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 != _value);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 != _value);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$yp1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$yp1;



implementation {:inline 1} _LOG_ATOMIC_$$yp1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$yp1);
    return;
}



procedure _CHECK_ATOMIC_$$yp1(_P: bool, _offset: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$yp1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$yp1 := (if _P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$yp1);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
