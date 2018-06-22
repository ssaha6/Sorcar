type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(y: int, x$1: [int]int, x$2: [int]int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);
  requires y == 0;



var {:source_name "in"} {:global} $$in: [int]int;

axiom {:array_info "$$in"} {:global} {:elem_width 32} {:source_name "in"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$in: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$in: bool;

var {:source_name "out"} {:global} $$out: [int]int;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

axiom {:array_info "$$readKernel.lcount"} {:group_shared} {:elem_width 32} {:source_name "lcount"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$readKernel.lcount: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$readKernel.lcount: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$readKernel.lcount: bool;

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

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "readKernel"} {:kernel} $readKernel($ni: int, $val: int, $nk: int);
  requires !_READ_HAS_OCCURRED_$$in && !_WRITE_HAS_OCCURRED_$$in && !_ATOMIC_HAS_OCCURRED_$$in;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
  requires !_READ_HAS_OCCURRED_$$readKernel.lcount && !_WRITE_HAS_OCCURRED_$$readKernel.lcount && !_ATOMIC_HAS_OCCURRED_$$readKernel.lcount;
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
  modifies _WRITE_HAS_OCCURRED_$$readKernel.lcount, _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount, _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount, $$out, _TRACKING, _ATOMIC_HAS_OCCURRED_$$readKernel.lcount, _TRACKING, _READ_HAS_OCCURRED_$$readKernel.lcount, _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:source_name "readKernel"} {:kernel} $readKernel($ni: int, $val: int, $nk: int)
{
  var $pcount.0$1: int;
  var $pcount.0$2: int;
  var $n.0: int;
  var $pcount.1$1: int;
  var $pcount.1$2: int;
  var $i.0: int;
  var $idx.0$1: int;
  var $idx.0$2: int;
  var $pcount.2$1: int;
  var $pcount.2$2: int;
  var $pcount.3$1: int;
  var $pcount.3$2: int;
  var $pcount.4$1: int;
  var $pcount.4$2: int;
  var $pcount.5$1: int;
  var $pcount.5$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: bool;
  var v24$2: bool;
  var v0$1: bool;
  var v0$2: bool;
  var v1: bool;
  var v2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
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
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: bool;
  var v22$2: bool;
  var v25$1: int;
  var v25$2: int;
  var v26$1: bool;
  var v26$2: bool;
  var _abstracted_call_arg_0$1: int;
  var _abstracted_call_arg_0$2: int;
  var _abstracted_call_arg_1$1: int;
  var _abstracted_call_arg_1$2: int;
  var _abstracted_call_arg_2$1: int;
  var _abstracted_call_arg_2$2: int;
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
  var p13$1: bool;
  var p13$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1 == 0;
    v0$2 := local_id_x$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_2$1 := (if p0$1 then _HAVOC_int$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p0$2 then _HAVOC_int$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$readKernel.lcount(p0$1, 0, 0, _abstracted_call_arg_2$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$readKernel.lcount(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$readKernel.lcount(p0$2, 0, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$readKernel.lcount"} true;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 4} $bugle_barrier_duplicated_0(-1, 0);
    $pcount.0$1, $n.0 := 0, 0;
    $pcount.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 5} true;
    v1 := BV32_ULT($n.0, $nk);
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v1;
    call {:sourceloc} {:sourceloc_num 37} _LOG_ATOMIC_$$readKernel.lcount(true, 0);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 37} _CHECK_ATOMIC_$$readKernel.lcount(true, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$readKernel.lcount"} true;
    havoc v23$1, v23$2;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_1(-1, 0);
    v24$1 := local_id_x$1 == 0;
    v24$2 := local_id_x$2 == 0;
    p10$1 := (if v24$1 then v24$1 else p10$1);
    p10$2 := (if v24$2 then v24$2 else p10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_0$1 := (if p10$1 then _HAVOC_int$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p10$2 then _HAVOC_int$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$readKernel.lcount(p10$1, 0, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 40} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    _abstracted_call_arg_1$1 := (if p10$1 then _HAVOC_int$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p10$2 then _HAVOC_int$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$readKernel.lcount(p10$2, 0, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$readKernel.lcount"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p10$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p10$2 then _HAVOC_int$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$out(p10$1, group_id_x$1, BV32_UDIV(v25$1, $nk), $$out[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p10$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$out(p10$2, group_id_x$2, BV32_UDIV(v25$2, $nk));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[group_id_x$1] := (if p10$1 then BV32_UDIV(v25$1, $nk) else $$out[group_id_x$1]);
    $$out[group_id_x$2] := (if p10$2 then BV32_UDIV(v25$2, $nk) else $$out[group_id_x$2]);
    v26$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) == 0;
    v26$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2) == 0;
    p12$1 := (if v26$1 then v26$1 else p12$1);
    p12$2 := (if v26$2 then v26$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$out(p12$1, BV32_ADD(num_groups_x, 1), $val, $$out[BV32_ADD(num_groups_x, 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p12$2, BV32_ADD(num_groups_x, 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$out(p12$2, BV32_ADD(num_groups_x, 1), $val);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[BV32_ADD(num_groups_x, 1)] := (if p12$1 then $val else $$out[BV32_ADD(num_groups_x, 1)]);
    $$out[BV32_ADD(num_groups_x, 1)] := (if p12$2 then $val else $$out[BV32_ADD(num_groups_x, 1)]);
    return;

  $truebb0:
    assume {:partition} v1;
    $pcount.1$1, $i.0, $idx.0$1 := $pcount.0$1, 0, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    $pcount.1$2, $idx.0$2 := $pcount.0$2, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$readKernel.lcount ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 7} true;
    v2 := BV32_ULT($i.0, $ni);
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
    p9$1 := false;
    p9$2 := false;
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v2;
    $pcount.0$1, $n.0 := $pcount.1$1, BV32_ADD($n.0, 1);
    $pcount.0$2 := $pcount.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $truebb1:
    assume {:partition} v2;
    v3$1 := $$in[BV32_MUL($idx.0$1, 4)];
    v3$2 := $$in[BV32_MUL($idx.0$2, 4)];
    v4$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 1)];
    v4$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 1)];
    v5$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 2)];
    v5$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 2)];
    v6$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 3)];
    v6$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 3)];
    v7$1 := v3$1 == $val;
    v7$2 := v3$2 == $val;
    p3$1 := (if v7$1 then v7$1 else p3$1);
    p3$2 := (if v7$2 then v7$2 else p3$2);
    p2$1 := (if !v7$1 then !v7$1 else p2$1);
    p2$2 := (if !v7$2 then !v7$2 else p2$2);
    $pcount.2$1 := (if p2$1 then $pcount.1$1 else $pcount.2$1);
    $pcount.2$2 := (if p2$2 then $pcount.1$2 else $pcount.2$2);
    $pcount.2$1 := (if p3$1 then BV32_ADD($pcount.1$1, 1) else $pcount.2$1);
    $pcount.2$2 := (if p3$2 then BV32_ADD($pcount.1$2, 1) else $pcount.2$2);
    v8$1 := $$in[BV32_MUL($idx.0$1, 4)];
    v8$2 := $$in[BV32_MUL($idx.0$2, 4)];
    v9$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 1)];
    v9$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 1)];
    v10$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 2)];
    v10$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 2)];
    v11$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 3)];
    v11$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 3)];
    v12$1 := v9$1 == $val;
    v12$2 := v9$2 == $val;
    p5$1 := (if v12$1 then v12$1 else p5$1);
    p5$2 := (if v12$2 then v12$2 else p5$2);
    p4$1 := (if !v12$1 then !v12$1 else p4$1);
    p4$2 := (if !v12$2 then !v12$2 else p4$2);
    $pcount.3$1 := (if p4$1 then $pcount.2$1 else $pcount.3$1);
    $pcount.3$2 := (if p4$2 then $pcount.2$2 else $pcount.3$2);
    $pcount.3$1 := (if p5$1 then BV32_ADD($pcount.2$1, 1) else $pcount.3$1);
    $pcount.3$2 := (if p5$2 then BV32_ADD($pcount.2$2, 1) else $pcount.3$2);
    v13$1 := $$in[BV32_MUL($idx.0$1, 4)];
    v13$2 := $$in[BV32_MUL($idx.0$2, 4)];
    v14$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 1)];
    v14$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 1)];
    v15$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 2)];
    v15$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 2)];
    v16$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 3)];
    v16$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 3)];
    v17$1 := v15$1 == $val;
    v17$2 := v15$2 == $val;
    p7$1 := (if v17$1 then v17$1 else p7$1);
    p7$2 := (if v17$2 then v17$2 else p7$2);
    p6$1 := (if !v17$1 then !v17$1 else p6$1);
    p6$2 := (if !v17$2 then !v17$2 else p6$2);
    $pcount.4$1 := (if p6$1 then $pcount.3$1 else $pcount.4$1);
    $pcount.4$2 := (if p6$2 then $pcount.3$2 else $pcount.4$2);
    $pcount.4$1 := (if p7$1 then BV32_ADD($pcount.3$1, 1) else $pcount.4$1);
    $pcount.4$2 := (if p7$2 then BV32_ADD($pcount.3$2, 1) else $pcount.4$2);
    v18$1 := $$in[BV32_MUL($idx.0$1, 4)];
    v18$2 := $$in[BV32_MUL($idx.0$2, 4)];
    v19$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 1)];
    v19$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 1)];
    v20$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 2)];
    v20$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 2)];
    v21$1 := $$in[BV32_ADD(BV32_MUL($idx.0$1, 4), 3)];
    v21$2 := $$in[BV32_ADD(BV32_MUL($idx.0$2, 4), 3)];
    v22$1 := v21$1 == $val;
    v22$2 := v21$2 == $val;
    p9$1 := (if v22$1 then v22$1 else p9$1);
    p9$2 := (if v22$2 then v22$2 else p9$2);
    p8$1 := (if !v22$1 then !v22$1 else p8$1);
    p8$2 := (if !v22$2 then !v22$2 else p8$2);
    $pcount.5$1 := (if p8$1 then $pcount.4$1 else $pcount.5$1);
    $pcount.5$2 := (if p8$2 then $pcount.4$2 else $pcount.5$2);
    $pcount.5$1 := (if p9$1 then BV32_ADD($pcount.4$1, 1) else $pcount.5$1);
    $pcount.5$2 := (if p9$2 then BV32_ADD($pcount.4$2, 1) else $pcount.5$2);
    $pcount.1$1, $i.0, $idx.0$1 := $pcount.5$1, BV32_ADD($i.0, 1), BV32_ADD($idx.0$1, BV32_MUL(group_size_x, num_groups_x));
    $pcount.1$2, $idx.0$2 := $pcount.5$2, BV32_ADD($idx.0$2, BV32_MUL(group_size_x, num_groups_x));
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 256 then 1 else 0) != 0;

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
  modifies $$out, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$out, _TRACKING;



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



const _WATCHED_VALUE_$$readKernel.lcount: int;

procedure {:inline 1} _LOG_READ_$$readKernel.lcount(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$readKernel.lcount;



implementation {:inline 1} _LOG_READ_$$readKernel.lcount(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$readKernel.lcount := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$readKernel.lcount == _value then true else _READ_HAS_OCCURRED_$$readKernel.lcount);
    return;
}



procedure _CHECK_READ_$$readKernel.lcount(_P: bool, _offset: int, _value: int);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount: bool;

procedure {:inline 1} _LOG_WRITE_$$readKernel.lcount(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$readKernel.lcount, _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount;



implementation {:inline 1} _LOG_WRITE_$$readKernel.lcount(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$readKernel.lcount := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$readKernel.lcount == _value then true else _WRITE_HAS_OCCURRED_$$readKernel.lcount);
    _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$readKernel.lcount == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount);
    return;
}



procedure _CHECK_WRITE_$$readKernel.lcount(_P: bool, _offset: int, _value: int);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$readKernel.lcount != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$readKernel.lcount != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$readKernel.lcount(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$readKernel.lcount;



implementation {:inline 1} _LOG_ATOMIC_$$readKernel.lcount(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$readKernel.lcount := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$readKernel.lcount);
    return;
}



procedure _CHECK_ATOMIC_$$readKernel.lcount(_P: bool, _offset: int);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lcount"} {:array "$$readKernel.lcount"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$readKernel.lcount(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$readKernel.lcount(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount := (if _P && _WRITE_HAS_OCCURRED_$$readKernel.lcount && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$readKernel.lcount);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$readKernel.lcount;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$readKernel.lcount;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$readKernel.lcount;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon6_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon4;

  anon5_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon5_Then, anon5_Else;

  anon5_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$readKernel.lcount;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$readKernel.lcount;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$readKernel.lcount;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon4;

  anon4:
    havoc _TRACKING;
    return;

  anon6_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon4;

  anon5_Then:
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
