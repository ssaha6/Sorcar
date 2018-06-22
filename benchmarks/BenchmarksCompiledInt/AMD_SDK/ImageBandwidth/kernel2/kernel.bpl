type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

var {:source_name "out"} {:global} $$out: [int]int;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "write_kernel"} {:kernel} $write_kernel($np: int, $val: int, $nk: int);
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
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
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:source_name "write_kernel"} {:kernel} $write_kernel($np: int, $val: int, $nk: int)
{
  var $coord.0$1: int;
  var $coord.0$2: int;
  var $n.0: int;
  var $i.0: int;
  var $idx.0$1: int;
  var $idx.0$2: int;
  var $coord.1$1: int;
  var $coord.1$2: int;
  var v0: bool;
  var v1: bool;
  var v2: bool;
  var v3$1: int;
  var v3$2: int;


  $0:
    v0 := $nk == 0;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v0;
    $coord.0$1, $n.0 := BV_CONCAT(0, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 0;
    $coord.0$2 := BV_CONCAT(0, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($n.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($n.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($n.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($n.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $n.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 3} true;
    assert {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if BV_EXTRACT($coord.0$1, 32, 0) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 4} {:thread 2} (if BV_EXTRACT($coord.0$2, 32, 0) == BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), 8192) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 8192), BV32_MUL(group_size_y, num_groups_y)) == BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1) then 1 else 0) != 0;
    v1 := BV32_ULT($n.0, $nk);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v1;
    goto $10;

  $10:
    return;

  $truebb0:
    assume {:partition} v1;
    $i.0, $idx.0$1, $coord.1$1 := 0, BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), $coord.0$1;
    $idx.0$2, $coord.1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), $coord.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_UGE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_ULE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_SGE($i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SLE($i.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b6 ==> $idx.0$1 mod BV32_MUL(group_size_y, num_groups_y) == BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1) mod BV32_MUL(group_size_y, num_groups_y);
    assert {:tag "loopCounterIsStrided"} {:thread 2} _b6 ==> $idx.0$2 mod BV32_MUL(group_size_y, num_groups_y) == BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2) mod BV32_MUL(group_size_y, num_groups_y);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b5 ==> $i.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 8} true;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 1} (if BV_EXTRACT($coord.1$1, 32, 0) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 9} {:thread 2} (if BV_EXTRACT($coord.1$2, 32, 0) == BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 10} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), 8192) == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 11} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UREM(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), 8192), BV32_MUL(group_size_y, num_groups_y)) == BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1) then 1 else 0) != 0;
    v2 := BV32_ULT($i.0, $np);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v2;
    $coord.0$1, $n.0 := $coord.1$1, BV32_ADD($n.0, 1);
    $coord.0$2 := $coord.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $truebb1:
    assume {:partition} v2;
    v3$1 := BV_EXTRACT($coord.1$1, 32, 0);
    v3$2 := BV_EXTRACT($coord.1$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), $val, $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$out(true, BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4)] := $val;
    $$out[BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4)] := $val;
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 1), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 1), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 1)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 1)] := $val;
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 2), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 2), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 2)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 2)] := $val;
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 3), $val, $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$out(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 3), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$1, 8192), v3$1), 4), 3)] := $val;
    $$out[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($idx.0$2, 8192), v3$2), 4), 3)] := $val;
    $i.0, $idx.0$1, $coord.1$1 := BV32_ADD($i.0, 1), BV32_ADD($idx.0$1, BV32_MUL(group_size_y, num_groups_y)), BV_CONCAT($idx.0$1, v3$1);
    $idx.0$2, $coord.1$2 := BV32_ADD($idx.0$2, BV32_MUL(group_size_y, num_groups_y)), BV_CONCAT($idx.0$2, v3$2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v0;
    goto $10;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 16 then 1 else 0) != 0;

axiom (if num_groups_y == 16 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const _WATCHED_VALUE_$$in: int;

procedure {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _READ_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_READ_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$in);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$in: bool;

procedure {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$in, _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _WRITE_HAS_OCCURRED_$$in);
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



procedure _CHECK_WRITE_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_ATOMIC_$$in(_P: bool, _offset: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



const _WATCHED_VALUE_$$out: int;

procedure {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _READ_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_READ_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$out);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$out: bool;

procedure {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _WRITE_HAS_OCCURRED_$$out);
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



procedure _CHECK_WRITE_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_ATOMIC_$$out(_P: bool, _offset: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
