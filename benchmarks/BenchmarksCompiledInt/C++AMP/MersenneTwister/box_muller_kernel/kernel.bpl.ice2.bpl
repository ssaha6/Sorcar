function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$random_nums"} {:global} {:elem_width 32} {:source_name "random_nums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$random_nums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$random_nums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$random_nums: bool;

var {:source_name "normalized_random_nums"} {:global} $$normalized_random_nums: [int]int;

axiom {:array_info "$$normalized_random_nums"} {:global} {:elem_width 32} {:source_name "normalized_random_nums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$normalized_random_nums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$normalized_random_nums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$normalized_random_nums: bool;

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

function FCOS64(int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSIN64(int) : int;

function FSQRT64(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "box_muller_kernel"} {:kernel} $_Z17box_muller_kernelPfS_i($n_per_RNG: int);
  requires !_READ_HAS_OCCURRED_$$random_nums && !_WRITE_HAS_OCCURRED_$$random_nums && !_ATOMIC_HAS_OCCURRED_$$random_nums;
  requires !_READ_HAS_OCCURRED_$$normalized_random_nums && !_WRITE_HAS_OCCURRED_$$normalized_random_nums && !_ATOMIC_HAS_OCCURRED_$$normalized_random_nums;
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
  modifies _WRITE_HAS_OCCURRED_$$normalized_random_nums, _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums, _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums;



implementation {:source_name "box_muller_kernel"} {:kernel} $_Z17box_muller_kernelPfS_i($n_per_RNG: int)
{
  var $out.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    $out.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  (  $out.0 mod 2 == 0 mod 2 ) ,  (  BV32_SLE($out.0, 0) ) ,  (  BV32_SGE($out.0, 0) ) ,  (  BV32_ULE($out.0, 0) ) ,  (  BV32_UGE($out.0, 0) ) ,  (  _WRITE_HAS_OCCURRED_$$normalized_random_nums ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$normalized_random_nums ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1), group_size_x), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$normalized_random_nums ==> BV32_SLE(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$normalized_random_nums ==> BV32_SLT(_WATCHED_OFFSET, BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1), group_size_x), local_id_x$1)) ) ,  (  _WRITE_HAS_OCCURRED_$$normalized_random_nums ==> _WATCHED_OFFSET mod BV32_MUL(2, 4096) == BV32_ADD(BV32_MUL(0, 4096), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)) mod BV32_MUL(2, 4096) || _WATCHED_OFFSET mod BV32_MUL(2, 4096) == BV32_ADD(BV32_MUL(BV32_ADD(0, 1), 4096), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)) mod BV32_MUL(2, 4096) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v1 := BV32_SLT($out.0, $n_per_RNG);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v1;
    return;

  $truebb:
    assume {:partition} v1;
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    call {:sourceloc_num 5} v4$1, v4$2 := $log(FP32_CONV64(v2$1), FP32_CONV64(v2$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$log"} true;
    v5$1 := FP64_CONV32(FSQRT64(FMUL64(-4611686018427387904, v4$1)));
    v5$2 := FP64_CONV32(FSQRT64(FMUL64(-4611686018427387904, v4$2)));
    v6$1 := FMUL32(1086918619, v3$1);
    v6$2 := FMUL32(1086918619, v3$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$normalized_random_nums(true, BV32_ADD(BV32_MUL($out.0, 4096), v0$1), FP64_CONV32(FMUL64(FP32_CONV64(v5$1), FCOS64(FP32_CONV64(v6$1)))), $$normalized_random_nums[BV32_ADD(BV32_MUL($out.0, 4096), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$normalized_random_nums(true, BV32_ADD(BV32_MUL($out.0, 4096), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$normalized_random_nums(true, BV32_ADD(BV32_MUL($out.0, 4096), v0$2), FP64_CONV32(FMUL64(FP32_CONV64(v5$2), FCOS64(FP32_CONV64(v6$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$normalized_random_nums"} true;
    $$normalized_random_nums[BV32_ADD(BV32_MUL($out.0, 4096), v0$1)] := FP64_CONV32(FMUL64(FP32_CONV64(v5$1), FCOS64(FP32_CONV64(v6$1))));
    $$normalized_random_nums[BV32_ADD(BV32_MUL($out.0, 4096), v0$2)] := FP64_CONV32(FMUL64(FP32_CONV64(v5$2), FCOS64(FP32_CONV64(v6$2))));
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$normalized_random_nums(true, BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$1), FP64_CONV32(FMUL64(FP32_CONV64(v5$1), FSIN64(FP32_CONV64(v6$1)))), $$normalized_random_nums[BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$normalized_random_nums(true, BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$normalized_random_nums(true, BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$2), FP64_CONV32(FMUL64(FP32_CONV64(v5$2), FSIN64(FP32_CONV64(v6$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$normalized_random_nums"} true;
    $$normalized_random_nums[BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$1)] := FP64_CONV32(FMUL64(FP32_CONV64(v5$1), FSIN64(FP32_CONV64(v6$1))));
    $$normalized_random_nums[BV32_ADD(BV32_MUL(BV32_ADD($out.0, 1), 4096), v0$2)] := FP64_CONV32(FMUL64(FP32_CONV64(v5$2), FSIN64(FP32_CONV64(v6$2))));
    $out.0 := BV32_ADD($out.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



procedure {:source_name "log"} $log($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1024 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}



const _WATCHED_VALUE_$$random_nums: int;

procedure {:inline 1} _LOG_READ_$$random_nums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$random_nums;



implementation {:inline 1} _LOG_READ_$$random_nums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$random_nums == _value then true else _READ_HAS_OCCURRED_$$random_nums);
    return;
}



procedure _CHECK_READ_$$random_nums(_P: bool, _offset: int, _value: int);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$random_nums);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$random_nums: bool;

procedure {:inline 1} _LOG_WRITE_$$random_nums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$random_nums, _WRITE_READ_BENIGN_FLAG_$$random_nums;



implementation {:inline 1} _LOG_WRITE_$$random_nums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$random_nums == _value then true else _WRITE_HAS_OCCURRED_$$random_nums);
    _WRITE_READ_BENIGN_FLAG_$$random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$random_nums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$random_nums);
    return;
}



procedure _CHECK_WRITE_$$random_nums(_P: bool, _offset: int, _value: int);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$random_nums != _value);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$random_nums != _value);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$random_nums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$random_nums;



implementation {:inline 1} _LOG_ATOMIC_$$random_nums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$random_nums);
    return;
}



procedure _CHECK_ATOMIC_$$random_nums(_P: bool, _offset: int);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset);
  requires {:source_name "random_nums"} {:array "$$random_nums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$random_nums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$random_nums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$random_nums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$random_nums := (if _P && _WRITE_HAS_OCCURRED_$$random_nums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$random_nums);
    return;
}



const _WATCHED_VALUE_$$normalized_random_nums: int;

procedure {:inline 1} _LOG_READ_$$normalized_random_nums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$normalized_random_nums;



implementation {:inline 1} _LOG_READ_$$normalized_random_nums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$normalized_random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normalized_random_nums == _value then true else _READ_HAS_OCCURRED_$$normalized_random_nums);
    return;
}



procedure _CHECK_READ_$$normalized_random_nums(_P: bool, _offset: int, _value: int);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums: bool;

procedure {:inline 1} _LOG_WRITE_$$normalized_random_nums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$normalized_random_nums, _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums;



implementation {:inline 1} _LOG_WRITE_$$normalized_random_nums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$normalized_random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normalized_random_nums == _value then true else _WRITE_HAS_OCCURRED_$$normalized_random_nums);
    _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normalized_random_nums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums);
    return;
}



procedure _CHECK_WRITE_$$normalized_random_nums(_P: bool, _offset: int, _value: int);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normalized_random_nums != _value);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$normalized_random_nums != _value);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$normalized_random_nums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$normalized_random_nums;



implementation {:inline 1} _LOG_ATOMIC_$$normalized_random_nums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$normalized_random_nums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$normalized_random_nums);
    return;
}



procedure _CHECK_ATOMIC_$$normalized_random_nums(_P: bool, _offset: int);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset);
  requires {:source_name "normalized_random_nums"} {:array "$$normalized_random_nums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$normalized_random_nums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$normalized_random_nums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums := (if _P && _WRITE_HAS_OCCURRED_$$normalized_random_nums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$normalized_random_nums);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}










