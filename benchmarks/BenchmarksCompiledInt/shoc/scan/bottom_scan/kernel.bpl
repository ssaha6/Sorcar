type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

axiom {:array_info "$$isums"} {:global} {:elem_width 32} {:source_name "isums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$isums: bool;

var {:source_name "out"} {:global} $$out: [int]int;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

var {:source_name "lmem"} {:group_shared} $$lmem: [bv1][int]int;

axiom {:array_info "$$lmem"} {:group_shared} {:elem_width 32} {:source_name "lmem"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lmem: bool;

var {:source_name "s_seed"} {:group_shared} $$bottom_scan.s_seed: [bv1][int]int;

axiom {:array_info "$$bottom_scan.s_seed"} {:group_shared} {:elem_width 32} {:source_name "s_seed"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$bottom_scan.s_seed: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
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

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "bottom_scan"} {:kernel} $bottom_scan($n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 262144 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$isums && !_WRITE_HAS_OCCURRED_$$isums && !_ATOMIC_HAS_OCCURRED_$$isums;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
  requires !_READ_HAS_OCCURRED_$$lmem && !_WRITE_HAS_OCCURRED_$$lmem && !_ATOMIC_HAS_OCCURRED_$$lmem;
  requires !_READ_HAS_OCCURRED_$$bottom_scan.s_seed && !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed && !_ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;
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
  modifies $$lmem, $$bottom_scan.s_seed, _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, $$out, _TRACKING, _READ_HAS_OCCURRED_$$lmem, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed, _TRACKING, _READ_HAS_OCCURRED_$$bottom_scan.s_seed;



implementation {:source_name "bottom_scan"} {:kernel} $bottom_scan($n: int)
{
  var $0$1: int;
  var $0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $window.0$1: int;
  var $window.0$2: int;
  var $seed.0$1: int;
  var $seed.0$2: int;
  var $val_4.0$1: int;
  var $val_4.0$2: int;
  var $val_4.1$1: int;
  var $val_4.1$2: int;
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var v0: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v15$1: int;
  var v15$2: int;
  var v1: int;
  var v2$1: int;
  var v2$2: int;
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
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v14$1: int;
  var v14$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: int;
  var v29$2: int;
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
  var _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0: bool;
  var _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0: bool;


  $0:
    v0 := BV32_SDIV($n, 4);
    v1 := BV32_UDIV(v0, num_groups_x);
    v2$1 := BV32_MUL(group_id_x$1, v1);
    v2$2 := BV32_MUL(group_id_x$2, v1);
    v3$1 := group_id_x$1 == BV32_SUB(num_groups_x, 1);
    v3$2 := group_id_x$2 == BV32_SUB(num_groups_x, 1);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    p1$1 := (if !v3$1 then !v3$1 else p1$1);
    p1$2 := (if !v3$2 then !v3$2 else p1$2);
    $0$1 := (if p0$1 then v0 else $0$1);
    $0$2 := (if p0$2 then v0 else $0$2);
    $0$1 := (if p1$1 then BV32_ADD(v2$1, v1) else $0$1);
    $0$2 := (if p1$2 then BV32_ADD(v2$2, v1) else $0$2);
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    $i.0$1, $window.0$1, $seed.0$1, $val_4.0$1 := BV32_ADD(v2$1, local_id_x$1), v2$1, v4$1, v5$1;
    $i.0$2, $window.0$2, $seed.0$2, $val_4.0$2 := BV32_ADD(v2$2, local_id_x$2), v2$2, v4$2, v5$2;
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$4_0;

  __partitioned_block_$4_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b64 ==> _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b63 ==> _READ_HAS_OCCURRED_$$bottom_scan.s_seed ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b62 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed;
    assert {:tag "noread"} _b61 ==> !_READ_HAS_OCCURRED_$$bottom_scan.s_seed;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b60 ==> _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b59 ==> _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_SUB(BV32_ADD(local_id_x$1, group_size_x), 1) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b58 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assert {:tag "noread"} _b57 ==> !_READ_HAS_OCCURRED_$$lmem;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b56 ==> _WRITE_HAS_OCCURRED_$$out ==> _WATCHED_OFFSET mod BV32_MUL(group_size_x, 4) == BV32_MUL(BV32_ADD(v2$1, local_id_x$1), 4) mod BV32_MUL(group_size_x, 4) || _WATCHED_OFFSET mod BV32_MUL(group_size_x, 4) == BV32_ADD(BV32_MUL(BV32_ADD(v2$1, local_id_x$1), 4), 1) mod BV32_MUL(group_size_x, 4) || _WATCHED_OFFSET mod BV32_MUL(group_size_x, 4) == BV32_ADD(BV32_MUL(BV32_ADD(v2$1, local_id_x$1), 4), 2) mod BV32_MUL(group_size_x, 4) || _WATCHED_OFFSET mod BV32_MUL(group_size_x, 4) == BV32_ADD(BV32_MUL(BV32_ADD(v2$1, local_id_x$1), 4), 3) mod BV32_MUL(group_size_x, 4);
    assert {:tag "nowrite"} _b55 ==> !_WRITE_HAS_OCCURRED_$$out;
    assert {:tag "predicatedEquality"} _b54 ==> p2$1 && p2$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b53 ==> p2$1 && p2$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b52 ==> p2$1 && p2$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b51 ==> p2$1 && p2$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b50 ==> p2$1 && p2$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b49 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b48 ==> p2$1 && p2$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b47 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b46 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b45 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b44 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b43 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b42 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b41 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b40 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b39 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b38 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b37 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b36 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b35 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b34 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b33 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b32 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b31 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b30 ==> p2$1 && p2$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b29 ==> p2$1 && p2$2 ==> $val_4.1$1 == $val_4.1$2;
    assert {:tag "predicatedEquality"} _b28 ==> p2$1 && p2$2 ==> $val_4.0$1 == $val_4.0$2;
    assert {:tag "predicatedEquality"} _b27 ==> p2$1 && p2$2 ==> $seed.0$1 == $seed.0$2;
    assert {:tag "predicatedEquality"} _b26 ==> p2$1 && p2$2 ==> $window.0$1 == $window.0$2;
    assert {:tag "predicatedEquality"} _b25 ==> p2$1 && p2$2 ==> $i.0$1 == $i.0$2;
    assert {:tag "loopPredicateEquality"} _b24 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b23 ==> p2$1 == p2$2;
    assert {:tag "pow2NotZero"} _b22 ==> $i.i.0$2 != 0;
    assert {:tag "pow2"} _b21 ==> $i.i.0$2 == 0 || BV32_AND($i.i.0$2, BV32_SUB($i.i.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b20 ==> $i.i.0$1 != 0;
    assert {:tag "pow2"} _b19 ==> $i.i.0$1 == 0 || BV32_AND($i.i.0$1, BV32_SUB($i.i.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b10 ==> BV32_SLT($window.0$1, $0$1) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b10 ==> BV32_SLT($window.0$2, $0$2) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b9 ==> BV32_UGE($i.0$1, BV32_ADD(v2$1, local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b9 ==> BV32_UGE($i.0$2, BV32_ADD(v2$2, local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b8 ==> BV32_ULE($i.0$1, BV32_ADD(v2$1, local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b8 ==> BV32_ULE($i.0$2, BV32_ADD(v2$2, local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b7 ==> BV32_SGE($i.0$1, BV32_ADD(v2$1, local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b7 ==> BV32_SGE($i.0$2, BV32_ADD(v2$2, local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b6 ==> BV32_SLE($i.0$1, BV32_ADD(v2$1, local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b6 ==> BV32_SLE($i.0$2, BV32_ADD(v2$2, local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b5 ==> BV32_UGE($window.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b5 ==> BV32_UGE($window.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_ULE($window.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_ULE($window.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_SGE($window.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_SGE($window.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SLE($window.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SLE($window.0$2, v2$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b1 ==> $window.0$1 mod group_size_x == v2$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b1 ==> $window.0$2 mod group_size_x == v2$2 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> $i.0$1 mod group_size_x == BV32_ADD(v2$1, local_id_x$1) mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> $i.0$2 mod group_size_x == BV32_ADD(v2$2, local_id_x$2) mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 6} p2$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if $i.0$1 == BV32_ADD($window.0$1, local_id_x$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 7} {:thread 2} (if $i.0$2 == BV32_ADD($window.0$2, local_id_x$2) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_UGE(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), v2$1) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 9} {:thread 1} (if _WRITE_HAS_OCCURRED_$$out ==> BV32_ULT(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 16), $0$1) then 1 else 0) != 0;
    v6$1 := (if p2$1 then BV32_SLT($window.0$1, $0$1) else v6$1);
    v6$2 := (if p2$2 then BV32_SLT($window.0$2, $0$2) else v6$2);
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
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    v7$1 := (if p3$1 then BV32_SLT($i.0$1, $0$1) else v7$1);
    v7$2 := (if p3$2 then BV32_SLT($i.0$2, $0$2) else v7$2);
    p5$1 := (if p3$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p3$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p3$1 && !v7$1 then !v7$1 else p4$1);
    p4$2 := (if p3$2 && !v7$2 then !v7$2 else p4$2);
    $val_4.1$1 := (if p4$1 then 0 else $val_4.1$1);
    $val_4.1$2 := (if p4$2 then 0 else $val_4.1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p5$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p5$2 then _HAVOC_int$2 else v8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p5$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p5$2 then _HAVOC_int$2 else v9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p5$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p5$2 then _HAVOC_int$2 else v10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p5$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p5$2 then _HAVOC_int$2 else v11$2);
    $val_4.1$1 := (if p5$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v11$1, v10$1), v9$1), v8$1) else $val_4.1$1);
    $val_4.1$2 := (if p5$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v11$2, v10$2), v9$2), v8$2) else $val_4.1$2);
    v12$1 := (if p3$1 then FADD32(BV_EXTRACT($val_4.1$1, 64, 32), BV_EXTRACT($val_4.1$1, 32, 0)) else v12$1);
    v12$2 := (if p3$2 then FADD32(BV_EXTRACT($val_4.1$2, 64, 32), BV_EXTRACT($val_4.1$2, 32, 0)) else v12$2);
    v13$1 := (if p3$1 then BV_EXTRACT($val_4.1$1, 96, 64) else v13$1);
    v13$2 := (if p3$2 then BV_EXTRACT($val_4.1$2, 96, 64) else v13$2);
    v14$1 := (if p3$1 then FADD32(v13$1, v12$1) else v14$1);
    v14$2 := (if p3$2 then FADD32(v13$2, v12$2) else v14$2);
    v15$1 := (if p3$1 then BV_EXTRACT($val_4.1$1, 128, 96) else v15$1);
    v15$2 := (if p3$2 then BV_EXTRACT($val_4.1$2, 128, 96) else v15$2);
    v16$1 := (if p3$1 then FADD32(v15$1, v14$1) else v16$1);
    v16$2 := (if p3$2 then FADD32(v15$2, v14$2) else v16$2);
    v17$1 := (if p3$1 then local_id_x$1 else v17$1);
    v17$2 := (if p3$2 then local_id_x$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$lmem(p3$1, v17$1, 0, $$lmem[1bv1][v17$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p3$2, v17$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$lmem(p3$2, v17$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v17$1] := (if p3$1 then 0 else $$lmem[1bv1][v17$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2] := (if p3$2 then 0 else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v17$2]);
    v18$1 := (if p3$1 then BV32_ADD(v17$1, group_size_x) else v18$1);
    v18$2 := (if p3$2 then BV32_ADD(v17$2, group_size_x) else v18$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$lmem(p3$1, v18$1, v16$1, $$lmem[1bv1][v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p3$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$lmem(p3$2, v18$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v18$1] := (if p3$1 then v16$1 else $$lmem[1bv1][v18$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] := (if p3$2 then v16$2 else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    goto __partitioned_block_$4_1;

  __partitioned_block_$4_1:
    call {:sourceloc_num 20} $bugle_barrier_duplicated_0(-1, 0, p3$1, p3$2);
    $i.i.0$1 := (if p3$1 then 1 else $i.i.0$1);
    $i.i.0$2 := (if p3$2 then 1 else $i.i.0$2);
    p6$1 := (if p3$1 then true else p6$1);
    p6$2 := (if p3$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0 := _READ_HAS_OCCURRED_$$lmem;
    _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0 := _WRITE_HAS_OCCURRED_$$lmem;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$9_0;

  __partitioned_block_$9_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b80 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0 == _WRITE_HAS_OCCURRED_$$lmem;
    assert {:tag "disabledMaintainsInstrumentation"} _b79 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$lmem$ghost$__partitioned_block_$9_0 == _READ_HAS_OCCURRED_$$lmem;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b78 ==> _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b77 ==> _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x);
    assert {:tag "nowrite"} _b76 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assert {:tag "noread"} _b75 ==> !_READ_HAS_OCCURRED_$$lmem;
    assert {:tag "predicatedEquality"} _b74 ==> p6$1 && p6$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b73 ==> p6$1 && p6$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b72 ==> p6$1 && p6$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b71 ==> p6$1 && p6$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "loopPredicateEquality"} _b70 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p6$1 == p6$2;
    assert {:tag "loopPredicateEquality"} _b69 ==> p6$1 == p6$2;
    assert {:tag "pow2NotZero"} _b68 ==> $i.i.0$2 != 0;
    assert {:tag "pow2"} _b67 ==> $i.i.0$2 == 0 || BV32_AND($i.i.0$2, BV32_SUB($i.i.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b66 ==> $i.i.0$1 != 0;
    assert {:tag "pow2"} _b65 ==> $i.i.0$1 == 0 || BV32_AND($i.i.0$1, BV32_SUB($i.i.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$bottom_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p6"} {:dominator_predicate "p3"} true;
    assert p6$1 ==> p2$1;
    assert p6$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b18 ==> _WRITE_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _READ_HAS_OCCURRED_$$lmem ==> BV32_SLT($window.0$1, $0$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b16 ==> BV32_SLT($window.0$1, $0$1) && BV32_ULT($i.i.0$1, group_size_x) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b16 ==> BV32_SLT($window.0$2, $0$2) && BV32_ULT($i.i.0$2, group_size_x) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b15 ==> p6$1 ==> BV32_SLT($window.0$1, $0$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b15 ==> p6$2 ==> BV32_SLT($window.0$2, $0$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b14 ==> BV32_UGE($i.i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b14 ==> BV32_UGE($i.i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b13 ==> BV32_ULE($i.i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b13 ==> BV32_ULE($i.i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b12 ==> BV32_SGE($i.i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b12 ==> BV32_SGE($i.i.0$2, 1);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b11 ==> BV32_SLE($i.i.0$1, 1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b11 ==> BV32_SLE($i.i.0$2, 1);
    assert {:block_sourceloc} {:sourceloc_num 21} p6$1 ==> true;
    v19$1 := (if p6$1 then BV32_ULT($i.i.0$1, group_size_x) else v19$1);
    v19$2 := (if p6$2 then BV32_ULT($i.i.0$2, group_size_x) else v19$2);
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
    p7$1 := (if p6$1 && v19$1 then v19$1 else p7$1);
    p7$2 := (if p6$2 && v19$2 then v19$2 else p7$2);
    p6$1 := (if p6$1 && !v19$1 then v19$1 else p6$1);
    p6$2 := (if p6$2 && !v19$2 then v19$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$lmem(p7$1, BV32_SUB(v18$1, $i.i.0$1), $$lmem[1bv1][BV32_SUB(v18$1, $i.i.0$1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$lmem(p7$2, BV32_SUB(v18$2, $i.i.0$2), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v18$2, $i.i.0$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v20$1 := (if p7$1 then $$lmem[1bv1][BV32_SUB(v18$1, $i.i.0$1)] else v20$1);
    v20$2 := (if p7$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v18$2, $i.i.0$2)] else v20$2);
    goto __partitioned_block_$9_1;

  __partitioned_block_$9_1:
    call {:sourceloc_num 24} $bugle_barrier_duplicated_2(-1, 0, p7$1, p7$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$lmem(p7$1, v18$1, $$lmem[1bv1][v18$1]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$lmem(p7$2, v18$2, $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v21$1 := (if p7$1 then $$lmem[1bv1][v18$1] else v21$1);
    v21$2 := (if p7$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] else v21$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$lmem(p7$1, v18$1, FADD32(v21$1, v20$1), $$lmem[1bv1][v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(p7$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$lmem(p7$2, v18$2, FADD32(v21$2, v20$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v18$1] := (if p7$1 then FADD32(v21$1, v20$1) else $$lmem[1bv1][v18$1]);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] := (if p7$2 then FADD32(v21$2, v20$2) else $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    goto __partitioned_block_$9_2;

  __partitioned_block_$9_2:
    call {:sourceloc_num 27} $bugle_barrier_duplicated_3(-1, 0, p7$1, p7$2);
    $i.i.0$1 := (if p7$1 then BV32_MUL($i.i.0$1, 2) else $i.i.0$1);
    $i.i.0$2 := (if p7$2 then BV32_MUL($i.i.0$2, 2) else $i.i.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $9.backedge, __partitioned_block_$9.tail_0;

  __partitioned_block_$9.tail_0:
    assume !p6$1 && !p6$2;
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$lmem(p3$1, BV32_SUB(v18$1, 1), $$lmem[1bv1][BV32_SUB(v18$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$lmem(p3$2, BV32_SUB(v18$2, 1), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v18$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v22$1 := (if p3$1 then $$lmem[1bv1][BV32_SUB(v18$1, 1)] else v22$1);
    v22$2 := (if p3$2 then $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v18$2, 1)] else v22$2);
    v23$1 := (if p3$1 then FADD32(BV_EXTRACT($val_4.1$1, 32, 0), FADD32(v22$1, $seed.0$1)) else v23$1);
    v23$2 := (if p3$2 then FADD32(BV_EXTRACT($val_4.1$2, 32, 0), FADD32(v22$2, $seed.0$2)) else v23$2);
    v24$1 := (if p3$1 then FADD32(v12$1, FADD32(v22$1, $seed.0$1)) else v24$1);
    v24$2 := (if p3$2 then FADD32(v12$2, FADD32(v22$2, $seed.0$2)) else v24$2);
    v25$1 := (if p3$1 then FADD32(v14$1, FADD32(v22$1, $seed.0$1)) else v25$1);
    v25$2 := (if p3$2 then FADD32(v14$2, FADD32(v22$2, $seed.0$2)) else v25$2);
    v26$1 := (if p3$1 then FADD32(v16$1, FADD32(v22$1, $seed.0$1)) else v26$1);
    v26$2 := (if p3$2 then FADD32(v16$2, FADD32(v22$2, $seed.0$2)) else v26$2);
    v27$1 := (if p3$1 then BV32_SLT($i.0$1, $0$1) else v27$1);
    v27$2 := (if p3$2 then BV32_SLT($i.0$2, $0$2) else v27$2);
    p9$1 := (if p3$1 && v27$1 then v27$1 else p9$1);
    p9$2 := (if p3$2 && v27$2 then v27$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$out(p9$1, BV32_MUL($i.0$1, 4), v23$1, $$out[BV32_MUL($i.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p9$2, BV32_MUL($i.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$out(p9$2, BV32_MUL($i.0$2, 4), v23$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_MUL($i.0$1, 4)] := (if p9$1 then v23$1 else $$out[BV32_MUL($i.0$1, 4)]);
    $$out[BV32_MUL($i.0$2, 4)] := (if p9$2 then v23$2 else $$out[BV32_MUL($i.0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$out(p9$1, BV32_ADD(BV32_MUL($i.0$1, 4), 1), v24$1, $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 1), v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 1)] := (if p9$1 then v24$1 else $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 1)]);
    $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 1)] := (if p9$2 then v24$2 else $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$out(p9$1, BV32_ADD(BV32_MUL($i.0$1, 4), 2), v25$1, $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 2), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 2)] := (if p9$1 then v25$1 else $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 2)]);
    $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 2)] := (if p9$2 then v25$2 else $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$out(p9$1, BV32_ADD(BV32_MUL($i.0$1, 4), 3), v26$1, $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$out(p9$2, BV32_ADD(BV32_MUL($i.0$2, 4), 3), v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 3)] := (if p9$1 then v26$1 else $$out[BV32_ADD(BV32_MUL($i.0$1, 4), 3)]);
    $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 3)] := (if p9$2 then v26$2 else $$out[BV32_ADD(BV32_MUL($i.0$2, 4), 3)]);
    v28$1 := (if p3$1 then local_id_x$1 == BV32_SUB(group_size_x, 1) else v28$1);
    v28$2 := (if p3$2 then local_id_x$2 == BV32_SUB(group_size_x, 1) else v28$2);
    p11$1 := (if p3$1 && v28$1 then v28$1 else p11$1);
    p11$2 := (if p3$2 && v28$2 then v28$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$bottom_scan.s_seed(p11$1, 0, v26$1, $$bottom_scan.s_seed[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed(p11$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$bottom_scan.s_seed(p11$2, 0, v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$bottom_scan.s_seed"} true;
    $$bottom_scan.s_seed[1bv1][0] := (if p11$1 then v26$1 else $$bottom_scan.s_seed[1bv1][0]);
    $$bottom_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p11$2 then v26$2 else $$bottom_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$9.tail_1;

  __partitioned_block_$9.tail_1:
    call {:sourceloc_num 39} $bugle_barrier_duplicated_1(-1, 0, p3$1, p3$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$bottom_scan.s_seed(p3$1, 0, $$bottom_scan.s_seed[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$bottom_scan.s_seed(p3$2, 0, $$bottom_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$bottom_scan.s_seed"} true;
    v29$1 := (if p3$1 then $$bottom_scan.s_seed[1bv1][0] else v29$1);
    v29$2 := (if p3$2 then $$bottom_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v29$2);
    $i.0$1, $window.0$1, $seed.0$1, $val_4.0$1 := (if p3$1 then BV32_ADD($i.0$1, group_size_x) else $i.0$1), (if p3$1 then BV32_ADD($window.0$1, group_size_x) else $window.0$1), (if p3$1 then v29$1 else $seed.0$1), (if p3$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v26$1, v25$1), v24$1), v23$1) else $val_4.0$1);
    $i.0$2, $window.0$2, $seed.0$2, $val_4.0$2 := (if p3$2 then BV32_ADD($i.0$2, group_size_x) else $i.0$2), (if p3$2 then BV32_ADD($window.0$2, group_size_x) else $window.0$2), (if p3$2 then v29$2 else $seed.0$2), (if p3$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v26$2, v25$2), v24$2), v23$2) else $val_4.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p2$1 && !p2$2;
    return;

  $4.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$4_0;

  $9.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$9_0;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  modifies $$lmem, $$bottom_scan.s_seed, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  modifies $$lmem, $$bottom_scan.s_seed, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  modifies $$lmem, $$bottom_scan.s_seed, $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  modifies $$lmem, $$bottom_scan.s_seed, $$out, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
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

const _WATCHED_VALUE_$$in: int;

procedure {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_READ_$$in(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _READ_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_READ_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$in);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$in: bool;

procedure {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$in, _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _LOG_WRITE_$$in(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then true else _WRITE_HAS_OCCURRED_$$in);
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



procedure _CHECK_WRITE_$$in(_P: bool, _offset: int, _value: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$in != _value);
  requires {:source_name "in"} {:array "$$in"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$in;



implementation {:inline 1} _LOG_ATOMIC_$$in(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$in := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$in);
    return;
}



procedure _CHECK_ATOMIC_$$in(_P: bool, _offset: int);
  requires {:source_name "in"} {:array "$$in"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);
  requires {:source_name "in"} {:array "$$in"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$in;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$in(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$in := (if _P && _WRITE_HAS_OCCURRED_$$in && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$in);
    return;
}



const _WATCHED_VALUE_$$isums: int;

procedure {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_READ_$$isums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _READ_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_READ_$$isums(_P: bool, _offset: int, _value: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$isums);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$isums: bool;

procedure {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _LOG_WRITE_$$isums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then true else _WRITE_HAS_OCCURRED_$$isums);
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



procedure _CHECK_WRITE_$$isums(_P: bool, _offset: int, _value: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$isums != _value);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$isums;



implementation {:inline 1} _LOG_ATOMIC_$$isums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$isums := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$isums);
    return;
}



procedure _CHECK_ATOMIC_$$isums(_P: bool, _offset: int);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);
  requires {:source_name "isums"} {:array "$$isums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$isums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$isums := (if _P && _WRITE_HAS_OCCURRED_$$isums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$isums);
    return;
}



const _WATCHED_VALUE_$$out: int;

procedure {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_READ_$$out(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _READ_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_READ_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$out);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$out: bool;

procedure {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _LOG_WRITE_$$out(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then true else _WRITE_HAS_OCCURRED_$$out);
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



procedure _CHECK_WRITE_$$out(_P: bool, _offset: int, _value: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$out != _value);
  requires {:source_name "out"} {:array "$$out"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$out;



implementation {:inline 1} _LOG_ATOMIC_$$out(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$out := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$out);
    return;
}



procedure _CHECK_ATOMIC_$$out(_P: bool, _offset: int);
  requires {:source_name "out"} {:array "$$out"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);
  requires {:source_name "out"} {:array "$$out"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$out := (if _P && _WRITE_HAS_OCCURRED_$$out && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$out);
    return;
}



const _WATCHED_VALUE_$$lmem: int;

procedure {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_READ_$$lmem(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _READ_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_READ_$$lmem(_P: bool, _offset: int, _value: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$lmem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$lmem: bool;

procedure {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _LOG_WRITE_$$lmem(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then true else _WRITE_HAS_OCCURRED_$$lmem);
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$lmem);
    return;
}



procedure _CHECK_WRITE_$$lmem(_P: bool, _offset: int, _value: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lmem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$lmem;



implementation {:inline 1} _LOG_ATOMIC_$$lmem(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$lmem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$lmem);
    return;
}



procedure _CHECK_ATOMIC_$$lmem(_P: bool, _offset: int);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lmem"} {:array "$$lmem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$lmem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$lmem := (if _P && _WRITE_HAS_OCCURRED_$$lmem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$lmem);
    return;
}



const _WATCHED_VALUE_$$bottom_scan.s_seed: int;

procedure {:inline 1} _LOG_READ_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$bottom_scan.s_seed;



implementation {:inline 1} _LOG_READ_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$bottom_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.s_seed == _value then true else _READ_HAS_OCCURRED_$$bottom_scan.s_seed);
    return;
}



procedure _CHECK_READ_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed: bool;

procedure {:inline 1} _LOG_WRITE_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed;



implementation {:inline 1} _LOG_WRITE_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.s_seed == _value then true else _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed);
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.s_seed == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed);
    return;
}



procedure _CHECK_WRITE_$$bottom_scan.s_seed(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.s_seed != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$bottom_scan.s_seed != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$bottom_scan.s_seed(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;



implementation {:inline 1} _LOG_ATOMIC_$$bottom_scan.s_seed(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed);
    return;
}



procedure _CHECK_ATOMIC_$$bottom_scan.s_seed(_P: bool, _offset: int);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$bottom_scan.s_seed"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed := (if _P && _WRITE_HAS_OCCURRED_$$bottom_scan.s_seed && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$bottom_scan.s_seed);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
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
    havoc $$out;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$bottom_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
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
    havoc $$out;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$bottom_scan.s_seed;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
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
    havoc $$out;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$bottom_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$bottom_scan.s_seed;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$bottom_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
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
    havoc $$out;
    goto anon8;

  anon10_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$bottom_scan.s_seed;
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

function BV32_AND(int, int) : int;

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
