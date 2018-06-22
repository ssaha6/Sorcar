type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$Layer4_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer4_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU: bool;

axiom {:array_info "$$Layer4_Weights_GPU"} {:global} {:elem_width 32} {:source_name "Layer4_Weights_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer4_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU: bool;

var {:source_name "Layer5_Neurons_GPU"} {:global} $$Layer5_Neurons_GPU: [int]int;

axiom {:array_info "$$Layer5_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer5_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU: bool;

const _WATCHED_OFFSET: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

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

procedure {:source_name "executeFourthLayer"} {:kernel} $_Z18executeFourthLayerPfS_S_();
  requires !_READ_HAS_OCCURRED_$$Layer4_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer4_Weights_GPU && !_WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer5_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU;
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
  modifies _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU;



implementation {:source_name "executeFourthLayer"} {:kernel} $_Z18executeFourthLayerPfS_S_()
{
  var $result.0$1: int;
  var $result.0$2: int;
  var $i.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;


  $0:
    v0$1 := BV32_MUL(group_id_x$1, 101);
    v0$2 := BV32_MUL(group_id_x$2, 101);
    havoc v1$1, v1$2;
    $result.0$1, $i.0 := FADD32(0, v1$1), 0;
    $result.0$2 := FADD32(0, v1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v2 := BV32_SLT($i.0, 100);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc_num 8} v5$1, v5$2 := $tanhf(FP64_CONV32(FMUL64(4604180019078461075, FP32_CONV64($result.0$1))), FP64_CONV32(FMUL64(4604180019078461075, FP32_CONV64($result.0$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "$tanhf"} true;
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$Layer5_Neurons_GPU(true, BV32_ADD(group_id_x$1, BV32_MUL(10, group_id_y$1)), FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v5$1))), $$Layer5_Neurons_GPU[BV32_ADD(group_id_x$1, BV32_MUL(10, group_id_y$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU(true, BV32_ADD(group_id_x$2, BV32_MUL(10, group_id_y$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$Layer5_Neurons_GPU(true, BV32_ADD(group_id_x$2, BV32_MUL(10, group_id_y$2)), FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v5$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Layer5_Neurons_GPU"} true;
    $$Layer5_Neurons_GPU[BV32_ADD(group_id_x$1, BV32_MUL(10, group_id_y$1))] := FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v5$1)));
    $$Layer5_Neurons_GPU[BV32_ADD(group_id_x$2, BV32_MUL(10, group_id_y$2))] := FP64_CONV32(FMUL64(4610406545773251946, FP32_CONV64(v5$2)));
    return;

  $truebb:
    assume {:partition} v2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    $result.0$1, $i.0 := FADD32($result.0$1, FMUL32(v3$1, v4$1)), BV32_ADD($i.0, 1);
    $result.0$2 := FADD32($result.0$2, FMUL32(v3$2, v4$2));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



procedure {:source_name "tanhf"} $tanhf($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 10 then 1 else 0) != 0;

axiom (if num_groups_y == 10 then 1 else 0) != 0;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$Layer4_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer4_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Neurons_GPU != _value);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Neurons_GPU != _value);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer4_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer4_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer4_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer4_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer4_Neurons_GPU"} {:array "$$Layer4_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer4_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer4_Neurons_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer4_Weights_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer4_Weights_GPU;



implementation {:inline 1} _LOG_READ_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer4_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Weights_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer4_Weights_GPU);
    return;
}



procedure _CHECK_READ_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Weights_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Weights_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer4_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Weights_GPU != _value);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer4_Weights_GPU != _value);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer4_Weights_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer4_Weights_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer4_Weights_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer4_Weights_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer4_Weights_GPU"} {:array "$$Layer4_Weights_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer4_Weights_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer4_Weights_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer5_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer5_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer5_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer5_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer5_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer5_Neurons_GPU != _value);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer5_Neurons_GPU != _value);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer5_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer5_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer5_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer5_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer5_Neurons_GPU"} {:array "$$Layer5_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer5_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer5_Neurons_GPU);
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
