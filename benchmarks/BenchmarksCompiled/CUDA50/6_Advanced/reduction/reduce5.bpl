type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$g_idata"} {:global} {:elem_width 32} {:source_name "g_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_idata: bool;

var {:source_name "g_odata"} {:global} $$g_odata: [bv32]bv32;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

var {:source_name "__smem"} {:group_shared} $$__smem: [bv1][bv32]bv32;

axiom {:array_info "$$__smem"} {:group_shared} {:elem_width 32} {:source_name "__smem"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$__smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$__smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$__smem: bool;

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

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "reduce5<int, 256>"} {:kernel} $_Z7reduce5IiLj256EEvPT_S1_j($n: bv32);
  requires !_READ_HAS_OCCURRED_$$g_idata && !_WRITE_HAS_OCCURRED_$$g_idata && !_ATOMIC_HAS_OCCURRED_$$g_idata;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$__smem && !_WRITE_HAS_OCCURRED_$$__smem && !_ATOMIC_HAS_OCCURRED_$$__smem;
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
  modifies $$__smem, _WRITE_HAS_OCCURRED_$$__smem, _WRITE_READ_BENIGN_FLAG_$$__smem, _WRITE_READ_BENIGN_FLAG_$$__smem, $$g_odata, _TRACKING, _READ_HAS_OCCURRED_$$__smem, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:source_name "reduce5<int, 256>"} {:kernel} $_Z7reduce5IiLj256EEvPT_S1_j($n: bv32)
{
  var $0$1: bv32;
  var $0$2: bv32;
  var $mySum.0$1: bv32;
  var $mySum.0$2: bv32;
  var $mySum.1$1: bv32;
  var $mySum.1$2: bv32;
  var $mySum.2$1: bv32;
  var $mySum.2$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bool;
  var v8$2: bool;
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
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bv32;
  var v24$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 512bv32), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 512bv32), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $n);
    v1$2 := BV32_ULT(v0$2, $n);
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
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p0$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_bv32$2 else v2$2);
    $0$1 := (if p0$1 then v2$1 else $0$1);
    $0$2 := (if p0$2 then v2$2 else $0$2);
    $0$1 := (if p1$1 then 0bv32 else $0$1);
    $0$2 := (if p1$2 then 0bv32 else $0$2);
    v3$1 := BV32_ULT(BV32_ADD(v0$1, 256bv32), $n);
    v3$2 := BV32_ULT(BV32_ADD(v0$2, 256bv32), $n);
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    p3$1 := (if !v3$1 then !v3$1 else p3$1);
    p3$2 := (if !v3$2 then !v3$2 else p3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v4$1 := (if p2$1 then _HAVOC_bv32$1 else v4$1);
    v4$2 := (if p2$2 then _HAVOC_bv32$2 else v4$2);
    $mySum.0$1 := (if p2$1 then BV32_ADD($0$1, v4$1) else $mySum.0$1);
    $mySum.0$2 := (if p2$2 then BV32_ADD($0$2, v4$2) else $mySum.0$2);
    $mySum.0$1 := (if p3$1 then $0$1 else $mySum.0$1);
    $mySum.0$2 := (if p3$2 then $0$2 else $mySum.0$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(true, true);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$__smem(true, local_id_x$1, $mySum.0$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$__smem(true, local_id_x$2, $mySum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(true, true);
    $$__smem[1bv1][local_id_x$1] := $mySum.0$1;
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $mySum.0$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    v5$1 := BV32_ULT(local_id_x$1, 128bv32);
    v5$2 := BV32_ULT(local_id_x$2, 128bv32);
    p4$1 := (if v5$1 then v5$1 else p4$1);
    p4$2 := (if v5$2 then v5$2 else p4$2);
    p5$1 := (if !v5$1 then !v5$1 else p5$1);
    p5$2 := (if !v5$2 then !v5$2 else p5$2);
    call _PRE_WARP_SYNC_$$__smem_READ(p4$1, p4$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$__smem(p4$1, BV32_ADD(local_id_x$1, 128bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 128bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$__smem(p4$2, BV32_ADD(local_id_x$2, 128bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 128bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p4$1, p4$2);
    v6$1 := (if p4$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 128bv32)] else v6$1);
    v6$2 := (if p4$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 128bv32)] else v6$2);
    v7$1 := (if p4$1 then BV32_ADD($mySum.0$1, v6$1) else v7$1);
    v7$2 := (if p4$2 then BV32_ADD($mySum.0$2, v6$2) else v7$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p4$1, p4$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$__smem(p4$1, local_id_x$1, v7$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$__smem(p4$2, local_id_x$2, v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p4$1, p4$2);
    $$__smem[1bv1][local_id_x$1] := (if p4$1 then v7$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v7$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $mySum.1$1 := (if p4$1 then v7$1 else $mySum.1$1);
    $mySum.1$2 := (if p4$2 then v7$2 else $mySum.1$2);
    $mySum.1$1 := (if p5$1 then $mySum.0$1 else $mySum.1$1);
    $mySum.1$2 := (if p5$2 then $mySum.0$2 else $mySum.1$2);
    goto __partitioned_block_$0_2;

  __partitioned_block_$0_2:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    v8$1 := BV32_ULT(local_id_x$1, 64bv32);
    v8$2 := BV32_ULT(local_id_x$2, 64bv32);
    p6$1 := (if v8$1 then v8$1 else p6$1);
    p6$2 := (if v8$2 then v8$2 else p6$2);
    p7$1 := (if !v8$1 then !v8$1 else p7$1);
    p7$2 := (if !v8$2 then !v8$2 else p7$2);
    call _PRE_WARP_SYNC_$$__smem_READ(p6$1, p6$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$__smem(p6$1, BV32_ADD(local_id_x$1, 64bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 64bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$__smem(p6$2, BV32_ADD(local_id_x$2, 64bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p6$1, p6$2);
    v9$1 := (if p6$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 64bv32)] else v9$1);
    v9$2 := (if p6$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 64bv32)] else v9$2);
    v10$1 := (if p6$1 then BV32_ADD($mySum.1$1, v9$1) else v10$1);
    v10$2 := (if p6$2 then BV32_ADD($mySum.1$2, v9$2) else v10$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p6$1, p6$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$__smem(p6$1, local_id_x$1, v10$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p6$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$__smem(p6$2, local_id_x$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p6$1, p6$2);
    $$__smem[1bv1][local_id_x$1] := (if p6$1 then v10$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p6$2 then v10$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    $mySum.2$1 := (if p6$1 then v10$1 else $mySum.2$1);
    $mySum.2$2 := (if p6$2 then v10$2 else $mySum.2$2);
    $mySum.2$1 := (if p7$1 then $mySum.1$1 else $mySum.2$1);
    $mySum.2$2 := (if p7$2 then $mySum.1$2 else $mySum.2$2);
    goto __partitioned_block_$0_3;

  __partitioned_block_$0_3:
    call {:sourceloc_num 19} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    v11$1 := BV32_ULT(local_id_x$1, 32bv32);
    v11$2 := BV32_ULT(local_id_x$2, 32bv32);
    p8$1 := (if v11$1 then v11$1 else p8$1);
    p8$2 := (if v11$2 then v11$2 else p8$2);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 32bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 32bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 32bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v12$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 32bv32)] else v12$1);
    v12$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 32bv32)] else v12$2);
    v13$1 := (if p8$1 then BV32_ADD($mySum.2$1, v12$1) else v13$1);
    v13$2 := (if p8$2 then BV32_ADD($mySum.2$2, v12$2) else v13$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, v13$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then v13$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then v13$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 16bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 16bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 16bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v14$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 16bv32)] else v14$1);
    v14$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 16bv32)] else v14$2);
    v15$1 := (if p8$1 then BV32_ADD(v13$1, v14$1) else v15$1);
    v15$2 := (if p8$2 then BV32_ADD(v13$2, v14$2) else v15$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, v15$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then v15$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then v15$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 8bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 8bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 8bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v16$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 8bv32)] else v16$1);
    v16$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 8bv32)] else v16$2);
    v17$1 := (if p8$1 then BV32_ADD(v15$1, v16$1) else v17$1);
    v17$2 := (if p8$2 then BV32_ADD(v15$2, v16$2) else v17$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, v17$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then v17$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then v17$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 4bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 4bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 4bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v18$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 4bv32)] else v18$1);
    v18$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 4bv32)] else v18$2);
    v19$1 := (if p8$1 then BV32_ADD(v17$1, v18$1) else v19$1);
    v19$2 := (if p8$2 then BV32_ADD(v17$2, v18$2) else v19$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, v19$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then v19$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then v19$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 2bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 2bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v20$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 2bv32)] else v20$1);
    v20$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 2bv32)] else v20$2);
    v21$1 := (if p8$1 then BV32_ADD(v19$1, v20$1) else v21$1);
    v21$2 := (if p8$2 then BV32_ADD(v19$2, v20$2) else v21$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, v21$1, $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, v21$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then v21$1 else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then v21$2 else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call _PRE_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$__smem(p8$1, BV32_ADD(local_id_x$1, 1bv32), $$__smem[1bv1][BV32_ADD(local_id_x$1, 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$__smem(p8$2, BV32_ADD(local_id_x$2, 1bv32), $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p8$1, p8$2);
    v22$1 := (if p8$1 then $$__smem[1bv1][BV32_ADD(local_id_x$1, 1bv32)] else v22$1);
    v22$2 := (if p8$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 1bv32)] else v22$2);
    call _PRE_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$__smem(p8$1, local_id_x$1, BV32_ADD(v21$1, v22$1), $$__smem[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(p8$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$__smem(p8$2, local_id_x$2, BV32_ADD(v21$2, v22$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_WRITE(p8$1, p8$2);
    $$__smem[1bv1][local_id_x$1] := (if p8$1 then BV32_ADD(v21$1, v22$1) else $$__smem[1bv1][local_id_x$1]);
    $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p8$2 then BV32_ADD(v21$2, v22$2) else $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    v23$1 := local_id_x$1 == 0bv32;
    v23$2 := local_id_x$2 == 0bv32;
    p10$1 := (if v23$1 then v23$1 else p10$1);
    p10$2 := (if v23$2 then v23$2 else p10$2);
    call _PRE_WARP_SYNC_$$__smem_READ(p10$1, p10$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$__smem(p10$1, 0bv32, $$__smem[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$__smem(p10$2, 0bv32, $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$__smem"} true;
    call _POST_WARP_SYNC_$$__smem_READ(p10$1, p10$2);
    v24$1 := (if p10$1 then $$__smem[1bv1][0bv32] else v24$1);
    v24$2 := (if p10$2 then $$__smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v24$2);
    call _PRE_WARP_SYNC_$$g_odata_WRITE(p10$1, p10$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$g_odata(p10$1, group_id_x$1, v24$1, $$g_odata[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(p10$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$g_odata(p10$2, group_id_x$2, v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    call _POST_WARP_SYNC_$$g_odata_WRITE(p10$1, p10$2);
    $$g_odata[group_id_x$1] := (if p10$1 then v24$1 else $$g_odata[group_id_x$1]);
    $$g_odata[group_id_x$2] := (if p10$2 then v24$2 else $$g_odata[group_id_x$2]);
    return;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 64bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$__smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$__smem, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$__smem, $$g_odata, _TRACKING;



procedure {:inline 1} _PRE_WARP_SYNC_$$__smem_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$__smem_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$__smem_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$__smem_READ(_P$1: bool, _P$2: bool);



procedure {:inline 1} _PRE_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool);



procedure {:inline 1} _POST_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool);



const _WATCHED_VALUE_$$g_idata: bv32;

procedure {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _READ_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_READ_$$g_idata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_idata);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_idata, _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _WRITE_HAS_OCCURRED_$$g_idata);
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



procedure _CHECK_WRITE_$$g_idata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_ATOMIC_$$g_idata(_P: bool, _offset: bv32);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



const _WATCHED_VALUE_$$g_odata: bv32;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: bv32);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$__smem: bv32;

procedure {:inline 1} _LOG_READ_$$__smem(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$__smem;



implementation {:inline 1} _LOG_READ_$$__smem(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$__smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$__smem == _value then true else _READ_HAS_OCCURRED_$$__smem);
    return;
}



procedure _CHECK_READ_$$__smem(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$__smem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$__smem: bool;

procedure {:inline 1} _LOG_WRITE_$$__smem(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$__smem, _WRITE_READ_BENIGN_FLAG_$$__smem;



implementation {:inline 1} _LOG_WRITE_$$__smem(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$__smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$__smem == _value then true else _WRITE_HAS_OCCURRED_$$__smem);
    _WRITE_READ_BENIGN_FLAG_$$__smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$__smem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$__smem);
    return;
}



procedure _CHECK_WRITE_$$__smem(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$__smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$__smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$__smem(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$__smem;



implementation {:inline 1} _LOG_ATOMIC_$$__smem(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$__smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$__smem);
    return;
}



procedure _CHECK_ATOMIC_$$__smem(_P: bool, _offset: bv32);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "__smem"} {:array "$$__smem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$__smem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$__smem(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$__smem := (if _P && _WRITE_HAS_OCCURRED_$$__smem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$__smem);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$__smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$__smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$__smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$__smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$__smem;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$__smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$__smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsdiv"} BV32_DIV(bv32, bv32) : bv32;

implementation {:inline 1} _PRE_WARP_SYNC_$$__smem_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$__smem;
    assume !_WRITE_HAS_OCCURRED_$$__smem;
    assume !_ATOMIC_HAS_OCCURRED_$$__smem;
    goto anon0;

  anon0:
    havoc $$__smem;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$__smem_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$__smem;
    goto anon0;

  anon0:
    havoc $$__smem;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$__smem_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$__smem;
    assume !_ATOMIC_HAS_OCCURRED_$$__smem;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$__smem_READ(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon0_Then, anon0_Else;

  anon0_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_READ_HAS_OCCURRED_$$__smem;
    return;

  anon0_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _PRE_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
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
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}



implementation {:inline 1} _POST_WARP_SYNC_$$g_odata_WRITE(_P$1: bool, _P$2: bool)
{

  entry:
    goto anon1_Then, anon1_Else;

  anon1_Then:
    assume {:partition} _P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32);
    goto reset_warps;

  reset_warps:
    assume !_WRITE_HAS_OCCURRED_$$g_odata;
    goto anon0;

  anon0:
    havoc $$g_odata;
    return;

  anon1_Else:
    assume {:partition} !(_P$1 == _P$2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && BV32_DIV(BV32_ADD(local_id_x$1, BV32_ADD(BV32_MUL(local_id_y$1, group_size_x), BV32_MUL(local_id_z$1, BV32_MUL(group_size_x, group_size_y)))), 32bv32) == BV32_DIV(BV32_ADD(local_id_x$2, BV32_ADD(BV32_MUL(local_id_y$2, group_size_x), BV32_MUL(local_id_z$2, BV32_MUL(group_size_x, group_size_y)))), 32bv32));
    return;
}


