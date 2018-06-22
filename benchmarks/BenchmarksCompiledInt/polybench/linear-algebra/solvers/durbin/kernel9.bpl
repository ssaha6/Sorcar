type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$alpha"} {:global} {:elem_width 64} {:source_name "alpha"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$alpha: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$alpha: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$alpha: bool;

axiom {:array_info "$$y"} {:global} {:elem_width 64} {:source_name "y"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y: bool;

var {:source_name "z"} {:global} $$z: [int]int;

axiom {:array_info "$$z"} {:global} {:elem_width 64} {:source_name "z"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$z: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$z: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$z: bool;

var {:source_name "shared_alpha"} {:group_shared} $$kernel9.shared_alpha: [bv1][int]int;

axiom {:array_info "$$kernel9.shared_alpha"} {:group_shared} {:elem_width 64} {:source_name "shared_alpha"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel9.shared_alpha: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha: bool;

var {:source_name "shared_y_1"} {:group_shared} $$kernel9.shared_y_1: [bv1][int]int;

axiom {:array_info "$$kernel9.shared_y_1"} {:group_shared} {:elem_width 64} {:source_name "shared_y_1"} {:source_elem_width 64} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel9.shared_y_1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1: bool;

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

function FADD64(int, int) : int;

function FMUL64(int, int) : int;

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

procedure {:source_name "kernel9"} {:kernel} $kernel9($n: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV64_SLE($c0, BV32_SEXT64($n)) then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0)), BV1_ZEXT32((if BV64_SGE($c0, 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD($c0, 1)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1999) then 1 else 0))), BV1_ZEXT32((if BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SLE($n, 2000) then BV32_SUB($n, 1) else 2000))) == BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_OR(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 32))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)))), $c0), 32), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 1))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$alpha && !_WRITE_HAS_OCCURRED_$$alpha && !_ATOMIC_HAS_OCCURRED_$$alpha;
  requires !_READ_HAS_OCCURRED_$$y && !_WRITE_HAS_OCCURRED_$$y && !_ATOMIC_HAS_OCCURRED_$$y;
  requires !_READ_HAS_OCCURRED_$$z && !_WRITE_HAS_OCCURRED_$$z && !_ATOMIC_HAS_OCCURRED_$$z;
  requires !_READ_HAS_OCCURRED_$$kernel9.shared_alpha && !_WRITE_HAS_OCCURRED_$$kernel9.shared_alpha && !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha;
  requires !_READ_HAS_OCCURRED_$$kernel9.shared_y_1 && !_WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 && !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1;
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
  modifies $$kernel9.shared_alpha, $$kernel9.shared_y_1, _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha, $$z, _TRACKING, _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1, _TRACKING, _READ_HAS_OCCURRED_$$kernel9.shared_alpha, _READ_HAS_OCCURRED_$$kernel9.shared_y_1, _WRITE_HAS_OCCURRED_$$z, _WRITE_READ_BENIGN_FLAG_$$z, _WRITE_READ_BENIGN_FLAG_$$z, _TRACKING;



implementation {:source_name "kernel9"} {:kernel} $kernel9($n: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
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
  var p9$1: bool;
  var p9$2: bool;
  var p10$1: bool;
  var p10$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := BV32_ZEXT64(v1$1);
    v2$2 := BV32_ZEXT64(v1$2);
    v3$1 := v2$1 == 0;
    v3$2 := v2$2 == 0;
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
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    v4$1 := (if p0$1 then BV64_SGE($c0, BV64_ADD(BV64_MUL(32, v0$1), 1)) else v4$1);
    v4$2 := (if p0$2 then BV64_SGE($c0, BV64_ADD(BV64_MUL(32, v0$2), 1)) else v4$2);
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p1$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p1$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$kernel9.shared_alpha(p1$1, 0, v5$1, $$kernel9.shared_alpha[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha(p1$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$kernel9.shared_alpha(p1$2, 0, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel9.shared_alpha"} true;
    $$kernel9.shared_alpha[1bv1][0] := (if p1$1 then v5$1 else $$kernel9.shared_alpha[1bv1][0]);
    $$kernel9.shared_alpha[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p1$2 then v5$2 else $$kernel9.shared_alpha[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$4_0;

  __partitioned_block_$4_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b23 ==> _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b22 ==> _READ_HAS_OCCURRED_$$kernel9.shared_y_1 ==> _WATCHED_OFFSET == BV_EXTRACT(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), 31), 32, 0);
    assert {:tag "nowrite"} _b21 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_y_1;
    assert {:tag "noread"} _b20 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_y_1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b19 ==> _READ_HAS_OCCURRED_$$kernel9.shared_alpha ==> _WATCHED_OFFSET == 0;
    assert {:tag "noread"} _b18 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_alpha;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _WRITE_HAS_OCCURRED_$$z ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b16 ==> !_WRITE_HAS_OCCURRED_$$z;
    assert {:tag "predicatedEquality"} _b15 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b14 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b13 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b12 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b11 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b10 ==> p4$1 && p4$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b9 ==> p4$1 && p4$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b8 ==> p4$1 && p4$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b7 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b6 ==> p4$1 == p4$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel9.shared_y_1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel9.shared_alpha ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, $c0) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, $c0) ==> p4$2;
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b0 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b0 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$y ==> BV32_OR(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0), BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 32))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV64_MUL(1048575, BV32_ZEXT64(local_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)))), $c0), 32), 1048576) == 0 then 1 else 0))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)), 1))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SGE($n, 2) then $n else 1)))), 1048576) == 0 then 1 else 0)))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$z ==> BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1999) then 1 else 0))), BV1_ZEXT32((if BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), (if BV32_SLE($n, 2000) then BV32_SUB($n, 1) else 2000))) == BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, BV64_ADD(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1)) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 12} p4$1 ==> true;
    v6$1 := (if p4$1 then BV64_SLT($c1.0$1, $c0) else v6$1);
    v6$2 := (if p4$2 then BV64_SLT($c1.0$2, $c0) else v6$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p5$1 := (if p4$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p4$2 && v6$2 then v6$2 else p5$2);
    p4$1 := (if p4$1 && !v6$1 then v6$1 else p4$1);
    p4$2 := (if p4$2 && !v6$2 then v6$2 else p4$2);
    v7$1 := (if p5$1 then BV64_SGE(BV64_ADD(v2$1, $c0), BV64_ADD($c1.0$1, 32)) else v7$1);
    v7$2 := (if p5$2 then BV64_SGE(BV64_ADD(v2$2, $c0), BV64_ADD($c1.0$2, 32)) else v7$2);
    p7$1 := (if p5$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p5$2 && v7$2 then v7$2 else p7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p7$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p7$2 then _HAVOC_int$2 else v8$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$kernel9.shared_y_1(p7$1, v1$1, v8$1, $$kernel9.shared_y_1[1bv1][v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1(p7$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$kernel9.shared_y_1(p7$2, v1$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel9.shared_y_1"} true;
    $$kernel9.shared_y_1[1bv1][v1$1] := (if p7$1 then v8$1 else $$kernel9.shared_y_1[1bv1][v1$1]);
    $$kernel9.shared_y_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] := (if p7$2 then v8$2 else $$kernel9.shared_y_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    goto __partitioned_block_$4_1;

  __partitioned_block_$4_1:
    call {:sourceloc_num 18} $bugle_barrier_duplicated_1(-1, -1, p5$1, p5$2);
    v9$1 := (if p5$1 then BV64_SGE($c0, BV64_ADD(BV64_ADD(v2$1, $c1.0$1), 1)) else v9$1);
    v9$2 := (if p5$2 then BV64_SGE($c0, BV64_ADD(BV64_ADD(v2$2, $c1.0$2), 1)) else v9$2);
    p9$1 := (if p5$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p5$2 && v9$2 then v9$2 else p9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p9$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p9$2 then _HAVOC_int$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$kernel9.shared_alpha(p9$1, 0, $$kernel9.shared_alpha[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$kernel9.shared_alpha(p9$2, 0, $$kernel9.shared_alpha[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel9.shared_alpha"} true;
    v11$1 := (if p9$1 then $$kernel9.shared_alpha[1bv1][0] else v11$1);
    v11$2 := (if p9$2 then $$kernel9.shared_alpha[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v11$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$kernel9.shared_y_1(p9$1, BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$1), 31), 32, 0), $$kernel9.shared_y_1[1bv1][BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$1), 31), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$kernel9.shared_y_1(p9$2, BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$2), 31), 32, 0), $$kernel9.shared_y_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$2), 31), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel9.shared_y_1"} true;
    v12$1 := (if p9$1 then $$kernel9.shared_y_1[1bv1][BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$1), 31), 32, 0)] else v12$1);
    v12$2 := (if p9$2 then $$kernel9.shared_y_1[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV_EXTRACT(BV64_ADD(BV64_SUB(0, v2$2), 31), 32, 0)] else v12$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$z(p9$1, BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0), FADD64(FMUL64(v11$1, v12$1), v10$1), $$z[BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$z(p9$2, BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$z(p9$2, BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0), FADD64(FMUL64(v11$2, v12$2), v10$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$z"} true;
    $$z[BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0)] := (if p9$1 then FADD64(FMUL64(v11$1, v12$1), v10$1) else $$z[BV_EXTRACT(BV64_ADD(v2$1, $c1.0$1), 32, 0)]);
    $$z[BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0)] := (if p9$2 then FADD64(FMUL64(v11$2, v12$2), v10$2) else $$z[BV_EXTRACT(BV64_ADD(v2$2, $c1.0$2), 32, 0)]);
    goto __partitioned_block_$4_2;

  __partitioned_block_$4_2:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_2(-1, -1, p5$1, p5$2);
    $c1.0$1 := (if p5$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p5$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    return;

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$4_0;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

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
  modifies $$kernel9.shared_alpha, $$kernel9.shared_y_1, $$z, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel9.shared_alpha, $$kernel9.shared_y_1, $$z, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel9.shared_alpha, $$kernel9.shared_y_1, $$z, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const _WATCHED_VALUE_$$alpha: int;

procedure {:inline 1} _LOG_READ_$$alpha(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$alpha;



implementation {:inline 1} _LOG_READ_$$alpha(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then true else _READ_HAS_OCCURRED_$$alpha);
    return;
}



procedure _CHECK_READ_$$alpha(_P: bool, _offset: int, _value: int);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$alpha);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$alpha: bool;

procedure {:inline 1} _LOG_WRITE_$$alpha(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$alpha, _WRITE_READ_BENIGN_FLAG_$$alpha;



implementation {:inline 1} _LOG_WRITE_$$alpha(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then true else _WRITE_HAS_OCCURRED_$$alpha);
    _WRITE_READ_BENIGN_FLAG_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$alpha);
    return;
}



procedure _CHECK_WRITE_$$alpha(_P: bool, _offset: int, _value: int);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha != _value);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$alpha != _value);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$alpha(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$alpha;



implementation {:inline 1} _LOG_ATOMIC_$$alpha(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$alpha := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$alpha);
    return;
}



procedure _CHECK_ATOMIC_$$alpha(_P: bool, _offset: int);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);
  requires {:source_name "alpha"} {:array "$$alpha"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$alpha(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$alpha;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$alpha(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$alpha := (if _P && _WRITE_HAS_OCCURRED_$$alpha && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$alpha);
    return;
}



const _WATCHED_VALUE_$$y: int;

procedure {:inline 1} _LOG_READ_$$y(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$y;



implementation {:inline 1} _LOG_READ_$$y(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then true else _READ_HAS_OCCURRED_$$y);
    return;
}



procedure _CHECK_READ_$$y(_P: bool, _offset: int, _value: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y);
  requires {:source_name "y"} {:array "$$y"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y: bool;

procedure {:inline 1} _LOG_WRITE_$$y(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$y, _WRITE_READ_BENIGN_FLAG_$$y;



implementation {:inline 1} _LOG_WRITE_$$y(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then true else _WRITE_HAS_OCCURRED_$$y);
    _WRITE_READ_BENIGN_FLAG_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y);
    return;
}



procedure _CHECK_WRITE_$$y(_P: bool, _offset: int, _value: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y != _value);
  requires {:source_name "y"} {:array "$$y"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y != _value);
  requires {:source_name "y"} {:array "$$y"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$y;



implementation {:inline 1} _LOG_ATOMIC_$$y(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y);
    return;
}



procedure _CHECK_ATOMIC_$$y(_P: bool, _offset: int);
  requires {:source_name "y"} {:array "$$y"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);
  requires {:source_name "y"} {:array "$$y"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$y;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y := (if _P && _WRITE_HAS_OCCURRED_$$y && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y);
    return;
}



const _WATCHED_VALUE_$$z: int;

procedure {:inline 1} _LOG_READ_$$z(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$z;



implementation {:inline 1} _LOG_READ_$$z(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then true else _READ_HAS_OCCURRED_$$z);
    return;
}



procedure _CHECK_READ_$$z(_P: bool, _offset: int, _value: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$z);
  requires {:source_name "z"} {:array "$$z"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$z: bool;

procedure {:inline 1} _LOG_WRITE_$$z(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$z, _WRITE_READ_BENIGN_FLAG_$$z;



implementation {:inline 1} _LOG_WRITE_$$z(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then true else _WRITE_HAS_OCCURRED_$$z);
    _WRITE_READ_BENIGN_FLAG_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$z);
    return;
}



procedure _CHECK_WRITE_$$z(_P: bool, _offset: int, _value: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z != _value);
  requires {:source_name "z"} {:array "$$z"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$z != _value);
  requires {:source_name "z"} {:array "$$z"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$z(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$z;



implementation {:inline 1} _LOG_ATOMIC_$$z(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$z := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$z);
    return;
}



procedure _CHECK_ATOMIC_$$z(_P: bool, _offset: int);
  requires {:source_name "z"} {:array "$$z"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);
  requires {:source_name "z"} {:array "$$z"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$z(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$z;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$z(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$z := (if _P && _WRITE_HAS_OCCURRED_$$z && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$z);
    return;
}



const _WATCHED_VALUE_$$kernel9.shared_alpha: int;

procedure {:inline 1} _LOG_READ_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel9.shared_alpha;



implementation {:inline 1} _LOG_READ_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel9.shared_alpha := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_alpha == _value then true else _READ_HAS_OCCURRED_$$kernel9.shared_alpha);
    return;
}



procedure _CHECK_READ_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha;



implementation {:inline 1} _LOG_WRITE_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_alpha == _value then true else _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha);
    _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_alpha == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha);
    return;
}



procedure _CHECK_WRITE_$$kernel9.shared_alpha(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_alpha != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_alpha != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel9.shared_alpha(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha;



implementation {:inline 1} _LOG_ATOMIC_$$kernel9.shared_alpha(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha);
    return;
}



procedure _CHECK_ATOMIC_$$kernel9.shared_alpha(_P: bool, _offset: int);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_alpha"} {:array "$$kernel9.shared_alpha"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha := (if _P && _WRITE_HAS_OCCURRED_$$kernel9.shared_alpha && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_alpha);
    return;
}



const _WATCHED_VALUE_$$kernel9.shared_y_1: int;

procedure {:inline 1} _LOG_READ_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel9.shared_y_1;



implementation {:inline 1} _LOG_READ_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel9.shared_y_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_y_1 == _value then true else _READ_HAS_OCCURRED_$$kernel9.shared_y_1);
    return;
}



procedure _CHECK_READ_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1, _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1;



implementation {:inline 1} _LOG_WRITE_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_y_1 == _value then true else _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1);
    _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_y_1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1);
    return;
}



procedure _CHECK_WRITE_$$kernel9.shared_y_1(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_y_1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel9.shared_y_1 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel9.shared_y_1(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1;



implementation {:inline 1} _LOG_ATOMIC_$$kernel9.shared_y_1(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1);
    return;
}



procedure _CHECK_ATOMIC_$$kernel9.shared_y_1(_P: bool, _offset: int);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_y_1"} {:array "$$kernel9.shared_y_1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1 := (if _P && _WRITE_HAS_OCCURRED_$$kernel9.shared_y_1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel9.shared_y_1);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$z;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$z;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel9.shared_alpha;
    goto anon4;

  anon4:
    havoc $$kernel9.shared_y_1;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$z;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$z;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel9.shared_alpha;
    goto anon4;

  anon4:
    havoc $$kernel9.shared_y_1;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_alpha;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_alpha;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel9.shared_y_1;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel9.shared_y_1;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$z;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$z;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$z;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel9.shared_alpha;
    goto anon4;

  anon4:
    havoc $$kernel9.shared_y_1;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
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

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;
