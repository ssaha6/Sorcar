type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(_P$1: bool, x$1: [bv32]bv32, y$1: bv32, _P$2: bool, x$2: [bv32]bv32, y$2: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "d_PartialHistograms"} {:global} $$d_PartialHistograms: [bv32]bv32;

axiom {:array_info "$$d_PartialHistograms"} {:global} {:elem_width 32} {:source_name "d_PartialHistograms"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_PartialHistograms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_PartialHistograms: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms: bool;

axiom {:array_info "$$d_Data"} {:global} {:elem_width 32} {:source_name "d_Data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Data: bool;

axiom {:array_info "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:group_shared} {:elem_width 32} {:source_name "s_Hist"} {:source_elem_width 32} {:source_dimensions "1536"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist: bool;

const _WATCHED_OFFSET: bv32;

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

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

procedure {:source_name "histogram256Kernel"} {:kernel} $_Z18histogram256KernelPjS_j($dataCount: bv32);
  requires !_READ_HAS_OCCURRED_$$d_PartialHistograms && !_WRITE_HAS_OCCURRED_$$d_PartialHistograms && !_ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;
  requires !_READ_HAS_OCCURRED_$$d_Data && !_WRITE_HAS_OCCURRED_$$d_Data && !_ATOMIC_HAS_OCCURRED_$$d_Data;
  requires !_READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && !_WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && !_ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
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
  modifies _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist, $$d_PartialHistograms, _TRACKING, _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist, _WRITE_HAS_OCCURRED_$$d_PartialHistograms, _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms, _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms, _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist, _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist, _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist;



implementation {:source_name "histogram256Kernel"} {:kernel} $_Z18histogram256KernelPjS_j($dataCount: bv32)
{
  var $i.0: bv32;
  var $pos.0$1: bv32;
  var $pos.0$2: bv32;
  var $bin.0$1: bv32;
  var $bin.0$2: bv32;
  var $sum.0$1: bv32;
  var $sum.0$2: bv32;
  var $i1.0$1: bv32;
  var $i1.0$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v0: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bv32;
  var v9$2: bv32;
  var _abstracted_call_arg_0$1: bv32;
  var _abstracted_call_arg_0$2: bv32;
  var _abstracted_call_arg_1$1: bv32;
  var _abstracted_call_arg_1$2: bv32;
  var _abstracted_call_arg_2$1: bv32;
  var _abstracted_call_arg_2$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  $0:
    $i.0 := 0bv32;
    p0$1 := false;
    p0$2 := false;
    p3$1 := false;
    p3$2 := false;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b23 ==> _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 192bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 192bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 192bv32), local_id_x$1));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0, 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    assert {:originated_from_invariant} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 192bv32) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    v0 := BV32_ULT($i.0, 8bv32);
    goto $truebb, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v0;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $pos.0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    $pos.0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b9 ==> BV32_ULT($pos.0$1, $dataCount) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b9 ==> BV32_ULT($pos.0$2, $dataCount) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b8 ==> BV32_UGE($pos.0$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b8 ==> BV32_UGE($pos.0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b7 ==> BV32_ULE($pos.0$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b7 ==> BV32_ULE($pos.0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b6 ==> BV32_SGE($pos.0$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b6 ==> BV32_SGE($pos.0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV32_SLE($pos.0$1, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV32_SLE($pos.0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b4 ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), $pos.0$1) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b4 ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), $pos.0$2) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assert {:block_sourceloc} {:sourceloc_num 8} p0$1 ==> true;
    v1$1 := (if p0$1 then BV32_ULT($pos.0$1, $dataCount) else v1$1);
    v1$2 := (if p0$2 then BV32_ULT($pos.0$2, $dataCount) else v1$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p1$1 := (if p0$1 && v1$1 then v1$1 else p1$1);
    p1$2 := (if p0$2 && v1$2 then v1$2 else p1$2);
    p0$1 := (if p0$1 && !v1$1 then v1$1 else p0$1);
    p0$2 := (if p0$2 && !v1$2 then v1$2 else p0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p1$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_bv32$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$1, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$1, 255bv32), 4bv32)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$2, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$2, 255bv32), 4bv32)), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v3$1 := (if p1$1 then _HAVOC_bv32$1 else v3$1);
    v3$2 := (if p1$2 then _HAVOC_bv32$2 else v3$2);
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$1, 255bv32), 4bv32)), 4bv32)][v3$1];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$1, 255bv32), 4bv32)), 4bv32)][v3$1] := true;
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$2, 255bv32), 4bv32)), 4bv32)][v3$2];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(v2$2, 255bv32), 4bv32)), 4bv32)][v3$2] := true;
    call {:sourceloc} {:sourceloc_num 12} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$1, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 8bv32), 255bv32), 4bv32)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$2, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 8bv32), 255bv32), 4bv32)), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v4$1 := (if p1$1 then _HAVOC_bv32$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_bv32$2 else v4$2);
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 8bv32), 255bv32), 4bv32)), 4bv32)][v4$1];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 8bv32), 255bv32), 4bv32)), 4bv32)][v4$1] := true;
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 8bv32), 255bv32), 4bv32)), 4bv32)][v4$2];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 8bv32), 255bv32), 4bv32)), 4bv32)][v4$2] := true;
    call {:sourceloc} {:sourceloc_num 13} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$1, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 16bv32), 255bv32), 4bv32)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 13} _CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$2, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 16bv32), 255bv32), 4bv32)), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v5$1 := (if p1$1 then _HAVOC_bv32$1 else v5$1);
    v5$2 := (if p1$2 then _HAVOC_bv32$2 else v5$2);
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 16bv32), 255bv32), 4bv32)), 4bv32)][v5$1];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 16bv32), 255bv32), 4bv32)), 4bv32)][v5$1] := true;
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 16bv32), 255bv32), 4bv32)), 4bv32)][v5$2];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 16bv32), 255bv32), 4bv32)), 4bv32)][v5$2] := true;
    call {:sourceloc} {:sourceloc_num 14} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$1, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 24bv32), 255bv32), 4bv32)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 14} _CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(p1$2, BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 24bv32), 255bv32), 4bv32)), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v6$1 := (if p1$1 then _HAVOC_bv32$1 else v6$1);
    v6$2 := (if p1$2 then _HAVOC_bv32$2 else v6$2);
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 24bv32), 255bv32), 4bv32)), 4bv32)][v6$1];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$1, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$1, 24bv32), 255bv32), 4bv32)), 4bv32)][v6$1] := true;
    assume !_USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 24bv32), 255bv32), 4bv32)), 4bv32)][v6$2];
    _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist[BV32_SDIV(BV32_ADD(BV32_MUL(BV32_MUL(BV32_LSHR(local_id_x$2, 5bv32), 256bv32), 4bv32), BV32_MUL(BV32_AND(BV32_LSHR(v2$2, 24bv32), 255bv32), 4bv32)), 4bv32)][v6$2] := true;
    $pos.0$1 := (if p1$1 then BV32_ADD($pos.0$1, BV32_MUL(group_size_x, num_groups_x)) else $pos.0$1);
    $pos.0$2 := (if p1$2 then BV32_ADD($pos.0$2, BV32_MUL(group_size_x, num_groups_x)) else $pos.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $5.backedge, __partitioned_block_$5.tail_0;

  __partitioned_block_$5.tail_0:
    assume !p0$1 && !p0$2;
    goto __partitioned_block_$5.tail_1;

  __partitioned_block_$5.tail_1:
    call {:sourceloc_num 17} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    $bin.0$1 := local_id_x$1;
    $bin.0$2 := local_id_x$2;
    p3$1 := true;
    p3$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessBreak"} _b27 ==> _WRITE_HAS_OCCURRED_$$d_PartialHistograms ==> group_id_x$1 == BV32_DIV(_WATCHED_OFFSET, 256bv32);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b26 ==> _WRITE_HAS_OCCURRED_$$d_PartialHistograms ==> BV32_AND(BV32_SUB(192bv32, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(192bv32, 1bv32), BV32_ADD(local_id_x$1, BV32_MUL(group_id_x$1, 256bv32)));
    assert {:tag "accessUpperBoundBlock"} _b25 ==> _WRITE_HAS_OCCURRED_$$d_PartialHistograms ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(group_id_x$1, 1bv32), 256bv32));
    assert {:tag "accessLowerBoundBlock"} _b24 ==> _WRITE_HAS_OCCURRED_$$d_PartialHistograms ==> BV32_SLE(BV32_MUL(group_id_x$1, 256bv32), _WATCHED_OFFSET);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> BV32_ULT($bin.0$1, 256bv32) ==> p3$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> BV32_ULT($bin.0$2, 256bv32) ==> p3$2;
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b14 ==> BV32_UGE($bin.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b14 ==> BV32_UGE($bin.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b13 ==> BV32_ULE($bin.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b13 ==> BV32_ULE($bin.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b12 ==> BV32_SGE($bin.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b12 ==> BV32_SGE($bin.0$2, local_id_x$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b11 ==> BV32_SLE($bin.0$1, local_id_x$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b11 ==> BV32_SLE($bin.0$2, local_id_x$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p3$1 ==> _b10 ==> BV32_AND(BV32_SUB(192bv32, 1bv32), $bin.0$1) == BV32_AND(BV32_SUB(192bv32, 1bv32), local_id_x$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p3$2 ==> _b10 ==> BV32_AND(BV32_SUB(192bv32, 1bv32), $bin.0$2) == BV32_AND(BV32_SUB(192bv32, 1bv32), local_id_x$2);
    assert {:block_sourceloc} {:sourceloc_num 18} p3$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 19} {:thread 1} (if BV32_UREM($bin.0$1, group_size_x) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 19} {:thread 2} (if BV32_UREM($bin.0$2, group_size_x) == local_id_x$2 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 20} {:thread 1} (if _WRITE_HAS_OCCURRED_$$d_PartialHistograms ==> BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), 256bv32), group_size_x) == local_id_x$1 then 1bv1 else 0bv1) != 0bv1;
    v7$1 := (if p3$1 then BV32_ULT($bin.0$1, 256bv32) else v7$1);
    v7$2 := (if p3$2 then BV32_ULT($bin.0$2, 256bv32) else v7$2);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p4$1 := (if p3$1 && v7$1 then v7$1 else p4$1);
    p4$2 := (if p3$2 && v7$2 then v7$2 else p4$2);
    p3$1 := (if p3$1 && !v7$1 then v7$1 else p3$1);
    p3$2 := (if p3$2 && !v7$2 then v7$2 else p3$2);
    $sum.0$1, $i1.0$1 := (if p4$1 then 0bv32 else $sum.0$1), (if p4$1 then 0bv32 else $i1.0$1);
    $sum.0$2, $i1.0$2 := (if p4$2 then 0bv32 else $sum.0$2), (if p4$2 then 0bv32 else $i1.0$2);
    p5$1 := (if p4$1 then true else p5$1);
    p5$2 := (if p4$2 then true else p5$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p5"} {:dominator_predicate "p4"} true;
    assert p5$1 ==> p3$1;
    assert p5$2 ==> p3$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist ==> BV32_ULT($bin.0$1, 256bv32);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b21 ==> BV32_ULT($bin.0$1, 256bv32) && BV32_ULT($i1.0$1, 6bv32) ==> p5$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b21 ==> BV32_ULT($bin.0$2, 256bv32) && BV32_ULT($i1.0$2, 6bv32) ==> p5$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p5$1 ==> _b20 ==> p5$1 ==> BV32_ULT($bin.0$1, 256bv32);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p5$2 ==> _b20 ==> p5$2 ==> BV32_ULT($bin.0$2, 256bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b19 ==> BV32_UGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b19 ==> BV32_UGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b18 ==> BV32_ULE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b18 ==> BV32_ULE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b17 ==> BV32_SGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b17 ==> BV32_SGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b16 ==> BV32_SLE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b16 ==> BV32_SLE($i1.0$2, 0bv32);
    assert {:block_sourceloc} {:sourceloc_num 22} p5$1 ==> true;
    v8$1 := (if p5$1 then BV32_ULT($i1.0$1, 6bv32) else v8$1);
    v8$2 := (if p5$2 then BV32_ULT($i1.0$2, 6bv32) else v8$2);
    p6$1 := false;
    p6$2 := false;
    p6$1 := (if p5$1 && v8$1 then v8$1 else p6$1);
    p6$2 := (if p5$2 && v8$2 then v8$2 else p6$2);
    p5$1 := (if p5$1 && !v8$1 then v8$1 else p5$1);
    p5$2 := (if p5$2 && !v8$2 then v8$2 else p5$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_0$1 := (if p6$1 then _HAVOC_bv32$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p6$2 then _HAVOC_bv32$2 else _abstracted_call_arg_0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 24} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_1$1 := (if p6$1 then _HAVOC_bv32$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p6$2 then _HAVOC_bv32$2 else _abstracted_call_arg_1$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v9$1 := (if p6$1 then _HAVOC_bv32$1 else v9$1);
    v9$2 := (if p6$2 then _HAVOC_bv32$2 else v9$2);
    $sum.0$1, $i1.0$1 := (if p6$1 then BV32_ADD($sum.0$1, v9$1) else $sum.0$1), (if p6$1 then BV32_ADD($i1.0$1, 1bv32) else $i1.0$1);
    $sum.0$2, $i1.0$2 := (if p6$2 then BV32_ADD($sum.0$2, v9$2) else $sum.0$2), (if p6$2 then BV32_ADD($i1.0$2, 1bv32) else $i1.0$2);
    p5$1 := (if p6$1 then true else p5$1);
    p5$2 := (if p6$2 then true else p5$2);
    goto $11.backedge, $11.tail;

  $11.tail:
    assume !p5$1 && !p5$2;
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$d_PartialHistograms(p4$1, BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), $bin.0$1), $sum.0$1, $$d_PartialHistograms[BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), $bin.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms(p4$2, BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), $bin.0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$d_PartialHistograms(p4$2, BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), $bin.0$2), $sum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_PartialHistograms"} true;
    $$d_PartialHistograms[BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), $bin.0$1)] := (if p4$1 then $sum.0$1 else $$d_PartialHistograms[BV32_ADD(BV32_MUL(group_id_x$1, 256bv32), $bin.0$1)]);
    $$d_PartialHistograms[BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), $bin.0$2)] := (if p4$2 then $sum.0$2 else $$d_PartialHistograms[BV32_ADD(BV32_MUL(group_id_x$2, 256bv32), $bin.0$2)]);
    $bin.0$1 := (if p4$1 then BV32_ADD($bin.0$1, 192bv32) else $bin.0$1);
    $bin.0$2 := (if p4$2 then BV32_ADD($bin.0$2, 192bv32) else $bin.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $9.backedge, $9.tail;

  $9.tail:
    assume !p3$1 && !p3$2;
    return;

  $9.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $9;

  $11.backedge:
    assume {:backedge} p5$1 || p5$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $11;

  $5.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v0;
    havoc _abstracted_call_arg_2$1, _abstracted_call_arg_2$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist(true, BV32_ADD(local_id_x$1, BV32_MUL($i.0, 192bv32)), 0bv32, _abstracted_call_arg_2$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist(true, BV32_ADD(local_id_x$2, BV32_MUL($i.0, 192bv32)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist(true, BV32_ADD(local_id_x$2, BV32_MUL($i.0, 192bv32)), 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist"} true;
    $i.0 := BV32_ADD($i.0, 1bv32);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $1;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 192bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 240bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$d_PartialHistograms, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$d_PartialHistograms, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

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

var {:atomic_usedmap} _USED_$$_ZZ18histogram256KernelPjS_jE6s_Hist: [bv32][bv32]bool;

const _WATCHED_VALUE_$$d_PartialHistograms: bv32;

procedure {:inline 1} _LOG_READ_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_PartialHistograms;



implementation {:inline 1} _LOG_READ_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then true else _READ_HAS_OCCURRED_$$d_PartialHistograms);
    return;
}



procedure _CHECK_READ_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms: bool;

procedure {:inline 1} _LOG_WRITE_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_PartialHistograms, _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms;



implementation {:inline 1} _LOG_WRITE_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then true else _WRITE_HAS_OCCURRED_$$d_PartialHistograms);
    _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
    return;
}



procedure _CHECK_WRITE_$$d_PartialHistograms(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms != _value);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_PartialHistograms != _value);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;



implementation {:inline 1} _LOG_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_PartialHistograms);
    return;
}



procedure _CHECK_ATOMIC_$$d_PartialHistograms(_P: bool, _offset: bv32);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_PartialHistograms"} {:array "$$d_PartialHistograms"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms := (if _P && _WRITE_HAS_OCCURRED_$$d_PartialHistograms && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_PartialHistograms);
    return;
}



const _WATCHED_VALUE_$$d_Data: bv32;

procedure {:inline 1} _LOG_READ_$$d_Data(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_Data;



implementation {:inline 1} _LOG_READ_$$d_Data(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then true else _READ_HAS_OCCURRED_$$d_Data);
    return;
}



procedure _CHECK_READ_$$d_Data(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Data);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Data: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Data(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_Data, _WRITE_READ_BENIGN_FLAG_$$d_Data;



implementation {:inline 1} _LOG_WRITE_$$d_Data(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then true else _WRITE_HAS_OCCURRED_$$d_Data);
    _WRITE_READ_BENIGN_FLAG_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Data);
    return;
}



procedure _CHECK_WRITE_$$d_Data(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data != _value);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data != _value);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Data(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Data;



implementation {:inline 1} _LOG_ATOMIC_$$d_Data(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Data);
    return;
}



procedure _CHECK_ATOMIC_$$d_Data(_P: bool, _offset: bv32);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Data := (if _P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Data);
    return;
}



const _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;



implementation {:inline 1} _LOG_READ_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist == _value then true else _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist);
    return;
}



procedure _CHECK_READ_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist, _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist;



implementation {:inline 1} _LOG_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist);
    return;
}



procedure _CHECK_WRITE_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18histogram256KernelPjS_jE6s_Hist != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Hist"} {:array "$$_ZZ18histogram256KernelPjS_jE6s_Hist"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ18histogram256KernelPjS_jE6s_Hist);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_PartialHistograms;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_PartialHistograms;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon6_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$d_PartialHistograms;
    goto anon4;

  anon5_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ18histogram256KernelPjS_jE6s_Hist;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_PartialHistograms;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_PartialHistograms;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_PartialHistograms;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon6_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$d_PartialHistograms;
    goto anon4;

  anon5_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

const {:existential true} _b27: bool;
