type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_C"} {:global} $$d_C: [int]int;

axiom {:array_info "$$d_C"} {:global} {:elem_width 32} {:source_name "d_C"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_C: bool;

axiom {:array_info "$$d_A"} {:global} {:elem_width 32} {:source_name "d_A"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_A: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_A: bool;

axiom {:array_info "$$d_B"} {:global} {:elem_width 32} {:source_name "d_B"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_B: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_B: bool;

var {:source_name "accumResult"} {:group_shared} $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: [bv1][int]int;

axiom {:array_info "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:group_shared} {:elem_width 32} {:source_name "accumResult"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

const _WATCHED_OFFSET: int;

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

function BV32_ASHR(int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

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

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "scalarProdGPU"} {:kernel} $_Z13scalarProdGPUPfS_S_ii($vectorN: int, $elementN: int);
  requires {:sourceloc_num 0} {:thread 1} (if $vectorN == 65536 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $elementN == 65536 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_C && !_WRITE_HAS_OCCURRED_$$d_C && !_ATOMIC_HAS_OCCURRED_$$d_C;
  requires !_READ_HAS_OCCURRED_$$d_A && !_WRITE_HAS_OCCURRED_$$d_A && !_ATOMIC_HAS_OCCURRED_$$d_A;
  requires !_READ_HAS_OCCURRED_$$d_B && !_WRITE_HAS_OCCURRED_$$d_B && !_ATOMIC_HAS_OCCURRED_$$d_B;
  requires !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
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
  modifies $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, $$d_C, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_HAS_OCCURRED_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:source_name "scalarProdGPU"} {:kernel} $_Z13scalarProdGPUPfS_S_ii($vectorN: int, $elementN: int)
{
  var $vec.0$1: int;
  var $vec.0$2: int;
  var $iAccum.0$1: int;
  var $iAccum.0$2: int;
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $pos.0$1: int;
  var $pos.0$2: int;
  var $stride.0$1: int;
  var $stride.0$2: int;
  var $iAccum1.0$1: int;
  var $iAccum1.0$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3: bool;
  var _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0: bool;
  var _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13: bool;


  $0:
    $vec.0$1 := group_id_x$1;
    $vec.0$2 := group_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b70 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b69 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET == 0 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b68 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b67 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "nowrite"} _b66 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "noread"} _b65 ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b64 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b63 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b62 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b61 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b60 ==> _WRITE_HAS_OCCURRED_$$d_C ==> _WATCHED_OFFSET mod num_groups_x == group_id_x$1 mod num_groups_x;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b59 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b58 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C;
    assert {:tag "nowrite"} _b57 ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> v1$1 == v1$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> v0$1 == v0$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> $iAccum1.0$1 == $iAccum1.0$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> $stride.0$1 == $stride.0$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> $pos.0$1 == $pos.0$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> $sum.0$1 == $sum.0$2;
    assert {:tag "predicatedEquality"} _b40 ==> p0$1 && p0$2 ==> $iAccum.0$1 == $iAccum.0$2;
    assert {:tag "predicatedEquality"} _b39 ==> p0$1 && p0$2 ==> $vec.0$1 == $vec.0$2;
    assert {:tag "loopPredicateEquality"} _b38 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b37 ==> p0$1 == p0$2;
    assert {:tag "pow2NotZero"} _b36 ==> $stride.0$2 != 0;
    assert {:tag "pow2"} _b35 ==> $stride.0$2 == 0 || BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b34 ==> $stride.0$1 != 0;
    assert {:tag "pow2"} _b33 ==> $stride.0$1 == 0 || BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($vec.0$1, $vectorN) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($vec.0$2, $vectorN) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($vec.0$1, group_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($vec.0$2, group_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($vec.0$1, group_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($vec.0$2, group_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($vec.0$1, group_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($vec.0$2, group_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($vec.0$1, group_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($vec.0$2, group_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $vec.0$1 mod num_groups_x == group_id_x$1 mod num_groups_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $vec.0$2 mod num_groups_x == group_id_x$2 mod num_groups_x;
    assert {:block_sourceloc} {:sourceloc_num 3} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_C ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v0$1 := (if p0$1 then BV32_SLT($vec.0$1, $vectorN) else v0$1);
    v0$2 := (if p0$2 then BV32_SLT($vec.0$2, $vectorN) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p6$1 := false;
    p6$2 := false;
    p12$1 := false;
    p12$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    v1$1 := (if p1$1 then BV32_MUL($elementN, $vec.0$1) else v1$1);
    v1$2 := (if p1$2 then BV32_MUL($elementN, $vec.0$2) else v1$2);
    $iAccum.0$1 := (if p1$1 then local_id_x$1 else $iAccum.0$1);
    $iAccum.0$2 := (if p1$2 then local_id_x$2 else $iAccum.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b89 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$3 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b88 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b87 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b86 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b85 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b84 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b83 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b82 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b81 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b80 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C;
    assert {:tag "predicatedEquality"} _b79 ==> p2$1 && p2$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b78 ==> p2$1 && p2$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b77 ==> p2$1 && p2$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b76 ==> p2$1 && p2$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b75 ==> p2$1 && p2$2 ==> $pos.0$1 == $pos.0$2;
    assert {:tag "predicatedEquality"} _b74 ==> p2$1 && p2$2 ==> $sum.0$1 == $sum.0$2;
    assert {:tag "predicatedEquality"} _b73 ==> p2$1 && p2$2 ==> $iAccum.0$1 == $iAccum.0$2;
    assert {:tag "loopPredicateEquality"} _b72 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b71 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV32_SLT($vec.0$1, $vectorN) && BV32_SLT($iAccum.0$1, 1024) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV32_SLT($vec.0$2, $vectorN) && BV32_SLT($iAccum.0$2, 1024) ==> p2$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p2$1 ==> _b11 ==> p2$1 ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p2$2 ==> _b11 ==> p2$2 ==> BV32_SLT($vec.0$2, $vectorN);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b10 ==> BV32_UGE($iAccum.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b10 ==> BV32_UGE($iAccum.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b9 ==> BV32_ULE($iAccum.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b9 ==> BV32_ULE($iAccum.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b8 ==> BV32_SGE($iAccum.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b8 ==> BV32_SGE($iAccum.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b7 ==> BV32_SLE($iAccum.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b7 ==> BV32_SLE($iAccum.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b6 ==> $iAccum.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b6 ==> $iAccum.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v2$1 := (if p2$1 then BV32_SLT($iAccum.0$1, 1024) else v2$1);
    v2$2 := (if p2$2 then BV32_SLT($iAccum.0$2, 1024) else v2$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p3$1 := (if p2$1 && v2$1 then v2$1 else p3$1);
    p3$2 := (if p2$2 && v2$2 then v2$2 else p3$2);
    p2$1 := (if p2$1 && !v2$1 then v2$1 else p2$1);
    p2$2 := (if p2$2 && !v2$2 then v2$2 else p2$2);
    $sum.0$1, $pos.0$1 := (if p3$1 then 0 else $sum.0$1), (if p3$1 then BV32_ADD(v1$1, $iAccum.0$1) else $pos.0$1);
    $sum.0$2, $pos.0$2 := (if p3$2 then 0 else $sum.0$2), (if p3$2 then BV32_ADD(v1$2, $iAccum.0$2) else $pos.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_4"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 10} p4$1 ==> true;
    v3$1 := (if p4$1 then BV32_SLT($pos.0$1, BV32_ADD(v1$1, $elementN)) else v3$1);
    v3$2 := (if p4$2 then BV32_SLT($pos.0$2, BV32_ADD(v1$2, $elementN)) else v3$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v3$1 then v3$1 else p5$1);
    p5$2 := (if p4$2 && v3$2 then v3$2 else p5$2);
    p4$1 := (if p4$1 && !v3$1 then v3$1 else p4$1);
    p4$2 := (if p4$2 && !v3$2 then v3$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p5$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p5$2 then _HAVOC_int$2 else v4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p5$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p5$2 then _HAVOC_int$2 else v5$2);
    $sum.0$1, $pos.0$1 := (if p5$1 then FADD32($sum.0$1, FMUL32(v4$1, v5$1)) else $sum.0$1), (if p5$1 then BV32_ADD($pos.0$1, 1024) else $pos.0$1);
    $sum.0$2, $pos.0$2 := (if p5$2 then FADD32($sum.0$2, FMUL32(v4$2, v5$2)) else $sum.0$2), (if p5$2 then BV32_ADD($pos.0$2, 1024) else $pos.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p3$1, p3$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$1, $iAccum.0$1, $sum.0$1, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$2, $iAccum.0$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p3$2, $iAccum.0$2, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p3$1, p3$2);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1] := (if p3$1 then $sum.0$1 else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum.0$1]);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum.0$2] := (if p3$2 then $sum.0$2 else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum.0$2]);
    $iAccum.0$1 := (if p3$1 then BV32_ADD($iAccum.0$1, group_size_x) else $iAccum.0$1);
    $iAccum.0$2 := (if p3$2 then BV32_ADD($iAccum.0$2, group_size_x) else $iAccum.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $stride.0$1 := (if p1$1 then 512 else $stride.0$1);
    $stride.0$2 := (if p1$2 then 512 else $stride.0$2);
    p6$1 := (if p1$1 then true else p6$1);
    p6$2 := (if p1$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 := _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$11_0;

  __partitioned_block_$11_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b115 ==> !p1$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "disabledMaintainsInstrumentation"} _b114 ==> !p1$1 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$__partitioned_block_$11_0 == _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b113 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b112 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b111 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b110 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "nowrite"} _b109 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "noread"} _b108 ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b107 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b106 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b105 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b104 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b103 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b102 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C;
    assert {:tag "predicatedEquality"} _b101 ==> p6$1 && p6$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b100 ==> p6$1 && p6$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b99 ==> p6$1 && p6$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b98 ==> p6$1 && p6$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b97 ==> p6$1 && p6$2 ==> $iAccum1.0$1 == $iAccum1.0$2;
    assert {:tag "predicatedEquality"} _b96 ==> p6$1 && p6$2 ==> $stride.0$1 == $stride.0$2;
    assert {:tag "loopPredicateEquality"} _b95 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2;
    assert {:tag "loopPredicateEquality"} _b94 ==> p6$1 == p6$2;
    assert {:tag "pow2NotZero"} _b93 ==> $stride.0$2 != 0;
    assert {:tag "pow2"} _b92 ==> $stride.0$2 == 0 || BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b91 ==> $stride.0$1 != 0;
    assert {:tag "pow2"} _b90 ==> $stride.0$1 == 0 || BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p1"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b19 ==> BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b19 ==> BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b18 ==> p6$1 ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b18 ==> p6$2 ==> BV32_SLT($vec.0$2, $vectorN);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b17 ==> BV32_UGE($stride.0$1, 512);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b17 ==> BV32_UGE($stride.0$2, 512);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b16 ==> BV32_ULE($stride.0$1, 512);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b16 ==> BV32_ULE($stride.0$2, 512);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b15 ==> BV32_SGE($stride.0$1, 512);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b15 ==> BV32_SGE($stride.0$2, 512);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b14 ==> BV32_SLE($stride.0$1, 512);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b14 ==> BV32_SLE($stride.0$2, 512);
    assert {:block_sourceloc} {:sourceloc_num 19} p6$1 ==> true;
    assert {:originated_from_invariant} {:sourceloc_num 20} {:thread 1} p6$1 ==> (if BV32_AND($stride.0$1, BV32_SUB($stride.0$1, 1)) == 0 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 20} {:thread 2} p6$2 ==> (if BV32_AND($stride.0$2, BV32_SUB($stride.0$2, 1)) == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 21} {:thread 1} (if BV32_SLT($vec.0$1, $vectorN) ==> BV32_AND(BV1_ZEXT32((if BV32_SLE(0, $stride.0$1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($stride.0$1, 512) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 21} {:thread 2} (if BV32_SLT($vec.0$2, $vectorN) ==> BV32_AND(BV1_ZEXT32((if BV32_SLE(0, $stride.0$2) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($stride.0$2, 512) then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 22} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 23} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v6$1 := (if p6$1 then BV32_SGT($stride.0$1, 0) else v6$1);
    v6$2 := (if p6$2 then BV32_SGT($stride.0$2, 0) else v6$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p7$1 := (if p6$1 && v6$1 then v6$1 else p7$1);
    p7$2 := (if p6$2 && v6$2 then v6$2 else p7$2);
    p6$1 := (if p6$1 && !v6$1 then v6$1 else p6$1);
    p6$2 := (if p6$2 && !v6$2 then v6$2 else p6$2);
    goto __partitioned_block_$11_1;

  __partitioned_block_$11_1:
    call {:sourceloc_num 25} $bugle_barrier_duplicated_0(-1, -1, p7$1, p7$2);
    $iAccum1.0$1 := (if p7$1 then local_id_x$1 else $iAccum1.0$1);
    $iAccum1.0$2 := (if p7$2 then local_id_x$2 else $iAccum1.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 := _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 := _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b133 ==> !p7$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 == _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "disabledMaintainsInstrumentation"} _b132 ==> !p7$1 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult$ghost$$13 == _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b131 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b130 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b129 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b128 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b127 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b126 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_B;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b125 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b124 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_A;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b123 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b122 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$d_C;
    assert {:tag "predicatedEquality"} _b121 ==> p8$1 && p8$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b120 ==> p8$1 && p8$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b119 ==> p8$1 && p8$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b118 ==> p8$1 && p8$2 ==> $iAccum1.0$1 == $iAccum1.0$2;
    assert {:tag "loopPredicateEquality"} _b117 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p8$1 == p8$2;
    assert {:tag "loopPredicateEquality"} _b116 ==> p8$1 == p8$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SGT($stride.0$1, 0);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b30 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SGT($stride.0$1, 0);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_SLT($vec.0$1, $vectorN);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b28 ==> BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0) && BV32_SLT($iAccum1.0$1, $stride.0$1) ==> p8$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b28 ==> BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0) && BV32_SLT($iAccum1.0$2, $stride.0$2) ==> p8$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p8$1 ==> _b27 ==> p8$1 ==> BV32_SLT($vec.0$1, $vectorN) && BV32_SGT($stride.0$1, 0);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p8$2 ==> _b27 ==> p8$2 ==> BV32_SLT($vec.0$2, $vectorN) && BV32_SGT($stride.0$2, 0);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b26 ==> BV32_UGE($iAccum1.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b26 ==> BV32_UGE($iAccum1.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b25 ==> BV32_ULE($iAccum1.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b25 ==> BV32_ULE($iAccum1.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b24 ==> BV32_SGE($iAccum1.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b24 ==> BV32_SGE($iAccum1.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b23 ==> BV32_SLE($iAccum1.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b23 ==> BV32_SLE($iAccum1.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p8$1 ==> _b22 ==> $iAccum1.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p8$2 ==> _b22 ==> $iAccum1.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 26} p8$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 27} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_OR(BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), group_size_x) == local_id_x$1 then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), $stride.0$1), group_size_x) == local_id_x$1 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 28} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), BV32_MUL(2, $stride.0$1)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 29} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(local_id_x$1, $stride.0$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 30} {:thread 1} (if BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32((if $stride.0$1 != 0 then 1 else 0))) != 0 ==> _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult ==> BV32_ULT(local_id_x$1, $stride.0$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 31} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> local_id_x$1 == 0 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 32} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLT($vec.0$1, $vectorN) then 1 else 0)), BV1_ZEXT32(BV1_XOR((if $stride.0$1 != 0 then 1 else 0), -1))), BV1_ZEXT32((if _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult then 1 else 0))) != 0 ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 0 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == 1 then 1 else 0))) != 0 then 1 else 0) != 0;
    v7$1 := (if p8$1 then BV32_SLT($iAccum1.0$1, $stride.0$1) else v7$1);
    v7$2 := (if p8$2 then BV32_SLT($iAccum1.0$2, $stride.0$2) else v7$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v7$1 then v7$1 else p9$1);
    p9$2 := (if p8$2 && v7$2 then v7$2 else p9$2);
    p8$1 := (if p8$1 && !v7$1 then v7$1 else p8$1);
    p8$2 := (if p8$2 && !v7$2 then v7$2 else p8$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, BV32_ADD($stride.0$1, $iAccum1.0$1), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][BV32_ADD($stride.0$1, $iAccum1.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, BV32_ADD($stride.0$2, $iAccum1.0$2), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($stride.0$2, $iAccum1.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    v8$1 := (if p9$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][BV32_ADD($stride.0$1, $iAccum1.0$1)] else v8$1);
    v8$2 := (if p9$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD($stride.0$2, $iAccum1.0$2)] else v8$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, $iAccum1.0$1, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p9$1, p9$2);
    v9$1 := (if p9$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1] else v9$1);
    v9$2 := (if p9$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2] else v9$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$1, $iAccum1.0$1, FADD32(v9$1, v8$1), $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p9$2, $iAccum1.0$2, FADD32(v9$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(p9$1, p9$2);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1] := (if p9$1 then FADD32(v9$1, v8$1) else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][$iAccum1.0$1]);
    $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2] := (if p9$2 then FADD32(v9$2, v8$2) else $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$iAccum1.0$2]);
    $iAccum1.0$1 := (if p9$1 then BV32_ADD($iAccum1.0$1, group_size_x) else $iAccum1.0$1);
    $iAccum1.0$2 := (if p9$2 then BV32_ADD($iAccum1.0$2, group_size_x) else $iAccum1.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $13.backedge, $13.tail;

  $13.tail:
    assume !p8$1 && !p8$2;
    $stride.0$1 := (if p7$1 then BV32_ASHR($stride.0$1, 1) else $stride.0$1);
    $stride.0$2 := (if p7$2 then BV32_ASHR($stride.0$2, 1) else $stride.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $11.backedge, $11.tail;

  $11.tail:
    assume !p6$1 && !p6$2;
    v10$1 := (if p1$1 then local_id_x$1 == 0 else v10$1);
    v10$2 := (if p1$2 then local_id_x$2 == 0 else v10$2);
    p11$1 := (if p1$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p1$2 && v10$2 then v10$2 else p11$2);
    call _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p11$1, 0, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(p11$2, 0, $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} true;
    call _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(p11$1, p11$2);
    v11$1 := (if p11$1 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[1bv1][0] else v11$1);
    v11$2 := (if p11$2 then $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v11$2);
    call _PRE_WARP_SYNC_$$d_C_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$d_C(p11$1, $vec.0$1, v11$1, $$d_C[$vec.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(p11$2, $vec.0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$d_C(p11$2, $vec.0$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_C"} true;
    call _POST_WARP_SYNC_$$d_C_WRITE(p11$1, p11$2);
    $$d_C[$vec.0$1] := (if p11$1 then v11$1 else $$d_C[$vec.0$1]);
    $$d_C[$vec.0$2] := (if p11$2 then v11$2 else $$d_C[$vec.0$2]);
    $vec.0$1 := (if p1$1 then BV32_ADD($vec.0$1, num_groups_x) else $vec.0$1);
    $vec.0$2 := (if p1$2 then BV32_ADD($vec.0$2, num_groups_x) else $vec.0$2);
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

  $11.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$11_0;

  $13.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $13;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $5;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, $$d_C, _TRACKING;



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

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

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

procedure {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool);



const _WATCHED_VALUE_$$d_C: int;

procedure {:inline 1} _LOG_READ_$$d_C(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_C;



implementation {:inline 1} _LOG_READ_$$d_C(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then true else _READ_HAS_OCCURRED_$$d_C);
    return;
}



procedure _CHECK_READ_$$d_C(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_C);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_C: bool;

procedure {:inline 1} _LOG_WRITE_$$d_C(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_C, _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:inline 1} _LOG_WRITE_$$d_C(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then true else _WRITE_HAS_OCCURRED_$$d_C);
    _WRITE_READ_BENIGN_FLAG_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_C);
    return;
}



procedure _CHECK_WRITE_$$d_C(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C != _value);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_C != _value);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_C(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_C;



implementation {:inline 1} _LOG_ATOMIC_$$d_C(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_C);
    return;
}



procedure _CHECK_ATOMIC_$$d_C(_P: bool, _offset: int);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_C"} {:array "$$d_C"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_C;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_C(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_C := (if _P && _WRITE_HAS_OCCURRED_$$d_C && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_C);
    return;
}



const _WATCHED_VALUE_$$d_A: int;

procedure {:inline 1} _LOG_READ_$$d_A(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_A;



implementation {:inline 1} _LOG_READ_$$d_A(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then true else _READ_HAS_OCCURRED_$$d_A);
    return;
}



procedure _CHECK_READ_$$d_A(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_A);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_A: bool;

procedure {:inline 1} _LOG_WRITE_$$d_A(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_A, _WRITE_READ_BENIGN_FLAG_$$d_A;



implementation {:inline 1} _LOG_WRITE_$$d_A(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then true else _WRITE_HAS_OCCURRED_$$d_A);
    _WRITE_READ_BENIGN_FLAG_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_A);
    return;
}



procedure _CHECK_WRITE_$$d_A(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A != _value);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_A != _value);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_A(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_A;



implementation {:inline 1} _LOG_ATOMIC_$$d_A(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_A);
    return;
}



procedure _CHECK_ATOMIC_$$d_A(_P: bool, _offset: int);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_A"} {:array "$$d_A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_A(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_A(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_A := (if _P && _WRITE_HAS_OCCURRED_$$d_A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_A);
    return;
}



const _WATCHED_VALUE_$$d_B: int;

procedure {:inline 1} _LOG_READ_$$d_B(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_B;



implementation {:inline 1} _LOG_READ_$$d_B(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then true else _READ_HAS_OCCURRED_$$d_B);
    return;
}



procedure _CHECK_READ_$$d_B(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_B);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_B: bool;

procedure {:inline 1} _LOG_WRITE_$$d_B(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_B, _WRITE_READ_BENIGN_FLAG_$$d_B;



implementation {:inline 1} _LOG_WRITE_$$d_B(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then true else _WRITE_HAS_OCCURRED_$$d_B);
    _WRITE_READ_BENIGN_FLAG_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_B);
    return;
}



procedure _CHECK_WRITE_$$d_B(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B != _value);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_B != _value);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_B(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_B;



implementation {:inline 1} _LOG_ATOMIC_$$d_B(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_B := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_B);
    return;
}



procedure _CHECK_ATOMIC_$$d_B(_P: bool, _offset: int);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_B"} {:array "$$d_B"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_B(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_B;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_B(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_B := (if _P && _WRITE_HAS_OCCURRED_$$d_B && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_B);
    return;
}



const _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then true else _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_READ_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult, _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int, _value: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "accumResult"} {:array "$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_C;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_C;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$d_C;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



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

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

implementation {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$d_C;
    assume !_WRITE_HAS_OCCURRED_$$d_C;
    assume !_ATOMIC_HAS_OCCURRED_$$d_C;
    goto anon0;

  anon0:
    havoc $$d_C;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$d_C_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$d_C;
    goto anon0;

  anon0:
    havoc $$d_C;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    assume !_ATOMIC_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon0;

  anon0:
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    goto anon0;

  anon0:
    havoc $$_ZZ13scalarProdGPUPfS_S_iiE11accumResult;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


