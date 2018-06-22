type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$_fict_"} {:global} {:elem_width 64} {:source_name "_fict_"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_fict_: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_fict_: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_fict_: bool;

var {:source_name "ey"} {:global} $$ey: [int]int;

axiom {:array_info "$$ey"} {:global} {:elem_width 64} {:source_name "ey"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ey: bool;

var {:source_name "shared__fict_"} {:group_shared} $$kernel2.shared__fict_: [bv1][int]int;

axiom {:array_info "$$kernel2.shared__fict_"} {:group_shared} {:elem_width 64} {:source_name "shared__fict_"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel2.shared__fict_: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_: bool;

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

procedure {:source_name "kernel2"} {:kernel} $kernel2($ny: int, $tmax: int, $nx: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $ny == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tmax == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $nx == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ny, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ny, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tmax, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($nx, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($nx, -2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tmax), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)) == 0 then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$_fict_ ==> BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $tmax)) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$_fict_ && !_WRITE_HAS_OCCURRED_$$_fict_ && !_ATOMIC_HAS_OCCURRED_$$_fict_;
  requires !_READ_HAS_OCCURRED_$$ey && !_WRITE_HAS_OCCURRED_$$ey && !_ATOMIC_HAS_OCCURRED_$$ey;
  requires !_READ_HAS_OCCURRED_$$kernel2.shared__fict_ && !_WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ && !_ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_;
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
  modifies $$kernel2.shared__fict_, _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_, $$ey, _TRACKING, _READ_HAS_OCCURRED_$$kernel2.shared__fict_, _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:source_name "kernel2"} {:kernel} $kernel2($ny: int, $tmax: int, $nx: int, $c0: int)
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
  var v6$1: int;
  var v6$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


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
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$kernel2.shared__fict_(p0$1, 0, v3$1, $$kernel2.shared__fict_[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$kernel2.shared__fict_(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel2.shared__fict_"} true;
    $$kernel2.shared__fict_[1bv1][0] := (if p0$1 then v3$1 else $$kernel2.shared__fict_[1bv1][0]);
    $$kernel2.shared__fict_[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel2.shared__fict_[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _READ_HAS_OCCURRED_$$kernel2.shared__fict_ ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b6 ==> _WRITE_HAS_OCCURRED_$$ey ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_ ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel2.shared__fict_ ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV32_SEXT64($ny)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV32_SEXT64($ny)) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$_fict_ ==> BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0 then 1 else 0)), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $tmax)) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)) == 0 then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 12} p2$1 ==> true;
    v4$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($ny)) else v4$1);
    v4$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($ny)) else v4$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p3$1 := (if p2$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p2$2 && v4$2 then v4$2 else p3$2);
    p2$1 := (if p2$1 && !v4$1 then v4$1 else p2$1);
    p2$2 := (if p2$2 && !v4$2 then v4$2 else p2$2);
    v5$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 1)) else v5$1);
    v5$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 1)) else v5$2);
    p5$1 := (if p3$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p3$2 && v5$2 then v5$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$kernel2.shared__fict_(p5$1, 0, $$kernel2.shared__fict_[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$kernel2.shared__fict_(p5$2, 0, $$kernel2.shared__fict_[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel2.shared__fict_"} true;
    v6$1 := (if p5$1 then $$kernel2.shared__fict_[1bv1][0] else v6$1);
    v6$2 := (if p5$2 then $$kernel2.shared__fict_[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v6$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$ey(p5$1, BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$1, $c1.0$1)), 32, 0), v6$1, $$ey[BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$1, $c1.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(p5$2, BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$2, $c1.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$ey(p5$2, BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$2, $c1.0$2)), 32, 0), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ey"} true;
    $$ey[BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$1, $c1.0$1)), 32, 0)] := (if p5$1 then v6$1 else $$ey[BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$1, $c1.0$1)), 32, 0)]);
    $$ey[BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$2, $c1.0$2)), 32, 0)] := (if p5$2 then v6$2 else $$ey[BV_EXTRACT(BV64_ADD(BV32_SEXT64(BV32_MUL(0, $ny)), BV64_ADD(v1$2, $c1.0$2)), 32, 0)]);
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

axiom (if num_groups_x == 16 then 1 else 0) != 0;

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
  modifies $$kernel2.shared__fict_, $$ey, _TRACKING;



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

const _WATCHED_VALUE_$$_fict_: int;

procedure {:inline 1} _LOG_READ_$$_fict_(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_fict_;



implementation {:inline 1} _LOG_READ_$$_fict_(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_fict_ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_fict_ == _value then true else _READ_HAS_OCCURRED_$$_fict_);
    return;
}



procedure _CHECK_READ_$$_fict_(_P: bool, _offset: int, _value: int);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_fict_);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_fict_: bool;

procedure {:inline 1} _LOG_WRITE_$$_fict_(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_fict_, _WRITE_READ_BENIGN_FLAG_$$_fict_;



implementation {:inline 1} _LOG_WRITE_$$_fict_(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_fict_ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_fict_ == _value then true else _WRITE_HAS_OCCURRED_$$_fict_);
    _WRITE_READ_BENIGN_FLAG_$$_fict_ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_fict_ == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_fict_);
    return;
}



procedure _CHECK_WRITE_$$_fict_(_P: bool, _offset: int, _value: int);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_fict_ != _value);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_fict_ != _value);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_fict_(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_fict_;



implementation {:inline 1} _LOG_ATOMIC_$$_fict_(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_fict_ := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_fict_);
    return;
}



procedure _CHECK_ATOMIC_$$_fict_(_P: bool, _offset: int);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset);
  requires {:source_name "_fict_"} {:array "$$_fict_"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_fict_(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_fict_;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_fict_(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_fict_ := (if _P && _WRITE_HAS_OCCURRED_$$_fict_ && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_fict_);
    return;
}



const _WATCHED_VALUE_$$ey: int;

procedure {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _READ_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_READ_$$ey(_P: bool, _offset: int, _value: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ey);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ey: bool;

procedure {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _WRITE_HAS_OCCURRED_$$ey);
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



procedure _CHECK_WRITE_$$ey(_P: bool, _offset: int, _value: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_ATOMIC_$$ey(_P: bool, _offset: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



const _WATCHED_VALUE_$$kernel2.shared__fict_: int;

procedure {:inline 1} _LOG_READ_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel2.shared__fict_;



implementation {:inline 1} _LOG_READ_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel2.shared__fict_ := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared__fict_ == _value then true else _READ_HAS_OCCURRED_$$kernel2.shared__fict_);
    return;
}



procedure _CHECK_READ_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_ && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_, _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_;



implementation {:inline 1} _LOG_WRITE_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared__fict_ == _value then true else _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_);
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_ := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared__fict_ == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_);
    return;
}



procedure _CHECK_WRITE_$$kernel2.shared__fict_(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared__fict_ != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel2.shared__fict_ != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel2.shared__fict_(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_;



implementation {:inline 1} _LOG_ATOMIC_$$kernel2.shared__fict_(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_ := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_);
    return;
}



procedure _CHECK_ATOMIC_$$kernel2.shared__fict_(_P: bool, _offset: int);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared__fict_"} {:array "$$kernel2.shared__fict_"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_ := (if _P && _WRITE_HAS_OCCURRED_$$kernel2.shared__fict_ && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel2.shared__fict_);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel2.shared__fict_;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel2.shared__fict_;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel2.shared__fict_;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$ey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$ey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ey;
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
    havoc $$ey;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel2.shared__fict_;
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
