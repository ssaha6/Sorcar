type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "F"} {:global} $$F: [bv32]bv64;

axiom {:array_info "$$F"} {:global} {:elem_width 64} {:source_name "F"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$F: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$F: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$F: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

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

procedure {:source_name "kernel0"} {:kernel} $kernel0($nl: bv32, $nj: bv32, $nm: bv32, $nk: bv32, $ni: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $nl == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $nj == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $nm == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $nk == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 4} {:thread 1} (if $ni == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 5} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($nl, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($nl, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nj, 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nj, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nm, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nm, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nk, 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nk, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($ni, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ni), 18446744071562067968bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$F && !_WRITE_HAS_OCCURRED_$$F && !_ATOMIC_HAS_OCCURRED_$$F;
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
  modifies _WRITE_HAS_OCCURRED_$$F, _WRITE_READ_BENIGN_FLAG_$$F, _WRITE_READ_BENIGN_FLAG_$$F;



implementation {:source_name "kernel0"} {:kernel} $kernel0($nl: bv32, $nj: bv32, $nm: bv32, $nk: bv32, $ni: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $0$1: bv64;
  var $0$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bv64;
  var v2$2: bv64;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
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
  var _WRITE_HAS_OCCURRED_$$F$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$F$ghost$$6: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    $c0.0$1 := BV64_MUL(32bv64, v0$1);
    $c0.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b29 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV64_SLT($c0.0$2, BV32_SEXT64($nj)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV64_UGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV64_UGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV64_ULE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV64_ULE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV64_SGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV64_SGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV64_SLE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV64_SLE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($nj)) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($nj)) else v4$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p10$1 := false;
    p10$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    v5$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v2$1, $c0.0$1), 1bv64)) else v5$1);
    v5$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(v2$2, $c0.0$2), 1bv64)) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    $c1.0$1 := (if p3$1 then BV64_MUL(32bv64, v1$1) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_MUL(32bv64, v1$2) else $c1.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _WRITE_HAS_OCCURRED_$$F$ghost$$4 := _WRITE_HAS_OCCURRED_$$F;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b31 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$4 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b30 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b14 ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($nl)) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b14 ==> BV64_SLT($c0.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($nl)) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b13 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b13 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b12 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b12 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b11 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b11 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b9 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b9 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "guardNonNeg"} {:thread 1} p4$1 ==> _b8 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p4$2 ==> _b8 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b7 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b7 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 11} p4$1 ==> true;
    v6$1 := (if p4$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nl)) else v6$1);
    v6$2 := (if p4$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nl)) else v6$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p5$1 := (if p4$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p4$2 && v6$2 then v6$2 else p5$2);
    p4$1 := (if p4$1 && !v6$1 then v6$1 else p4$1);
    p4$2 := (if p4$2 && !v6$2 then v6$2 else p4$2);
    $c3.0$1 := (if p5$1 then v3$1 else $c3.0$1);
    $c3.0$2 := (if p5$2 then v3$2 else $c3.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _WRITE_HAS_OCCURRED_$$F$ghost$$6 := _WRITE_HAS_OCCURRED_$$F;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b33 ==> !p5$1 ==> _WRITE_HAS_OCCURRED_$$F$ghost$$6 == _WRITE_HAS_OCCURRED_$$F;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b32 ==> _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c1.0$1, BV32_SEXT64($nl));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b26 ==> _WRITE_HAS_OCCURRED_$$F ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b25 ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($nl)) && BV64_SLE($c3.0$1, $0$1) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b25 ==> BV64_SLT($c0.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($nl)) && BV64_SLE($c3.0$2, $0$2) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b24 ==> p6$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($nl));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b24 ==> p6$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($nj)) && BV64_SGE(BV32_SEXT64($nj), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($nl));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b23 ==> BV64_UGE($c3.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b23 ==> BV64_UGE($c3.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b22 ==> BV64_ULE($c3.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b22 ==> BV64_ULE($c3.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b21 ==> BV64_SGE($c3.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b21 ==> BV64_SGE($c3.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b20 ==> BV64_SLE($c3.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b20 ==> BV64_SLE($c3.0$2, v3$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b19 ==> BV64_SLE(0bv64, $0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b19 ==> BV64_SLE(0bv64, $0$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b18 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b18 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b17 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b17 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _WRITE_HAS_OCCURRED_$$F ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nj, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nl, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl), $nj))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $nl))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 13} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nl), $c1.0$1), 1bv64)) else v7$1);
    v7$2 := (if p6$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($nl), $c1.0$2), 1bv64)) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $0$1 := (if p7$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($nl), $c1.0$1), 1bv64) else $0$1);
    $0$2 := (if p7$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($nl), $c1.0$2), 1bv64) else $0$2);
    $0$1 := (if p8$1 then 31bv64 else $0$1);
    $0$2 := (if p8$2 then 31bv64 else $0$2);
    v8$1 := (if p6$1 then BV64_SLE($c3.0$1, $0$1) else v8$1);
    v8$2 := (if p6$2 then BV64_SLE($c3.0$2, $0$2) else v8$2);
    p9$1 := (if p6$1 && v8$1 then v8$1 else p9$1);
    p9$2 := (if p6$2 && v8$2 then v8$2 else p9$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$F(p9$1, BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($nl)), BV64_ADD($c1.0$1, $c3.0$1))[32:0], 0bv64, $$F[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($nl)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(p9$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($nl)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$F(p9$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($nl)), BV64_ADD($c1.0$2, $c3.0$2))[32:0], 0bv64);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$F"} true;
    $$F[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($nl)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]] := (if p9$1 then 0bv64 else $$F[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($nl)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]]);
    $$F[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($nl)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]] := (if p9$2 then 0bv64 else $$F[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($nl)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]]);
    $c3.0$1 := (if p9$1 then BV64_ADD($c3.0$1, 16bv64) else $c3.0$1);
    $c3.0$2 := (if p9$2 then BV64_ADD($c3.0$2, 16bv64) else $c3.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p6$1 && !p6$2;
    $c1.0$1 := (if p5$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p5$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192bv64) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $4;

  $6.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $6;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

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

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const _WATCHED_VALUE_$$F: bv64;

procedure {:inline 1} _LOG_READ_$$F(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$F;



implementation {:inline 1} _LOG_READ_$$F(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then true else _READ_HAS_OCCURRED_$$F);
    return;
}



procedure _CHECK_READ_$$F(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$F);
  requires {:source_name "F"} {:array "$$F"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$F: bool;

procedure {:inline 1} _LOG_WRITE_$$F(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$F, _WRITE_READ_BENIGN_FLAG_$$F;



implementation {:inline 1} _LOG_WRITE_$$F(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then true else _WRITE_HAS_OCCURRED_$$F);
    _WRITE_READ_BENIGN_FLAG_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$F);
    return;
}



procedure _CHECK_WRITE_$$F(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F != _value);
  requires {:source_name "F"} {:array "$$F"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$F != _value);
  requires {:source_name "F"} {:array "$$F"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$F(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$F;



implementation {:inline 1} _LOG_ATOMIC_$$F(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$F := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$F);
    return;
}



procedure _CHECK_ATOMIC_$$F(_P: bool, _offset: bv32);
  requires {:source_name "F"} {:array "$$F"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);
  requires {:source_name "F"} {:array "$$F"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$F;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$F(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$F := (if _P && _WRITE_HAS_OCCURRED_$$F && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$F);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;
