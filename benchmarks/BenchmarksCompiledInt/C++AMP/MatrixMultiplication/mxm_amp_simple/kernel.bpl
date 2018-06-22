type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$va"} {:global} {:elem_width 32} {:source_name "va"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$va: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$va: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$va: bool;

axiom {:array_info "$$vb"} {:global} {:elem_width 32} {:source_name "vb"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vb: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vb: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vb: bool;

var {:source_name "vresult"} {:global} $$vresult: [int]int;

axiom {:array_info "$$vresult"} {:global} {:elem_width 32} {:source_name "vresult"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vresult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vresult: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vresult: bool;

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

function FMUL32(int, int) : int;

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

procedure {:source_name "mxm_amp_simple"} {:kernel} $_Z14mxm_amp_simplePKfS0_Pf();
  requires !_READ_HAS_OCCURRED_$$va && !_WRITE_HAS_OCCURRED_$$va && !_ATOMIC_HAS_OCCURRED_$$va;
  requires !_READ_HAS_OCCURRED_$$vb && !_WRITE_HAS_OCCURRED_$$vb && !_ATOMIC_HAS_OCCURRED_$$vb;
  requires !_READ_HAS_OCCURRED_$$vresult && !_WRITE_HAS_OCCURRED_$$vresult && !_ATOMIC_HAS_OCCURRED_$$vresult;
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
  modifies _WRITE_HAS_OCCURRED_$$vresult, _WRITE_READ_BENIGN_FLAG_$$vresult, _WRITE_READ_BENIGN_FLAG_$$vresult;



implementation {:source_name "mxm_amp_simple"} {:kernel} $_Z14mxm_amp_simplePKfS0_Pf()
{
  var $result.0$1: int;
  var $result.0$2: int;
  var $i.0: int;
  var v0: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;


  $0:
    $result.0$1, $i.0 := 0, 0;
    $result.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v0 := BV32_SLT($i.0, 256);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v0;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$vresult(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 256), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $result.0$1, $$vresult[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 256), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$vresult(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 256), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$vresult(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 256), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $result.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$vresult"} true;
    $$vresult[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 256), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := $result.0$1;
    $$vresult[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 256), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := $result.0$2;
    return;

  $truebb:
    assume {:partition} v0;
    havoc v1$1, v1$2;
    havoc v2$1, v2$2;
    $result.0$1, $i.0 := FADD32($result.0$1, FMUL32(v1$1, v2$1)), BV32_ADD($i.0, 1);
    $result.0$2 := FADD32($result.0$2, FMUL32(v1$2, v2$2));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$va: int;

procedure {:inline 1} _LOG_READ_$$va(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$va;



implementation {:inline 1} _LOG_READ_$$va(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$va := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$va == _value then true else _READ_HAS_OCCURRED_$$va);
    return;
}



procedure _CHECK_READ_$$va(_P: bool, _offset: int, _value: int);
  requires {:source_name "va"} {:array "$$va"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$va);
  requires {:source_name "va"} {:array "$$va"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$va: bool;

procedure {:inline 1} _LOG_WRITE_$$va(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$va, _WRITE_READ_BENIGN_FLAG_$$va;



implementation {:inline 1} _LOG_WRITE_$$va(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$va := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$va == _value then true else _WRITE_HAS_OCCURRED_$$va);
    _WRITE_READ_BENIGN_FLAG_$$va := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$va == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$va);
    return;
}



procedure _CHECK_WRITE_$$va(_P: bool, _offset: int, _value: int);
  requires {:source_name "va"} {:array "$$va"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$va != _value);
  requires {:source_name "va"} {:array "$$va"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$va != _value);
  requires {:source_name "va"} {:array "$$va"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$va(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$va;



implementation {:inline 1} _LOG_ATOMIC_$$va(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$va := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$va);
    return;
}



procedure _CHECK_ATOMIC_$$va(_P: bool, _offset: int);
  requires {:source_name "va"} {:array "$$va"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset);
  requires {:source_name "va"} {:array "$$va"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$va(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$va;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$va(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$va := (if _P && _WRITE_HAS_OCCURRED_$$va && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$va);
    return;
}



const _WATCHED_VALUE_$$vb: int;

procedure {:inline 1} _LOG_READ_$$vb(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vb;



implementation {:inline 1} _LOG_READ_$$vb(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vb := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vb == _value then true else _READ_HAS_OCCURRED_$$vb);
    return;
}



procedure _CHECK_READ_$$vb(_P: bool, _offset: int, _value: int);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vb);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vb: bool;

procedure {:inline 1} _LOG_WRITE_$$vb(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vb, _WRITE_READ_BENIGN_FLAG_$$vb;



implementation {:inline 1} _LOG_WRITE_$$vb(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vb := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vb == _value then true else _WRITE_HAS_OCCURRED_$$vb);
    _WRITE_READ_BENIGN_FLAG_$$vb := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vb == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vb);
    return;
}



procedure _CHECK_WRITE_$$vb(_P: bool, _offset: int, _value: int);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vb != _value);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vb != _value);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vb(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vb;



implementation {:inline 1} _LOG_ATOMIC_$$vb(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vb := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vb);
    return;
}



procedure _CHECK_ATOMIC_$$vb(_P: bool, _offset: int);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset);
  requires {:source_name "vb"} {:array "$$vb"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vb(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vb;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vb(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vb := (if _P && _WRITE_HAS_OCCURRED_$$vb && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vb);
    return;
}



const _WATCHED_VALUE_$$vresult: int;

procedure {:inline 1} _LOG_READ_$$vresult(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vresult;



implementation {:inline 1} _LOG_READ_$$vresult(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vresult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vresult == _value then true else _READ_HAS_OCCURRED_$$vresult);
    return;
}



procedure _CHECK_READ_$$vresult(_P: bool, _offset: int, _value: int);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vresult);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vresult: bool;

procedure {:inline 1} _LOG_WRITE_$$vresult(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vresult, _WRITE_READ_BENIGN_FLAG_$$vresult;



implementation {:inline 1} _LOG_WRITE_$$vresult(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vresult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vresult == _value then true else _WRITE_HAS_OCCURRED_$$vresult);
    _WRITE_READ_BENIGN_FLAG_$$vresult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vresult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vresult);
    return;
}



procedure _CHECK_WRITE_$$vresult(_P: bool, _offset: int, _value: int);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vresult != _value);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vresult != _value);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vresult(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vresult;



implementation {:inline 1} _LOG_ATOMIC_$$vresult(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vresult := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vresult);
    return;
}



procedure _CHECK_ATOMIC_$$vresult(_P: bool, _offset: int);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset);
  requires {:source_name "vresult"} {:array "$$vresult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vresult(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vresult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vresult(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vresult := (if _P && _WRITE_HAS_OCCURRED_$$vresult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vresult);
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
