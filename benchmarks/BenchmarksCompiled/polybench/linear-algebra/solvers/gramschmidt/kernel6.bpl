type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

var {:source_name "Q"} {:global} $$Q: [bv32]bv64;

axiom {:array_info "$$Q"} {:global} {:elem_width 64} {:source_name "Q"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Q: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Q: bool;

axiom {:array_info "$$R"} {:global} {:elem_width 64} {:source_name "R"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$R: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$R: bool;

var {:source_name "shared_R"} {:group_shared} $$kernel6.shared_R: [bv1][bv32]bv64;

axiom {:array_info "$$kernel6.shared_R"} {:group_shared} {:elem_width 64} {:source_name "shared_R"} {:source_elem_width 64} {:source_dimensions "1,1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _READ_HAS_OCCURRED_$$kernel6.shared_R: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _WRITE_HAS_OCCURRED_$$kernel6.shared_R: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,1"} _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FDIV64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel6"} {:kernel} $kernel6($n: bv32, $m: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $m == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SGE($m, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(5bv32, $n)), BV64_ADD($c0, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB($c0, 3bv64), 5bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$Q && !_WRITE_HAS_OCCURRED_$$Q && !_ATOMIC_HAS_OCCURRED_$$Q;
  requires !_READ_HAS_OCCURRED_$$R && !_WRITE_HAS_OCCURRED_$$R && !_ATOMIC_HAS_OCCURRED_$$R;
  requires !_READ_HAS_OCCURRED_$$kernel6.shared_R && !_WRITE_HAS_OCCURRED_$$kernel6.shared_R && !_ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies $$kernel6.shared_R, _WRITE_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R, $$Q, _TRACKING, _READ_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_HAS_OCCURRED_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:source_name "kernel6"} {:kernel} $kernel6($n: bv32, $m: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bv64;
  var v6$2: bv64;
  var v7$1: bv64;
  var v7$2: bv64;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0bv64;
    v2$2 := v1$2 == 0bv64;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v3$1 := (if p0$1 then _HAVOC_bv64$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_bv64$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$kernel6.shared_R(p0$1, 0bv32, v3$1, $$kernel6.shared_R[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$kernel6.shared_R(p0$2, 0bv32, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel6.shared_R"} true;
    $$kernel6.shared_R[1bv1][0bv32] := (if p0$1 then v3$1 else $$kernel6.shared_R[1bv1][0bv32]);
    $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v3$2 else $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $c1.0$1 := BV64_MUL(32bv64, v0$1);
    $c1.0$2 := BV64_MUL(32bv64, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b7 ==> _WRITE_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel6.shared_R ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV64_SLT($c1.0$2, BV32_SEXT64($m)) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b5 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b5 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$R ==> BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(local_id_x$1) == 0bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n) == BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)), 3bv32)) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$Q ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_ADD(BV32_MUL(5bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p2$1 ==> true;
    v4$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($m)) else v4$1);
    v4$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($m)) else v4$2);
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
    v5$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 1bv64)) else v5$1);
    v5$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 1bv64)) else v5$2);
    p5$1 := (if p3$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p3$2 && v5$2 then v5$2 else p5$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v6$1 := (if p5$1 then _HAVOC_bv64$1 else v6$1);
    v6$2 := (if p5$2 then _HAVOC_bv64$2 else v6$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 16} true;
    v7$1 := (if p5$1 then $$kernel6.shared_R[1bv1][0bv32] else v7$1);
    v7$2 := (if p5$2 then $$kernel6.shared_R[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v7$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$Q(p5$1, BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0], FDIV64(v6$1, v7$1), $$Q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(p5$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$Q(p5$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0], FDIV64(v6$2, v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Q"} true;
    $$Q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]] := (if p5$1 then FDIV64(v6$1, v7$1) else $$Q[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]]);
    $$Q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]] := (if p5$2 then FDIV64(v6$2, v7$2) else $$Q[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SDIV(BV64_SUB($c0, 3bv64), 5bv64))[32:0]]);
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576bv64) else $c1.0$2);
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



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$kernel6.shared_R, $$Q, _TRACKING;



function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$Q: bv64;

procedure {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_READ_$$Q(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _READ_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_READ_$$Q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Q);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Q: bool;

procedure {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$Q, _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _LOG_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then true else _WRITE_HAS_OCCURRED_$$Q);
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



procedure _CHECK_WRITE_$$Q(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Q != _value);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$Q;



implementation {:inline 1} _LOG_ATOMIC_$$Q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Q := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Q);
    return;
}



procedure _CHECK_ATOMIC_$$Q(_P: bool, _offset: bv32);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);
  requires {:source_name "Q"} {:array "$$Q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$Q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Q := (if _P && _WRITE_HAS_OCCURRED_$$Q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Q);
    return;
}



const _WATCHED_VALUE_$$R: bv64;

procedure {:inline 1} _LOG_READ_$$R(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_READ_$$R(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _READ_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_READ_$$R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$R);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$R: bool;

procedure {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$R, _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _LOG_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then true else _WRITE_HAS_OCCURRED_$$R);
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



procedure _CHECK_WRITE_$$R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$R != _value);
  requires {:source_name "R"} {:array "$$R"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$R;



implementation {:inline 1} _LOG_ATOMIC_$$R(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$R := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$R);
    return;
}



procedure _CHECK_ATOMIC_$$R(_P: bool, _offset: bv32);
  requires {:source_name "R"} {:array "$$R"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);
  requires {:source_name "R"} {:array "$$R"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$R;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$R(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$R := (if _P && _WRITE_HAS_OCCURRED_$$R && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$R);
    return;
}



const _WATCHED_VALUE_$$kernel6.shared_R: bv64;

procedure {:inline 1} _LOG_READ_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel6.shared_R;



implementation {:inline 1} _LOG_READ_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then true else _READ_HAS_OCCURRED_$$kernel6.shared_R);
    return;
}



procedure _CHECK_READ_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel6.shared_R, _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R;



implementation {:inline 1} _LOG_WRITE_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then true else _WRITE_HAS_OCCURRED_$$kernel6.shared_R);
    _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R);
    return;
}



procedure _CHECK_WRITE_$$kernel6.shared_R(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel6.shared_R != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;



implementation {:inline 1} _LOG_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel6.shared_R);
    return;
}



procedure _CHECK_ATOMIC_$$kernel6.shared_R(_P: bool, _offset: bv32);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_R"} {:array "$$kernel6.shared_R"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R := (if _P && _WRITE_HAS_OCCURRED_$$kernel6.shared_R && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel6.shared_R);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel6.shared_R;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel6.shared_R;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel6.shared_R;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$Q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$Q;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$Q;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$Q;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$kernel6.shared_R;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

const {:existential true} _b7: bool;
