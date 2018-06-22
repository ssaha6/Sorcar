type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "A"} {:global} $$A: [int]int;

axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "shared_A_1"} {:group_shared} $$kernel0.shared_A_1: [bv1][int]int;

axiom {:array_info "$$kernel0.shared_A_1"} {:group_shared} {:elem_width 64} {:source_name "shared_A_1"} {:source_elem_width 64} {:source_dimensions "1,1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _READ_HAS_OCCURRED_$$kernel0.shared_A_1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1: bool;

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

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

function FDIV64(int, int) : int;

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

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
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

function {:inline true} BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel0"} {:kernel} $kernel0($n: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 64 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV64_SLT($c0, BV32_SEXT64(BV32_SUB(BV32_MUL(2, $n), 2))) then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(2, $n)), BV64_ADD($c0, 3)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM($c0, 2) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))) then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$kernel0.shared_A_1 && !_WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 && !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1;
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
  modifies $$kernel0.shared_A_1, _READ_HAS_OCCURRED_$$A, _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1, $$A, _TRACKING, _READ_HAS_OCCURRED_$$kernel0.shared_A_1, _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:source_name "kernel0"} {:kernel} $kernel0($n: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
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
  var p8$1: bool;
  var p8$2: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0;
    v2$2 := v1$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$A(p0$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$A(p0$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0), $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v3$1 := (if p0$1 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0)] else v3$1);
    v3$2 := (if p0$2 then $$A[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_SDIV($c0, 2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0)] else v3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$kernel0.shared_A_1(p0$1, 0, v3$1, $$kernel0.shared_A_1[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$kernel0.shared_A_1(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel0.shared_A_1"} true;
    $$kernel0.shared_A_1[1bv1][0] := (if p0$1 then v3$1 else $$kernel0.shared_A_1[1bv1][0]);
    $$kernel0.shared_A_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel0.shared_A_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152)));
    $c1.0$2 := BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152)));
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$kernel0.shared_A_1 ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _WRITE_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b6 ==> _READ_HAS_OCCURRED_$$A ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel0.shared_A_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152))));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $c1.0$1 mod 1048576 == BV64_ADD(BV64_MUL(32, v0$1), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$1), $c0), 2097091), 2097152))) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $c1.0$2 mod 1048576 == BV64_ADD(BV64_MUL(32, v0$2), BV64_MUL(1048576, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-64, v0$2), $c0), 2097091), 2097152))) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))) then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1)) then 1 else 0))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_MUL(2, BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), $n))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 11} p2$1 ==> true;
    v4$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v4$1);
    v4$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v4$2);
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
    p8$1 := false;
    p8$2 := false;
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 1)) else v5$1);
    v5$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 1)) else v5$2);
    p5$1 := (if p3$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p3$2 && v5$2 then v5$2 else p5$2);
    v6$1 := (if p5$1 then BV64_SGE(BV64_ADD(BV64_MUL(2, v1$1), BV64_MUL(2, $c1.0$1)), BV64_ADD($c0, 2)) else v6$1);
    v6$2 := (if p5$2 then BV64_SGE(BV64_ADD(BV64_MUL(2, v1$2), BV64_MUL(2, $c1.0$2)), BV64_ADD($c0, 2)) else v6$2);
    p7$1 := (if p5$1 && v6$1 then v6$1 else p7$1);
    p7$2 := (if p5$2 && v6$2 then v6$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$kernel0.shared_A_1(p7$1, 0, $$kernel0.shared_A_1[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$kernel0.shared_A_1(p7$2, 0, $$kernel0.shared_A_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel0.shared_A_1"} true;
    v7$1 := (if p7$1 then $$kernel0.shared_A_1[1bv1][0] else v7$1);
    v7$2 := (if p7$2 then $$kernel0.shared_A_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v7$2);
    v8$1 := (if p7$1 then BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0) else v8$1);
    v8$2 := (if p7$2 then BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV($c0, 2)), 32, 0) else v8$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$A(p7$1, v8$1, $$A[v8$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$A(p7$2, v8$2, $$A[v8$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v9$1 := (if p7$1 then $$A[v8$1] else v9$1);
    v9$2 := (if p7$2 then $$A[v8$2] else v9$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$A(p7$1, v8$1, FDIV64(v9$1, v7$1), $$A[v8$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(p7$2, v8$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$A(p7$2, v8$2, FDIV64(v9$2, v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$A"} true;
    $$A[v8$1] := (if p7$1 then FDIV64(v9$1, v7$1) else $$A[v8$1]);
    $$A[v8$2] := (if p7$2 then FDIV64(v9$2, v7$2) else $$A[v8$2]);
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$kernel0.shared_A_1, $$A, _TRACKING;



const {:existential true} _b0: bool;

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

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const _WATCHED_VALUE_$$A: int;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: int, _value: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: int);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$kernel0.shared_A_1: int;

procedure {:inline 1} _LOG_READ_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel0.shared_A_1;



implementation {:inline 1} _LOG_READ_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel0.shared_A_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A_1 == _value then true else _READ_HAS_OCCURRED_$$kernel0.shared_A_1);
    return;
}



procedure _CHECK_READ_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1, _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1;



implementation {:inline 1} _LOG_WRITE_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A_1 == _value then true else _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1);
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A_1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1);
    return;
}



procedure _CHECK_WRITE_$$kernel0.shared_A_1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A_1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel0.shared_A_1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A_1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1;



implementation {:inline 1} _LOG_ATOMIC_$$kernel0.shared_A_1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1);
    return;
}



procedure _CHECK_ATOMIC_$$kernel0.shared_A_1(_P: bool, _offset: int);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_A_1"} {:array "$$kernel0.shared_A_1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1 := (if _P && _WRITE_HAS_OCCURRED_$$kernel0.shared_A_1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel0.shared_A_1);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel0.shared_A_1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel0.shared_A_1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel0.shared_A_1;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$A;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$A;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$A;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel0.shared_A_1;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;
