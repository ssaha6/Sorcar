type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "data"} {:global} $$data: [bv32]bv64;

axiom {:array_info "$$data"} {:global} {:elem_width 64} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

var {:source_name "mean"} {:global} $$mean: [bv32]bv64;

axiom {:array_info "$$mean"} {:global} {:elem_width 64} {:source_name "mean"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$mean: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$mean: bool;

axiom {:array_info "$$private_mean"} {:elem_width 64} {:source_name "private_mean"} {:source_elem_width 64} {:source_dimensions "1"} true;

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

function FADD64(bv64, bv64) : bv64;

function FDIV64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel1"} {:kernel} $kernel1($float_n: bv64, $m: bv32, $n: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), 18446744071562067968bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$mean && !_WRITE_HAS_OCCURRED_$$mean && !_ATOMIC_HAS_OCCURRED_$$mean;
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
  modifies _READ_HAS_OCCURRED_$$mean, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean, $$data, $$mean, _TRACKING;



implementation {:source_name "kernel1"} {:kernel} $kernel1($float_n: bv64, $m: bv32, $n: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $cond$1: bv64;
  var $cond$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $c365.0$1: bv64;
  var $c365.0$2: bv64;
  var $cond78$1: bv64;
  var $cond78$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v15$1: bv64;
  var v15$2: bv64;
  var v19$1: bv64;
  var v19$2: bv64;
  var v20$1: bv64;
  var v20$2: bv64;
  var v17$1: bv64;
  var v17$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v9$1: bv64;
  var v9$2: bv64;
  var v10$1: bv64;
  var v10$2: bv64;
  var v12$1: bv64;
  var v12$2: bv64;
  var v2$1: bool;
  var v2$2: bool;
  var v1$1: bv64;
  var v1$2: bv64;
  var v3$1: bool;
  var v3$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v13$1: bool;
  var v13$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v16$1: bv32;
  var v16$2: bv32;
  var v18$1: bool;
  var v18$2: bool;
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
  var p11$1: bool;
  var p11$2: bool;
  var p12$1: bool;
  var p12$2: bool;
  var p13$1: bool;
  var p13$2: bool;
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var p17$1: bool;
  var p17$2: bool;
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$for.cond.29: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.29: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$for.cond.45: bool;
  var _READ_HAS_OCCURRED_$$data$ghost$$for.cond.66: bool;
  var _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.66: bool;


  $entry:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    $c0.0$1 := BV64_MUL(32bv64, v0$1);
    $c0.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b82 ==> _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b81 ==> _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b80 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assert {:tag "noread"} _b79 ==> !_READ_HAS_OCCURRED_$$mean;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b78 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b77 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b76 ==> !_WRITE_HAS_OCCURRED_$$data;
    assert {:tag "noread"} _b75 ==> !_READ_HAS_OCCURRED_$$data;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> $cond78$1 == $cond78$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> $c365.0$1 == $c365.0$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b49 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b48 ==> p0$1 == p0$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b7 ==> BV64_UGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b7 ==> BV64_UGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b6 ==> BV64_ULE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b6 ==> BV64_ULE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV64_SGE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV64_SGE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV64_SLE($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV64_SLE($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b2 ==> BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b2 ==> BV64_SUB($c0.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c0.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b1 ==> BV64_SLE(0bv64, $c0.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v2$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($m)) else v2$1);
    v2$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($m)) else v2$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p20$1 := false;
    p20$2 := false;
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    v3$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$1, $c0.0$1), 1bv64)) else v3$1);
    v3$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v1$2, $c0.0$2), 1bv64)) else v3$2);
    p3$1 := (if p1$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p1$2 && v3$2 then v3$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$mean(p3$1, BV64_ADD(v1$1, $c0.0$1)[32:0], $$mean[BV64_ADD(v1$1, $c0.0$1)[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$mean(p3$2, BV64_ADD(v1$2, $c0.0$2)[32:0], $$mean[BV64_ADD(v1$2, $c0.0$2)[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$mean"} true;
    v4$1 := (if p3$1 then $$mean[BV64_ADD(v1$1, $c0.0$1)[32:0]] else v4$1);
    v4$2 := (if p3$2 then $$mean[BV64_ADD(v1$2, $c0.0$2)[32:0]] else v4$2);
    $$private_mean$0bv32$1 := (if p3$1 then v4$1 else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p3$2 then v4$2 else $$private_mean$0bv32$2);
    $c1.0$1 := (if p3$1 then BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)) else $c1.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$data$ghost$$for.cond.29 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.29 := _WRITE_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.29;

  $for.cond.29:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b86 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.29 == _WRITE_HAS_OCCURRED_$$data;
    assert {:tag "disabledMaintainsInstrumentation"} _b85 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$for.cond.29 == _READ_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b84 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b83 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b16 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b16 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b15 ==> p4$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b15 ==> p4$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b14 ==> BV64_UGE($c1.0$1, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b14 ==> BV64_UGE($c1.0$2, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b13 ==> BV64_ULE($c1.0$1, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b13 ==> BV64_ULE($c1.0$2, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b12 ==> BV64_SGE($c1.0$1, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b12 ==> BV64_SGE($c1.0$2, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b11 ==> BV64_SLE($c1.0$1, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b11 ==> BV64_SLE($c1.0$2, BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "guardNonNeg"} {:thread 1} p4$1 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p4$2 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), BV64_SUB(BV64_SUB(0bv64, BV64_SREM(BV64_ADD(BV32_SEXT64(BV32_SUB(0bv32, $n)), 2147483648bv64), 32bv64)), BV32_SEXT64($n)));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 13} p4$1 ==> true;
    v5$1 := (if p4$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v5$1);
    v5$2 := (if p4$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v5$2);
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
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p5$1 := (if p4$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p4$2 && v5$2 then v5$2 else p5$2);
    p4$1 := (if p4$1 && !v5$1 then v5$1 else p4$1);
    p4$2 := (if p4$2 && !v5$2 then v5$2 else p4$2);
    v6$1 := (if p5$1 then BV64_SLE($c1.0$1, 18446744073709551584bv64) else v6$1);
    v6$2 := (if p5$2 then BV64_SLE($c1.0$2, 18446744073709551584bv64) else v6$2);
    p6$1 := (if p5$1 && v6$1 then v6$1 else p6$1);
    p6$2 := (if p5$2 && v6$2 then v6$2 else p6$2);
    p11$1 := (if p5$1 && !v6$1 then !v6$1 else p11$1);
    p11$2 := (if p5$2 && !v6$2 then !v6$2 else p11$2);
    v7$1 := (if p6$1 then BV64_SGT(0bv64, BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), $c1.0$1)) else v7$1);
    v7$2 := (if p6$2 then BV64_SGT(0bv64, BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), $c1.0$2)) else v7$2);
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $cond$1 := (if p7$1 then BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), $c1.0$1) else $cond$1);
    $cond$2 := (if p7$2 then BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), $c1.0$2) else $cond$2);
    $cond$1 := (if p8$1 then 0bv64 else $cond$1);
    $cond$2 := (if p8$2 then 0bv64 else $cond$2);
    $c3.0$1 := (if p6$1 then $cond$1 else $c3.0$1);
    $c3.0$2 := (if p6$2 then $cond$2 else $c3.0$2);
    p9$1 := (if p6$1 then true else p9$1);
    p9$2 := (if p6$2 then true else p9$2);
    _READ_HAS_OCCURRED_$$data$ghost$$for.cond.45 := _READ_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $for.cond.45;

  $for.cond.45:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b88 ==> !p6$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$for.cond.45 == _READ_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b87 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p9"} {:dominator_predicate "p6"} true;
    assert p9$1 ==> p4$1;
    assert p9$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLE($c1.0$1, 18446744073709551584bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b43 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, 18446744073709551584bv64) && BV64_SLE($c3.0$1, 31bv64) ==> p9$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b43 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, 18446744073709551584bv64) && BV64_SLE($c3.0$2, 31bv64) ==> p9$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p9$1 ==> _b42 ==> p9$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SLE($c1.0$1, 18446744073709551584bv64);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p9$2 ==> _b42 ==> p9$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SLE($c1.0$2, 18446744073709551584bv64);
    assert {:tag "loopBound"} {:thread 1} p9$1 ==> _b41 ==> BV64_UGE($c3.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p9$2 ==> _b41 ==> BV64_UGE($c3.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p9$1 ==> _b40 ==> BV64_ULE($c3.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p9$2 ==> _b40 ==> BV64_ULE($c3.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p9$1 ==> _b39 ==> BV64_SGE($c3.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p9$2 ==> _b39 ==> BV64_SGE($c3.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p9$1 ==> _b38 ==> BV64_SLE($c3.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p9$2 ==> _b38 ==> BV64_SLE($c3.0$2, $cond$2);
    assert {:tag "guardNonNeg"} {:thread 1} p9$1 ==> _b37 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p9$2 ==> _b37 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 19} p9$1 ==> true;
    v8$1 := (if p9$1 then BV64_SLE($c3.0$1, 31bv64) else v8$1);
    v8$2 := (if p9$2 then BV64_SLE($c3.0$2, 31bv64) else v8$2);
    p10$1 := false;
    p10$2 := false;
    p10$1 := (if p9$1 && v8$1 then v8$1 else p10$1);
    p10$2 := (if p9$2 && v8$2 then v8$2 else p10$2);
    p9$1 := (if p9$1 && !v8$1 then v8$1 else p9$1);
    p9$2 := (if p9$2 && !v8$2 then v8$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$data(p10$1, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1))[32:0], $$data[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$data(p10$2, BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2))[32:0], $$data[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v9$1 := (if p10$1 then $$data[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$1), $c3.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1))[32:0]] else v9$1);
    v9$2 := (if p10$2 then $$data[BV64_ADD(BV64_MUL(BV64_ADD(BV64_ADD(BV32_SEXT64($n), $c1.0$2), $c3.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2))[32:0]] else v9$2);
    v10$1 := (if p10$1 then $$private_mean$0bv32$1 else v10$1);
    v10$2 := (if p10$2 then $$private_mean$0bv32$2 else v10$2);
    $$private_mean$0bv32$1 := (if p10$1 then FADD64(v10$1, v9$1) else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p10$2 then FADD64(v10$2, v9$2) else $$private_mean$0bv32$2);
    $c3.0$1 := (if p10$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $c3.0$2 := (if p10$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p9$1 := (if p10$1 then true else p9$1);
    p9$2 := (if p10$2 then true else p9$2);
    goto $for.cond.45.backedge, $for.cond.45.tail;

  $for.cond.45.tail:
    assume !p9$1 && !p9$2;
    v11$1 := (if p11$1 then $c1.0$1 == 0bv64 else v11$1);
    v11$2 := (if p11$2 then $c1.0$2 == 0bv64 else v11$2);
    p13$1 := (if p11$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p11$2 && v11$2 then v11$2 else p13$2);
    v12$1 := (if p13$1 then $$private_mean$0bv32$1 else v12$1);
    v12$2 := (if p13$2 then $$private_mean$0bv32$2 else v12$2);
    $$private_mean$0bv32$1 := (if p13$1 then FDIV64(v12$1, $float_n) else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p13$2 then FDIV64(v12$2, $float_n) else $$private_mean$0bv32$2);
    $c365.0$1 := (if p11$1 then 0bv64 else $c365.0$1);
    $c365.0$2 := (if p11$2 then 0bv64 else $c365.0$2);
    p14$1 := (if p11$1 then true else p14$1);
    p14$2 := (if p11$2 then true else p14$2);
    _READ_HAS_OCCURRED_$$data$ghost$$for.cond.66 := _READ_HAS_OCCURRED_$$data;
    _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.66 := _WRITE_HAS_OCCURRED_$$data;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.66;

  $for.cond.66:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b92 ==> !p11$1 ==> _WRITE_HAS_OCCURRED_$$data$ghost$$for.cond.66 == _WRITE_HAS_OCCURRED_$$data;
    assert {:tag "disabledMaintainsInstrumentation"} _b91 ==> !p11$1 ==> _READ_HAS_OCCURRED_$$data$ghost$$for.cond.66 == _READ_HAS_OCCURRED_$$data;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b90 ==> _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b89 ==> _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p14"} {:dominator_predicate "p11"} true;
    assert p14$1 ==> p4$1;
    assert p14$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _WRITE_HAS_OCCURRED_$$data ==> !BV64_SLE($c1.0$1, 18446744073709551584bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _WRITE_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$data ==> !BV64_SLE($c1.0$1, 18446744073709551584bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _READ_HAS_OCCURRED_$$data ==> BV64_SLT($c0.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b28 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && !BV64_SLE($c1.0$1, 18446744073709551584bv64) && BV64_SLE($c365.0$1, $cond78$1) ==> p14$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b28 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && !BV64_SLE($c1.0$2, 18446744073709551584bv64) && BV64_SLE($c365.0$2, $cond78$2) ==> p14$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p14$1 ==> _b27 ==> p14$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c0.0$1), 1bv64)) && BV64_SLT($c1.0$1, BV32_SEXT64($n)) && !BV64_SLE($c1.0$1, 18446744073709551584bv64);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p14$2 ==> _b27 ==> p14$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c0.0$2), 1bv64)) && BV64_SLT($c1.0$2, BV32_SEXT64($n)) && !BV64_SLE($c1.0$2, 18446744073709551584bv64);
    assert {:tag "loopBound"} {:thread 1} p14$1 ==> _b26 ==> BV64_UGE($c365.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p14$2 ==> _b26 ==> BV64_UGE($c365.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p14$1 ==> _b25 ==> BV64_ULE($c365.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p14$2 ==> _b25 ==> BV64_ULE($c365.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p14$1 ==> _b24 ==> BV64_SGE($c365.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p14$2 ==> _b24 ==> BV64_SGE($c365.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p14$1 ==> _b23 ==> BV64_SLE($c365.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p14$2 ==> _b23 ==> BV64_SLE($c365.0$2, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p14$1 ==> _b22 ==> BV64_SLE(0bv64, $cond78$1);
    assert {:tag "guardNonNeg"} {:thread 2} p14$2 ==> _b22 ==> BV64_SLE(0bv64, $cond78$2);
    assert {:tag "guardNonNeg"} {:thread 1} p14$1 ==> _b21 ==> BV64_SLE(0bv64, $c365.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p14$2 ==> _b21 ==> BV64_SLE(0bv64, $c365.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$data ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$mean ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $m))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 31} p14$1 ==> true;
    v13$1 := (if p14$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64)) else v13$1);
    v13$2 := (if p14$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64)) else v13$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p16$1 := (if p14$1 && v13$1 then v13$1 else p16$1);
    p16$2 := (if p14$2 && v13$2 then v13$2 else p16$2);
    p15$1 := (if p14$1 && !v13$1 then !v13$1 else p15$1);
    p15$2 := (if p14$2 && !v13$2 then !v13$2 else p15$2);
    $cond78$1 := (if p15$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$1), 1bv64) else $cond78$1);
    $cond78$2 := (if p15$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c1.0$2), 1bv64) else $cond78$2);
    $cond78$1 := (if p16$1 then 31bv64 else $cond78$1);
    $cond78$2 := (if p16$2 then 31bv64 else $cond78$2);
    v14$1 := (if p14$1 then BV64_SLE($c365.0$1, $cond78$1) else v14$1);
    v14$2 := (if p14$2 then BV64_SLE($c365.0$2, $cond78$2) else v14$2);
    p17$1 := (if p14$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p14$2 && v14$2 then v14$2 else p17$2);
    p14$1 := (if p14$1 && !v14$1 then v14$1 else p14$1);
    p14$2 := (if p14$2 && !v14$2 then v14$2 else p14$2);
    v15$1 := (if p17$1 then $$private_mean$0bv32$1 else v15$1);
    v15$2 := (if p17$2 then $$private_mean$0bv32$2 else v15$2);
    v16$1 := (if p17$1 then BV64_ADD(BV64_MUL(BV64_ADD($c1.0$1, $c365.0$1), BV32_SEXT64($m)), BV64_ADD(v1$1, $c0.0$1))[32:0] else v16$1);
    v16$2 := (if p17$2 then BV64_ADD(BV64_MUL(BV64_ADD($c1.0$2, $c365.0$2), BV32_SEXT64($m)), BV64_ADD(v1$2, $c0.0$2))[32:0] else v16$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$data(p17$1, v16$1, $$data[v16$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$data(p17$2, v16$2, $$data[v16$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v17$1 := (if p17$1 then $$data[v16$1] else v17$1);
    v17$2 := (if p17$2 then $$data[v16$2] else v17$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$data(p17$1, v16$1, FSUB64(v17$1, v15$1), $$data[v16$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(p17$2, v16$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$data(p17$2, v16$2, FSUB64(v17$2, v15$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v16$1] := (if p17$1 then FSUB64(v17$1, v15$1) else $$data[v16$1]);
    $$data[v16$2] := (if p17$2 then FSUB64(v17$2, v15$2) else $$data[v16$2]);
    $c365.0$1 := (if p17$1 then BV64_ADD($c365.0$1, 1bv64) else $c365.0$1);
    $c365.0$2 := (if p17$2 then BV64_ADD($c365.0$2, 1bv64) else $c365.0$2);
    p14$1 := (if p17$1 then true else p14$1);
    p14$2 := (if p17$2 then true else p14$2);
    goto $for.cond.66.backedge, $for.cond.66.tail;

  $for.cond.66.tail:
    assume !p14$1 && !p14$2;
    $c1.0$1 := (if p5$1 then BV64_ADD($c1.0$1, 32bv64) else $c1.0$1);
    $c1.0$2 := (if p5$2 then BV64_ADD($c1.0$2, 32bv64) else $c1.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $for.cond.29.backedge, __partitioned_block_$for.cond.29.tail_0;

  __partitioned_block_$for.cond.29.tail_0:
    assume !p4$1 && !p4$2;
    v18$1 := (if p3$1 then BV32_SLE($n, 0bv32) else v18$1);
    v18$2 := (if p3$2 then BV32_SLE($n, 0bv32) else v18$2);
    p19$1 := (if p3$1 && v18$1 then v18$1 else p19$1);
    p19$2 := (if p3$2 && v18$2 then v18$2 else p19$2);
    v19$1 := (if p19$1 then $$private_mean$0bv32$1 else v19$1);
    v19$2 := (if p19$2 then $$private_mean$0bv32$2 else v19$2);
    $$private_mean$0bv32$1 := (if p19$1 then FDIV64(v19$1, $float_n) else $$private_mean$0bv32$1);
    $$private_mean$0bv32$2 := (if p19$2 then FDIV64(v19$2, $float_n) else $$private_mean$0bv32$2);
    v20$1 := (if p3$1 then $$private_mean$0bv32$1 else v20$1);
    v20$2 := (if p3$2 then $$private_mean$0bv32$2 else v20$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$mean(p3$1, BV64_ADD(v1$1, $c0.0$1)[32:0], v20$1, $$mean[BV64_ADD(v1$1, $c0.0$1)[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(p3$2, BV64_ADD(v1$2, $c0.0$2)[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$mean(p3$2, BV64_ADD(v1$2, $c0.0$2)[32:0], v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$mean"} true;
    $$mean[BV64_ADD(v1$1, $c0.0$1)[32:0]] := (if p3$1 then v20$1 else $$mean[BV64_ADD(v1$1, $c0.0$1)[32:0]]);
    $$mean[BV64_ADD(v1$2, $c0.0$2)[32:0]] := (if p3$2 then v20$2 else $$mean[BV64_ADD(v1$2, $c0.0$2)[32:0]]);
    goto __partitioned_block_$for.cond.29.tail_1;

  __partitioned_block_$for.cond.29.tail_1:
    call {:sourceloc_num 50} $bugle_barrier_duplicated_0(1bv1, 1bv1, p1$1, p1$2);
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 1048576bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 1048576bv64) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $for.cond.backedge, $for.cond.tail;

  $for.cond.tail:
    assume !p0$1 && !p0$2;
    return;

  $for.cond.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $for.cond.29.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.29;

  $for.cond.66.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.66;

  $for.cond.45.backedge:
    assume {:backedge} p9$1 || p9$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $for.cond.45;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$data, $$mean, _TRACKING;



var $$private_mean$0bv32$1: bv64;

var $$private_mean$0bv32$2: bv64;

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b6: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

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

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const _WATCHED_VALUE_$$data: bv64;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: bv32);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



const _WATCHED_VALUE_$$mean: bv64;

procedure {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_READ_$$mean(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _READ_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_READ_$$mean(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$mean);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$mean: bool;

procedure {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$mean, _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _LOG_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then true else _WRITE_HAS_OCCURRED_$$mean);
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



procedure _CHECK_WRITE_$$mean(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$mean != _value);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$mean;



implementation {:inline 1} _LOG_ATOMIC_$$mean(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$mean := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$mean);
    return;
}



procedure _CHECK_ATOMIC_$$mean(_P: bool, _offset: bv32);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);
  requires {:source_name "mean"} {:array "$$mean"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$mean;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$mean(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$mean := (if _P && _WRITE_HAS_OCCURRED_$$mean && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$mean);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$data;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$mean;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$mean;
    goto anon2;

  anon2:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon5;

  anon5:
    havoc _TRACKING;
    return;

  anon7_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$data;
    goto anon4;

  anon4:
    havoc $$mean;
    goto anon5;

  anon6_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;
