type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "mem_d"} {:global} $$mem_d: [bv32]bv8;

axiom {:array_info "$$mem_d"} {:global} {:elem_width 8} {:source_name "mem_d"} {:source_elem_width 8} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mem_d: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mem_d: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mem_d: bool;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

procedure {:source_name "memset_kernel"} {:kernel} $memset_kernel($val: bv16, $number_bytes: bv32);
  requires !_READ_HAS_OCCURRED_$$mem_d && !_WRITE_HAS_OCCURRED_$$mem_d && !_ATOMIC_HAS_OCCURRED_$$mem_d;
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
  modifies _WRITE_HAS_OCCURRED_$$mem_d, _WRITE_READ_BENIGN_FLAG_$$mem_d, _WRITE_READ_BENIGN_FLAG_$$mem_d;



implementation {:source_name "memset_kernel"} {:kernel} $memset_kernel($val: bv16, $number_bytes: bv32)
{

  $0:
    call {:sourceloc} {:sourceloc_num 1} _LOG_WRITE_$$mem_d(true, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $val[8:0], $$mem_d[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$mem_d(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_WRITE_$$mem_d(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $val[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$mem_d"} true;
    $$mem_d[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := $val[8:0];
    $$mem_d[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := $val[8:0];
    return;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 12288bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

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

const _WATCHED_VALUE_$$mem_d: bv8;

procedure {:inline 1} _LOG_READ_$$mem_d(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$mem_d;



implementation {:inline 1} _LOG_READ_$$mem_d(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mem_d == _value then true else _READ_HAS_OCCURRED_$$mem_d);
    return;
}



procedure _CHECK_READ_$$mem_d(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mem_d);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mem_d: bool;

procedure {:inline 1} _LOG_WRITE_$$mem_d(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$mem_d, _WRITE_READ_BENIGN_FLAG_$$mem_d;



implementation {:inline 1} _LOG_WRITE_$$mem_d(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mem_d == _value then true else _WRITE_HAS_OCCURRED_$$mem_d);
    _WRITE_READ_BENIGN_FLAG_$$mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mem_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mem_d);
    return;
}



procedure _CHECK_WRITE_$$mem_d(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mem_d != _value);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mem_d != _value);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mem_d(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$mem_d;



implementation {:inline 1} _LOG_ATOMIC_$$mem_d(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mem_d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mem_d);
    return;
}



procedure _CHECK_ATOMIC_$$mem_d(_P: bool, _offset: bv32);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset);
  requires {:source_name "mem_d"} {:array "$$mem_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mem_d(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$mem_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mem_d(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mem_d := (if _P && _WRITE_HAS_OCCURRED_$$mem_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mem_d);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
