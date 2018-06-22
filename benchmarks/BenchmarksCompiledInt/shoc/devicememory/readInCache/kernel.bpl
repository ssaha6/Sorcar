type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_out"} {:global} $$d_out: [int]int;

axiom {:array_info "$$d_out"} {:global} {:elem_width 32} {:source_name "d_out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_out: bool;

axiom {:array_info "$$img"} {:global} {:elem_width 32} {:source_name "img"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$img: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$img: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "readInCache"} {:kernel} $readInCache($n: int, $samp: int);
  requires !_READ_HAS_OCCURRED_$$d_out && !_WRITE_HAS_OCCURRED_$$d_out && !_ATOMIC_HAS_OCCURRED_$$d_out;
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
  modifies _WRITE_HAS_OCCURRED_$$d_out, _WRITE_READ_BENIGN_FLAG_$$d_out, _WRITE_READ_BENIGN_FLAG_$$d_out;



implementation {:source_name "readInCache"} {:kernel} $readInCache($n: int, $samp: int)
{
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $i.0: int;
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var p6$1: bool;
  var p6$2: bool;
  var p7$1: bool;
  var p7$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := BV32_ADD(BV32_MUL(v0$1, BV32_MUL(group_size_y, num_groups_y)), v1$1);
    v2$2 := BV32_ADD(BV32_MUL(v0$2, BV32_MUL(group_size_y, num_groups_y)), v1$2);
    $sum.0$1, $i.0 := 0, 0;
    $sum.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v3 := BV32_SLT($i.0, $n);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$d_out(true, v2$1, $sum.0$1, $$d_out[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_out(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$d_out(true, v2$2, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_out"} true;
    $$d_out[v2$1] := $sum.0$1;
    $$d_out[v2$2] := $sum.0$2;
    return;

  $truebb:
    assume {:partition} v3;
    v4$1 := BV32_SLT(v0$1, 0);
    v4$2 := BV32_SLT(v0$2, 0);
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    p1$1 := (if !v4$1 then !v4$1 else p1$1);
    p1$2 := (if !v4$2 then !v4$2 else p1$2);
    $0$1 := (if p0$1 then 0 else $0$1);
    $0$2 := (if p0$2 then 0 else $0$2);
    v5$1 := (if p1$1 then BV32_SGE(v0$1, 8192) else v5$1);
    v5$2 := (if p1$2 then BV32_SGE(v0$2, 8192) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    p2$1 := (if p1$1 && !v5$1 then !v5$1 else p2$1);
    p2$2 := (if p1$2 && !v5$2 then !v5$2 else p2$2);
    $1$1 := (if p2$1 then v0$1 else $1$1);
    $1$2 := (if p2$2 then v0$2 else $1$2);
    $1$1 := (if p3$1 then 8191 else $1$1);
    $1$2 := (if p3$2 then 8191 else $1$2);
    $0$1 := (if p1$1 then $1$1 else $0$1);
    $0$2 := (if p1$2 then $1$2 else $0$2);
    v6$1 := BV32_SLT(v1$1, 0);
    v6$2 := BV32_SLT(v1$2, 0);
    p4$1 := (if v6$1 then v6$1 else p4$1);
    p4$2 := (if v6$2 then v6$2 else p4$2);
    p5$1 := (if !v6$1 then !v6$1 else p5$1);
    p5$2 := (if !v6$2 then !v6$2 else p5$2);
    $2$1 := (if p4$1 then 0 else $2$1);
    $2$2 := (if p4$2 then 0 else $2$2);
    v7$1 := (if p5$1 then BV32_SGE(v1$1, 8192) else v7$1);
    v7$2 := (if p5$2 then BV32_SGE(v1$2, 8192) else v7$2);
    p7$1 := (if p5$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p5$2 && v7$2 then v7$2 else p7$2);
    p6$1 := (if p5$1 && !v7$1 then !v7$1 else p6$1);
    p6$2 := (if p5$2 && !v7$2 then !v7$2 else p6$2);
    $3$1 := (if p6$1 then v1$1 else $3$1);
    $3$2 := (if p6$2 then v1$2 else $3$2);
    $3$1 := (if p7$1 then 8191 else $3$1);
    $3$2 := (if p7$2 then 8191 else $3$2);
    $2$1 := (if p5$1 then $3$1 else $2$1);
    $2$2 := (if p5$2 then $3$2 else $2$2);
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    $sum.0$1, $i.0 := FADD32($sum.0$1, v8$1), BV32_ADD($i.0, 1);
    $sum.0$2 := FADD32($sum.0$2, v8$2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$d_out: int;

procedure {:inline 1} _LOG_READ_$$d_out(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_out;



implementation {:inline 1} _LOG_READ_$$d_out(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_out == _value then true else _READ_HAS_OCCURRED_$$d_out);
    return;
}



procedure _CHECK_READ_$$d_out(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_out);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_out: bool;

procedure {:inline 1} _LOG_WRITE_$$d_out(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_out, _WRITE_READ_BENIGN_FLAG_$$d_out;



implementation {:inline 1} _LOG_WRITE_$$d_out(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_out == _value then true else _WRITE_HAS_OCCURRED_$$d_out);
    _WRITE_READ_BENIGN_FLAG_$$d_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_out);
    return;
}



procedure _CHECK_WRITE_$$d_out(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_out != _value);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_out != _value);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_out(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_out;



implementation {:inline 1} _LOG_ATOMIC_$$d_out(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_out);
    return;
}



procedure _CHECK_ATOMIC_$$d_out(_P: bool, _offset: int);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_out"} {:array "$$d_out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_out(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_out(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_out := (if _P && _WRITE_HAS_OCCURRED_$$d_out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_out);
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
