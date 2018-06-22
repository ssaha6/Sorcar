function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Histogram"} {:global} $$d_Histogram: [int]int;

axiom {:array_info "$$d_Histogram"} {:global} {:elem_width 32} {:source_name "d_Histogram"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Histogram: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Histogram: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Histogram: bool;

axiom {:array_info "$$d_PartialHistograms"} {:global} {:elem_width 32} {:source_name "d_PartialHistograms"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_PartialHistograms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_PartialHistograms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms: bool;

var {:source_name "data"} {:group_shared} $$_ZZ22mergeHistogram64KernelPjS_jE4data: [bv1][int]int;

axiom {:array_info "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:group_shared} {:elem_width 32} {:source_name "data"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data: bool;

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

function BV32_LSHR(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mergeHistogram64Kernel"} {:kernel} $_Z22mergeHistogram64KernelPjS_j($blockN: int);
  requires !_READ_HAS_OCCURRED_$$d_Histogram && !_WRITE_HAS_OCCURRED_$$d_Histogram && !_ATOMIC_HAS_OCCURRED_$$d_Histogram;
  requires !_READ_HAS_OCCURRED_$$d_PartialHistograms && !_WRITE_HAS_OCCURRED_$$d_PartialHistograms && !_ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;
  requires !_READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && !_WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && !_ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;
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
  modifies $$_ZZ22mergeHistogram64KernelPjS_jE4data, _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data, _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data, _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data, _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data, _WRITE_HAS_OCCURRED_$$d_Histogram, _WRITE_READ_BENIGN_FLAG_$$d_Histogram, _WRITE_READ_BENIGN_FLAG_$$d_Histogram, $$d_Histogram, _TRACKING;



implementation {:source_name "mergeHistogram64Kernel"} {:kernel} $_Z22mergeHistogram64KernelPjS_j($blockN: int)
{
  var $sum.0$1: int;
  var $sum.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $stride.0: int;
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
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
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
    $sum.0$1, $i.0$1 := 0, local_id_x$1;
    $sum.0$2, $i.0$2 := 0, local_id_x$2;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_ULT($i.0$1, $blockN) else v0$1);
    v0$2 := (if p0$2 then BV32_ULT($i.0$2, $blockN) else v0$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p1$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p1$2 then _HAVOC_int$2 else v1$2);
    $sum.0$1, $i.0$1 := (if p1$1 then BV32_ADD($sum.0$1, v1$1) else $sum.0$1), (if p1$1 then BV32_ADD($i.0$1, 64) else $i.0$1);
    $sum.0$2, $i.0$2 := (if p1$2 then BV32_ADD($sum.0$2, v1$2) else $sum.0$2), (if p1$2 then BV32_ADD($i.0$2, 64) else $i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(true, local_id_x$1, $sum.0$1, $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(true, local_id_x$2, $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data"} true;
    $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1] := $sum.0$1;
    $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $sum.0$2;
    $stride.0 := 32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($stride.0, 32) ) ,  (  BV32_SGE($stride.0, 32) ) ,  (  BV32_ULE($stride.0, 32) ) ,  (  BV32_UGE($stride.0, 32) ) ,  (  $stride.0 == 0 || BV32_AND($stride.0, BV32_SUB($stride.0, 1)) == 0 ) ,  (  $stride.0 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ) ,  (  _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, local_id_x$1) mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data ==> _WATCHED_OFFSET == local_id_x$1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 7} true;
    v2 := BV32_UGT($stride.0, 0);
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
    assume {:partition} !v2;
    v6$1 := local_id_x$1 == 0;
    v6$2 := local_id_x$2 == 0;
    p5$1 := (if v6$1 then v6$1 else p5$1);
    p5$2 := (if v6$2 then v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p5$1, 0, $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p5$2, 0, $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data"} true;
    v7$1 := (if p5$1 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][0] else v7$1);
    v7$2 := (if p5$2 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v7$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$d_Histogram(p5$1, group_id_x$1, v7$1, $$d_Histogram[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Histogram(p5$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$d_Histogram(p5$2, group_id_x$2, v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Histogram"} true;
    $$d_Histogram[group_id_x$1] := (if p5$1 then v7$1 else $$d_Histogram[group_id_x$1]);
    $$d_Histogram[group_id_x$2] := (if p5$2 then v7$2 else $$d_Histogram[group_id_x$2]);
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v2;
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_0(-1, -1);
    v3$1 := BV32_ULT(local_id_x$1, $stride.0);
    v3$2 := BV32_ULT(local_id_x$2, $stride.0);
    p4$1 := (if v3$1 then v3$1 else p4$1);
    p4$2 := (if v3$2 then v3$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$1, BV32_ADD(local_id_x$1, $stride.0), $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][BV32_ADD(local_id_x$1, $stride.0)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$2, BV32_ADD(local_id_x$2, $stride.0), $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $stride.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data"} true;
    v4$1 := (if p4$1 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][BV32_ADD(local_id_x$1, $stride.0)] else v4$1);
    v4$2 := (if p4$2 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $stride.0)] else v4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$1, local_id_x$1, $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$2, local_id_x$2, $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data"} true;
    v5$1 := (if p4$1 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1] else v5$1);
    v5$2 := (if p4$2 then $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v5$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$1, local_id_x$1, BV32_ADD(v5$1, v4$1), $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(p4$2, local_id_x$2, BV32_ADD(v5$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data"} true;
    $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1] := (if p4$1 then BV32_ADD(v5$1, v4$1) else $$_ZZ22mergeHistogram64KernelPjS_jE4data[1bv1][local_id_x$1]);
    $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then BV32_ADD(v5$2, v4$2) else $$_ZZ22mergeHistogram64KernelPjS_jE4data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $stride.0 := BV32_LSHR($stride.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ22mergeHistogram64KernelPjS_jE4data, $$d_Histogram, _TRACKING;



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}



const _WATCHED_VALUE_$$d_Histogram: int;

procedure {:inline 1} _LOG_READ_$$d_Histogram(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Histogram;



implementation {:inline 1} _LOG_READ_$$d_Histogram(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Histogram := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Histogram == _value then true else _READ_HAS_OCCURRED_$$d_Histogram);
    return;
}



procedure _CHECK_READ_$$d_Histogram(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Histogram);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Histogram: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Histogram(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Histogram, _WRITE_READ_BENIGN_FLAG_$$d_Histogram;



implementation {:inline 1} _LOG_WRITE_$$d_Histogram(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Histogram := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Histogram == _value then true else _WRITE_HAS_OCCURRED_$$d_Histogram);
    _WRITE_READ_BENIGN_FLAG_$$d_Histogram := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Histogram == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Histogram);
    return;
}



procedure _CHECK_WRITE_$$d_Histogram(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Histogram != _value);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Histogram != _value);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Histogram(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Histogram;



implementation {:inline 1} _LOG_ATOMIC_$$d_Histogram(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Histogram := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Histogram);
    return;
}



procedure _CHECK_ATOMIC_$$d_Histogram(_P: bool, _offset: int);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Histogram"} {:array "$$d_Histogram"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Histogram(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Histogram;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Histogram(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Histogram := (if _P && _WRITE_HAS_OCCURRED_$$d_Histogram && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Histogram);
    return;
}



const _WATCHED_VALUE_$$d_PartialHistograms: int;

procedure {:inline 1} _LOG_READ_$$d_PartialHistograms(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_PartialHistograms;



implementation {:inline 1} _LOG_READ_$$d_PartialHistograms(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then true else _READ_HAS_OCCURRED_$$d_PartialHistograms);
    return;
}



procedure _CHECK_READ_$$d_PartialHistograms(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms: bool;

procedure {:inline 1} _LOG_WRITE_$$d_PartialHistograms(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_PartialHistograms, _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms;



implementation {:inline 1} _LOG_WRITE_$$d_PartialHistograms(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then true else _WRITE_HAS_OCCURRED_$$d_PartialHistograms);
    _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
    return;
}



procedure _CHECK_WRITE_$$d_PartialHistograms(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms != _value);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms != _value);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;



implementation {:inline 1} _LOG_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms);
    return;
}



procedure _CHECK_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: int);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms := (if _P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
    return;
}



const _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data: int;

procedure {:inline 1} _LOG_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;



implementation {:inline 1} _LOG_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data == _value then true else _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data);
    return;
}



procedure _CHECK_READ_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data, _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data;



implementation {:inline 1} _LOG_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data);
    return;
}



procedure _CHECK_WRITE_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ22mergeHistogram64KernelPjS_jE4data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "data"} {:array "$$_ZZ22mergeHistogram64KernelPjS_jE4data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ22mergeHistogram64KernelPjS_jE4data);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ22mergeHistogram64KernelPjS_jE4data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Histogram;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Histogram;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Histogram;
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
    havoc $$d_Histogram;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ22mergeHistogram64KernelPjS_jE4data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function BV32_AND(int, int) : int;












