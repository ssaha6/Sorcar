function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "keys"} {:global} $$keys: [int]int;

axiom {:array_info "$$keys"} {:global} {:elem_width 32} {:source_name "keys"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keys: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keys: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keys: bool;

var {:source_name "input"} {:global} $$input: [int]int;

axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function __other_bv32(int) : int;

function  BV1_ZEXT32(x: int) : int
{
  x
}

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

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "binarySearch_mulkeys"} {:kernel} $binarySearch_mulkeys($numKeys: int);
  requires {:sourceloc_num 0} {:thread 1} (if BV32_ULT($numKeys, 16777216) then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$keys && !_WRITE_HAS_OCCURRED_$$keys && !_ATOMIC_HAS_OCCURRED_$$keys;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
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
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:source_name "binarySearch_mulkeys"} {:kernel} $binarySearch_mulkeys($numKeys: int)
{
  var $i.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3$1: int;
  var v3$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v6$1: int;
  var v6$2: int;
  var v8$1: bool;
  var v8$2: bool;
  var v7$1: int;
  var v7$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;


  $0:
    v0$1 := BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), 256);
    v0$2 := BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), 256);
    v1$1 := BV32_ADD(v0$1, 255);
    v1$2 := BV32_ADD(v0$2, 255);
    assume BV1_ZEXT32((if BV32_SLT(v0$1, v1$1) ==> BV32_ULT($$input[v0$1], $$input[v1$1]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_SLT(v0$2, v1$2) ==> BV32_ULT($$input[v0$2], $$input[v1$2]) then 1 else 0)) != 0;
    assume BV1_ZEXT32((if BV32_SLT(v1$2, v0$1) ==> BV32_ULT($$input[v1$2], $$input[v0$1]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_SLT(v1$1, v0$2) ==> BV32_ULT($$input[v1$1], $$input[v0$2]) then 1 else 0)) != 0;
    assume BV1_ZEXT32((if BV32_SLT(v1$1, v0$2) ==> BV32_ULT($$input[v1$1], $$input[v0$2]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_SLT(v1$2, v0$1) ==> BV32_ULT($$input[v1$2], $$input[v0$1]) then 1 else 0)) != 0;
    $i.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
assert  my_inv (  (  $i.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i.0, 0) ) ,  (  BV32_SGE($i.0, 0) ) ,  (  BV32_ULE($i.0, 0) ) ,  (  BV32_UGE($i.0, 0) ) ,  (  _WRITE_HAS_OCCURRED_$$output ==> _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 2} true;
    assert {:originated_from_invariant} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$output ==> BV32_ULT(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $i.0) then 1 else 0) != 0;
    v2 := BV32_ULT($i.0, $numKeys);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    return;

  $truebb:
    assume {:partition} v2;
    v3$1 := $$keys[$i.0];
    v3$2 := $$keys[$i.0];
    v4$1 := $$input[v0$1];
    v4$2 := $$input[v0$2];
    v5$1 := BV32_UGE(v3$1, v4$1);
    v5$2 := BV32_UGE(v3$2, v4$2);
    p1$1 := (if v5$1 then v5$1 else p1$1);
    p1$2 := (if v5$2 then v5$2 else p1$2);
    v6$1 := (if p1$1 then $$keys[$i.0] else v6$1);
    v6$2 := (if p1$2 then $$keys[$i.0] else v6$2);
    v7$1 := (if p1$1 then $$input[v1$1] else v7$1);
    v7$2 := (if p1$2 then $$input[v1$2] else v7$2);
    v8$1 := (if p1$1 then BV32_ULE(v6$1, v7$1) else v8$1);
    v8$2 := (if p1$2 then BV32_ULE(v6$2, v7$2) else v8$2);
    p3$1 := (if p1$1 && v8$1 then v8$1 else p3$1);
    p3$2 := (if p1$2 && v8$2 then v8$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$output(p3$1, $i.0, v0$1, $$output[$i.0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(p3$2, $i.0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$output(p3$2, $i.0, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[$i.0] := (if p3$1 then v0$1 else $$output[$i.0]);
    $$output[$i.0] := (if p3$2 then v0$2 else $$output[$i.0]);
    $i.0 := BV32_ADD($i.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

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







const _WATCHED_VALUE_$$keys: int;

procedure {:inline 1} _LOG_READ_$$keys(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$keys;



implementation {:inline 1} _LOG_READ_$$keys(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then true else _READ_HAS_OCCURRED_$$keys);
    return;
}



procedure _CHECK_READ_$$keys(_P: bool, _offset: int, _value: int);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keys);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keys: bool;

procedure {:inline 1} _LOG_WRITE_$$keys(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$keys, _WRITE_READ_BENIGN_FLAG_$$keys;



implementation {:inline 1} _LOG_WRITE_$$keys(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then true else _WRITE_HAS_OCCURRED_$$keys);
    _WRITE_READ_BENIGN_FLAG_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keys);
    return;
}



procedure _CHECK_WRITE_$$keys(_P: bool, _offset: int, _value: int);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys != _value);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keys != _value);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keys(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$keys;



implementation {:inline 1} _LOG_ATOMIC_$$keys(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keys := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keys);
    return;
}



procedure _CHECK_ATOMIC_$$keys(_P: bool, _offset: int);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);
  requires {:source_name "keys"} {:array "$$keys"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$keys;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keys(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keys := (if _P && _WRITE_HAS_OCCURRED_$$keys && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keys);
    return;
}



const _WATCHED_VALUE_$$input: int;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$output: int;

procedure {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _READ_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_READ_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output: bool;

procedure {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _WRITE_HAS_OCCURRED_$$output);
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



procedure _CHECK_WRITE_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_ATOMIC_$$output(_P: bool, _offset: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}


