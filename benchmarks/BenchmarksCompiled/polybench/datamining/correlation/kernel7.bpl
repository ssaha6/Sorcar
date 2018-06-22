type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "corr"} {:global} $$corr: [bv32]bv64;

axiom {:array_info "$$corr"} {:global} {:elem_width 64} {:source_name "corr"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$corr: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$corr: bool;

var {:source_name "shared_corr_0"} {:group_shared} $$kernel7.shared_corr_0: [bv1][bv32]bv64;

axiom {:array_info "$$kernel7.shared_corr_0"} {:group_shared} {:elem_width 64} {:source_name "shared_corr_0"} {:source_elem_width 64} {:source_dimensions "32,32"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*,32"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0: bool;

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

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

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

procedure {:source_name "kernel7"} {:kernel} $kernel7($m: bv32, $n: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 2bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($m, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), 18446744071562067968bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$corr && !_WRITE_HAS_OCCURRED_$$corr && !_ATOMIC_HAS_OCCURRED_$$corr;
  requires !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
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
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING, _READ_HAS_OCCURRED_$$corr, _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0, _TRACKING, _READ_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:source_name "kernel7"} {:kernel} $kernel7($m: bv32, $n: bv32)
{
  var $c0.0$1: bv64;
  var $c0.0$2: bv64;
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $cond$1: bv64;
  var $cond$2: bv64;
  var $cond81$1: bv64;
  var $cond81$2: bv64;
  var $cond76$1: bv64;
  var $cond76$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var $cond94$1: bv64;
  var $cond94$2: bv64;
  var $cond104$1: bv32;
  var $cond104$2: bv32;
  var $c3119.0$1: bv64;
  var $c3119.0$2: bv64;
  var $cond132$1: bv64;
  var $cond132$2: bv64;
  var $cond146$1: bv32;
  var $cond146$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v1$1: bv64;
  var v1$2: bv64;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v13$1: bv64;
  var v13$2: bv64;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v17$1: bv64;
  var v17$2: bv64;
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
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0: bool;
  var _READ_HAS_OCCURRED_$$corr$ghost$$for.cond.82: bool;
  var _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.82: bool;
  var _WRITE_HAS_OCCURRED_$$corr$ghost$$for.cond.120: bool;
  var _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.120: bool;


  $entry:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := local_id_x$1;
    v2$2 := local_id_x$2;
    v3$1 := BV32_ZEXT64(v2$1);
    v3$2 := BV32_ZEXT64(v2$2);
    v4$1 := BV32_ZEXT64(local_id_y$1);
    v4$2 := BV32_ZEXT64(local_id_y$2);
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
    assert {:tag "accessBreak"} _b84 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b83 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($cond81$1[32:0], 32bv32), local_id_x$1));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b82 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "nowrite"} _b81 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "noread"} _b80 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "nowrite"} _b79 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assert {:tag "noread"} _b78 ==> !_READ_HAS_OCCURRED_$$corr;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> $cond146$1 == $cond146$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> $cond132$1 == $cond132$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> $c3119.0$1 == $c3119.0$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> $cond104$1 == $cond104$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> $cond94$1 == $cond94$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> $cond76$1 == $cond76$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> $cond81$1 == $cond81$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> $c0.0$1 == $c0.0$2;
    assert {:tag "loopPredicateEquality"} _b52 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b51 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) ==> p0$2;
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
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c0.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 6} p0$1 ==> true;
    v5$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) else v5$1);
    v5$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) else v5$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p24$1 := false;
    p24$2 := false;
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    p0$1 := (if p0$1 && !v5$1 then v5$1 else p0$1);
    p0$2 := (if p0$2 && !v5$2 then v5$2 else p0$2);
    $c1.0$1 := (if p1$1 then BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))) else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0 := _READ_HAS_OCCURRED_$$corr;
    _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0 := _WRITE_HAS_OCCURRED_$$corr;
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0 := _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0 := _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$for.cond.27_0;

  __partitioned_block_$for.cond.27_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b120 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0 == _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "disabledMaintainsInstrumentation"} _b119 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$__partitioned_block_$for.cond.27_0 == _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "accessBreak"} _b118 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b117 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($cond81$1[32:0], 32bv32), local_id_x$1));
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b116 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "nowrite"} _b115 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "noread"} _b114 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "disabledMaintainsInstrumentation"} _b113 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0 == _WRITE_HAS_OCCURRED_$$corr;
    assert {:tag "disabledMaintainsInstrumentation"} _b112 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$corr$ghost$__partitioned_block_$for.cond.27_0 == _READ_HAS_OCCURRED_$$corr;
    assert {:tag "nowrite"} _b111 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assert {:tag "noread"} _b110 ==> !_READ_HAS_OCCURRED_$$corr;
    assert {:tag "predicatedEquality"} _b109 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b108 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b107 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b106 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b105 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b104 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b103 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b102 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b101 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b100 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b99 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b98 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b97 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b96 ==> p2$1 && p2$2 ==> $cond146$1 == $cond146$2;
    assert {:tag "predicatedEquality"} _b95 ==> p2$1 && p2$2 ==> $cond132$1 == $cond132$2;
    assert {:tag "predicatedEquality"} _b94 ==> p2$1 && p2$2 ==> $c3119.0$1 == $c3119.0$2;
    assert {:tag "predicatedEquality"} _b93 ==> p2$1 && p2$2 ==> $cond104$1 == $cond104$2;
    assert {:tag "predicatedEquality"} _b92 ==> p2$1 && p2$2 ==> $cond94$1 == $cond94$2;
    assert {:tag "predicatedEquality"} _b91 ==> p2$1 && p2$2 ==> $c3.0$1 == $c3.0$2;
    assert {:tag "predicatedEquality"} _b90 ==> p2$1 && p2$2 ==> $cond76$1 == $cond76$2;
    assert {:tag "predicatedEquality"} _b89 ==> p2$1 && p2$2 ==> $cond81$1 == $cond81$2;
    assert {:tag "predicatedEquality"} _b88 ==> p2$1 && p2$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b87 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b86 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b85 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b17 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b17 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b16 ==> BV64_UGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b16 ==> BV64_UGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b15 ==> BV64_ULE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b15 ==> BV64_ULE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b14 ==> BV64_SGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b14 ==> BV64_SGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b13 ==> BV64_SLE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b13 ==> BV64_SLE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b11 ==> BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b11 ==> BV64_SUB($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64)))) == BV64_SUB($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b10 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b9 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v1$1), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$1), $c0.0$1), 8161bv64), 8192bv64))));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b9 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v1$2), BV64_MUL(8192bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v1$2), $c0.0$2), 8161bv64), 8192bv64))));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($m)) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($m)) else v6$2);
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
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p18$1 := false;
    p18$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    goto __partitioned_block_$for.cond.27_1;

  __partitioned_block_$for.cond.27_1:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_0(1bv1, 1bv1, p3$1, p3$2);
    v7$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 0bv64) else v7$1);
    v7$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 0bv64) else v7$2);
    p5$1 := (if p3$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p3$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p3$1 && !v7$1 then !v7$1 else p4$1);
    p4$2 := (if p3$2 && !v7$2 then !v7$2 else p4$2);
    $cond$1 := (if p4$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 16bv64) else $cond$1);
    $cond$2 := (if p4$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 16bv64) else $cond$2);
    $cond$1 := (if p5$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1)), 16bv64), 1bv64), 16bv64)) else $cond$1);
    $cond$2 := (if p5$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2)), 16bv64), 1bv64), 16bv64)) else $cond$2);
    v8$1 := (if p3$1 then BV64_SGT(v4$1, BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $cond$1)), 16bv64)) else v8$1);
    v8$2 := (if p3$2 then BV64_SGT(v4$2, BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $cond$2)), 16bv64)) else v8$2);
    p6$1 := (if p3$1 && v8$1 then v8$1 else p6$1);
    p6$2 := (if p3$2 && v8$2 then v8$2 else p6$2);
    p7$1 := (if p3$1 && !v8$1 then !v8$1 else p7$1);
    p7$2 := (if p3$2 && !v8$2 then !v8$2 else p7$2);
    $cond81$1 := (if p6$1 then v4$1 else $cond81$1);
    $cond81$2 := (if p6$2 then v4$2 else $cond81$2);
    v9$1 := (if p7$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 0bv64) else v9$1);
    v9$2 := (if p7$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 0bv64) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    p8$1 := (if p7$1 && !v9$1 then !v9$1 else p8$1);
    p8$2 := (if p7$2 && !v9$2 then !v9$2 else p8$2);
    $cond76$1 := (if p8$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1), 16bv64) else $cond76$1);
    $cond76$2 := (if p8$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2), 16bv64) else $cond76$2);
    $cond76$1 := (if p9$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, v4$1), $c0.0$1), $c1.0$1)), 16bv64), 1bv64), 16bv64)) else $cond76$1);
    $cond76$2 := (if p9$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, v4$2), $c0.0$2), $c1.0$2)), 16bv64), 1bv64), 16bv64)) else $cond76$2);
    $cond81$1 := (if p7$1 then BV64_ADD(BV64_ADD(v4$1, BV64_MUL(16bv64, $cond76$1)), 16bv64) else $cond81$1);
    $cond81$2 := (if p7$2 then BV64_ADD(BV64_ADD(v4$2, BV64_MUL(16bv64, $cond76$2)), 16bv64) else $cond81$2);
    $c3.0$1 := (if p3$1 then $cond81$1 else $c3.0$1);
    $c3.0$2 := (if p3$2 then $cond81$2 else $c3.0$2);
    p10$1 := (if p3$1 then true else p10$1);
    p10$2 := (if p3$2 then true else p10$2);
    _READ_HAS_OCCURRED_$$corr$ghost$$for.cond.82 := _READ_HAS_OCCURRED_$$corr;
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.82 := _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $for.cond.82;

  $for.cond.82:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b123 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.82 == _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b122 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(16bv64[32:0], 32bv32), 1bv32), BV32_ADD(BV32_MUL($cond81$1[32:0], 32bv32), local_id_x$1));
    assert {:tag "disabledMaintainsInstrumentation"} _b121 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$corr$ghost$$for.cond.82 == _READ_HAS_OCCURRED_$$corr;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p10"} {:dominator_predicate "p3"} true;
    assert p10$1 ==> p2$1;
    assert p10$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b31 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SLE($c3.0$1, $cond94$1) ==> p10$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b31 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SLE($c3.0$2, $cond94$2) ==> p10$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p10$1 ==> _b30 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p10$2 ==> _b30 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m));
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b29 ==> BV64_UGE($c3.0$1, $cond81$1);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b29 ==> BV64_UGE($c3.0$2, $cond81$2);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b28 ==> BV64_ULE($c3.0$1, $cond81$1);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b28 ==> BV64_ULE($c3.0$2, $cond81$2);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b27 ==> BV64_SGE($c3.0$1, $cond81$1);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b27 ==> BV64_SGE($c3.0$2, $cond81$2);
    assert {:tag "loopBound"} {:thread 1} p10$1 ==> _b26 ==> BV64_SLE($c3.0$1, $cond81$1);
    assert {:tag "loopBound"} {:thread 2} p10$2 ==> _b26 ==> BV64_SLE($c3.0$2, $cond81$2);
    assert {:tag "guardNonNeg"} {:thread 1} p10$1 ==> _b25 ==> BV64_SLE(0bv64, $cond94$1);
    assert {:tag "guardNonNeg"} {:thread 2} p10$2 ==> _b25 ==> BV64_SLE(0bv64, $cond94$2);
    assert {:tag "guardNonNeg"} {:thread 1} p10$1 ==> _b24 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p10$2 ==> _b24 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p10$1 ==> _b23 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), $cond81$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p10$2 ==> _b23 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), $cond81$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 20} p10$1 ==> true;
    v10$1 := (if p10$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64)) else v10$1);
    v10$2 := (if p10$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64)) else v10$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p12$1 := (if p10$1 && v10$1 then v10$1 else p12$1);
    p12$2 := (if p10$2 && v10$2 then v10$2 else p12$2);
    p11$1 := (if p10$1 && !v10$1 then !v10$1 else p11$1);
    p11$2 := (if p10$2 && !v10$2 then !v10$2 else p11$2);
    $cond94$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1bv64) else $cond94$1);
    $cond94$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1bv64) else $cond94$2);
    $cond94$1 := (if p12$1 then 31bv64 else $cond94$1);
    $cond94$2 := (if p12$2 then 31bv64 else $cond94$2);
    v11$1 := (if p10$1 then BV64_SLE($c3.0$1, $cond94$1) else v11$1);
    v11$2 := (if p10$2 then BV64_SLE($c3.0$2, $cond94$2) else v11$2);
    p13$1 := (if p10$1 && v11$1 then v11$1 else p13$1);
    p13$2 := (if p10$2 && v11$2 then v11$2 else p13$2);
    p10$1 := (if p10$1 && !v11$1 then v11$1 else p10$1);
    p10$2 := (if p10$2 && !v11$2 then v11$2 else p10$2);
    v12$1 := (if p13$1 then BV32_SGE($m, 2bv32) else v12$1);
    v12$2 := (if p13$2 then BV32_SGE($m, 2bv32) else v12$2);
    p15$1 := (if p13$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p13$2 && v12$2 then v12$2 else p15$2);
    p14$1 := (if p13$1 && !v12$1 then !v12$1 else p14$1);
    p14$2 := (if p13$2 && !v12$2 then !v12$2 else p14$2);
    $cond104$1 := (if p14$1 then 1bv32 else $cond104$1);
    $cond104$2 := (if p14$2 then 1bv32 else $cond104$2);
    $cond104$1 := (if p15$1 then $m else $cond104$1);
    $cond104$2 := (if p15$2 then $m else $cond104$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$corr(p13$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($cond104$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0], $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($cond104$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$corr(p13$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($cond104$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0], $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($cond104$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$corr"} true;
    v13$1 := (if p13$1 then $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c0.0$1), BV32_SEXT64($cond104$1)), BV64_ADD($c1.0$1, $c3.0$1))[32:0]] else v13$1);
    v13$2 := (if p13$2 then $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c0.0$2), BV32_SEXT64($cond104$2)), BV64_ADD($c1.0$2, $c3.0$2))[32:0]] else v13$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$kernel7.shared_corr_0(p13$1, BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1), v13$1, $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(p13$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$kernel7.shared_corr_0(p13$2, BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel7.shared_corr_0"} true;
    $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)] := (if p13$1 then v13$1 else $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL($c3.0$1[32:0], 32bv32), v2$1)]);
    $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2)] := (if p13$2 then v13$2 else $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($c3.0$2[32:0], 32bv32), v2$2)]);
    $c3.0$1 := (if p13$1 then BV64_ADD($c3.0$1, 16bv64) else $c3.0$1);
    $c3.0$2 := (if p13$2 then BV64_ADD($c3.0$2, 16bv64) else $c3.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $for.cond.82.backedge, __partitioned_block_$for.cond.82.tail_0;

  __partitioned_block_$for.cond.82.tail_0:
    assume !p10$1 && !p10$2;
    goto __partitioned_block_$for.cond.82.tail_1;

  __partitioned_block_$for.cond.82.tail_1:
    call {:sourceloc_num 32} $bugle_barrier_duplicated_1(1bv1, 1bv1, p3$1, p3$2);
    v14$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v3$1, $c1.0$1), 1bv64)) else v14$1);
    v14$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(v3$2, $c1.0$2), 1bv64)) else v14$2);
    p17$1 := (if p3$1 && v14$1 then v14$1 else p17$1);
    p17$2 := (if p3$2 && v14$2 then v14$2 else p17$2);
    $c3119.0$1 := (if p17$1 then v4$1 else $c3119.0$1);
    $c3119.0$2 := (if p17$2 then v4$2 else $c3119.0$2);
    p18$1 := (if p17$1 then true else p18$1);
    p18$2 := (if p17$2 then true else p18$2);
    _WRITE_HAS_OCCURRED_$$corr$ghost$$for.cond.120 := _WRITE_HAS_OCCURRED_$$corr;
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.120 := _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.120;

  $for.cond.120:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b127 ==> !p17$1 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0$ghost$$for.cond.120 == _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assert {:tag "accessBreak"} _b126 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> local_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 32bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b125 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(16bv64[32:0], 1bv32), BV32_ADD(v4$1[32:0], BV32_MUL(local_id_x$1, 32bv32)));
    assert {:tag "disabledMaintainsInstrumentation"} _b124 ==> !p17$1 ==> _WRITE_HAS_OCCURRED_$$corr$ghost$$for.cond.120 == _WRITE_HAS_OCCURRED_$$corr;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p18"} {:dominator_predicate "p17"} true;
    assert p18$1 ==> p2$1;
    assert p18$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _WRITE_HAS_OCCURRED_$$corr ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _WRITE_HAS_OCCURRED_$$corr ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c1.0$1, BV32_SEXT64($m));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b44 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLE($c3119.0$1, $cond132$1) ==> p18$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b44 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLE($c3119.0$2, $cond132$2) ==> p18$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p18$1 ==> _b43 ==> p18$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p18$2 ==> _b43 ==> p18$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64(BV32_SUB($m, 1bv32))) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SGE(BV32_SEXT64($m), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b42 ==> BV64_UGE($c3119.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b42 ==> BV64_UGE($c3119.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b41 ==> BV64_ULE($c3119.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b41 ==> BV64_ULE($c3119.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b40 ==> BV64_SGE($c3119.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b40 ==> BV64_SGE($c3119.0$2, v4$2);
    assert {:tag "loopBound"} {:thread 1} p18$1 ==> _b39 ==> BV64_SLE($c3119.0$1, v4$1);
    assert {:tag "loopBound"} {:thread 2} p18$2 ==> _b39 ==> BV64_SLE($c3119.0$2, v4$2);
    assert {:tag "guardNonNeg"} {:thread 1} p18$1 ==> _b38 ==> BV64_SLE(0bv64, $cond132$1);
    assert {:tag "guardNonNeg"} {:thread 2} p18$2 ==> _b38 ==> BV64_SLE(0bv64, $cond132$2);
    assert {:tag "guardNonNeg"} {:thread 1} p18$1 ==> _b37 ==> BV64_SLE(0bv64, $c3119.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p18$2 ==> _b37 ==> BV64_SLE(0bv64, $c3119.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p18$1 ==> _b36 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3119.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p18$2 ==> _b36 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c3119.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v4$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$corr ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$corr ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(group_id_x$1), 254bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1))), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 31bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_ZEXT64(group_id_x$1) == 255bv64 then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(7680bv64, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_MUL(511bv32, BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32))))), 8191bv64), 8192bv64), 31bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), (if BV32_SGE($m, 2bv32) then $m else 1bv32)))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 34} p18$1 ==> true;
    v15$1 := (if p18$1 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$1, $c0.0$1), $c1.0$1), 1bv64)) else v15$1);
    v15$2 := (if p18$2 then BV64_SLT(31bv64, BV64_SUB(BV64_ADD(BV64_SUB(v3$2, $c0.0$2), $c1.0$2), 1bv64)) else v15$2);
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p20$1 := (if p18$1 && v15$1 then v15$1 else p20$1);
    p20$2 := (if p18$2 && v15$2 then v15$2 else p20$2);
    p19$1 := (if p18$1 && !v15$1 then !v15$1 else p19$1);
    p19$2 := (if p18$2 && !v15$2 then !v15$2 else p19$2);
    $cond132$1 := (if p19$1 then BV64_SUB(BV64_ADD(BV64_SUB(v3$1, $c0.0$1), $c1.0$1), 1bv64) else $cond132$1);
    $cond132$2 := (if p19$2 then BV64_SUB(BV64_ADD(BV64_SUB(v3$2, $c0.0$2), $c1.0$2), 1bv64) else $cond132$2);
    $cond132$1 := (if p20$1 then 31bv64 else $cond132$1);
    $cond132$2 := (if p20$2 then 31bv64 else $cond132$2);
    v16$1 := (if p18$1 then BV64_SLE($c3119.0$1, $cond132$1) else v16$1);
    v16$2 := (if p18$2 then BV64_SLE($c3119.0$2, $cond132$2) else v16$2);
    p21$1 := (if p18$1 && v16$1 then v16$1 else p21$1);
    p21$2 := (if p18$2 && v16$2 then v16$2 else p21$2);
    p18$1 := (if p18$1 && !v16$1 then v16$1 else p18$1);
    p18$2 := (if p18$2 && !v16$2 then v16$2 else p18$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$kernel7.shared_corr_0(p21$1, BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3119.0$1[32:0]), $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3119.0$1[32:0])]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$kernel7.shared_corr_0(p21$2, BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3119.0$2[32:0]), $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3119.0$2[32:0])]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel7.shared_corr_0"} true;
    v17$1 := (if p21$1 then $$kernel7.shared_corr_0[1bv1][BV32_ADD(BV32_MUL(v2$1, 32bv32), $c3119.0$1[32:0])] else v17$1);
    v17$2 := (if p21$2 then $$kernel7.shared_corr_0[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 32bv32), $c3119.0$2[32:0])] else v17$2);
    v18$1 := (if p21$1 then BV32_SGE($m, 2bv32) else v18$1);
    v18$2 := (if p21$2 then BV32_SGE($m, 2bv32) else v18$2);
    p23$1 := (if p21$1 && v18$1 then v18$1 else p23$1);
    p23$2 := (if p21$2 && v18$2 then v18$2 else p23$2);
    p22$1 := (if p21$1 && !v18$1 then !v18$1 else p22$1);
    p22$2 := (if p21$2 && !v18$2 then !v18$2 else p22$2);
    $cond146$1 := (if p22$1 then 1bv32 else $cond146$1);
    $cond146$2 := (if p22$2 then 1bv32 else $cond146$2);
    $cond146$1 := (if p23$1 then $m else $cond146$1);
    $cond146$2 := (if p23$2 then $m else $cond146$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$corr(p21$1, BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($cond146$1)), BV64_ADD($c0.0$1, $c3119.0$1))[32:0], v17$1, $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($cond146$1)), BV64_ADD($c0.0$1, $c3119.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(p21$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($cond146$2)), BV64_ADD($c0.0$2, $c3119.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$corr(p21$2, BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($cond146$2)), BV64_ADD($c0.0$2, $c3119.0$2))[32:0], v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$corr"} true;
    $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($cond146$1)), BV64_ADD($c0.0$1, $c3119.0$1))[32:0]] := (if p21$1 then v17$1 else $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$1, $c1.0$1), BV32_SEXT64($cond146$1)), BV64_ADD($c0.0$1, $c3119.0$1))[32:0]]);
    $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($cond146$2)), BV64_ADD($c0.0$2, $c3119.0$2))[32:0]] := (if p21$2 then v17$2 else $$corr[BV64_ADD(BV64_MUL(BV64_ADD(v3$2, $c1.0$2), BV32_SEXT64($cond146$2)), BV64_ADD($c0.0$2, $c3119.0$2))[32:0]]);
    $c3119.0$1 := (if p21$1 then BV64_ADD($c3119.0$1, 16bv64) else $c3119.0$1);
    $c3119.0$2 := (if p21$2 then BV64_ADD($c3119.0$2, 16bv64) else $c3119.0$2);
    p18$1 := (if p21$1 then true else p18$1);
    p18$2 := (if p21$2 then true else p18$2);
    goto $for.cond.120.backedge, $for.cond.120.tail;

  $for.cond.120.tail:
    assume !p18$1 && !p18$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $for.cond.27.backedge, $for.cond.27.tail;

  $for.cond.27.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192bv64) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192bv64) else $c0.0$2);
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

  $for.cond.27.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$for.cond.27_0;

  $for.cond.120.backedge:
    assume {:backedge} p18$1 || p18$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.120;

  $for.cond.82.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $for.cond.82;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel7.shared_corr_0, $$corr, _TRACKING;



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

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const _WATCHED_VALUE_$$corr: bv64;

procedure {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_READ_$$corr(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _READ_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_READ_$$corr(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$corr);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$corr: bool;

procedure {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$corr, _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _LOG_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then true else _WRITE_HAS_OCCURRED_$$corr);
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$corr);
    return;
}



procedure _CHECK_WRITE_$$corr(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$corr != _value);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$corr;



implementation {:inline 1} _LOG_ATOMIC_$$corr(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$corr := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$corr);
    return;
}



procedure _CHECK_ATOMIC_$$corr(_P: bool, _offset: bv32);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);
  requires {:source_name "corr"} {:array "$$corr"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$corr;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$corr(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$corr := (if _P && _WRITE_HAS_OCCURRED_$$corr && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$corr);
    return;
}



const _WATCHED_VALUE_$$kernel7.shared_corr_0: bv64;

procedure {:inline 1} _LOG_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then true else _READ_HAS_OCCURRED_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_READ_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0, _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then true else _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0);
    _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_WRITE_$$kernel7.shared_corr_0(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel7.shared_corr_0 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;



implementation {:inline 1} _LOG_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0);
    return;
}



procedure _CHECK_ATOMIC_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_corr_0"} {:array "$$kernel7.shared_corr_0"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0 := (if _P && _WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel7.shared_corr_0);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$corr;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$corr;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel7.shared_corr_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel7.shared_corr_0;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel7.shared_corr_0;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$corr;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$corr;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$corr;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel7.shared_corr_0;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;
