type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$v_img"} {:global} {:elem_width 32} {:source_name "v_img"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v_img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v_img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v_img: bool;

axiom {:array_info "$$v_filter"} {:global} {:elem_width 32} {:source_name "v_filter"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v_filter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v_filter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v_filter: bool;

var {:source_name "v_result"} {:global} $$v_result: [int]int;

axiom {:array_info "$$v_result"} {:global} {:elem_width 32} {:source_name "v_result"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$v_result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$v_result: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$v_result: bool;

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

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

procedure {:source_name "convolution_simple"} {:kernel} $_Z18convolution_simplePfS_S_();
  requires !_READ_HAS_OCCURRED_$$v_img && !_WRITE_HAS_OCCURRED_$$v_img && !_ATOMIC_HAS_OCCURRED_$$v_img;
  requires !_READ_HAS_OCCURRED_$$v_filter && !_WRITE_HAS_OCCURRED_$$v_filter && !_ATOMIC_HAS_OCCURRED_$$v_filter;
  requires !_READ_HAS_OCCURRED_$$v_result && !_WRITE_HAS_OCCURRED_$$v_result && !_ATOMIC_HAS_OCCURRED_$$v_result;
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
  modifies _WRITE_HAS_OCCURRED_$$v_result, _WRITE_READ_BENIGN_FLAG_$$v_result, _WRITE_READ_BENIGN_FLAG_$$v_result;



implementation {:source_name "convolution_simple"} {:kernel} $_Z18convolution_simplePfS_S_()
{
  var $sum.i.0$1: int;
  var $sum.i.0$2: int;
  var $k.i.0: int;
  var $0$1: int;
  var $0$2: int;
  var v0: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    $sum.i.0$1, $k.i.0 := 0, -7;
    $sum.i.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v0 := BV32_SLE($k.i.0, 7);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v0;
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$v_result(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1)), $sum.i.0$1, $$v_result[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_result(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$v_result(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2)), $sum.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$v_result"} true;
    $$v_result[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1))] := $sum.i.0$1;
    $$v_result[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), 512), BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2))] := $sum.i.0$2;
    return;

  $truebb:
    assume {:partition} v0;
    v1$1 := BV32_UGT(BV32_ADD(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $k.i.0), 511);
    v1$2 := BV32_UGT(BV32_ADD(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), $k.i.0), 511);
    p1$1 := (if v1$1 then v1$1 else p1$1);
    p1$2 := (if v1$2 then v1$2 else p1$2);
    p0$1 := (if !v1$1 then !v1$1 else p0$1);
    p0$2 := (if !v1$2 then !v1$2 else p0$2);
    $0$1 := (if p0$1 then BV32_ADD(BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1), $k.i.0) else $0$1);
    $0$2 := (if p0$2 then BV32_ADD(BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2), $k.i.0) else $0$2);
    $0$1 := (if p1$1 then 511 else $0$1);
    $0$2 := (if p1$2 then 511 else $0$2);
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    $sum.i.0$1, $k.i.0 := FADD32($sum.i.0$1, FMUL32(v2$1, v3$1)), BV32_ADD($k.i.0, 1);
    $sum.i.0$2 := FADD32($sum.i.0$2, FMUL32(v2$2, v3$2));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if group_size_y == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$v_img: int;

procedure {:inline 1} _LOG_READ_$$v_img(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v_img;



implementation {:inline 1} _LOG_READ_$$v_img(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v_img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_img == _value then true else _READ_HAS_OCCURRED_$$v_img);
    return;
}



procedure _CHECK_READ_$$v_img(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v_img);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v_img: bool;

procedure {:inline 1} _LOG_WRITE_$$v_img(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v_img, _WRITE_READ_BENIGN_FLAG_$$v_img;



implementation {:inline 1} _LOG_WRITE_$$v_img(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v_img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_img == _value then true else _WRITE_HAS_OCCURRED_$$v_img);
    _WRITE_READ_BENIGN_FLAG_$$v_img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_img == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v_img);
    return;
}



procedure _CHECK_WRITE_$$v_img(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_img != _value);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_img != _value);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v_img(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v_img;



implementation {:inline 1} _LOG_ATOMIC_$$v_img(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v_img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v_img);
    return;
}



procedure _CHECK_ATOMIC_$$v_img(_P: bool, _offset: int);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset);
  requires {:source_name "v_img"} {:array "$$v_img"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_img(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v_img;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_img(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v_img := (if _P && _WRITE_HAS_OCCURRED_$$v_img && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v_img);
    return;
}



const _WATCHED_VALUE_$$v_filter: int;

procedure {:inline 1} _LOG_READ_$$v_filter(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v_filter;



implementation {:inline 1} _LOG_READ_$$v_filter(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v_filter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_filter == _value then true else _READ_HAS_OCCURRED_$$v_filter);
    return;
}



procedure _CHECK_READ_$$v_filter(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v_filter);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v_filter: bool;

procedure {:inline 1} _LOG_WRITE_$$v_filter(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v_filter, _WRITE_READ_BENIGN_FLAG_$$v_filter;



implementation {:inline 1} _LOG_WRITE_$$v_filter(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v_filter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_filter == _value then true else _WRITE_HAS_OCCURRED_$$v_filter);
    _WRITE_READ_BENIGN_FLAG_$$v_filter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_filter == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v_filter);
    return;
}



procedure _CHECK_WRITE_$$v_filter(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_filter != _value);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_filter != _value);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v_filter(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v_filter;



implementation {:inline 1} _LOG_ATOMIC_$$v_filter(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v_filter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v_filter);
    return;
}



procedure _CHECK_ATOMIC_$$v_filter(_P: bool, _offset: int);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset);
  requires {:source_name "v_filter"} {:array "$$v_filter"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_filter(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v_filter;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_filter(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v_filter := (if _P && _WRITE_HAS_OCCURRED_$$v_filter && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v_filter);
    return;
}



const _WATCHED_VALUE_$$v_result: int;

procedure {:inline 1} _LOG_READ_$$v_result(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$v_result;



implementation {:inline 1} _LOG_READ_$$v_result(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$v_result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_result == _value then true else _READ_HAS_OCCURRED_$$v_result);
    return;
}



procedure _CHECK_READ_$$v_result(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$v_result);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$v_result: bool;

procedure {:inline 1} _LOG_WRITE_$$v_result(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$v_result, _WRITE_READ_BENIGN_FLAG_$$v_result;



implementation {:inline 1} _LOG_WRITE_$$v_result(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$v_result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_result == _value then true else _WRITE_HAS_OCCURRED_$$v_result);
    _WRITE_READ_BENIGN_FLAG_$$v_result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_result == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$v_result);
    return;
}



procedure _CHECK_WRITE_$$v_result(_P: bool, _offset: int, _value: int);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_result != _value);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$v_result != _value);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$v_result(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$v_result;



implementation {:inline 1} _LOG_ATOMIC_$$v_result(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$v_result := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$v_result);
    return;
}



procedure _CHECK_ATOMIC_$$v_result(_P: bool, _offset: int);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset);
  requires {:source_name "v_result"} {:array "$$v_result"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_result(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$v_result;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$v_result(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$v_result := (if _P && _WRITE_HAS_OCCURRED_$$v_result && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$v_result);
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
