type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_clocks"} {:global} $$d_clocks: [int]int;

axiom {:array_info "$$d_clocks"} {:global} {:elem_width 32} {:source_name "d_clocks"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_clocks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_clocks: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_clocks: bool;

var {:source_name "s_clocks"} {:group_shared} $$_ZZ3sumPjiE8s_clocks: [bv1][int]int;

axiom {:array_info "$$_ZZ3sumPjiE8s_clocks"} {:group_shared} {:elem_width 32} {:source_name "s_clocks"} {:source_elem_width 32} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks: bool;

const _WATCHED_OFFSET: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "sum"} {:kernel} $_Z3sumPji($N: int);
  requires !_READ_HAS_OCCURRED_$$d_clocks && !_WRITE_HAS_OCCURRED_$$d_clocks && !_ATOMIC_HAS_OCCURRED_$$d_clocks;
  requires !_READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && !_WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && !_ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
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
  modifies $$_ZZ3sumPjiE8s_clocks, _READ_HAS_OCCURRED_$$d_clocks, _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks, _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks, _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks, $$d_clocks, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks, _WRITE_HAS_OCCURRED_$$d_clocks, _WRITE_READ_BENIGN_FLAG_$$d_clocks, _WRITE_READ_BENIGN_FLAG_$$d_clocks, _TRACKING;



implementation {:source_name "sum"} {:kernel} $_Z3sumPji($N: int)
{
  var $my_sum.0$1: int;
  var $my_sum.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $i1.0: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
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


  $0:
    $my_sum.0$1, $i.0$1 := 0, local_id_x$1;
    $my_sum.0$2, $i.0$2 := 0, local_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _READ_HAS_OCCURRED_$$d_clocks ==> _WATCHED_OFFSET mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_SLT($i.0$1, $N) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_SLT($i.0$2, $N) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($i.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($i.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($i.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $i.0$1 mod group_size_x == local_id_x$1 mod group_size_x;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $i.0$2 mod group_size_x == local_id_x$2 mod group_size_x;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_SLT($i.0$1, $N) else v0$1);
    v0$2 := (if p0$2 then BV32_SLT($i.0$2, $N) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$d_clocks(p1$1, $i.0$1, $$d_clocks[$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$d_clocks(p1$2, $i.0$2, $$d_clocks[$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_clocks"} true;
    v1$1 := (if p1$1 then $$d_clocks[$i.0$1] else v1$1);
    v1$2 := (if p1$2 then $$d_clocks[$i.0$2] else v1$2);
    $my_sum.0$1, $i.0$1 := (if p1$1 then BV32_ADD($my_sum.0$1, v1$1) else $my_sum.0$1), (if p1$1 then BV32_ADD($i.0$1, group_size_x) else $i.0$1);
    $my_sum.0$2, $i.0$2 := (if p1$2 then BV32_ADD($my_sum.0$2, v1$2) else $my_sum.0$2), (if p1$2 then BV32_ADD($i.0$2, group_size_x) else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ3sumPjiE8s_clocks(true, local_id_x$1, $my_sum.0$1, $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ3sumPjiE8s_clocks(true, local_id_x$2, $my_sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ3sumPjiE8s_clocks"} true;
    $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1] := $my_sum.0$1;
    $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $my_sum.0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    $i1.0 := 16;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b16 ==> _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b15 ==> _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b14 ==> !_WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assert {:tag "noread"} _b13 ==> !_READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assert {:tag "pow2NotZero"} _b12 ==> $i1.0 != 0;
    assert {:tag "pow2"} _b11 ==> $i1.0 == 0 || BV32_AND($i1.0, BV32_SUB($i1.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($i1.0, 16);
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($i1.0, 16);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($i1.0, 16);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($i1.0, 16);
    assert {:block_sourceloc} {:sourceloc_num 8} true;
    v2 := BV32_SGT($i1.0, 0);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$_ZZ3sumPjiE8s_clocks(true, 0, $$_ZZ3sumPjiE8s_clocks[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$_ZZ3sumPjiE8s_clocks(true, 0, $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ3sumPjiE8s_clocks"} true;
    v6$1 := $$_ZZ3sumPjiE8s_clocks[1bv1][0];
    v6$2 := $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$d_clocks(true, 0, v6$1, $$d_clocks[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_clocks(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$d_clocks(true, 0, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_clocks"} true;
    $$d_clocks[0] := v6$1;
    $$d_clocks[0] := v6$2;
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v2;
    v3$1 := BV32_ULT(local_id_x$1, $i1.0);
    v3$2 := BV32_ULT(local_id_x$2, $i1.0);
    p4$1 := (if v3$1 then v3$1 else p4$1);
    p4$2 := (if v3$2 then v3$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ3sumPjiE8s_clocks(p4$1, BV32_ADD(local_id_x$1, $i1.0), $$_ZZ3sumPjiE8s_clocks[1bv1][BV32_ADD(local_id_x$1, $i1.0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ3sumPjiE8s_clocks(p4$2, BV32_ADD(local_id_x$2, $i1.0), $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $i1.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ3sumPjiE8s_clocks"} true;
    v4$1 := (if p4$1 then $$_ZZ3sumPjiE8s_clocks[1bv1][BV32_ADD(local_id_x$1, $i1.0)] else v4$1);
    v4$2 := (if p4$2 then $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $i1.0)] else v4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$_ZZ3sumPjiE8s_clocks(p4$1, local_id_x$1, $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$_ZZ3sumPjiE8s_clocks(p4$2, local_id_x$2, $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ3sumPjiE8s_clocks"} true;
    v5$1 := (if p4$1 then $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1] else v5$1);
    v5$2 := (if p4$2 then $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v5$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ3sumPjiE8s_clocks(p4$1, local_id_x$1, BV32_ADD(v5$1, v4$1), $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ3sumPjiE8s_clocks(p4$2, local_id_x$2, BV32_ADD(v5$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ3sumPjiE8s_clocks"} true;
    $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1] := (if p4$1 then BV32_ADD(v5$1, v4$1) else $$_ZZ3sumPjiE8s_clocks[1bv1][local_id_x$1]);
    $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then BV32_ADD(v5$2, v4$2) else $$_ZZ3sumPjiE8s_clocks[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_1(-1, -1);
    $i1.0 := BV32_SDIV($i1.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

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
  modifies $$_ZZ3sumPjiE8s_clocks, $$d_clocks, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ3sumPjiE8s_clocks, $$d_clocks, _TRACKING;



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

const _WATCHED_VALUE_$$d_clocks: int;

procedure {:inline 1} _LOG_READ_$$d_clocks(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_clocks;



implementation {:inline 1} _LOG_READ_$$d_clocks(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_clocks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_clocks == _value then true else _READ_HAS_OCCURRED_$$d_clocks);
    return;
}



procedure _CHECK_READ_$$d_clocks(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_clocks);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_clocks: bool;

procedure {:inline 1} _LOG_WRITE_$$d_clocks(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_clocks, _WRITE_READ_BENIGN_FLAG_$$d_clocks;



implementation {:inline 1} _LOG_WRITE_$$d_clocks(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_clocks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_clocks == _value then true else _WRITE_HAS_OCCURRED_$$d_clocks);
    _WRITE_READ_BENIGN_FLAG_$$d_clocks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_clocks == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_clocks);
    return;
}



procedure _CHECK_WRITE_$$d_clocks(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_clocks != _value);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_clocks != _value);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_clocks(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_clocks;



implementation {:inline 1} _LOG_ATOMIC_$$d_clocks(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_clocks := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_clocks);
    return;
}



procedure _CHECK_ATOMIC_$$d_clocks(_P: bool, _offset: int);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_clocks"} {:array "$$d_clocks"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_clocks(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_clocks;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_clocks(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_clocks := (if _P && _WRITE_HAS_OCCURRED_$$d_clocks && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_clocks);
    return;
}



const _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks: int;

procedure {:inline 1} _LOG_READ_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;



implementation {:inline 1} _LOG_READ_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks == _value then true else _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks);
    return;
}



procedure _CHECK_READ_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks, _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks;



implementation {:inline 1} _LOG_WRITE_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks);
    return;
}



procedure _CHECK_WRITE_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ3sumPjiE8s_clocks != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_clocks"} {:array "$$_ZZ3sumPjiE8s_clocks"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ3sumPjiE8s_clocks);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_clocks;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_clocks;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_clocks;
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
    havoc $$d_clocks;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ3sumPjiE8s_clocks;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ3sumPjiE8s_clocks;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_clocks;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_clocks;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_clocks;
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
    havoc $$d_clocks;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ3sumPjiE8s_clocks;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



const {:existential true} _b10: bool;

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function BV32_AND(int, int) : int;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;
