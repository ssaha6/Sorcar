type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "isums"} {:global} $$isums: [int]int;

axiom {:array_info "$$isums"} {:global} {:elem_width 32} {:source_name "isums"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$isums: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$isums: bool;

var {:source_name "lmem"} {:group_shared} $$lmem: [bv1][int]int;

axiom {:array_info "$$lmem"} {:group_shared} {:elem_width 32} {:source_name "lmem"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lmem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lmem: bool;

var {:source_name "s_seed"} {:group_shared} $$top_scan.s_seed: [bv1][int]int;

axiom {:array_info "$$top_scan.s_seed"} {:group_shared} {:elem_width 32} {:source_name "s_seed"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$top_scan.s_seed: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$top_scan.s_seed: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function {:inline true} BV1_XOR(x: int, y: int) : int
{
  (if (x == 1 || x == -1) && (y == 1 || y == -1) then 0 else (if (x == 1 || x == -1) && y == 0 then 1 else (if x == 0 && (y == 1 || y == -1) then 1 else (if x == y then 0 else BV1_XOR_UF(x, y)))))
}

function BV1_XOR_UF(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "top_scan"} {:kernel} $top_scan($n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 64 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$isums && !_WRITE_HAS_OCCURRED_$$isums && !_ATOMIC_HAS_OCCURRED_$$isums;
  requires !_READ_HAS_OCCURRED_$$lmem && !_WRITE_HAS_OCCURRED_$$lmem && !_ATOMIC_HAS_OCCURRED_$$lmem;
  requires !_READ_HAS_OCCURRED_$$top_scan.s_seed && !_WRITE_HAS_OCCURRED_$$top_scan.s_seed && !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
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
  modifies $$top_scan.s_seed, $$lmem, _WRITE_HAS_OCCURRED_$$top_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed, $$isums, _TRACKING, _READ_HAS_OCCURRED_$$isums, _WRITE_HAS_OCCURRED_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _WRITE_READ_BENIGN_FLAG_$$lmem, _TRACKING, _READ_HAS_OCCURRED_$$lmem, _READ_HAS_OCCURRED_$$top_scan.s_seed, _WRITE_HAS_OCCURRED_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums, _WRITE_READ_BENIGN_FLAG_$$isums, _TRACKING, _TRACKING, _TRACKING, _TRACKING;



implementation {:source_name "top_scan"} {:kernel} $top_scan($n: int)
{
  var $0$1: int;
  var $0$2: int;
  var $d.0: int;
  var $val.0$1: int;
  var $val.0$2: int;
  var $i.i.0: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6: bool;
  var v7$1: int;
  var v7$2: int;
  var v12$1: bool;
  var v12$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
  var v13$1: int;
  var v13$2: int;
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


  __partitioned_block_$0_0:
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$top_scan.s_seed(true, 0, 0, $$top_scan.s_seed[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$top_scan.s_seed(true, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$top_scan.s_seed"} true;
    $$top_scan.s_seed[1bv1][0] := 0;
    $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := 0;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 3} $bugle_barrier_duplicated_0(-1, 0);
    v0$1 := BV32_ULT(local_id_x$1, $n);
    v0$2 := BV32_ULT(local_id_x$2, $n);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    p1$1 := (if !v0$1 then !v0$1 else p1$1);
    p1$2 := (if !v0$2 then !v0$2 else p1$2);
    $0$1 := (if p0$1 then (if BV32_ADD(local_id_x$1, 1) == $n then 1 else 0) else $0$1);
    $0$2 := (if p0$2 then (if BV32_ADD(local_id_x$2, 1) == $n then 1 else 0) else $0$2);
    $0$1 := (if p1$1 then 0 else $0$1);
    $0$2 := (if p1$2 then 0 else $0$2);
    $d.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b22 ==> _WRITE_HAS_OCCURRED_$$top_scan.s_seed ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b21 ==> _READ_HAS_OCCURRED_$$top_scan.s_seed ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b20 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assert {:tag "noread"} _b19 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b18 ==> _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_SUB(BV32_ADD(local_id_x$1, group_size_x), 1) || _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b16 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assert {:tag "noread"} _b15 ==> !_READ_HAS_OCCURRED_$$lmem;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b14 ==> _WRITE_HAS_OCCURRED_$$isums ==> _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b13 ==> _READ_HAS_OCCURRED_$$isums ==> _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n);
    assert {:tag "nowrite"} _b12 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assert {:tag "noread"} _b11 ==> !_READ_HAS_OCCURRED_$$isums;
    assert {:tag "pow2NotZero"} _b10 ==> $i.i.0 != 0;
    assert {:tag "pow2"} _b9 ==> $i.i.0 == 0 || BV32_AND($i.i.0, BV32_SUB($i.i.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($d.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($d.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($d.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($d.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $d.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 6} true;
    assert {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if BV32_UGE(local_id_x$1, $n) ==> BV1_XOR((if _WRITE_HAS_OCCURRED_$$isums then 1 else 0), -1) == 1 then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if BV32_UGE(local_id_x$1, $n) ==> BV1_XOR((if _READ_HAS_OCCURRED_$$isums then 1 else 0), -1) == 1 then 1 else 0) != 0;
    v1 := BV32_SLT($d.0, 16);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v1;
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v1;
    v2$1 := BV32_ULT(local_id_x$1, $n);
    v2$2 := BV32_ULT(local_id_x$2, $n);
    p3$1 := (if v2$1 then v2$1 else p3$1);
    p3$2 := (if v2$2 then v2$2 else p3$2);
    p2$1 := (if !v2$1 then !v2$1 else p2$1);
    p2$2 := (if !v2$2 then !v2$2 else p2$2);
    $val.0$1 := (if p2$1 then 0 else $val.0$1);
    $val.0$2 := (if p2$2 then 0 else $val.0$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$isums(p3$1, BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1), $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$isums(p3$2, BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2), $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$isums"} true;
    v3$1 := (if p3$1 then $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1)] else v3$1);
    v3$2 := (if p3$2 then $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2)] else v3$2);
    $val.0$1 := (if p3$1 then v3$1 else $val.0$1);
    $val.0$2 := (if p3$2 then v3$2 else $val.0$2);
    v4$1 := local_id_x$1;
    v4$2 := local_id_x$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$lmem(true, v4$1, 0, $$lmem[1bv1][v4$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(true, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$lmem(true, v4$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v4$1] := 0;
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v4$2] := 0;
    v5$1 := BV32_ADD(v4$1, group_size_x);
    v5$2 := BV32_ADD(v4$2, group_size_x);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$lmem(true, v5$1, $val.0$1, $$lmem[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(true, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$lmem(true, v5$2, $val.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v5$1] := $val.0$1;
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := $val.0$2;
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_1(-1, 0);
    $i.i.0 := 1;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b28 ==> _WRITE_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b27 ==> _READ_HAS_OCCURRED_$$lmem ==> _WATCHED_OFFSET == BV32_ADD(local_id_x$1, group_size_x) || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b26 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assert {:tag "noread"} _b25 ==> !_READ_HAS_OCCURRED_$$lmem;
    assert {:tag "pow2NotZero"} _b24 ==> $i.i.0 != 0;
    assert {:tag "pow2"} _b23 ==> $i.i.0 == 0 || BV32_AND($i.i.0, BV32_SUB($i.i.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$top_scan.s_seed ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$lmem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_UGE($i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_ULE($i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SGE($i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SLE($i.i.0, 1);
    assert {:block_sourceloc} {:sourceloc_num 16} true;
    v6 := BV32_ULT($i.i.0, group_size_x);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    goto __partitioned_block_$truebb2_0, __partitioned_block_$falsebb2_0;

  __partitioned_block_$falsebb2_0:
    assume {:partition} !v6;
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$lmem(true, BV32_SUB(v5$1, 1), $$lmem[1bv1][BV32_SUB(v5$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$lmem(true, BV32_SUB(v5$2, 1), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v9$1 := $$lmem[1bv1][BV32_SUB(v5$1, 1)];
    v9$2 := $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, 1)];
    v10$1 := BV32_ULT(local_id_x$1, $n);
    v10$2 := BV32_ULT(local_id_x$2, $n);
    p5$1 := (if v10$1 then v10$1 else p5$1);
    p5$2 := (if v10$2 then v10$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$top_scan.s_seed(p5$1, 0, $$top_scan.s_seed[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$top_scan.s_seed(p5$2, 0, $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$top_scan.s_seed"} true;
    v11$1 := (if p5$1 then $$top_scan.s_seed[1bv1][0] else v11$1);
    v11$2 := (if p5$2 then $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v11$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$isums(p5$1, BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1), BV32_ADD(v9$1, v11$1), $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$isums(p5$2, BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$isums(p5$2, BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2), BV32_ADD(v9$2, v11$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$isums"} true;
    $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1)] := (if p5$1 then BV32_ADD(v9$1, v11$1) else $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$1)]);
    $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2)] := (if p5$2 then BV32_ADD(v9$2, v11$2) else $$isums[BV32_ADD(BV32_MUL($n, $d.0), local_id_x$2)]);
    goto __partitioned_block_$falsebb2_1;

  __partitioned_block_$falsebb2_1:
    call {:sourceloc_num 29} $bugle_barrier_duplicated_2(-1, 0);
    v12$1 := (if $0$1 == 1 then 1 else 0) != 0;
    v12$2 := (if $0$2 == 1 then 1 else 0) != 0;
    p7$1 := (if v12$1 then v12$1 else p7$1);
    p7$2 := (if v12$2 then v12$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$top_scan.s_seed(p7$1, 0, $$top_scan.s_seed[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$top_scan.s_seed(p7$2, 0, $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$top_scan.s_seed"} true;
    v13$1 := (if p7$1 then $$top_scan.s_seed[1bv1][0] else v13$1);
    v13$2 := (if p7$2 then $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v13$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$top_scan.s_seed(p7$1, 0, BV32_ADD(v13$1, BV32_ADD(v9$1, $val.0$1)), $$top_scan.s_seed[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed(p7$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$top_scan.s_seed(p7$2, 0, BV32_ADD(v13$2, BV32_ADD(v9$2, $val.0$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$top_scan.s_seed"} true;
    $$top_scan.s_seed[1bv1][0] := (if p7$1 then BV32_ADD(v13$1, BV32_ADD(v9$1, $val.0$1)) else $$top_scan.s_seed[1bv1][0]);
    $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p7$2 then BV32_ADD(v13$2, BV32_ADD(v9$2, $val.0$2)) else $$top_scan.s_seed[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$falsebb2_2;

  __partitioned_block_$falsebb2_2:
    call {:sourceloc_num 34} $bugle_barrier_duplicated_3(-1, 0);
    $d.0 := BV32_ADD($d.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  __partitioned_block_$truebb2_0:
    assume {:partition} v6;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$lmem(true, BV32_SUB(v5$1, $i.i.0), $$lmem[1bv1][BV32_SUB(v5$1, $i.i.0)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$lmem(true, BV32_SUB(v5$2, $i.i.0), $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, $i.i.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v7$1 := $$lmem[1bv1][BV32_SUB(v5$1, $i.i.0)];
    v7$2 := $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, $i.i.0)];
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 19} $bugle_barrier_duplicated_4(-1, 0);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$lmem(true, v5$1, $$lmem[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$lmem(true, v5$2, $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lmem"} true;
    v8$1 := $$lmem[1bv1][v5$1];
    v8$2 := $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2];
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$lmem(true, v5$1, BV32_ADD(v8$1, v7$1), $$lmem[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lmem(true, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$lmem(true, v5$2, BV32_ADD(v8$2, v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lmem"} true;
    $$lmem[1bv1][v5$1] := BV32_ADD(v8$1, v7$1);
    $$lmem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := BV32_ADD(v8$2, v7$2);
    goto __partitioned_block_$truebb2_2;

  __partitioned_block_$truebb2_2:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_5(-1, 0);
    $i.i.0 := BV32_MUL($i.i.0, 2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $7;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int);
  requires $1 == 0;
  modifies $$lmem, $$top_scan.s_seed, $$isums, _TRACKING;



const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

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

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

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



const _WATCHED_VALUE_$$top_scan.s_seed: int;

procedure {:inline 1} _LOG_READ_$$top_scan.s_seed(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$top_scan.s_seed;



implementation {:inline 1} _LOG_READ_$$top_scan.s_seed(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$top_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$top_scan.s_seed == _value then true else _READ_HAS_OCCURRED_$$top_scan.s_seed);
    return;
}



procedure _CHECK_READ_$$top_scan.s_seed(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed: bool;

procedure {:inline 1} _LOG_WRITE_$$top_scan.s_seed(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$top_scan.s_seed, _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed;



implementation {:inline 1} _LOG_WRITE_$$top_scan.s_seed(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$top_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$top_scan.s_seed == _value then true else _WRITE_HAS_OCCURRED_$$top_scan.s_seed);
    _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$top_scan.s_seed == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed);
    return;
}



procedure _CHECK_WRITE_$$top_scan.s_seed(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$top_scan.s_seed != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$top_scan.s_seed != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$top_scan.s_seed(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;



implementation {:inline 1} _LOG_ATOMIC_$$top_scan.s_seed(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$top_scan.s_seed);
    return;
}



procedure _CHECK_ATOMIC_$$top_scan.s_seed(_P: bool, _offset: int);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_seed"} {:array "$$top_scan.s_seed"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed := (if _P && _WRITE_HAS_OCCURRED_$$top_scan.s_seed && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$top_scan.s_seed);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$lmem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$lmem;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$top_scan.s_seed;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$top_scan.s_seed;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$isums;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$isums;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$isums;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$lmem;
    goto anon4;

  anon4:
    havoc $$top_scan.s_seed;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function BV32_AND(int, int) : int;

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
