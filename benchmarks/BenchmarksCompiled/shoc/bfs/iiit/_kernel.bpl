type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "levels"} {:global} $$levels: [bv32]bv32;

axiom {:array_info "$$levels"} {:global} {:elem_width 32} {:source_name "levels"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$levels: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$levels: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$levels: bool;

var {:source_name "edgeArray"} {:global} $$edgeArray: [bv32]bv32;

axiom {:array_info "$$edgeArray"} {:global} {:elem_width 32} {:source_name "edgeArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArray: bool;

var {:source_name "edgeArrayAux"} {:global} $$edgeArrayAux: [bv32]bv32;

axiom {:array_info "$$edgeArrayAux"} {:global} {:elem_width 32} {:source_name "edgeArrayAux"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:source_name "flag"} {:global} $$flag: [bv32]bv32;

axiom {:array_info "$$flag"} {:global} {:elem_width 32} {:source_name "flag"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$flag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$flag: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$flag: bool;

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

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsrem"} BV32_SREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "BFS_kernel_warp"} {:kernel} $BFS_kernel_warp($W_SZ: bv32, $CHUNK_SZ: bv32, $numVertices: bv32, $curr: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $W_SZ == 32bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $CHUNK_SZ == 32bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $numVertices == 10000bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$levels && !_WRITE_HAS_OCCURRED_$$levels && !_ATOMIC_HAS_OCCURRED_$$levels;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$flag && !_WRITE_HAS_OCCURRED_$$flag && !_ATOMIC_HAS_OCCURRED_$$flag;
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
  modifies _READ_HAS_OCCURRED_$$levels, _WRITE_HAS_OCCURRED_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels, _WRITE_HAS_OCCURRED_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:source_name "BFS_kernel_warp"} {:kernel} $BFS_kernel_warp($W_SZ: bv32, $CHUNK_SZ: bv32, $numVertices: bv32, $curr: bv32)
{
  var $chk_sz.1$1: bv32;
  var $chk_sz.1$2: bv32;
  var $chk_sz.0$1: bv32;
  var $chk_sz.0$2: bv32;
  var $v.0$1: bv32;
  var $v.0$2: bv32;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bool;
  var v14$2: bool;
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
  var _READ_HAS_OCCURRED_$$levels$ghost$$8: bool;
  var _WRITE_HAS_OCCURRED_$$levels$ghost$$8: bool;
  var _WRITE_HAS_OCCURRED_$$flag$ghost$$8: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_MUL(BV32_SDIV(v0$1, $W_SZ), $CHUNK_SZ);
    v1$2 := BV32_MUL(BV32_SDIV(v0$2, $W_SZ), $CHUNK_SZ);
    v2$1 := BV32_UGE(BV32_ADD(v1$1, $CHUNK_SZ), $numVertices);
    v2$2 := BV32_UGE(BV32_ADD(v1$2, $CHUNK_SZ), $numVertices);
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p3$1 := (if !v2$1 then !v2$1 else p3$1);
    p3$2 := (if !v2$2 then !v2$2 else p3$2);
    v3$1 := (if p0$1 then BV32_ADD(BV32_SUB($numVertices, v1$1), 1bv32) else v3$1);
    v3$2 := (if p0$2 then BV32_ADD(BV32_SUB($numVertices, v1$2), 1bv32) else v3$2);
    v4$1 := (if p0$1 then BV32_SLT(v3$1, 0bv32) else v4$1);
    v4$2 := (if p0$2 then BV32_SLT(v3$2, 0bv32) else v4$2);
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p2$1 := (if p0$1 && !v4$1 then !v4$1 else p2$1);
    p2$2 := (if p0$2 && !v4$2 then !v4$2 else p2$2);
    $chk_sz.0$1 := (if p1$1 then 0bv32 else $chk_sz.0$1);
    $chk_sz.0$2 := (if p1$2 then 0bv32 else $chk_sz.0$2);
    $chk_sz.0$1 := (if p2$1 then v3$1 else $chk_sz.0$1);
    $chk_sz.0$2 := (if p2$2 then v3$2 else $chk_sz.0$2);
    $chk_sz.1$1 := (if p0$1 then $chk_sz.0$1 else $chk_sz.1$1);
    $chk_sz.1$2 := (if p0$2 then $chk_sz.0$2 else $chk_sz.1$2);
    $chk_sz.1$1 := (if p3$1 then BV32_ADD($CHUNK_SZ, 1bv32) else $chk_sz.1$1);
    $chk_sz.1$2 := (if p3$2 then BV32_ADD($CHUNK_SZ, 1bv32) else $chk_sz.1$2);
    $v.0$1 := v1$1;
    $v.0$2 := v1$2;
    p4$1 := true;
    p4$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b45 ==> _WRITE_HAS_OCCURRED_$$flag ==> _WATCHED_OFFSET == 0bv32;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b44 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$flag;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b43 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$flag;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b42 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArrayAux;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b41 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArrayAux;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b40 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArray;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b39 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArray;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b38 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$levels;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b37 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$levels;
    assert {:tag "predicatedEquality"} _b36 ==> p4$1 && p4$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b35 ==> p4$1 && p4$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b34 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b33 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b32 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b31 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b30 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b29 ==> p4$1 && p4$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b28 ==> p4$1 && p4$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b27 ==> p4$1 && p4$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b26 ==> p4$1 && p4$2 ==> $i.0$1 == $i.0$2;
    assert {:tag "predicatedEquality"} _b25 ==> p4$1 && p4$2 ==> $v.0$1 == $v.0$2;
    assert {:tag "loopPredicateEquality"} _b24 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b23 ==> p4$1 == p4$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b7 ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b7 ==> BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) ==> p4$2;
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b6 ==> BV32_UGE($v.0$1, v1$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b6 ==> BV32_UGE($v.0$2, v1$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b5 ==> BV32_ULE($v.0$1, v1$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b5 ==> BV32_ULE($v.0$2, v1$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b4 ==> BV32_SGE($v.0$1, v1$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b4 ==> BV32_SGE($v.0$2, v1$2);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b3 ==> BV32_SLE($v.0$1, v1$1);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b3 ==> BV32_SLE($v.0$2, v1$2);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p4$1 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($v.0$1, v1$1) == BV32_SUB($v.0$2, v1$2);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p4$2 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($v.0$2, v1$2) == BV32_SUB($v.0$1, v1$1);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p4$1 ==> _b1 ==> BV32_SUB($v.0$1, v1$1) == BV32_SUB($v.0$2, v1$2);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p4$2 ==> _b1 ==> BV32_SUB($v.0$2, v1$2) == BV32_SUB($v.0$1, v1$1);
    assert {:tag "guardNonNeg"} {:thread 1} p4$1 ==> _b0 ==> BV32_SLE(0bv32, $v.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p4$2 ==> _b0 ==> BV32_SLE(0bv32, $v.0$2);
    assert {:block_sourceloc} {:sourceloc_num 8} p4$1 ==> true;
    v5$1 := (if p4$1 then BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), v1$1)) else v5$1);
    v5$2 := (if p4$2 then BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1bv32), v1$2)) else v5$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p12$1 := false;
    p12$2 := false;
    p5$1 := (if p4$1 && v5$1 then v5$1 else p5$1);
    p5$2 := (if p4$2 && v5$2 then v5$2 else p5$2);
    p4$1 := (if p4$1 && !v5$1 then v5$1 else p4$1);
    p4$2 := (if p4$2 && !v5$2 then v5$2 else p4$2);
    call _PRE_WARP_SYNC_$$levels_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$levels(p5$1, $v.0$1, $$levels[$v.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$levels(p5$2, $v.0$2, $$levels[$v.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_READ(p5$1, p5$2);
    v6$1 := (if p5$1 then $$levels[$v.0$1] else v6$1);
    v6$2 := (if p5$2 then $$levels[$v.0$2] else v6$2);
    v7$1 := (if p5$1 then v6$1 == $curr else v7$1);
    v7$2 := (if p5$2 then v6$2 == $curr else v7$2);
    p7$1 := (if p5$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p5$2 && v7$2 then v7$2 else p7$2);
    v8$1 := (if p7$1 then $$edgeArray[BV32_ADD($v.0$1, 1bv32)] else v8$1);
    v8$2 := (if p7$2 then $$edgeArray[BV32_ADD($v.0$2, 1bv32)] else v8$2);
    v9$1 := (if p7$1 then $$edgeArray[$v.0$1] else v9$1);
    v9$2 := (if p7$2 then $$edgeArray[$v.0$2] else v9$2);
    v10$1 := (if p7$1 then $$edgeArray[$v.0$1] else v10$1);
    v10$2 := (if p7$2 then $$edgeArray[$v.0$2] else v10$2);
    $i.0$1 := (if p7$1 then BV32_SREM(v0$1, $W_SZ) else $i.0$1);
    $i.0$2 := (if p7$2 then BV32_SREM(v0$2, $W_SZ) else $i.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    _READ_HAS_OCCURRED_$$levels$ghost$$8 := _READ_HAS_OCCURRED_$$levels;
    _WRITE_HAS_OCCURRED_$$levels$ghost$$8 := _WRITE_HAS_OCCURRED_$$levels;
    _WRITE_HAS_OCCURRED_$$flag$ghost$$8 := _WRITE_HAS_OCCURRED_$$flag;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b64 ==> !p7$1 ==> _WRITE_HAS_OCCURRED_$$flag$ghost$$8 == _WRITE_HAS_OCCURRED_$$flag;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b63 ==> _WRITE_HAS_OCCURRED_$$flag ==> _WATCHED_OFFSET == 0bv32;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b62 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$flag;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b61 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$flag;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b60 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArrayAux;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b59 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArrayAux;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b58 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$edgeArray;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b57 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$edgeArray;
    assert {:tag "disabledMaintainsInstrumentation"} _b56 ==> !p7$1 ==> _WRITE_HAS_OCCURRED_$$levels$ghost$$8 == _WRITE_HAS_OCCURRED_$$levels;
    assert {:tag "disabledMaintainsInstrumentation"} _b55 ==> !p7$1 ==> _READ_HAS_OCCURRED_$$levels$ghost$$8 == _READ_HAS_OCCURRED_$$levels;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b54 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_WRITE_HAS_OCCURRED_$$levels;
    assert {:do_not_predicate} {:tag "sameWarpNoAccess"} _b53 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32) ==> !_READ_HAS_OCCURRED_$$levels;
    assert {:tag "predicatedEquality"} _b52 ==> p8$1 && p8$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b51 ==> p8$1 && p8$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b50 ==> p8$1 && p8$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b49 ==> p8$1 && p8$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b48 ==> p8$1 && p8$2 ==> $i.0$1 == $i.0$2;
    assert {:tag "loopPredicateEquality"} _b47 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p8$1 == p8$2;
    assert {:tag "loopPredicateEquality"} _b46 ==> p8$1 == p8$2;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p4$1;
    assert p8$2 ==> p4$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _WRITE_HAS_OCCURRED_$$flag ==> v6$1 == $curr;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _WRITE_HAS_OCCURRED_$$flag ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _WRITE_HAS_OCCURRED_$$levels ==> v6$1 == $curr;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _WRITE_HAS_OCCURRED_$$levels ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _READ_HAS_OCCURRED_$$levels ==> v6$1 == $curr;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$levels ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b16 ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) && v6$1 == $curr && BV32_ULT($i.0$1, BV32_SUB(v8$1, v9$1)) ==> p8$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b16 ==> BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) && v6$2 == $curr && BV32_ULT($i.0$2, BV32_SUB(v8$2, v9$2)) ==> p8$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p8$1 ==> _b15 ==> p8$1 ==> BV32_SLT($v.0$1, BV32_ADD(BV32_SUB($chk_sz.1$1, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $W_SZ), $CHUNK_SZ))) && v6$1 == $curr;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p8$2 ==> _b15 ==> p8$2 ==> BV32_SLT($v.0$2, BV32_ADD(BV32_SUB($chk_sz.1$2, 1bv32), BV32_MUL(BV32_SDIV(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $W_SZ), $CHUNK_SZ))) && v6$2 == $curr;
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b14 ==> BV32_UGE($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b14 ==> BV32_UGE($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b13 ==> BV32_ULE($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b13 ==> BV32_ULE($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b12 ==> BV32_SGE($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b12 ==> BV32_SGE($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "loopBound"} {:thread 1} p8$1 ==> _b11 ==> BV32_SLE($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopBound"} {:thread 2} p8$2 ==> _b11 ==> BV32_SLE($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p8$1 ==> _b10 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.0$1, BV32_SREM(v0$1, $W_SZ)) == BV32_SUB($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p8$2 ==> _b10 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($i.0$2, BV32_SREM(v0$2, $W_SZ)) == BV32_SUB($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p8$1 ==> _b9 ==> BV32_SUB($i.0$1, BV32_SREM(v0$1, $W_SZ)) == BV32_SUB($i.0$2, BV32_SREM(v0$2, $W_SZ));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p8$2 ==> _b9 ==> BV32_SUB($i.0$2, BV32_SREM(v0$2, $W_SZ)) == BV32_SUB($i.0$1, BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p8$1 ==> _b8 ==> BV32_AND(BV32_SUB($W_SZ, 1bv32), $i.0$1) == BV32_AND(BV32_SUB($W_SZ, 1bv32), BV32_SREM(v0$1, $W_SZ));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p8$2 ==> _b8 ==> BV32_AND(BV32_SUB($W_SZ, 1bv32), $i.0$2) == BV32_AND(BV32_SUB($W_SZ, 1bv32), BV32_SREM(v0$2, $W_SZ));
    assert {:block_sourceloc} {:sourceloc_num 15} p8$1 ==> true;
    v11$1 := (if p8$1 then BV32_ULT($i.0$1, BV32_SUB(v8$1, v9$1)) else v11$1);
    v11$2 := (if p8$2 then BV32_ULT($i.0$2, BV32_SUB(v8$2, v9$2)) else v11$2);
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p9$1 := (if p8$1 && v11$1 then v11$1 else p9$1);
    p9$2 := (if p8$2 && v11$2 then v11$2 else p9$2);
    p8$1 := (if p8$1 && !v11$1 then v11$1 else p8$1);
    p8$2 := (if p8$2 && !v11$2 then v11$2 else p8$2);
    v12$1 := (if p9$1 then $$edgeArrayAux[BV32_ADD($i.0$1, v10$1)] else v12$1);
    v12$2 := (if p9$2 then $$edgeArrayAux[BV32_ADD($i.0$2, v10$2)] else v12$2);
    call _PRE_WARP_SYNC_$$levels_READ(p9$1, p9$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$levels(p9$1, v12$1, $$levels[v12$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$levels(p9$2, v12$2, $$levels[v12$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_READ(p9$1, p9$2);
    v13$1 := (if p9$1 then $$levels[v12$1] else v13$1);
    v13$2 := (if p9$2 then $$levels[v12$2] else v13$2);
    v14$1 := (if p9$1 then v13$1 == 4294967295bv32 else v14$1);
    v14$2 := (if p9$2 then v13$2 == 4294967295bv32 else v14$2);
    p11$1 := (if p9$1 && v14$1 then v14$1 else p11$1);
    p11$2 := (if p9$2 && v14$2 then v14$2 else p11$2);
    call _PRE_WARP_SYNC_$$levels_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$levels(p11$1, v12$1, BV32_ADD($curr, 1bv32), $$levels[v12$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(p11$2, v12$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$levels(p11$2, v12$2, BV32_ADD($curr, 1bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$levels"} true;
    call _POST_WARP_SYNC_$$levels_WRITE(p11$1, p11$2);
    $$levels[v12$1] := (if p11$1 then BV32_ADD($curr, 1bv32) else $$levels[v12$1]);
    $$levels[v12$2] := (if p11$2 then BV32_ADD($curr, 1bv32) else $$levels[v12$2]);
    call _PRE_WARP_SYNC_$$flag_WRITE(p11$1, p11$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$flag(p11$1, 0bv32, 1bv32, $$flag[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(p11$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$flag(p11$2, 0bv32, 1bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$flag"} true;
    call _POST_WARP_SYNC_$$flag_WRITE(p11$1, p11$2);
    $$flag[0bv32] := (if p11$1 then 1bv32 else $$flag[0bv32]);
    $$flag[0bv32] := (if p11$2 then 1bv32 else $$flag[0bv32]);
    $i.0$1 := (if p9$1 then BV32_ADD($i.0$1, $W_SZ) else $i.0$1);
    $i.0$2 := (if p9$2 then BV32_ADD($i.0$2, $W_SZ) else $i.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $8.backedge, $8.tail;

  $8.tail:
    assume !p8$1 && !p8$2;
    $v.0$1 := (if p5$1 then BV32_ADD($v.0$1, 1bv32) else $v.0$1);
    $v.0$2 := (if p5$2 then BV32_ADD($v.0$2, 1bv32) else $v.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    return;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $8.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $8;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1024bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 10bv32 then 1bv1 else 0bv1) != 0bv1;

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

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

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

procedure {:inline 1} _PRE_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool);



const _WATCHED_VALUE_$$levels: bv32;

procedure {:inline 1} _LOG_READ_$$levels(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$levels;



implementation {:inline 1} _LOG_READ_$$levels(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then true else _READ_HAS_OCCURRED_$$levels);
    return;
}



procedure _CHECK_READ_$$levels(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$levels);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$levels: bool;

procedure {:inline 1} _LOG_WRITE_$$levels(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$levels, _WRITE_READ_BENIGN_FLAG_$$levels;



implementation {:inline 1} _LOG_WRITE_$$levels(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then true else _WRITE_HAS_OCCURRED_$$levels);
    _WRITE_READ_BENIGN_FLAG_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$levels);
    return;
}



procedure _CHECK_WRITE_$$levels(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels != _value);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$levels != _value);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$levels(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$levels;



implementation {:inline 1} _LOG_ATOMIC_$$levels(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$levels := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$levels);
    return;
}



procedure _CHECK_ATOMIC_$$levels(_P: bool, _offset: bv32);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);
  requires {:source_name "levels"} {:array "$$levels"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$levels;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$levels(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$levels := (if _P && _WRITE_HAS_OCCURRED_$$levels && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$levels);
    return;
}



const _WATCHED_VALUE_$$edgeArray: bv32;

procedure {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _READ_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArray);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArray: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$edgeArray, _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _WRITE_HAS_OCCURRED_$$edgeArray);
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



procedure _CHECK_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArray(_P: bool, _offset: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



const _WATCHED_VALUE_$$edgeArrayAux: bv32;

procedure {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _READ_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$edgeArrayAux, _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _WRITE_HAS_OCCURRED_$$edgeArrayAux);
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



procedure _CHECK_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



const _WATCHED_VALUE_$$flag: bv32;

procedure {:inline 1} _LOG_READ_$$flag(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$flag;



implementation {:inline 1} _LOG_READ_$$flag(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then true else _READ_HAS_OCCURRED_$$flag);
    return;
}



procedure _CHECK_READ_$$flag(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$flag);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$flag: bool;

procedure {:inline 1} _LOG_WRITE_$$flag(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$flag, _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:inline 1} _LOG_WRITE_$$flag(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then true else _WRITE_HAS_OCCURRED_$$flag);
    _WRITE_READ_BENIGN_FLAG_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$flag);
    return;
}



procedure _CHECK_WRITE_$$flag(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag != _value);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$flag != _value);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$flag(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$flag;



implementation {:inline 1} _LOG_ATOMIC_$$flag(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$flag := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$flag);
    return;
}



procedure _CHECK_ATOMIC_$$flag(_P: bool, _offset: bv32);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);
  requires {:source_name "flag"} {:array "$$flag"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$flag;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$flag(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$flag := (if _P && _WRITE_HAS_OCCURRED_$$flag && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$flag);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

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

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

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

implementation {:inline 1} _PRE_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$levels;
    assume !_ATOMIC_HAS_OCCURRED_$$levels;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$levels_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$levels;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$levels;
    assume !_WRITE_HAS_OCCURRED_$$levels;
    assume !_ATOMIC_HAS_OCCURRED_$$levels;
    goto anon0;

  anon0:
    havoc $$levels;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$levels_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$levels;
    goto anon0;

  anon0:
    havoc $$levels;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$flag;
    assume !_WRITE_HAS_OCCURRED_$$flag;
    assume !_ATOMIC_HAS_OCCURRED_$$flag;
    goto anon0;

  anon0:
    havoc $$flag;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$flag_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$flag;
    goto anon0;

  anon0:
    havoc $$flag;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


