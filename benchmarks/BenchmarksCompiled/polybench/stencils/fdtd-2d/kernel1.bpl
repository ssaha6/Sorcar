type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "ey"} {:global} $$ey: [bv32]bv64;

axiom {:array_info "$$ey"} {:global} {:elem_width 64} {:source_name "ey"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ey: bool;

axiom {:array_info "$$hz"} {:global} {:elem_width 64} {:source_name "hz"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$hz: bool;

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

function FADD64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

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

procedure {:source_name "kernel1"} {:kernel} $kernel1($ny: bv32, $tmax: bv32, $nx: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $ny == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $tmax == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $nx == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ny, 1bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($ny, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($tmax, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SGE($nx, 2bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($nx, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tmax), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$ey && !_WRITE_HAS_OCCURRED_$$ey && !_ATOMIC_HAS_OCCURRED_$$ey;
  requires !_READ_HAS_OCCURRED_$$hz && !_WRITE_HAS_OCCURRED_$$hz && !_ATOMIC_HAS_OCCURRED_$$hz;
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
  modifies _READ_HAS_OCCURRED_$$ey, _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:source_name "kernel1"} {:kernel} $kernel1($ny: bv32, $tmax: bv32, $nx: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $cond$1: bv64;
  var $cond$2: bv64;
  var v10$1: bv64;
  var v10$2: bv64;
  var v12$1: bv64;
  var v12$2: bv64;
  var v11$1: bv64;
  var v11$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v3$1: bv64;
  var v3$2: bv64;
  var v2$1: bv64;
  var v2$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v7$1: bool;
  var v7$2: bool;
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
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.41: bool;
  var _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.41: bool;
  var _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.46: bool;
  var _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.46: bool;


  $entry:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    $c1.0$1 := BV64_MUL(32bv64, v0$1);
    $c1.0$2 := BV64_MUL(32bv64, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b39 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b38 ==> _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c1.0$1, BV32_SEXT64($nx)) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c1.0$2, BV32_SEXT64($nx)) else v4$2);
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
    p12$1 := false;
    p12$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    v5$1 := (if p1$1 then BV64_SGE(BV64_ADD(v2$1, $c1.0$1), 1bv64) else v5$1);
    v5$2 := (if p1$2 then BV64_SGE(BV64_ADD(v2$2, $c1.0$2), 1bv64) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    v6$1 := (if p3$1 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$1, $c1.0$1), 1bv64)) else v6$1);
    v6$2 := (if p3$2 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$2, $c1.0$2), 1bv64)) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    $c2.0$1 := (if p5$1 then BV64_MUL(32bv64, v1$1) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_MUL(32bv64, v1$2) else $c2.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.41 := _READ_HAS_OCCURRED_$$ey;
    _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.41 := _WRITE_HAS_OCCURRED_$$ey;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.41;

  $for.cond.41:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b43 ==> !p5$1 ==> _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.41 == _WRITE_HAS_OCCURRED_$$ey;
    assert {:tag "disabledMaintainsInstrumentation"} _b42 ==> !p5$1 ==> _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.41 == _READ_HAS_OCCURRED_$$ey;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b41 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b40 ==> _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b14 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny)) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b14 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny)) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b13 ==> p6$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b13 ==> p6$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b12 ==> BV64_UGE($c2.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b12 ==> BV64_UGE($c2.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b11 ==> BV64_ULE($c2.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b11 ==> BV64_ULE($c2.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b10 ==> BV64_SGE($c2.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b10 ==> BV64_SGE($c2.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b9 ==> BV64_SLE($c2.0$1, BV64_MUL(32bv64, v1$1));
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b9 ==> BV64_SLE($c2.0$2, BV64_MUL(32bv64, v1$2));
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b8 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b8 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b7 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b7 ==> BV64_AND(BV64_SUB(8192bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(8192bv64, 1bv64), BV64_MUL(32bv64, v1$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLT($c2.0$1, BV32_SEXT64($ny)) else v7$1);
    v7$2 := (if p6$2 then BV64_SLT($c2.0$2, BV32_SEXT64($ny)) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p7$1 := (if p6$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p6$2 && v7$2 then v7$2 else p7$2);
    p6$1 := (if p6$1 && !v7$1 then v7$1 else p6$1);
    p6$2 := (if p6$2 && !v7$2 then v7$2 else p6$2);
    $c4.0$1 := (if p7$1 then v3$1 else $c4.0$1);
    $c4.0$2 := (if p7$2 then v3$2 else $c4.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.46 := _READ_HAS_OCCURRED_$$ey;
    _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.46 := _WRITE_HAS_OCCURRED_$$ey;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.46;

  $for.cond.46:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b47 ==> !p7$1 ==> _WRITE_HAS_OCCURRED_$$ey$ghost$$for.cond.46 == _WRITE_HAS_OCCURRED_$$ey;
    assert {:tag "disabledMaintainsInstrumentation"} _b46 ==> !p7$1 ==> _READ_HAS_OCCURRED_$$ey$ghost$$for.cond.46 == _READ_HAS_OCCURRED_$$ey;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b45 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b44 ==> _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c2.0$1, BV32_SEXT64($ny));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _WRITE_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c2.0$1, BV32_SEXT64($ny));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$ey ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b29 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny)) && BV64_SLE($c4.0$1, $cond$1) ==> p8$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b29 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny)) && BV64_SLE($c4.0$2, $cond$2) ==> p8$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p8$1 ==> _b28 ==> p8$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SLT($c2.0$1, BV32_SEXT64($ny));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p8$2 ==> _b28 ==> p8$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64($nx)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SLT($c2.0$2, BV32_SEXT64($ny));
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b27 ==> BV64_UGE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b27 ==> BV64_UGE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b26 ==> BV64_ULE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b26 ==> BV64_ULE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b25 ==> BV64_SGE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b25 ==> BV64_SGE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b24 ==> BV64_SLE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b24 ==> BV64_SLE($c4.0$2, v3$2);
    assert {:tag "guardNonNeg"} {:thread 1} p8$1 ==> _b23 ==> BV64_SLE(0bv64, $cond$1);
    assert {:tag "guardNonNeg"} {:thread 2} p8$2 ==> _b23 ==> BV64_SLE(0bv64, $cond$2);
    assert {:tag "guardNonNeg"} {:thread 1} p8$1 ==> _b22 ==> BV64_SLE(0bv64, $c4.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p8$2 ==> _b22 ==> BV64_SLE(0bv64, $c4.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p8$1 ==> _b21 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$1) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p8$2 ==> _b21 ==> BV64_AND(BV64_SUB(16bv64, 1bv64), $c4.0$2) == BV64_AND(BV64_SUB(16bv64, 1bv64), v3$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_ADD(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), $nx))), 8191bv64), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32)), BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_y$1)), 31bv64), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), 8192bv32))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny), (if BV32_SGE($nx, 2bv32) then $nx else 1bv32)))), 8192bv64) == 0bv64 then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $ny))), 16bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 14} p8$1 ==> true;
    v8$1 := (if p8$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 1bv64)) else v8$1);
    v8$2 := (if p8$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 1bv64)) else v8$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p10$1 := (if p8$1 && v8$1 then v8$1 else p10$1);
    p10$2 := (if p8$2 && v8$2 then v8$2 else p10$2);
    p9$1 := (if p8$1 && !v8$1 then !v8$1 else p9$1);
    p9$2 := (if p8$2 && !v8$2 then !v8$2 else p9$2);
    $cond$1 := (if p9$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 1bv64) else $cond$1);
    $cond$2 := (if p9$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 1bv64) else $cond$2);
    $cond$1 := (if p10$1 then 31bv64 else $cond$1);
    $cond$2 := (if p10$2 then 31bv64 else $cond$2);
    v9$1 := (if p8$1 then BV64_SLE($c4.0$1, $cond$1) else v9$1);
    v9$2 := (if p8$2 then BV64_SLE($c4.0$2, $cond$2) else v9$2);
    p11$1 := (if p8$1 && v9$1 then v9$1 else p11$1);
    p11$2 := (if p8$2 && v9$2 then v9$2 else p11$2);
    p8$1 := (if p8$1 && !v9$1 then v9$1 else p8$1);
    p8$2 := (if p8$2 && !v9$2 then v9$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$ey(p11$1, BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ey"} true;
    v10$1 := (if p11$1 then $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] else v10$1);
    v10$2 := (if p11$2 then $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] else v10$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v11$1 := (if p11$1 then _HAVOC_bv64$1 else v11$1);
    v11$2 := (if p11$2 then _HAVOC_bv64$2 else v11$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v12$1 := (if p11$1 then _HAVOC_bv64$1 else v12$1);
    v12$2 := (if p11$2 then _HAVOC_bv64$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$ey(p11$1, BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$1, v12$1)), v10$1), $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$ey(p11$2, BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$2, v12$2)), v10$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ey"} true;
    $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] := (if p11$1 then FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$1, v12$1)), v10$1) else $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] := (if p11$2 then FADD64(FMUL64(13826050856027422720bv64, FSUB64(v11$2, v12$2)), v10$2) else $$ey[BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    $c4.0$1 := (if p11$1 then BV64_ADD($c4.0$1, 16bv64) else $c4.0$1);
    $c4.0$2 := (if p11$2 then BV64_ADD($c4.0$2, 16bv64) else $c4.0$2);
    p8$1 := (if p11$1 then true else p8$1);
    p8$2 := (if p11$2 then true else p8$2);
    goto $for.cond.46.backedge, $for.cond.46.tail;

  $for.cond.46.tail:
    assume !p8$1 && !p8$2;
    $c2.0$1 := (if p7$1 then BV64_ADD($c2.0$1, 8192bv64) else $c2.0$1);
    $c2.0$2 := (if p7$2 then BV64_ADD($c2.0$2, 8192bv64) else $c2.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $for.cond.41.backedge, $for.cond.41.tail;

  $for.cond.41.tail:
    assume !p6$1 && !p6$2;
    $c1.0$1 := (if p1$1 then BV64_ADD($c1.0$1, 8192bv64) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD($c1.0$2, 8192bv64) else $c1.0$2);
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

  $for.cond.41.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.41;

  $for.cond.46.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.46;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

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

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const _WATCHED_VALUE_$$ey: bv64;

procedure {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _READ_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_READ_$$ey(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ey);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ey: bool;

procedure {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _WRITE_HAS_OCCURRED_$$ey);
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



procedure _CHECK_WRITE_$$ey(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_ATOMIC_$$ey(_P: bool, _offset: bv32);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



const _WATCHED_VALUE_$$hz: bv64;

procedure {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _READ_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_READ_$$hz(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$hz);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$hz: bool;

procedure {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$hz, _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _WRITE_HAS_OCCURRED_$$hz);
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



procedure _CHECK_WRITE_$$hz(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_ATOMIC_$$hz(_P: bool, _offset: bv32);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

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
