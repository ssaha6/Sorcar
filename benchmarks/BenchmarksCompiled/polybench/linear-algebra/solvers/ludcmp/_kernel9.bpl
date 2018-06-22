type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$w"} {:global} {:elem_width 64} {:source_name "w"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$w: bool;

var {:source_name "x"} {:global} $$x: [bv32]bv64;

axiom {:array_info "$$x"} {:global} {:elem_width 64} {:source_name "x"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$x: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$x: bool;

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

function FDIV64(bv64, bv64) : bv64;

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

procedure {:source_name "kernel9"} {:kernel} $kernel9($n: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($n), $c0), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE($c0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$x ==> BV64_ADD(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), $c0) == 0bv64 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), $c0) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$w && !_WRITE_HAS_OCCURRED_$$w && !_ATOMIC_HAS_OCCURRED_$$w;
  requires !_READ_HAS_OCCURRED_$$x && !_WRITE_HAS_OCCURRED_$$x && !_ATOMIC_HAS_OCCURRED_$$x;
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
  modifies _WRITE_HAS_OCCURRED_$$x, _WRITE_READ_BENIGN_FLAG_$$x, _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:source_name "kernel9"} {:kernel} $kernel9($n: bv32, $c0: bv64)
{
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;


  $0:
    havoc v0$1, v0$2;
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$x(true, BV64_SUB(0bv64, $c0)[32:0], FDIV64(v0$1, v1$1), $$x[BV64_SUB(0bv64, $c0)[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(true, BV64_SUB(0bv64, $c0)[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$x(true, BV64_SUB(0bv64, $c0)[32:0], FDIV64(v0$2, v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$x"} true;
    $$x[BV64_SUB(0bv64, $c0)[32:0]] := FDIV64(v0$1, v1$1);
    $$x[BV64_SUB(0bv64, $c0)[32:0]] := FDIV64(v0$2, v1$2);
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

const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$w: bv64;

procedure {:inline 1} _LOG_READ_$$w(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_READ_$$w(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _READ_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_READ_$$w(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$w);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$w: bool;

procedure {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$w, _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _WRITE_HAS_OCCURRED_$$w);
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



procedure _CHECK_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_ATOMIC_$$w(_P: bool, _offset: bv32);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



const _WATCHED_VALUE_$$x: bv64;

procedure {:inline 1} _LOG_READ_$$x(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$x;



implementation {:inline 1} _LOG_READ_$$x(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then true else _READ_HAS_OCCURRED_$$x);
    return;
}



procedure _CHECK_READ_$$x(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$x);
  requires {:source_name "x"} {:array "$$x"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$x: bool;

procedure {:inline 1} _LOG_WRITE_$$x(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$x, _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:inline 1} _LOG_WRITE_$$x(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then true else _WRITE_HAS_OCCURRED_$$x);
    _WRITE_READ_BENIGN_FLAG_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$x);
    return;
}



procedure _CHECK_WRITE_$$x(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x != _value);
  requires {:source_name "x"} {:array "$$x"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$x != _value);
  requires {:source_name "x"} {:array "$$x"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$x(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$x;



implementation {:inline 1} _LOG_ATOMIC_$$x(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$x := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$x);
    return;
}



procedure _CHECK_ATOMIC_$$x(_P: bool, _offset: bv32);
  requires {:source_name "x"} {:array "$$x"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);
  requires {:source_name "x"} {:array "$$x"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$x;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$x(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$x := (if _P && _WRITE_HAS_OCCURRED_$$x && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$x);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
