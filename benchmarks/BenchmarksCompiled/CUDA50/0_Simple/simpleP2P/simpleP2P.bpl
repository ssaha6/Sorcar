type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$src"} {:global} {:elem_width 32} {:source_name "src"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$src: bool;

var {:source_name "dst"} {:global} $$dst: [bv32]bv32;

axiom {:array_info "$$dst"} {:global} {:elem_width 32} {:source_name "dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst: bool;

const _WATCHED_OFFSET: bv32;

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

function FMUL32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

procedure {:source_name "SimpleKernel"} {:kernel} $_Z12SimpleKernelPfS_();
  requires !_READ_HAS_OCCURRED_$$src && !_WRITE_HAS_OCCURRED_$$src && !_ATOMIC_HAS_OCCURRED_$$src;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
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
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "SimpleKernel"} {:kernel} $_Z12SimpleKernelPfS_()
{
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$dst(true, v0$1, FMUL32(v1$1, 1073741824bv32), $$dst[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$dst(true, v0$2, FMUL32(v1$2, 1073741824bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[v0$1] := FMUL32(v1$1, 1073741824bv32);
    $$dst[v0$2] := FMUL32(v1$2, 1073741824bv32);
    return;
}



axiom (if group_size_x == 512bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32768bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$src: bv32;

procedure {:inline 1} _LOG_READ_$$src(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$src;



implementation {:inline 1} _LOG_READ_$$src(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$src == _value then true else _READ_HAS_OCCURRED_$$src);
    return;
}



procedure _CHECK_READ_$$src(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "src"} {:array "$$src"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$src);
  requires {:source_name "src"} {:array "$$src"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$src: bool;

procedure {:inline 1} _LOG_WRITE_$$src(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$src, _WRITE_READ_BENIGN_FLAG_$$src;



implementation {:inline 1} _LOG_WRITE_$$src(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$src == _value then true else _WRITE_HAS_OCCURRED_$$src);
    _WRITE_READ_BENIGN_FLAG_$$src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$src == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$src);
    return;
}



procedure _CHECK_WRITE_$$src(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "src"} {:array "$$src"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$src != _value);
  requires {:source_name "src"} {:array "$$src"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$src != _value);
  requires {:source_name "src"} {:array "$$src"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$src(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$src;



implementation {:inline 1} _LOG_ATOMIC_$$src(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$src);
    return;
}



procedure _CHECK_ATOMIC_$$src(_P: bool, _offset: bv32);
  requires {:source_name "src"} {:array "$$src"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset);
  requires {:source_name "src"} {:array "$$src"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$src(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$src;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$src(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$src := (if _P && _WRITE_HAS_OCCURRED_$$src && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$src);
    return;
}



const _WATCHED_VALUE_$$dst: bv32;

procedure {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _READ_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_READ_$$dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst: bool;

procedure {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _WRITE_HAS_OCCURRED_$$dst);
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



procedure _CHECK_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_ATOMIC_$$dst(_P: bool, _offset: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
