type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$Layer1_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer1_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU: bool;

axiom {:array_info "$$Layer1_Weights_GPU"} {:global} {:elem_width 32} {:source_name "Layer1_Weights_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer1_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU: bool;

var {:source_name "Layer2_Neurons_GPU"} {:global} $$Layer2_Neurons_GPU: [int]int;

axiom {:array_info "$$Layer2_Neurons_GPU"} {:global} {:elem_width 32} {:source_name "Layer2_Neurons_GPU"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU: bool;

const _WATCHED_OFFSET: int;

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

function FADD32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "executeFirstLayer"} {:kernel} $_Z17executeFirstLayerPfS_S_();
  requires !_READ_HAS_OCCURRED_$$Layer1_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer1_Weights_GPU && !_WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU;
  requires !_READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && !_WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && !_ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU;
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
  modifies _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU;



implementation {:source_name "executeFirstLayer"} {:kernel} $_Z17executeFirstLayerPfS_S_()
{
  var v0$1: int;
  var v0$2: int;


  $0:
    havoc v0$1, v0$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$Layer2_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$1), BV32_MUL(local_id_y$1, 13)), local_id_x$1), BV32_MUL(1014, group_id_y$1)), FADD32(0, v0$1), $$Layer2_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$1), BV32_MUL(local_id_y$1, 13)), local_id_x$1), BV32_MUL(1014, group_id_y$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$2), BV32_MUL(local_id_y$2, 13)), local_id_x$2), BV32_MUL(1014, group_id_y$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$Layer2_Neurons_GPU(true, BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$2), BV32_MUL(local_id_y$2, 13)), local_id_x$2), BV32_MUL(1014, group_id_y$2)), FADD32(0, v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Layer2_Neurons_GPU"} true;
    $$Layer2_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$1), BV32_MUL(local_id_y$1, 13)), local_id_x$1), BV32_MUL(1014, group_id_y$1))] := FADD32(0, v0$1);
    $$Layer2_Neurons_GPU[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(169, group_id_x$2), BV32_MUL(local_id_y$2, 13)), local_id_x$2), BV32_MUL(1014, group_id_y$2))] := FADD32(0, v0$2);
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 13 then 1 else 0) != 0;

axiom (if group_size_y == 13 then 1 else 0) != 0;

axiom (if num_groups_x == 6 then 1 else 0) != 0;

axiom (if num_groups_y == 10 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$Layer1_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer1_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Neurons_GPU != _value);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Neurons_GPU != _value);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer1_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer1_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer1_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer1_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer1_Neurons_GPU"} {:array "$$Layer1_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer1_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer1_Neurons_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer1_Weights_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer1_Weights_GPU;



implementation {:inline 1} _LOG_READ_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer1_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Weights_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer1_Weights_GPU);
    return;
}



procedure _CHECK_READ_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Weights_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Weights_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer1_Weights_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Weights_GPU != _value);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer1_Weights_GPU != _value);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer1_Weights_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer1_Weights_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer1_Weights_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer1_Weights_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer1_Weights_GPU"} {:array "$$Layer1_Weights_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer1_Weights_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer1_Weights_GPU);
    return;
}



const _WATCHED_VALUE_$$Layer2_Neurons_GPU: int;

procedure {:inline 1} _LOG_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then true else _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_READ_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU: bool;

procedure {:inline 1} _LOG_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU, _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then true else _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_WRITE_$$Layer2_Neurons_GPU(_P: bool, _offset: int, _value: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU != _value);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Layer2_Neurons_GPU != _value);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU;



implementation {:inline 1} _LOG_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Layer2_Neurons_GPU);
    return;
}



procedure _CHECK_ATOMIC_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);
  requires {:source_name "Layer2_Neurons_GPU"} {:array "$$Layer2_Neurons_GPU"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU := (if _P && _WRITE_HAS_OCCURRED_$$Layer2_Neurons_GPU && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Layer2_Neurons_GPU);
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
