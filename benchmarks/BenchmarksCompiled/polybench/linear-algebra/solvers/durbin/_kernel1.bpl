type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$alpha"} {:global} {:elem_width 64} {:source_name "alpha"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$alpha: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$alpha: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$alpha: bool;

var {:source_name "beta"} {:global} $$beta: [bv32]bv64;

axiom {:array_info "$$beta"} {:global} {:elem_width 64} {:source_name "beta"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$beta: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$beta: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$beta: bool;

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

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

procedure {:source_name "kernel1"} {:kernel} $kernel1($n: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE($c0, 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$alpha && !_WRITE_HAS_OCCURRED_$$alpha && !_ATOMIC_HAS_OCCURRED_$$alpha;
  requires !_READ_HAS_OCCURRED_$$beta && !_WRITE_HAS_OCCURRED_$$beta && !_ATOMIC_HAS_OCCURRED_$$beta;
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
  modifies _READ_HAS_OCCURRED_$$beta, _WRITE_HAS_OCCURRED_$$beta, _WRITE_READ_BENIGN_FLAG_$$beta, _WRITE_READ_BENIGN_FLAG_$$beta;



implementation {:source_name "kernel1"} {:kernel} $kernel1($n: bv32, $c0: bv64)
{
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv64;
  var v2$2: bv64;


  $0:
    havoc v0$1, v0$2;
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$beta(true, 0bv32, $$beta[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$beta(true, 0bv32, $$beta[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$beta"} true;
    v2$1 := $$beta[0bv32];
    v2$2 := $$beta[0bv32];
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$beta(true, 0bv32, FMUL64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v0$1), v1$1), 4607182418800017408bv64), v2$1), $$beta[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$beta(true, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$beta(true, 0bv32, FMUL64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v0$2), v1$2), 4607182418800017408bv64), v2$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$beta"} true;
    $$beta[0bv32] := FMUL64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v0$1), v1$1), 4607182418800017408bv64), v2$1);
    $$beta[0bv32] := FMUL64(FADD64(FMUL64(FSUB64(9223372036854775808bv64, v0$2), v1$2), 4607182418800017408bv64), v2$2);
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

const _WATCHED_VALUE_$$alpha: bv64;

procedure {:inline 1} _LOG_READ_$$alpha(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$alpha;



implementation {:inline 1} _LOG_READ_$$alpha(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then true else _READ_HAS_OCCURRED_$$alpha);
    return;
}



procedure _CHECK_READ_$$alpha(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$alpha);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$alpha: bool;

procedure {:inline 1} _LOG_WRITE_$$alpha(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$alpha, _WRITE_READ_BENIGN_FLAG_$$alpha;



implementation {:inline 1} _LOG_WRITE_$$alpha(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then true else _WRITE_HAS_OCCURRED_$$alpha);
    _WRITE_READ_BENIGN_FLAG_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$alpha);
    return;
}



procedure _CHECK_WRITE_$$alpha(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha != _value);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha != _value);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$alpha(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$alpha;



implementation {:inline 1} _LOG_ATOMIC_$$alpha(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$alpha);
    return;
}



procedure _CHECK_ATOMIC_$$alpha(_P: bool, _offset: bv32);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$alpha(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$alpha;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$alpha(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$alpha := (if _P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$alpha);
    return;
}



const _WATCHED_VALUE_$$beta: bv64;

procedure {:inline 1} _LOG_READ_$$beta(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$beta;



implementation {:inline 1} _LOG_READ_$$beta(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$beta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$beta == _value then true else _READ_HAS_OCCURRED_$$beta);
    return;
}



procedure _CHECK_READ_$$beta(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$beta);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$beta: bool;

procedure {:inline 1} _LOG_WRITE_$$beta(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$beta, _WRITE_READ_BENIGN_FLAG_$$beta;



implementation {:inline 1} _LOG_WRITE_$$beta(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$beta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$beta == _value then true else _WRITE_HAS_OCCURRED_$$beta);
    _WRITE_READ_BENIGN_FLAG_$$beta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$beta == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$beta);
    return;
}



procedure _CHECK_WRITE_$$beta(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$beta != _value);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$beta != _value);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$beta(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$beta;



implementation {:inline 1} _LOG_ATOMIC_$$beta(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$beta := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$beta);
    return;
}



procedure _CHECK_ATOMIC_$$beta(_P: bool, _offset: bv32);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset);
  requires {:source_name "beta"} {:array "$$beta"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$beta(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$beta;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$beta(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$beta := (if _P && _WRITE_HAS_OCCURRED_$$beta && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$beta);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
