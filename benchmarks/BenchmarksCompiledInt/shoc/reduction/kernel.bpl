type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$g_idata"} {:global} {:elem_width 32} {:source_name "g_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_idata: bool;

var {:source_name "g_odata"} {:global} $$g_odata: [int]int;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

var {:source_name "sdata"} {:group_shared} $$sdata: [bv1][int]int;

axiom {:array_info "$$sdata"} {:group_shared} {:elem_width 32} {:source_name "sdata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sdata: bool;

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

function BV32_LSHR(int, int) : int;

function FADD32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "reduce"} {:kernel} $reduce($n: int);
  requires !_READ_HAS_OCCURRED_$$g_idata && !_WRITE_HAS_OCCURRED_$$g_idata && !_ATOMIC_HAS_OCCURRED_$$g_idata;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$sdata && !_WRITE_HAS_OCCURRED_$$sdata && !_ATOMIC_HAS_OCCURRED_$$sdata;
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
  modifies $$sdata, _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _READ_HAS_OCCURRED_$$sdata, $$g_odata, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _TRACKING;



implementation {:source_name "reduce"} {:kernel} $reduce($n: int)
{
  var $i.0$1: int;
  var $i.0$2: int;
  var $s.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: bool;
  var v10$2: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1 := group_size_x;
    call {:sourceloc} {:sourceloc_num 1} _LOG_WRITE_$$sdata(true, v0$1, 0, $$sdata[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_WRITE_$$sdata(true, v0$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][v0$1] := 0;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := 0;
    $i.0$1 := BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1);
    $i.0$2 := BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b11 ==> _WRITE_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _READ_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_ULT($i.0$1, $n) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_ULT($i.0$2, $n) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($i.0$1, BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($i.0$2, BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($i.0$1, BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($i.0$2, BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($i.0$1, BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($i.0$2, BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($i.0$1, BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($i.0$2, BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $i.0$1 mod BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x) == BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(group_size_x, 2)), v0$1) mod BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $i.0$2 mod BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x) == BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(group_size_x, 2)), v0$2) mod BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x);
    assert {:block_sourceloc} {:sourceloc_num 2} p0$1 ==> true;
    v2$1 := (if p0$1 then BV32_ULT($i.0$1, $n) else v2$1);
    v2$2 := (if p0$2 then BV32_ULT($i.0$2, $n) else v2$2);
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
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$sdata(p1$1, v0$1, $$sdata[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$sdata(p1$2, v0$2, $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v5$1 := (if p1$1 then $$sdata[1bv1][v0$1] else v5$1);
    v5$2 := (if p1$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v5$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$sdata(p1$1, v0$1, FADD32(v5$1, FADD32(v3$1, v4$1)), $$sdata[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p1$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$sdata(p1$2, v0$2, FADD32(v5$2, FADD32(v3$2, v4$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][v0$1] := (if p1$1 then FADD32(v5$1, FADD32(v3$1, v4$1)) else $$sdata[1bv1][v0$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p1$2 then FADD32(v5$2, FADD32(v3$2, v4$2)) else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    $i.0$1 := (if p1$1 then BV32_ADD($i.0$1, BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x)) else $i.0$1);
    $i.0$2 := (if p1$2 then BV32_ADD($i.0$2, BV32_MUL(BV32_MUL(group_size_x, 2), num_groups_x)) else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_0(-1, 0);
    $s.0 := BV32_UDIV(v1, 2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _WRITE_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b16 ==> _READ_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b15 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assert {:tag "noread"} _b14 ==> !_READ_HAS_OCCURRED_$$sdata;
    assert {:tag "pow2NotZero"} _b13 ==> $s.0 != 0;
    assert {:tag "pow2"} _b12 ==> $s.0 == 0 || BV32_AND($s.0, BV32_SUB($s.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($s.0, BV32_UDIV(v1, 2));
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($s.0, BV32_UDIV(v1, 2));
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($s.0, BV32_UDIV(v1, 2));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($s.0, BV32_UDIV(v1, 2));
    assert {:block_sourceloc} {:sourceloc_num 10} true;
    v6 := BV32_UGT($s.0, 0);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    v10$1 := v0$1 == 0;
    v10$2 := v0$2 == 0;
    p5$1 := (if v10$1 then v10$1 else p5$1);
    p5$2 := (if v10$2 then v10$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$sdata(p5$1, 0, $$sdata[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$sdata(p5$2, 0, $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v11$1 := (if p5$1 then $$sdata[1bv1][0] else v11$1);
    v11$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v11$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$g_odata(p5$1, group_id_x$1, v11$1, $$g_odata[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p5$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$g_odata(p5$2, group_id_x$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[group_id_x$1] := (if p5$1 then v11$1 else $$g_odata[group_id_x$1]);
    $$g_odata[group_id_x$2] := (if p5$2 then v11$2 else $$g_odata[group_id_x$2]);
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v6;
    v7$1 := BV32_ULT(v0$1, $s.0);
    v7$2 := BV32_ULT(v0$2, $s.0);
    p4$1 := (if v7$1 then v7$1 else p4$1);
    p4$2 := (if v7$2 then v7$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$sdata(p4$1, BV32_ADD(v0$1, $s.0), $$sdata[1bv1][BV32_ADD(v0$1, $s.0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$sdata(p4$2, BV32_ADD(v0$2, $s.0), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, $s.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v8$1 := (if p4$1 then $$sdata[1bv1][BV32_ADD(v0$1, $s.0)] else v8$1);
    v8$2 := (if p4$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, $s.0)] else v8$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$sdata(p4$1, v0$1, $$sdata[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$sdata(p4$2, v0$2, $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v9$1 := (if p4$1 then $$sdata[1bv1][v0$1] else v9$1);
    v9$2 := (if p4$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v9$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$sdata(p4$1, v0$1, FADD32(v9$1, v8$1), $$sdata[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p4$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$sdata(p4$2, v0$2, FADD32(v9$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][v0$1] := (if p4$1 then FADD32(v9$1, v8$1) else $$sdata[1bv1][v0$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p4$2 then FADD32(v9$2, v8$2) else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 17} $bugle_barrier_duplicated_1(-1, 0);
    $s.0 := BV32_LSHR($s.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $4;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$sdata, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$sdata, $$g_odata, _TRACKING;



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

const _WATCHED_VALUE_$$g_idata: int;

procedure {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _READ_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_idata);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_idata, _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _WRITE_HAS_OCCURRED_$$g_idata);
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



procedure _CHECK_WRITE_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_ATOMIC_$$g_idata(_P: bool, _offset: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$sdata: int;

procedure {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _READ_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_READ_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sdata && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sdata: bool;

procedure {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _WRITE_HAS_OCCURRED_$$sdata);
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



procedure _CHECK_WRITE_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_ATOMIC_$$sdata(_P: bool, _offset: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sdata);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function BV32_AND(int, int) : int;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;
