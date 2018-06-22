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

axiom {:array_info "$$sdata"} {:group_shared} {:elem_width 32} {:source_name "sdata"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sdata: bool;

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

function FADD32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "reduceMultiPass<128, true>"} {:kernel} $_Z15reduceMultiPassILj128ELb1EEvPKfPfj($n: int);
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
  modifies $$sdata, _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, $$g_odata, _TRACKING, _READ_HAS_OCCURRED_$$sdata, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:source_name "reduceMultiPass<128, true>"} {:kernel} $_Z15reduceMultiPassILj128ELb1EEvPKfPfj($n: int)
{
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $mySum.i.0$1: int;
  var $mySum.i.0$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v0$1: bool;
  var v0$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    $i.i.0$1, $mySum.i.0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 256), local_id_x$1), 0;
    $i.i.0$2, $mySum.i.0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 256), local_id_x$2), 0;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 1} p0$1 ==> true;
    v0$1 := (if p0$1 then BV32_ULT($i.i.0$1, $n) else v0$1);
    v0$2 := (if p0$2 then BV32_ULT($i.i.0$2, $n) else v0$2);
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
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p1$1 := (if p0$1 && v0$1 then v0$1 else p1$1);
    p1$2 := (if p0$2 && v0$2 then v0$2 else p1$2);
    p0$1 := (if p0$1 && !v0$1 then v0$1 else p0$1);
    p0$2 := (if p0$2 && !v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p1$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p1$2 then _HAVOC_int$2 else v1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p1$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p1$2 then _HAVOC_int$2 else v2$2);
    $i.i.0$1, $mySum.i.0$1 := (if p1$1 then BV32_ADD($i.i.0$1, BV32_MUL(256, num_groups_x)) else $i.i.0$1), (if p1$1 then FADD32(FADD32($mySum.i.0$1, v1$1), v2$1) else $mySum.i.0$1);
    $i.i.0$2, $mySum.i.0$2 := (if p1$2 then BV32_ADD($i.i.0$2, BV32_MUL(256, num_groups_x)) else $i.i.0$2), (if p1$2 then FADD32(FADD32($mySum.i.0$2, v1$2), v2$2) else $mySum.i.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, __partitioned_block_$1.tail_0;

  __partitioned_block_$1.tail_0:
    assume !p0$1 && !p0$2;
    call _PRE_WARP_SYNC_$$sdata_WRITE(true, true);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$sdata(true, local_id_x$1, $mySum.i.0$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$sdata(true, local_id_x$2, $mySum.i.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(true, true);
    $$sdata[1bv1][local_id_x$1] := $mySum.i.0$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $mySum.i.0$2;
    goto __partitioned_block_$1.tail_1;

  __partitioned_block_$1.tail_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    v3$1 := BV32_ULT(local_id_x$1, 64);
    v3$2 := BV32_ULT(local_id_x$2, 64);
    p3$1 := (if v3$1 then v3$1 else p3$1);
    p3$2 := (if v3$2 then v3$2 else p3$2);
    p4$1 := (if !v3$1 then !v3$1 else p4$1);
    p4$2 := (if !v3$2 then !v3$2 else p4$2);
    call _PRE_WARP_SYNC_$$sdata_READ(p3$1, p3$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$sdata(p3$1, BV32_ADD(local_id_x$1, 64), $$sdata[1bv1][BV32_ADD(local_id_x$1, 64)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$sdata(p3$2, BV32_ADD(local_id_x$2, 64), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p3$1, p3$2);
    v4$1 := (if p3$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 64)] else v4$1);
    v4$2 := (if p3$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64)] else v4$2);
    v5$1 := (if p3$1 then FADD32($mySum.i.0$1, v4$1) else v5$1);
    v5$2 := (if p3$2 then FADD32($mySum.i.0$2, v4$2) else v5$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p3$1, p3$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$sdata(p3$1, local_id_x$1, v5$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p3$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$sdata(p3$2, local_id_x$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p3$1, p3$2);
    $$sdata[1bv1][local_id_x$1] := (if p3$1 then v5$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p3$2 then v5$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $.0$1 := (if p3$1 then v5$1 else $.0$1);
    $.0$2 := (if p3$2 then v5$2 else $.0$2);
    $.0$1 := (if p4$1 then $mySum.i.0$1 else $.0$1);
    $.0$2 := (if p4$2 then $mySum.i.0$2 else $.0$2);
    goto __partitioned_block_$1.tail_2;

  __partitioned_block_$1.tail_2:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_1(-1, -1);
    v6$1 := BV32_ULT(local_id_x$1, 32);
    v6$2 := BV32_ULT(local_id_x$2, 32);
    p5$1 := (if v6$1 then v6$1 else p5$1);
    p5$2 := (if v6$2 then v6$2 else p5$2);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 32), $$sdata[1bv1][BV32_ADD(local_id_x$1, 32)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 32), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v7$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 32)] else v7$1);
    v7$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32)] else v7$2);
    v8$1 := (if p5$1 then FADD32($.0$1, v7$1) else v8$1);
    v8$2 := (if p5$2 then FADD32($.0$2, v7$2) else v8$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v8$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v8$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v8$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 16), $$sdata[1bv1][BV32_ADD(local_id_x$1, 16)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 16), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v9$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 16)] else v9$1);
    v9$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16)] else v9$2);
    v10$1 := (if p5$1 then FADD32(v8$1, v9$1) else v10$1);
    v10$2 := (if p5$2 then FADD32(v8$2, v9$2) else v10$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v10$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v10$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v10$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 8), $$sdata[1bv1][BV32_ADD(local_id_x$1, 8)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 8), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v11$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 8)] else v11$1);
    v11$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8)] else v11$2);
    v12$1 := (if p5$1 then FADD32(v10$1, v11$1) else v12$1);
    v12$2 := (if p5$2 then FADD32(v10$2, v11$2) else v12$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v12$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v12$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v12$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 4), $$sdata[1bv1][BV32_ADD(local_id_x$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 4), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v13$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 4)] else v13$1);
    v13$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4)] else v13$2);
    v14$1 := (if p5$1 then FADD32(v12$1, v13$1) else v14$1);
    v14$2 := (if p5$2 then FADD32(v12$2, v13$2) else v14$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v14$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v14$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v14$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 2), $$sdata[1bv1][BV32_ADD(local_id_x$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 2), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v15$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 2)] else v15$1);
    v15$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2)] else v15$2);
    v16$1 := (if p5$1 then FADD32(v14$1, v15$1) else v16$1);
    v16$2 := (if p5$2 then FADD32(v14$2, v15$2) else v16$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, v16$1, $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then v16$1 else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then v16$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$sdata(p5$1, BV32_ADD(local_id_x$1, 1), $$sdata[1bv1][BV32_ADD(local_id_x$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$sdata(p5$2, BV32_ADD(local_id_x$2, 1), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p5$1, p5$2);
    v17$1 := (if p5$1 then $$sdata[1bv1][BV32_ADD(local_id_x$1, 1)] else v17$1);
    v17$2 := (if p5$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1)] else v17$2);
    call _PRE_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$sdata(p5$1, local_id_x$1, FADD32(v16$1, v17$1), $$sdata[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$sdata(p5$2, local_id_x$2, FADD32(v16$2, v17$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_WRITE(p5$1, p5$2);
    $$sdata[1bv1][local_id_x$1] := (if p5$1 then FADD32(v16$1, v17$1) else $$sdata[1bv1][local_id_x$1]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p5$2 then FADD32(v16$2, v17$2) else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    v18$1 := local_id_x$1 == 0;
    v18$2 := local_id_x$2 == 0;
    p7$1 := (if v18$1 then v18$1 else p7$1);
    p7$2 := (if v18$2 then v18$2 else p7$2);
    call _PRE_WARP_SYNC_$$sdata_READ(p7$1, p7$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$sdata(p7$1, 0, $$sdata[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$sdata(p7$2, 0, $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    call _POST_WARP_SYNC_$$sdata_READ(p7$1, p7$2);
    v19$1 := (if p7$1 then $$sdata[1bv1][0] else v19$1);
    v19$2 := (if p7$2 then $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v19$2);
    call _PRE_WARP_SYNC_$$g_odata_WRITE(p7$1, p7$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$g_odata(p7$1, group_id_x$1, v19$1, $$g_odata[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p7$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$g_odata(p7$2, group_id_x$2, v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    call _POST_WARP_SYNC_$$g_odata_WRITE(p7$1, p7$2);
    $$g_odata[group_id_x$1] := (if p7$1 then v19$1 else $$g_odata[group_id_x$1]);
    $$g_odata[group_id_x$2] := (if p7$2 then v19$2 else $$g_odata[group_id_x$2]);
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$sdata, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$sdata, $$g_odata, _TRACKING;



procedure {:inline 1} _PRE_WARP_SYNC_$$sdata_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$sdata_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$sdata_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$sdata_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool);



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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

implementation {:inline 1} _PRE_WARP_SYNC_$$sdata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$sdata;
    assume !_WRITE_HAS_OCCURRED_$$sdata;
    assume !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon0;

  anon0:
    havoc $$sdata;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$sdata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$sdata;
    goto anon0;

  anon0:
    havoc $$sdata;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$sdata_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$sdata;
    assume !_ATOMIC_HAS_OCCURRED_$$sdata;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$sdata_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$sdata;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$g_odata;
    assume !_WRITE_HAS_OCCURRED_$$g_odata;
    assume !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon0;

  anon0:
    havoc $$g_odata;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$g_odata;
    goto anon0;

  anon0:
    havoc $$g_odata;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_MUL(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_MUL(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


