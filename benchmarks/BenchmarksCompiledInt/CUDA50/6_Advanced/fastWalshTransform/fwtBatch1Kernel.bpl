type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Output"} {:global} $$d_Output: [int]int;

axiom {:array_info "$$d_Output"} {:global} {:elem_width 32} {:source_name "d_Output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Output: bool;

axiom {:array_info "$$d_Input"} {:global} {:elem_width 32} {:source_name "d_Input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Input: bool;

var {:source_name "s_data"} {:group_shared} $$s_data: [bv1][int]int;

axiom {:array_info "$$s_data"} {:group_shared} {:elem_width 32} {:source_name "s_data"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$s_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$s_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$s_data: bool;

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

function FSUB32(int, int) : int;

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

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

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

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "fwtBatch1Kernel"} {:kernel} $_Z15fwtBatch1KernelPfS_i($log2N: int);
  requires {:sourceloc_num 0} {:thread 1} (if $log2N == 11 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Output && !_WRITE_HAS_OCCURRED_$$d_Output && !_ATOMIC_HAS_OCCURRED_$$d_Output;
  requires !_READ_HAS_OCCURRED_$$d_Input && !_WRITE_HAS_OCCURRED_$$d_Input && !_ATOMIC_HAS_OCCURRED_$$d_Input;
  requires !_READ_HAS_OCCURRED_$$s_data && !_WRITE_HAS_OCCURRED_$$s_data && !_ATOMIC_HAS_OCCURRED_$$s_data;
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
  modifies $$s_data, _WRITE_HAS_OCCURRED_$$s_data, _WRITE_READ_BENIGN_FLAG_$$s_data, _WRITE_READ_BENIGN_FLAG_$$s_data, $$d_Output, _TRACKING, _READ_HAS_OCCURRED_$$s_data, _WRITE_HAS_OCCURRED_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output, _TRACKING, _TRACKING;



implementation {:source_name "fwtBatch1Kernel"} {:kernel} $_Z15fwtBatch1KernelPfS_i($log2N: int)
{
  var $pos.0$1: int;
  var $pos.0$2: int;
  var $stride.0: int;
  var $pos2.0$1: int;
  var $pos2.0$2: int;
  var $pos7.0$1: int;
  var $pos7.0$2: int;
  var v0: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v13$1: int;
  var v13$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18: bool;
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
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: int;
  var v25$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0 := BV32_SHL(1, $log2N);
    v1$1 := BV32_SHL(group_id_x$1, $log2N);
    v1$2 := BV32_SHL(group_id_x$2, $log2N);
    $pos.0$1 := local_id_x$1;
    $pos.0$2 := local_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p3$1 := false;
    p3$2 := false;
    p6$1 := false;
    p6$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b25 ==> _WRITE_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($pos.0$1, BV32_SHL(1, $log2N)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($pos.0$2, BV32_SHL(1, $log2N)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($pos.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($pos.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($pos.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $pos.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $pos.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 2} p0$1 ==> true;
    v2$1 := (if p0$1 then BV32_SLT($pos.0$1, v0) else v2$1);
    v2$2 := (if p0$2 then BV32_SLT($pos.0$2, v0) else v2$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p1$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$s_data(p1$1, $pos.0$1, v3$1, $$s_data[1bv1][$pos.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(p1$2, $pos.0$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$s_data(p1$2, $pos.0$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][$pos.0$1] := (if p1$1 then v3$1 else $$s_data[1bv1][$pos.0$1]);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$pos.0$2] := (if p1$2 then v3$2 else $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$pos.0$2]);
    $pos.0$1 := (if p1$1 then BV32_ADD($pos.0$1, group_size_x) else $pos.0$1);
    $pos.0$2 := (if p1$2 then BV32_ADD($pos.0$2, group_size_x) else $pos.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    $stride.0 := BV32_ASHR(v0, 2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b31 ==> _WRITE_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b30 ==> _READ_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b29 ==> !_WRITE_HAS_OCCURRED_$$s_data;
    assert {:tag "noread"} _b28 ==> !_READ_HAS_OCCURRED_$$s_data;
    assert {:tag "pow2NotZero"} _b27 ==> $stride.0 != 0;
    assert {:tag "pow2"} _b26 ==> $stride.0 == 0 || BV32_AND($stride.0, BV32_SUB($stride.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($stride.0, BV32_ASHR(v0, 2));
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($stride.0, BV32_ASHR(v0, 2));
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($stride.0, BV32_ASHR(v0, 2));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($stride.0, BV32_ASHR(v0, 2));
    assert {:block_sourceloc} {:sourceloc_num 8} true;
    v4 := BV32_SGT($stride.0, 0);
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v4;
    v18 := BV32_AND($log2N, 1) != 0;
    goto __partitioned_block_$truebb1_0, $falsebb1;

  $falsebb1:
    assume {:partition} !v18;
    goto $14;

  $14:
    call {:sourceloc_num 34} $bugle_barrier_duplicated_0(-1, -1);
    $pos7.0$1 := local_id_x$1;
    $pos7.0$2 := local_id_x$2;
    p6$1 := true;
    p6$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b35 ==> _READ_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b34 ==> _WRITE_HAS_OCCURRED_$$d_Output ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessUpperBoundBlock"} _b33 ==> _WRITE_HAS_OCCURRED_$$d_Output ==> BV32_SLT(_WATCHED_OFFSET, BV32_SHL(BV32_ADD(group_id_x$1, 1), $log2N));
    assert {:tag "accessLowerBoundBlock"} _b32 ==> _WRITE_HAS_OCCURRED_$$d_Output ==> BV32_SLE(BV32_SHL(group_id_x$1, $log2N), _WATCHED_OFFSET);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> BV32_SLT($pos7.0$1, BV32_SHL(1, $log2N)) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> BV32_SLT($pos7.0$2, BV32_SHL(1, $log2N)) ==> p6$2;
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b14 ==> BV32_UGE($pos7.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b14 ==> BV32_UGE($pos7.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b13 ==> BV32_ULE($pos7.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b13 ==> BV32_ULE($pos7.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b12 ==> BV32_SGE($pos7.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b12 ==> BV32_SGE($pos7.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b11 ==> BV32_SLE($pos7.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b11 ==> BV32_SLE($pos7.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b10 ==> $pos7.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b10 ==> $pos7.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 35} p6$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 36} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_Output ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), v1$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    v24$1 := (if p6$1 then BV32_SLT($pos7.0$1, v0) else v24$1);
    v24$2 := (if p6$2 then BV32_SLT($pos7.0$2, v0) else v24$2);
    p7$1 := false;
    p7$2 := false;
    p7$1 := (if p6$1 && v24$1 then v24$1 else p7$1);
    p7$2 := (if p6$2 && v24$2 then v24$2 else p7$2);
    p6$1 := (if p6$1 && !v24$1 then v24$1 else p6$1);
    p6$2 := (if p6$2 && !v24$2 then v24$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$s_data(p7$1, $pos7.0$1, $$s_data[1bv1][$pos7.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$s_data(p7$2, $pos7.0$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$pos7.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v25$1 := (if p7$1 then $$s_data[1bv1][$pos7.0$1] else v25$1);
    v25$2 := (if p7$2 then $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$pos7.0$2] else v25$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$d_Output(p7$1, BV32_ADD(v1$1, $pos7.0$1), v25$1, $$d_Output[BV32_ADD(v1$1, $pos7.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(p7$2, BV32_ADD(v1$2, $pos7.0$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$d_Output(p7$2, BV32_ADD(v1$2, $pos7.0$2), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Output"} true;
    $$d_Output[BV32_ADD(v1$1, $pos7.0$1)] := (if p7$1 then v25$1 else $$d_Output[BV32_ADD(v1$1, $pos7.0$1)]);
    $$d_Output[BV32_ADD(v1$2, $pos7.0$2)] := (if p7$2 then v25$2 else $$d_Output[BV32_ADD(v1$2, $pos7.0$2)]);
    $pos7.0$1 := (if p7$1 then BV32_ADD($pos7.0$1, group_size_x) else $pos7.0$1);
    $pos7.0$2 := (if p7$2 then BV32_ADD($pos7.0$2, group_size_x) else $pos7.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $15.backedge, $15.tail;

  $15.tail:
    assume !p6$1 && !p6$2;
    return;

  $15.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $15;

  __partitioned_block_$truebb1_0:
    assume {:partition} v18;
    goto __partitioned_block_$truebb1_1;

  __partitioned_block_$truebb1_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_1(-1, -1);
    $pos2.0$1 := local_id_x$1;
    $pos2.0$2 := local_id_x$2;
    p3$1 := true;
    p3$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b45 ==> _WRITE_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b44 ==> _READ_HAS_OCCURRED_$$s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1;
    assert {:tag "pow2NotZero"} _b43 ==> v20$2 != 0;
    assert {:tag "pow2"} _b42 ==> v20$2 == 0 || BV32_AND(v20$2, BV32_SUB(v20$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b41 ==> v20$1 != 0;
    assert {:tag "pow2"} _b40 ==> v20$1 == 0 || BV32_AND(v20$1, BV32_SUB(v20$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b39 ==> $pos2.0$2 != 0;
    assert {:tag "pow2"} _b38 ==> $pos2.0$2 == 0 || BV32_AND($pos2.0$2, BV32_SUB($pos2.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b37 ==> $pos2.0$1 != 0;
    assert {:tag "pow2"} _b36 ==> $pos2.0$1 == 0 || BV32_AND($pos2.0$1, BV32_SUB($pos2.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b24 ==> _WRITE_HAS_OCCURRED_$$s_data ==> BV32_AND($log2N, 1) != 0;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b23 ==> _READ_HAS_OCCURRED_$$s_data ==> BV32_AND($log2N, 1) != 0;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b22 ==> BV32_AND($log2N, 1) != 0 && BV32_SLT($pos2.0$1, BV32_SDIV(BV32_SHL(1, $log2N), 2)) ==> p3$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b22 ==> BV32_AND($log2N, 1) != 0 && BV32_SLT($pos2.0$2, BV32_SDIV(BV32_SHL(1, $log2N), 2)) ==> p3$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p3$1 ==> _b21 ==> p3$1 ==> BV32_AND($log2N, 1) != 0;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p3$2 ==> _b21 ==> p3$2 ==> BV32_AND($log2N, 1) != 0;
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b20 ==> BV32_UGE($pos2.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b20 ==> BV32_UGE($pos2.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b19 ==> BV32_ULE($pos2.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b19 ==> BV32_ULE($pos2.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b18 ==> BV32_SGE($pos2.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b18 ==> BV32_SGE($pos2.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b17 ==> BV32_SLE($pos2.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b17 ==> BV32_SLE($pos2.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p3$1 ==> _b16 ==> $pos2.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p3$2 ==> _b16 ==> $pos2.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 23} p3$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 24} {:thread 1} (if _WRITE_HAS_OCCURRED_$$s_data ==> BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), 2), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 25} {:thread 1} (if _READ_HAS_OCCURRED_$$s_data ==> BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), 2), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    v19$1 := (if p3$1 then BV32_SLT($pos2.0$1, BV32_SDIV(v0, 2)) else v19$1);
    v19$2 := (if p3$2 then BV32_SLT($pos2.0$2, BV32_SDIV(v0, 2)) else v19$2);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p4$1 := (if p3$1 && v19$1 then v19$1 else p4$1);
    p4$2 := (if p3$2 && v19$2 then v19$2 else p4$2);
    p3$1 := (if p3$1 && !v19$1 then v19$1 else p3$1);
    p3$2 := (if p3$2 && !v19$2 then v19$2 else p3$2);
    v20$1 := (if p4$1 then BV32_SHL($pos2.0$1, 1) else v20$1);
    v20$2 := (if p4$2 then BV32_SHL($pos2.0$2, 1) else v20$2);
    v21$1 := (if p4$1 then BV32_ADD(v20$1, 1) else v21$1);
    v21$2 := (if p4$2 then BV32_ADD(v20$2, 1) else v21$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$s_data(p4$1, v20$1, $$s_data[1bv1][v20$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$s_data(p4$2, v20$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v22$1 := (if p4$1 then $$s_data[1bv1][v20$1] else v22$1);
    v22$2 := (if p4$2 then $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2] else v22$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$s_data(p4$1, v21$1, $$s_data[1bv1][v21$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$s_data(p4$2, v21$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v21$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v23$1 := (if p4$1 then $$s_data[1bv1][v21$1] else v23$1);
    v23$2 := (if p4$2 then $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v21$2] else v23$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$s_data(p4$1, v20$1, FADD32(v22$1, v23$1), $$s_data[1bv1][v20$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(p4$2, v20$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$s_data(p4$2, v20$2, FADD32(v22$2, v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v20$1] := (if p4$1 then FADD32(v22$1, v23$1) else $$s_data[1bv1][v20$1]);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2] := (if p4$2 then FADD32(v22$2, v23$2) else $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$s_data(p4$1, v21$1, FSUB32(v22$1, v23$1), $$s_data[1bv1][v21$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(p4$2, v21$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$s_data(p4$2, v21$2, FSUB32(v22$2, v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v21$1] := (if p4$1 then FSUB32(v22$1, v23$1) else $$s_data[1bv1][v21$1]);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v21$2] := (if p4$2 then FSUB32(v22$2, v23$2) else $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v21$2]);
    $pos2.0$1 := (if p4$1 then BV32_ADD($pos2.0$1, group_size_x) else $pos2.0$1);
    $pos2.0$2 := (if p4$2 then BV32_ADD($pos2.0$2, group_size_x) else $pos2.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $10.backedge, $10.tail;

  $10.tail:
    assume !p3$1 && !p3$2;
    goto $14;

  $10.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $10;

  __partitioned_block_$truebb0_0:
    assume {:partition} v4;
    v5$1 := BV32_AND(local_id_x$1, BV32_SUB($stride.0, 1));
    v5$2 := BV32_AND(local_id_x$2, BV32_SUB($stride.0, 1));
    v6$1 := BV32_ADD(BV32_SHL(BV32_SUB(local_id_x$1, v5$1), 2), v5$1);
    v6$2 := BV32_ADD(BV32_SHL(BV32_SUB(local_id_x$2, v5$2), 2), v5$2);
    v7$1 := BV32_ADD(v6$1, $stride.0);
    v7$2 := BV32_ADD(v6$2, $stride.0);
    v8$1 := BV32_ADD(v7$1, $stride.0);
    v8$2 := BV32_ADD(v7$2, $stride.0);
    v9$1 := BV32_ADD(v8$1, $stride.0);
    v9$2 := BV32_ADD(v8$2, $stride.0);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_2(-1, -1);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$s_data(true, v6$1, $$s_data[1bv1][v6$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$s_data(true, v6$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v6$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v10$1 := $$s_data[1bv1][v6$1];
    v10$2 := $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v6$2];
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$s_data(true, v7$1, $$s_data[1bv1][v7$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$s_data(true, v7$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v11$1 := $$s_data[1bv1][v7$1];
    v11$2 := $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2];
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$s_data(true, v8$1, $$s_data[1bv1][v8$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$s_data(true, v8$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v12$1 := $$s_data[1bv1][v8$1];
    v12$2 := $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2];
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$s_data(true, v9$1, $$s_data[1bv1][v9$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$s_data(true, v9$2, $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$s_data"} true;
    v13$1 := $$s_data[1bv1][v9$1];
    v13$2 := $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2];
    v14$1 := FADD32(v10$1, v12$1);
    v14$2 := FADD32(v10$2, v12$2);
    v15$1 := FSUB32(v10$1, v12$1);
    v15$2 := FSUB32(v10$2, v12$2);
    v16$1 := FADD32(v11$1, v13$1);
    v16$2 := FADD32(v11$2, v13$2);
    v17$1 := FSUB32(v11$1, v13$1);
    v17$2 := FSUB32(v11$2, v13$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$s_data(true, v6$1, FADD32(v14$1, v16$1), $$s_data[1bv1][v6$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(true, v6$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$s_data(true, v6$2, FADD32(v14$2, v16$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v6$1] := FADD32(v14$1, v16$1);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v6$2] := FADD32(v14$2, v16$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$s_data(true, v7$1, FSUB32(v14$1, v16$1), $$s_data[1bv1][v7$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(true, v7$2);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$s_data(true, v7$2, FSUB32(v14$2, v16$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v7$1] := FSUB32(v14$1, v16$1);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2] := FSUB32(v14$2, v16$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$s_data(true, v8$1, FADD32(v15$1, v17$1), $$s_data[1bv1][v8$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(true, v8$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$s_data(true, v8$2, FADD32(v15$2, v17$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v8$1] := FADD32(v15$1, v17$1);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2] := FADD32(v15$2, v17$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$s_data(true, v9$1, FSUB32(v15$1, v17$1), $$s_data[1bv1][v9$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(true, v9$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$s_data(true, v9$2, FSUB32(v15$2, v17$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$s_data"} true;
    $$s_data[1bv1][v9$1] := FSUB32(v15$1, v17$1);
    $$s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2] := FSUB32(v15$2, v17$2);
    $stride.0 := BV32_ASHR($stride.0, 2);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $5;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 2048 then 1 else 0) != 0;

axiom (if num_groups_x == 4096 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$s_data, $$d_Output, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$s_data, $$d_Output, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$s_data, $$d_Output, _TRACKING;



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

const _WATCHED_VALUE_$$d_Output: int;

procedure {:inline 1} _LOG_READ_$$d_Output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Output;



implementation {:inline 1} _LOG_READ_$$d_Output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then true else _READ_HAS_OCCURRED_$$d_Output);
    return;
}



procedure _CHECK_READ_$$d_Output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Output);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Output: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Output, _WRITE_READ_BENIGN_FLAG_$$d_Output;



implementation {:inline 1} _LOG_WRITE_$$d_Output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then true else _WRITE_HAS_OCCURRED_$$d_Output);
    _WRITE_READ_BENIGN_FLAG_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Output);
    return;
}



procedure _CHECK_WRITE_$$d_Output(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output != _value);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Output != _value);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Output;



implementation {:inline 1} _LOG_ATOMIC_$$d_Output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Output);
    return;
}



procedure _CHECK_ATOMIC_$$d_Output(_P: bool, _offset: int);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Output"} {:array "$$d_Output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Output := (if _P && _WRITE_HAS_OCCURRED_$$d_Output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Output);
    return;
}



const _WATCHED_VALUE_$$d_Input: int;

procedure {:inline 1} _LOG_READ_$$d_Input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Input;



implementation {:inline 1} _LOG_READ_$$d_Input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then true else _READ_HAS_OCCURRED_$$d_Input);
    return;
}



procedure _CHECK_READ_$$d_Input(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Input);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Input: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Input, _WRITE_READ_BENIGN_FLAG_$$d_Input;



implementation {:inline 1} _LOG_WRITE_$$d_Input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then true else _WRITE_HAS_OCCURRED_$$d_Input);
    _WRITE_READ_BENIGN_FLAG_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Input);
    return;
}



procedure _CHECK_WRITE_$$d_Input(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input != _value);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Input != _value);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Input;



implementation {:inline 1} _LOG_ATOMIC_$$d_Input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Input);
    return;
}



procedure _CHECK_ATOMIC_$$d_Input(_P: bool, _offset: int);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Input"} {:array "$$d_Input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Input := (if _P && _WRITE_HAS_OCCURRED_$$d_Input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Input);
    return;
}



const _WATCHED_VALUE_$$s_data: int;

procedure {:inline 1} _LOG_READ_$$s_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$s_data;



implementation {:inline 1} _LOG_READ_$$s_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$s_data == _value then true else _READ_HAS_OCCURRED_$$s_data);
    return;
}



procedure _CHECK_READ_$$s_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$s_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$s_data: bool;

procedure {:inline 1} _LOG_WRITE_$$s_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$s_data, _WRITE_READ_BENIGN_FLAG_$$s_data;



implementation {:inline 1} _LOG_WRITE_$$s_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$s_data == _value then true else _WRITE_HAS_OCCURRED_$$s_data);
    _WRITE_READ_BENIGN_FLAG_$$s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$s_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$s_data);
    return;
}



procedure _CHECK_WRITE_$$s_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$s_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$s_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$s_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$s_data;



implementation {:inline 1} _LOG_ATOMIC_$$s_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$s_data);
    return;
}



procedure _CHECK_ATOMIC_$$s_data(_P: bool, _offset: int);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$s_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$s_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$s_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$s_data := (if _P && _WRITE_HAS_OCCURRED_$$s_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$s_data);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$s_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Output;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_Output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$s_data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$s_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Output;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_Output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$s_data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$s_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$s_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Output;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_Output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$s_data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



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
