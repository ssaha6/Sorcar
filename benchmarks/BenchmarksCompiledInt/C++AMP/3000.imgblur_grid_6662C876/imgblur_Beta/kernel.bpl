type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "blurimage"} {:global} $$blurimage: [int]int;

axiom {:array_info "$$blurimage"} {:global} {:elem_width 32} {:source_name "blurimage"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blurimage: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blurimage: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blurimage: bool;

axiom {:array_info "$$img"} {:global} {:elem_width 32} {:source_name "img"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$img: bool;

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

function FDIV32(int, int) : int;

function SI32_TO_FP32(int) : int;

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

procedure {:source_name "boxblur"} {:kernel} $_Z7boxblurPfS_ii($originX: int, $originY: int);
  requires !_READ_HAS_OCCURRED_$$blurimage && !_WRITE_HAS_OCCURRED_$$blurimage && !_ATOMIC_HAS_OCCURRED_$$blurimage;
  requires !_READ_HAS_OCCURRED_$$img && !_WRITE_HAS_OCCURRED_$$img && !_ATOMIC_HAS_OCCURRED_$$img;
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
  modifies _WRITE_HAS_OCCURRED_$$blurimage, _WRITE_READ_BENIGN_FLAG_$$blurimage, _WRITE_READ_BENIGN_FLAG_$$blurimage;



implementation {:source_name "boxblur"} {:kernel} $_Z7boxblurPfS_ii($originX: int, $originY: int)
{
  var $r.0$1: int;
  var $r.0$2: int;
  var $samples.0: int;
  var $dy.0: int;
  var $r.1$1: int;
  var $r.1$2: int;
  var $samples.1: int;
  var $dx.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3: bool;
  var v4$1: int;
  var v4$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $originX);
    v0$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $originX);
    v1$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $originY);
    v1$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $originY);
    $r.0$1, $samples.0, $dy.0 := 0, 0, -1;
    $r.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v2 := BV32_SLE($dy.0, 1);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$blurimage(true, BV32_ADD(BV32_MUL(v1$1, 17), v0$1), FDIV32($r.0$1, SI32_TO_FP32($samples.0)), $$blurimage[BV32_ADD(BV32_MUL(v1$1, 17), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blurimage(true, BV32_ADD(BV32_MUL(v1$2, 17), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$blurimage(true, BV32_ADD(BV32_MUL(v1$2, 17), v0$2), FDIV32($r.0$2, SI32_TO_FP32($samples.0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blurimage"} true;
    $$blurimage[BV32_ADD(BV32_MUL(v1$1, 17), v0$1)] := FDIV32($r.0$1, SI32_TO_FP32($samples.0));
    $$blurimage[BV32_ADD(BV32_MUL(v1$2, 17), v0$2)] := FDIV32($r.0$2, SI32_TO_FP32($samples.0));
    return;

  $truebb:
    assume {:partition} v2;
    $r.1$1, $samples.1, $dx.0 := $r.0$1, $samples.0, -1;
    $r.1$2 := $r.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 3} true;
    v3 := BV32_SLE($dx.0, 1);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v3;
    $r.0$1, $samples.0, $dy.0 := $r.1$1, $samples.1, BV32_ADD($dy.0, 1);
    $r.0$2 := $r.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb0:
    assume {:partition} v3;
    havoc v4$1, v4$2;
    $r.1$1, $samples.1, $dx.0 := FADD32($r.1$1, v4$1), BV32_ADD($samples.1, 1), BV32_ADD($dx.0, 1);
    $r.1$2 := FADD32($r.1$2, v4$2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 17 then 1 else 0) != 0;

axiom (if group_size_y == 17 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$blurimage: int;

procedure {:inline 1} _LOG_READ_$$blurimage(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$blurimage;



implementation {:inline 1} _LOG_READ_$$blurimage(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blurimage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blurimage == _value then true else _READ_HAS_OCCURRED_$$blurimage);
    return;
}



procedure _CHECK_READ_$$blurimage(_P: bool, _offset: int, _value: int);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blurimage);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blurimage: bool;

procedure {:inline 1} _LOG_WRITE_$$blurimage(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$blurimage, _WRITE_READ_BENIGN_FLAG_$$blurimage;



implementation {:inline 1} _LOG_WRITE_$$blurimage(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blurimage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blurimage == _value then true else _WRITE_HAS_OCCURRED_$$blurimage);
    _WRITE_READ_BENIGN_FLAG_$$blurimage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blurimage == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blurimage);
    return;
}



procedure _CHECK_WRITE_$$blurimage(_P: bool, _offset: int, _value: int);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blurimage != _value);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blurimage != _value);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blurimage(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blurimage;



implementation {:inline 1} _LOG_ATOMIC_$$blurimage(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blurimage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blurimage);
    return;
}



procedure _CHECK_ATOMIC_$$blurimage(_P: bool, _offset: int);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset);
  requires {:source_name "blurimage"} {:array "$$blurimage"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blurimage(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blurimage;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blurimage(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blurimage := (if _P && _WRITE_HAS_OCCURRED_$$blurimage && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blurimage);
    return;
}



const _WATCHED_VALUE_$$img: int;

procedure {:inline 1} _LOG_READ_$$img(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$img;



implementation {:inline 1} _LOG_READ_$$img(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then true else _READ_HAS_OCCURRED_$$img);
    return;
}



procedure _CHECK_READ_$$img(_P: bool, _offset: int, _value: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$img);
  requires {:source_name "img"} {:array "$$img"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$img: bool;

procedure {:inline 1} _LOG_WRITE_$$img(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$img, _WRITE_READ_BENIGN_FLAG_$$img;



implementation {:inline 1} _LOG_WRITE_$$img(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then true else _WRITE_HAS_OCCURRED_$$img);
    _WRITE_READ_BENIGN_FLAG_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$img);
    return;
}



procedure _CHECK_WRITE_$$img(_P: bool, _offset: int, _value: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img != _value);
  requires {:source_name "img"} {:array "$$img"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$img != _value);
  requires {:source_name "img"} {:array "$$img"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$img(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$img;



implementation {:inline 1} _LOG_ATOMIC_$$img(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$img := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$img);
    return;
}



procedure _CHECK_ATOMIC_$$img(_P: bool, _offset: int);
  requires {:source_name "img"} {:array "$$img"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);
  requires {:source_name "img"} {:array "$$img"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$img(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$img;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$img(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$img := (if _P && _WRITE_HAS_OCCURRED_$$img && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$img);
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
