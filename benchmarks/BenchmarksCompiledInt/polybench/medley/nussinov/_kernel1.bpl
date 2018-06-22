type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "table"} {:global} $$table: [int]int;

axiom {:array_info "$$table"} {:global} {:elem_width 32} {:source_name "table"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$table: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$table: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_ZEXT64(x: int) : int
{
  x
}

function {:inline true} BV64_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV64_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel1"} {:kernel} $kernel1($n: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 64 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, 6) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_ADD($n, 4)), $c0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$table ==> BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n) == BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1) then 1 else 0)), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 6)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$table ==> BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n) == BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 1) then 1 else 0)), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 6)) then 1 else 0))), BV32_AND(BV1_ZEXT32((if BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), 1) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n) then 1 else 0)), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $n), $n), 5)) then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$table && !_WRITE_HAS_OCCURRED_$$table && !_ATOMIC_HAS_OCCURRED_$$table;
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
  modifies _READ_HAS_OCCURRED_$$table, _WRITE_HAS_OCCURRED_$$table, _WRITE_READ_BENIGN_FLAG_$$table, _WRITE_READ_BENIGN_FLAG_$$table;



implementation {:source_name "kernel1"} {:kernel} $kernel1($n: int, $c0: int)
{
  var $0$1: int;
  var $0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v0$1 := $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)];
    v0$2 := $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)];
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v1$1 := $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)];
    v1$2 := $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)];
    v2$1 := BV32_SGE(v0$1, v1$1);
    v2$2 := BV32_SGE(v0$2, v1$2);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$table(p0$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$table(p0$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v3$1 := (if p0$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)] else v3$1);
    v3$2 := (if p0$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)] else v3$2);
    $0$1 := (if p0$1 then v3$1 else $0$1);
    $0$2 := (if p0$2 then v3$2 else $0$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$table(p1$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$table(p1$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0), $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$table"} true;
    v4$1 := (if p1$1 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)] else v4$1);
    v4$2 := (if p1$2 then $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 5), BV32_SEXT64($n)), BV64_SUB($c0, 6)), 32, 0)] else v4$2);
    $0$1 := (if p1$1 then v4$1 else $0$1);
    $0$2 := (if p1$2 then v4$2 else $0$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $0$1, $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$table(true, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0), $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$table"} true;
    $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)] := $0$1;
    $$table[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SUB($c0, 6), BV32_SEXT64($n)), BV64_SUB($c0, 5)), 32, 0)] := $0$2;
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$table: int;

procedure {:inline 1} _LOG_READ_$$table(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$table;



implementation {:inline 1} _LOG_READ_$$table(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then true else _READ_HAS_OCCURRED_$$table);
    return;
}



procedure _CHECK_READ_$$table(_P: bool, _offset: int, _value: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$table);
  requires {:source_name "table"} {:array "$$table"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$table: bool;

procedure {:inline 1} _LOG_WRITE_$$table(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$table, _WRITE_READ_BENIGN_FLAG_$$table;



implementation {:inline 1} _LOG_WRITE_$$table(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then true else _WRITE_HAS_OCCURRED_$$table);
    _WRITE_READ_BENIGN_FLAG_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$table);
    return;
}



procedure _CHECK_WRITE_$$table(_P: bool, _offset: int, _value: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table != _value);
  requires {:source_name "table"} {:array "$$table"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$table != _value);
  requires {:source_name "table"} {:array "$$table"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$table(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$table;



implementation {:inline 1} _LOG_ATOMIC_$$table(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$table := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$table);
    return;
}



procedure _CHECK_ATOMIC_$$table(_P: bool, _offset: int);
  requires {:source_name "table"} {:array "$$table"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);
  requires {:source_name "table"} {:array "$$table"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$table;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$table(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$table := (if _P && _WRITE_HAS_OCCURRED_$$table && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$table);
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
