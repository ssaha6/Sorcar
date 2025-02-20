type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "path"} {:global} $$path: [bv32]bv32;

axiom {:array_info "$$path"} {:global} {:elem_width 32} {:source_name "path"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$path: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$path: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$path: bool;

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

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

procedure {:source_name "kernel0"} {:kernel} $kernel0($n: bv32, $c0: bv64, $c1: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV64_SLT($c0, BV32_SEXT64($n)) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV64_SLT($c1, BV32_SEXT64(BV32_SUB(BV32_MUL(2bv32, $n), 1bv32))) then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64(BV32_MUL(2bv32, $n)), BV64_ADD($c1, 2bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c1, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$path && !_WRITE_HAS_OCCURRED_$$path && !_ATOMIC_HAS_OCCURRED_$$path;
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
  modifies _READ_HAS_OCCURRED_$$path, _WRITE_HAS_OCCURRED_$$path, _WRITE_READ_BENIGN_FLAG_$$path, _WRITE_READ_BENIGN_FLAG_$$path;



implementation {:source_name "kernel0"} {:kernel} $kernel0($n: bv32, $c0: bv64, $c1: bv64)
{
  var $0$1: bv64;
  var $0$2: bv64;
  var $1$1: bv64;
  var $1$2: bv64;
  var $2$1: bv64;
  var $2$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $3$1: bv64;
  var $3$2: bv64;
  var $4$1: bv32;
  var $4$2: bv32;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
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
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
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


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64), 0bv64);
    v2$2 := BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64), 0bv64);
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
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p1$1 := (if !v2$1 then !v2$1 else p1$1);
    p1$2 := (if !v2$2 then !v2$2 else p1$2);
    $0$1 := (if p0$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64)), 1048576bv64), 1bv64), 1048576bv64)) else $0$1);
    $0$2 := (if p0$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64)), 1048576bv64), 1bv64), 1048576bv64)) else $0$2);
    $0$1 := (if p1$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64), 1048576bv64) else $0$1);
    $0$2 := (if p1$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64), 1048576bv64) else $0$2);
    v3$1 := BV64_SGT(BV64_MUL(32bv64, v0$1), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, $0$1)), 1048576bv64));
    v3$2 := BV64_SGT(BV64_MUL(32bv64, v0$2), BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, $0$2)), 1048576bv64));
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    p3$1 := (if !v3$1 then !v3$1 else p3$1);
    p3$2 := (if !v3$2 then !v3$2 else p3$2);
    $1$1 := (if p2$1 then BV64_MUL(32bv64, v0$1) else $1$1);
    $1$2 := (if p2$2 then BV64_MUL(32bv64, v0$2) else $1$2);
    v4$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64), 0bv64) else v4$1);
    v4$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64), 0bv64) else v4$2);
    p4$1 := (if p3$1 && v4$1 then v4$1 else p4$1);
    p4$2 := (if p3$2 && v4$2 then v4$2 else p4$2);
    p5$1 := (if p3$1 && !v4$1 then !v4$1 else p5$1);
    p5$2 := (if p3$2 && !v4$2 then !v4$2 else p5$2);
    $2$1 := (if p4$1 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64)), 1048576bv64), 1bv64), 1048576bv64)) else $2$1);
    $2$2 := (if p4$2 then BV64_SUB(0bv64, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64)), 1048576bv64), 1bv64), 1048576bv64)) else $2$2);
    $2$1 := (if p5$1 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$1)), $c1), 31bv64), 1048576bv64) else $2$1);
    $2$2 := (if p5$2 then BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(BV32_SEXT64(BV32_SUB(0bv32, $n)), BV64_MUL(32bv64, v0$2)), $c1), 31bv64), 1048576bv64) else $2$2);
    $1$1 := (if p3$1 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, $2$1)), 1048576bv64) else $1$1);
    $1$2 := (if p3$2 then BV64_ADD(BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, $2$2)), 1048576bv64) else $1$2);
    $c2.0$1 := $1$1;
    $c2.0$2 := $1$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$path ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$path ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV64_ADD(0bv64, $c0)[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), BV64_ADD(0bv64, $c0)[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b7 ==> BV64_SLE($c2.0$1, $3$1) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b7 ==> BV64_SLE($c2.0$2, $3$2) ==> p6$2;
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b6 ==> BV64_UGE($c2.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b6 ==> BV64_UGE($c2.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b5 ==> BV64_ULE($c2.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b5 ==> BV64_ULE($c2.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b4 ==> BV64_SGE($c2.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b4 ==> BV64_SGE($c2.0$2, $1$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b3 ==> BV64_SLE($c2.0$1, $1$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b3 ==> BV64_SLE($c2.0$2, $1$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b2 ==> BV64_SLE(0bv64, $3$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b2 ==> BV64_SLE(0bv64, $3$2);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b1 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b1 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), $1$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), $1$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$path ==> BV32_OR(BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c1 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))), BV64_ADD($c1, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c1, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_ADD($n, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n))), BV64_ADD($c1, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c1, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n))), $c1), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$path ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c1 == BV32_ZEXT64(BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n), $n), BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 16} p6$1 ==> true;
    v5$1 := (if p6$1 then BV64_SLT(BV32_SEXT64(BV32_SUB($n, 1bv32)), $c1) else v5$1);
    v5$2 := (if p6$2 then BV64_SLT(BV32_SEXT64(BV32_SUB($n, 1bv32)), $c1) else v5$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
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
    p18$1 := false;
    p18$2 := false;
    p8$1 := (if p6$1 && v5$1 then v5$1 else p8$1);
    p8$2 := (if p6$2 && v5$2 then v5$2 else p8$2);
    p7$1 := (if p6$1 && !v5$1 then !v5$1 else p7$1);
    p7$2 := (if p6$2 && !v5$2 then !v5$2 else p7$2);
    $3$1 := (if p7$1 then $c1 else $3$1);
    $3$2 := (if p7$2 then $c1 else $3$2);
    $3$1 := (if p8$1 then BV32_SEXT64(BV32_SUB($n, 1bv32)) else $3$1);
    $3$2 := (if p8$2 then BV32_SEXT64(BV32_SUB($n, 1bv32)) else $3$2);
    v6$1 := (if p6$1 then BV64_SLE($c2.0$1, $3$1) else v6$1);
    v6$2 := (if p6$2 then BV64_SLE($c2.0$2, $3$2) else v6$2);
    p9$1 := (if p6$1 && v6$1 then v6$1 else p9$1);
    p9$2 := (if p6$2 && v6$2 then v6$2 else p9$2);
    p6$1 := (if p6$1 && !v6$1 then v6$1 else p6$1);
    p6$2 := (if p6$2 && !v6$2 then v6$2 else p6$2);
    v7$1 := (if p9$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c2.0$1), 1bv64)) else v7$1);
    v7$2 := (if p9$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c2.0$2), 1bv64)) else v7$2);
    p11$1 := (if p9$1 && v7$1 then v7$1 else p11$1);
    p11$2 := (if p9$2 && v7$2 then v7$2 else p11$2);
    v8$1 := (if p11$1 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), v1$1), $c2.0$1), BV64_ADD($c1, 1bv64)) else v8$1);
    v8$2 := (if p11$2 then BV64_SGE(BV64_ADD(BV64_ADD(BV32_SEXT64($n), v1$2), $c2.0$2), BV64_ADD($c1, 1bv64)) else v8$2);
    p13$1 := (if p11$1 && v8$1 then v8$1 else p13$1);
    p13$2 := (if p11$2 && v8$2 then v8$2 else p13$2);
    v9$1 := (if p13$1 then BV64_SGE($c1, BV64_ADD(v1$1, $c2.0$1)) else v9$1);
    v9$2 := (if p13$2 then BV64_SGE($c1, BV64_ADD(v1$2, $c2.0$2)) else v9$2);
    p15$1 := (if p13$1 && v9$1 then v9$1 else p15$1);
    p15$2 := (if p13$2 && v9$2 then v9$2 else p15$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$path(p15$1, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$path(p15$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v10$1 := (if p15$1 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]] else v10$1);
    v10$2 := (if p15$2 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]] else v10$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$path(p15$1, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$path(p15$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v11$1 := (if p15$1 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0]] else v11$1);
    v11$2 := (if p15$2 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0]] else v11$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$path(p15$1, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0], $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$path(p15$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0], $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v12$1 := (if p15$1 then $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]] else v12$1);
    v12$2 := (if p15$2 then $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]] else v12$2);
    v13$1 := (if p15$1 then BV32_SLT(v10$1, BV32_ADD(v11$1, v12$1)) else v13$1);
    v13$2 := (if p15$2 then BV32_SLT(v10$2, BV32_ADD(v11$2, v12$2)) else v13$2);
    p17$1 := (if p15$1 && v13$1 then v13$1 else p17$1);
    p17$2 := (if p15$2 && v13$2 then v13$2 else p17$2);
    p16$1 := (if p15$1 && !v13$1 then !v13$1 else p16$1);
    p16$2 := (if p15$2 && !v13$2 then !v13$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$path(p16$1, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$path(p16$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v15$1 := (if p16$1 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), $c0)[32:0]] else v15$1);
    v15$2 := (if p16$2 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), $c0)[32:0]] else v15$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$path(p16$1, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0], $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$path(p16$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0], $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v16$1 := (if p16$1 then $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]] else v16$1);
    v16$2 := (if p16$2 then $$path[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]] else v16$2);
    $4$1 := (if p16$1 then BV32_ADD(v15$1, v16$1) else $4$1);
    $4$2 := (if p16$2 then BV32_ADD(v15$2, v16$2) else $4$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$path(p17$1, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$path(p17$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0], $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$path"} true;
    v14$1 := (if p17$1 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]] else v14$1);
    v14$2 := (if p17$2 then $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]] else v14$2);
    $4$1 := (if p17$1 then v14$1 else $4$1);
    $4$2 := (if p17$2 then v14$2 else $4$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$path(p15$1, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0], $4$1, $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$path(p15$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$path(p15$2, BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0], $4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$path"} true;
    $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]] := (if p15$1 then $4$1 else $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$1), $c1), $c2.0$1), BV32_SEXT64($n)), BV64_ADD(v1$1, $c2.0$1))[32:0]]);
    $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]] := (if p15$2 then $4$2 else $$path[BV64_ADD(BV64_MUL(BV64_SUB(BV64_ADD(BV64_SUB(0bv64, v1$2), $c1), $c2.0$2), BV32_SEXT64($n)), BV64_ADD(v1$2, $c2.0$2))[32:0]]);
    $c2.0$1 := (if p9$1 then BV64_ADD($c2.0$1, 1048576bv64) else $c2.0$1);
    $c2.0$2 := (if p9$2 then BV64_ADD($c2.0$2, 1048576bv64) else $c2.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p6$1 && !p6$2;
    return;

  $10.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $10;
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

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const _WATCHED_VALUE_$$path: bv32;

procedure {:inline 1} _LOG_READ_$$path(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$path;



implementation {:inline 1} _LOG_READ_$$path(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$path := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$path == _value then true else _READ_HAS_OCCURRED_$$path);
    return;
}



procedure _CHECK_READ_$$path(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "path"} {:array "$$path"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$path);
  requires {:source_name "path"} {:array "$$path"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$path: bool;

procedure {:inline 1} _LOG_WRITE_$$path(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$path, _WRITE_READ_BENIGN_FLAG_$$path;



implementation {:inline 1} _LOG_WRITE_$$path(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$path := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$path == _value then true else _WRITE_HAS_OCCURRED_$$path);
    _WRITE_READ_BENIGN_FLAG_$$path := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$path == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$path);
    return;
}



procedure _CHECK_WRITE_$$path(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "path"} {:array "$$path"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$path != _value);
  requires {:source_name "path"} {:array "$$path"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$path != _value);
  requires {:source_name "path"} {:array "$$path"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$path(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$path;



implementation {:inline 1} _LOG_ATOMIC_$$path(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$path := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$path);
    return;
}



procedure _CHECK_ATOMIC_$$path(_P: bool, _offset: bv32);
  requires {:source_name "path"} {:array "$$path"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset);
  requires {:source_name "path"} {:array "$$path"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$path(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$path;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$path(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$path := (if _P && _WRITE_HAS_OCCURRED_$$path && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$path);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;
