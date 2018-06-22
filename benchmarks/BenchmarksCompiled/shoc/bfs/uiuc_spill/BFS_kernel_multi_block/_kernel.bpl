type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(_P$1: bool, x$1: [bv32]bv32, y$1: bv32, _P$2: bool, x$2: [bv32]bv32, y$2: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "frontier"} {:global} $$frontier: [bv32]bv32;

axiom {:array_info "$$frontier"} {:global} {:elem_width 32} {:source_name "frontier"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier: bool;

var {:source_name "frontier2"} {:global} $$frontier2: [bv32]bv32;

axiom {:array_info "$$frontier2"} {:global} {:elem_width 32} {:source_name "frontier2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier2: bool;

axiom {:array_info "$$visited"} {:global} {:elem_width 32} {:source_name "visited"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$visited: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$visited: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$visited: bool;

axiom {:array_info "$$cost"} {:global} {:elem_width 32} {:source_name "cost"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cost: bool;

var {:source_name "edgeArray"} {:global} $$edgeArray: [bv32]bv32;

axiom {:array_info "$$edgeArray"} {:global} {:elem_width 32} {:source_name "edgeArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArray: bool;

axiom {:array_info "$$edgeArrayAux"} {:global} {:elem_width 32} {:source_name "edgeArrayAux"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$edgeArrayAux: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$edgeArrayAux: bool;

axiom {:array_info "$$frontier_length"} {:global} {:elem_width 32} {:source_name "frontier_length"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier_length: bool;

var {:source_name "b_q"} {:group_shared} $$b_q: [bv1][bv32]bv32;

axiom {:array_info "$$b_q"} {:group_shared} {:elem_width 32} {:source_name "b_q"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q: bool;

axiom {:array_info "$$BFS_kernel_multi_block.b_q_length"} {:group_shared} {:elem_width 32} {:source_name "b_q_length"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length: bool;

var {:source_name "b_offset"} {:group_shared} $$BFS_kernel_multi_block.b_offset: [bv1][bv32]bv32;

axiom {:array_info "$$BFS_kernel_multi_block.b_offset"} {:group_shared} {:elem_width 32} {:source_name "b_offset"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "BFS_kernel_multi_block"} {:kernel} $BFS_kernel_multi_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $frontier_len == 2048bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $numVertices == 10000bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $numEdges == 9999bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $max_local_mem == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$frontier && !_WRITE_HAS_OCCURRED_$$frontier && !_ATOMIC_HAS_OCCURRED_$$frontier;
  requires !_READ_HAS_OCCURRED_$$frontier2 && !_WRITE_HAS_OCCURRED_$$frontier2 && !_ATOMIC_HAS_OCCURRED_$$frontier2;
  requires !_READ_HAS_OCCURRED_$$visited && !_WRITE_HAS_OCCURRED_$$visited && !_ATOMIC_HAS_OCCURRED_$$visited;
  requires !_READ_HAS_OCCURRED_$$cost && !_WRITE_HAS_OCCURRED_$$cost && !_ATOMIC_HAS_OCCURRED_$$cost;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$frontier_length && !_WRITE_HAS_OCCURRED_$$frontier_length && !_ATOMIC_HAS_OCCURRED_$$frontier_length;
  requires !_READ_HAS_OCCURRED_$$b_q && !_WRITE_HAS_OCCURRED_$$b_q && !_ATOMIC_HAS_OCCURRED_$$b_q;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
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
  modifies $$BFS_kernel_multi_block.b_offset, _USED_$$BFS_kernel_multi_block.b_q_length, $$b_q, _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length, _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset, $$frontier2, _TRACKING, _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _READ_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$visited, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length, _ATOMIC_HAS_OCCURRED_$$frontier_length, _WRITE_HAS_OCCURRED_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2, _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length, _TRACKING, _READ_HAS_OCCURRED_$$b_q, _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;



implementation {:source_name "BFS_kernel_multi_block"} {:kernel} $BFS_kernel_multi_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32)
{
  var $offset.0$1: bv32;
  var $offset.0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v17$1: bv32;
  var v17$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v8$1: bv32;
  var v8$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v7$1: bool;
  var v7$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v20$1: bool;
  var v20$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v14$1: bool;
  var v14$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var _abstracted_call_arg_0$1: bv32;
  var _abstracted_call_arg_0$2: bv32;
  var _abstracted_call_arg_1$1: bv32;
  var _abstracted_call_arg_1$2: bv32;
  var _abstracted_call_arg_2$1: bv32;
  var _abstracted_call_arg_2$2: bv32;
  var _abstracted_call_arg_3$1: bv32;
  var _abstracted_call_arg_3$2: bv32;
  var _abstracted_call_arg_4$1: bv32;
  var _abstracted_call_arg_4$2: bv32;
  var _abstracted_call_arg_5$1: bv32;
  var _abstracted_call_arg_5$2: bv32;
  var _abstracted_call_arg_6$1: bv32;
  var _abstracted_call_arg_6$2: bv32;
  var _abstracted_call_arg_7$1: bv32;
  var _abstracted_call_arg_7$2: bv32;
  var _abstracted_call_arg_8$1: bv32;
  var _abstracted_call_arg_8$2: bv32;
  var _abstracted_call_arg_9$1: bv32;
  var _abstracted_call_arg_9$2: bv32;
  var _abstracted_call_arg_10$1: bv32;
  var _abstracted_call_arg_10$2: bv32;
  var _abstracted_call_arg_11$1: bv32;
  var _abstracted_call_arg_11$2: bv32;
  var _abstracted_call_arg_12$1: bv32;
  var _abstracted_call_arg_12$2: bv32;
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
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var p17$1: bool;
  var p17$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond: bool;
  var _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond: bool;
  var _READ_HAS_OCCURRED_$$cost$ghost$$while.cond: bool;
  var _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond: bool;
  var _ATOMIC_HAS_OCCURRED_$$frontier_length$ghost$$while.cond: bool;
  var _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length$ghost$$while.cond: bool;


  __partitioned_block_$entry_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := v1$1 == 0bv32;
    v2$2 := v1$2 == 0bv32;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_12$1 := (if p0$1 then _HAVOC_bv32$1 else _abstracted_call_arg_12$1);
    _abstracted_call_arg_12$2 := (if p0$2 then _HAVOC_bv32$2 else _abstracted_call_arg_12$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$BFS_kernel_multi_block.b_q_length(p0$1, 0bv32, 0bv32, _abstracted_call_arg_12$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$BFS_kernel_multi_block.b_q_length(p0$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_multi_block.b_q_length"} true;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$BFS_kernel_multi_block.b_offset(p0$1, 0bv32, 0bv32, $$BFS_kernel_multi_block.b_offset[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$BFS_kernel_multi_block.b_offset(p0$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_multi_block.b_offset"} true;
    $$BFS_kernel_multi_block.b_offset[1bv1][0bv32] := (if p0$1 then 0bv32 else $$BFS_kernel_multi_block.b_offset[1bv1][0bv32]);
    $$BFS_kernel_multi_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then 0bv32 else $$BFS_kernel_multi_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    v3$1 := BV32_ULT(v0$1, $frontier_len);
    v3$2 := BV32_ULT(v0$2, $frontier_len);
    p2$1 := (if v3$1 then v3$1 else p2$1);
    p2$2 := (if v3$2 then v3$2 else p2$2);
    v4$1 := (if p2$1 then $$frontier[v0$1] else v4$1);
    v4$2 := (if p2$2 then $$frontier[v0$2] else v4$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_7$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_7$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$visited(p2$1, v4$1, 0bv32, _abstracted_call_arg_7$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(p2$2, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$visited(p2$2, v4$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$visited"} true;
    v5$1 := (if p2$1 then $$edgeArray[v4$1] else v5$1);
    v5$2 := (if p2$2 then $$edgeArray[v4$2] else v5$2);
    v6$1 := (if p2$1 then $$edgeArray[BV32_ADD(v4$1, 1bv32)] else v6$1);
    v6$2 := (if p2$2 then $$edgeArray[BV32_ADD(v4$2, 1bv32)] else v6$2);
    $offset.0$1 := (if p2$1 then v5$1 else $offset.0$1);
    $offset.0$2 := (if p2$2 then v5$2 else $offset.0$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond := _WRITE_HAS_OCCURRED_$$frontier2;
    _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond := _ATOMIC_HAS_OCCURRED_$$visited;
    _READ_HAS_OCCURRED_$$cost$ghost$$while.cond := _READ_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond := _ATOMIC_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$frontier_length$ghost$$while.cond := _ATOMIC_HAS_OCCURRED_$$frontier_length;
    _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond := _WRITE_HAS_OCCURRED_$$b_q;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length$ghost$$while.cond := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $while.cond;

  $while.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b19 ==> !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length$ghost$$while.cond == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b18 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b17 ==> !p2$1 ==> _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond == _WRITE_HAS_OCCURRED_$$b_q;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b16 ==> _WRITE_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == v15$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b15 ==> !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$frontier_length$ghost$$while.cond == _ATOMIC_HAS_OCCURRED_$$frontier_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b14 ==> _ATOMIC_HAS_OCCURRED_$$frontier_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b13 ==> !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond == _ATOMIC_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b12 ==> !p2$1 ==> _READ_HAS_OCCURRED_$$cost$ghost$$while.cond == _READ_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b11 ==> !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond == _ATOMIC_HAS_OCCURRED_$$visited;
    assert {:tag "disabledMaintainsInstrumentation"} _b10 ==> !p2$1 ==> _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond == _WRITE_HAS_OCCURRED_$$frontier2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$frontier2 ==> _WATCHED_OFFSET == v17$1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p3"} {:dominator_predicate "p2"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _WRITE_HAS_OCCURRED_$$b_q ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $frontier_len);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _WRITE_HAS_OCCURRED_$$frontier2 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $frontier_len);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b6 ==> _READ_HAS_OCCURRED_$$cost ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $frontier_len);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $frontier_len) && BV32_ULT($offset.0$1, v6$1) ==> p3$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $frontier_len) && BV32_ULT($offset.0$2, v6$2) ==> p3$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p3$1 ==> _b4 ==> p3$1 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $frontier_len);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p3$2 ==> _b4 ==> p3$2 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b3 ==> BV32_UGE($offset.0$1, v5$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b3 ==> BV32_UGE($offset.0$2, v5$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b2 ==> BV32_ULE($offset.0$1, v5$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b2 ==> BV32_ULE($offset.0$2, v5$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b1 ==> BV32_SGE($offset.0$1, v5$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b1 ==> BV32_SGE($offset.0$2, v5$2);
    assert {:tag "loopBound"} {:thread 1} p3$1 ==> _b0 ==> BV32_SLE($offset.0$1, v5$1);
    assert {:tag "loopBound"} {:thread 2} p3$2 ==> _b0 ==> BV32_SLE($offset.0$2, v5$2);
    assert {:block_sourceloc} {:sourceloc_num 15} p3$1 ==> true;
    v7$1 := (if p3$1 then BV32_ULT($offset.0$1, v6$1) else v7$1);
    v7$2 := (if p3$2 then BV32_ULT($offset.0$2, v6$2) else v7$2);
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
    p4$1 := (if p3$1 && v7$1 then v7$1 else p4$1);
    p4$2 := (if p3$2 && v7$2 then v7$2 else p4$2);
    p3$1 := (if p3$1 && !v7$1 then v7$1 else p3$1);
    p3$2 := (if p3$2 && !v7$2 then v7$2 else p3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v8$1 := (if p4$1 then _HAVOC_bv32$1 else v8$1);
    v8$2 := (if p4$2 then _HAVOC_bv32$2 else v8$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_8$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_8$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$cost(p4$1, v4$1, _abstracted_call_arg_8$1);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 18} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_9$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_9$1);
    _abstracted_call_arg_9$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_9$2);
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$cost(p4$2, v4$2, _abstracted_call_arg_9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v9$1 := (if p4$1 then _HAVOC_bv32$1 else v9$1);
    v9$2 := (if p4$2 then _HAVOC_bv32$2 else v9$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_ATOMIC_$$cost(p4$1, BV32_SDIV(BV32_MUL(v8$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 19} _CHECK_ATOMIC_$$cost(p4$2, BV32_SDIV(BV32_MUL(v8$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v10$1 := (if p4$1 then _HAVOC_bv32$1 else v10$1);
    v10$2 := (if p4$2 then _HAVOC_bv32$2 else v10$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_10$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_10$1);
    _abstracted_call_arg_10$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_10$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$cost(p4$1, v4$1, _abstracted_call_arg_10$1);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 20} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_11$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_11$1);
    _abstracted_call_arg_11$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_11$2);
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$cost(p4$2, v4$2, _abstracted_call_arg_11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p4$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p4$2 then _HAVOC_bv32$2 else v11$2);
    v12$1 := (if p4$1 then BV32_UGT(v10$1, BV32_ADD(v11$1, 1bv32)) else v12$1);
    v12$2 := (if p4$2 then BV32_UGT(v10$2, BV32_ADD(v11$2, 1bv32)) else v12$2);
    p6$1 := (if p4$1 && v12$1 then v12$1 else p6$1);
    p6$2 := (if p4$2 && v12$2 then v12$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_ATOMIC_$$visited(p6$1, BV32_SDIV(BV32_MUL(v8$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 22} _CHECK_ATOMIC_$$visited(p6$2, BV32_SDIV(BV32_MUL(v8$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$visited"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v13$1 := (if p6$1 then _HAVOC_bv32$1 else v13$1);
    v13$2 := (if p6$2 then _HAVOC_bv32$2 else v13$2);
    v14$1 := (if p6$1 then v13$1 == 0bv32 else v14$1);
    v14$2 := (if p6$2 then v13$2 == 0bv32 else v14$2);
    p8$1 := (if p6$1 && v14$1 then v14$1 else p8$1);
    p8$2 := (if p6$2 && v14$2 then v14$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_ATOMIC_$$BFS_kernel_multi_block.b_q_length(p8$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 24} _CHECK_ATOMIC_$$BFS_kernel_multi_block.b_q_length(p8$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_multi_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v15$1 := (if p8$1 then _HAVOC_bv32$1 else v15$1);
    v15$2 := (if p8$2 then _HAVOC_bv32$2 else v15$2);
    assume !_USED_$$BFS_kernel_multi_block.b_q_length[0bv32][v15$1];
    _USED_$$BFS_kernel_multi_block.b_q_length[0bv32][v15$1] := true;
    assume !_USED_$$BFS_kernel_multi_block.b_q_length[0bv32][v15$2];
    _USED_$$BFS_kernel_multi_block.b_q_length[0bv32][v15$2] := true;
    v16$1 := (if p8$1 then BV32_ULT(v15$1, $max_local_mem) else v16$1);
    v16$2 := (if p8$2 then BV32_ULT(v15$2, $max_local_mem) else v16$2);
    p10$1 := (if p8$1 && v16$1 then v16$1 else p10$1);
    p10$2 := (if p8$2 && v16$2 then v16$2 else p10$2);
    p9$1 := (if p8$1 && !v16$1 then !v16$1 else p9$1);
    p9$2 := (if p8$2 && !v16$2 then !v16$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_ATOMIC_$$frontier_length(p9$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 28} _CHECK_ATOMIC_$$frontier_length(p9$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$frontier_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v17$1 := (if p9$1 then _HAVOC_bv32$1 else v17$1);
    v17$2 := (if p9$2 then _HAVOC_bv32$2 else v17$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$frontier2(p9$1, v17$1, v8$1, $$frontier2[v17$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(p9$2, v17$2);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$frontier2(p9$2, v17$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier2"} true;
    $$frontier2[v17$1] := (if p9$1 then v8$1 else $$frontier2[v17$1]);
    $$frontier2[v17$2] := (if p9$2 then v8$2 else $$frontier2[v17$2]);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$b_q(p10$1, v15$1, v8$1, $$b_q[1bv1][v15$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p10$2, v15$2);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$b_q(p10$2, v15$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v15$1] := (if p10$1 then v8$1 else $$b_q[1bv1][v15$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v15$2] := (if p10$2 then v8$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v15$2]);
    $offset.0$1 := (if p4$1 then BV32_ADD($offset.0$1, 1bv32) else $offset.0$1);
    $offset.0$2 := (if p4$2 then BV32_ADD($offset.0$2, 1bv32) else $offset.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $while.cond.backedge, __partitioned_block_$while.cond.tail_0;

  __partitioned_block_$while.cond.tail_0:
    assume !p3$1 && !p3$2;
    goto __partitioned_block_$while.cond.tail_1;

  __partitioned_block_$while.cond.tail_1:
    call {:sourceloc_num 35} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    v18$1 := v1$1 == 0bv32;
    v18$2 := v1$2 == 0bv32;
    p12$1 := (if v18$1 then v18$1 else p12$1);
    p12$2 := (if v18$2 then v18$2 else p12$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_2$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$BFS_kernel_multi_block.b_q_length(p12$1, 0bv32, _abstracted_call_arg_2$1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 37} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_3$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_3$2);
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$BFS_kernel_multi_block.b_q_length(p12$2, 0bv32, _abstracted_call_arg_3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_multi_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v19$1 := (if p12$1 then _HAVOC_bv32$1 else v19$1);
    v19$2 := (if p12$2 then _HAVOC_bv32$2 else v19$2);
    v20$1 := (if p12$1 then BV32_UGT(v19$1, $max_local_mem) else v20$1);
    v20$2 := (if p12$2 then BV32_UGT(v19$2, $max_local_mem) else v20$2);
    p13$1 := (if p12$1 && v20$1 then v20$1 else p13$1);
    p13$2 := (if p12$2 && v20$2 then v20$2 else p13$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_6$1 := (if p13$1 then _HAVOC_bv32$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p13$2 then _HAVOC_bv32$2 else _abstracted_call_arg_6$2);
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$BFS_kernel_multi_block.b_q_length(p13$1, 0bv32, $max_local_mem, _abstracted_call_arg_6$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length(p13$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$BFS_kernel_multi_block.b_q_length(p13$2, 0bv32, $max_local_mem);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_multi_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_4$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$BFS_kernel_multi_block.b_q_length(p12$1, 0bv32, _abstracted_call_arg_4$1);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_5$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_5$2);
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$BFS_kernel_multi_block.b_q_length(p12$2, 0bv32, _abstracted_call_arg_5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_multi_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v21$1 := (if p12$1 then _HAVOC_bv32$1 else v21$1);
    v21$2 := (if p12$2 then _HAVOC_bv32$2 else v21$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_ATOMIC_$$frontier_length(p12$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 42} _CHECK_ATOMIC_$$frontier_length(p12$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$frontier_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v22$1 := (if p12$1 then _HAVOC_bv32$1 else v22$1);
    v22$2 := (if p12$2 then _HAVOC_bv32$2 else v22$2);
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$BFS_kernel_multi_block.b_offset(p12$1, 0bv32, v22$1, $$BFS_kernel_multi_block.b_offset[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset(p12$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$BFS_kernel_multi_block.b_offset(p12$2, 0bv32, v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_multi_block.b_offset"} true;
    $$BFS_kernel_multi_block.b_offset[1bv1][0bv32] := (if p12$1 then v22$1 else $$BFS_kernel_multi_block.b_offset[1bv1][0bv32]);
    $$BFS_kernel_multi_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p12$2 then v22$2 else $$BFS_kernel_multi_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$while.cond.tail_2;

  __partitioned_block_$while.cond.tail_2:
    call {:sourceloc_num 45} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    havoc _abstracted_call_arg_0$1, _abstracted_call_arg_0$2;
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 46} true;
    havoc _abstracted_call_arg_1$1, _abstracted_call_arg_1$2;
    havoc v23$1, v23$2;
    v24$1 := BV32_ULT(v1$1, v23$1);
    v24$2 := BV32_ULT(v1$2, v23$2);
    p16$1 := (if v24$1 then v24$1 else p16$1);
    p16$2 := (if v24$2 then v24$2 else p16$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    v25$1 := (if p16$1 then $$b_q[1bv1][v1$1] else v25$1);
    v25$2 := (if p16$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v25$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 49} true;
    v26$1 := (if p16$1 then $$BFS_kernel_multi_block.b_offset[1bv1][0bv32] else v26$1);
    v26$2 := (if p16$2 then $$BFS_kernel_multi_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v26$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$frontier2(p16$1, BV32_ADD(v1$1, v26$1), v25$1, $$frontier2[BV32_ADD(v1$1, v26$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(p16$2, BV32_ADD(v1$2, v26$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$frontier2(p16$2, BV32_ADD(v1$2, v26$2), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier2"} true;
    $$frontier2[BV32_ADD(v1$1, v26$1)] := (if p16$1 then v25$1 else $$frontier2[BV32_ADD(v1$1, v26$1)]);
    $$frontier2[BV32_ADD(v1$2, v26$2)] := (if p16$2 then v25$2 else $$frontier2[BV32_ADD(v1$2, v26$2)]);
    return;

  $while.cond.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $while.cond;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1024bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 10bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$b_q, $$BFS_kernel_multi_block.b_offset, $$frontier2, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$b_q, $$BFS_kernel_multi_block.b_offset, $$frontier2, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$b_q, $$BFS_kernel_multi_block.b_offset, $$frontier2, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

var {:atomic_usedmap} _USED_$$BFS_kernel_multi_block.b_q_length: [bv32][bv32]bool;

const _WATCHED_VALUE_$$frontier: bv32;

procedure {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_READ_$$frontier(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _READ_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_READ_$$frontier(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _LOG_WRITE_$$frontier(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then true else _WRITE_HAS_OCCURRED_$$frontier);
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



procedure _CHECK_WRITE_$$frontier(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier != _value);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier;



implementation {:inline 1} _LOG_ATOMIC_$$frontier(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier);
    return;
}



procedure _CHECK_ATOMIC_$$frontier(_P: bool, _offset: bv32);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier"} {:array "$$frontier"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier := (if _P && _WRITE_HAS_OCCURRED_$$frontier && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier);
    return;
}



const _WATCHED_VALUE_$$frontier2: bv32;

procedure {:inline 1} _LOG_READ_$$frontier2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$frontier2;



implementation {:inline 1} _LOG_READ_$$frontier2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then true else _READ_HAS_OCCURRED_$$frontier2);
    return;
}



procedure _CHECK_READ_$$frontier2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier2);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier2: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2;



implementation {:inline 1} _LOG_WRITE_$$frontier2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then true else _WRITE_HAS_OCCURRED_$$frontier2);
    _WRITE_READ_BENIGN_FLAG_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier2);
    return;
}



procedure _CHECK_WRITE_$$frontier2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 != _value);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier2 != _value);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier2;



implementation {:inline 1} _LOG_ATOMIC_$$frontier2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier2);
    return;
}



procedure _CHECK_ATOMIC_$$frontier2(_P: bool, _offset: bv32);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier2"} {:array "$$frontier2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier2 := (if _P && _WRITE_HAS_OCCURRED_$$frontier2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier2);
    return;
}



const _WATCHED_VALUE_$$visited: bv32;

procedure {:inline 1} _LOG_READ_$$visited(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$visited;



implementation {:inline 1} _LOG_READ_$$visited(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then true else _READ_HAS_OCCURRED_$$visited);
    return;
}



procedure _CHECK_READ_$$visited(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$visited);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$visited: bool;

procedure {:inline 1} _LOG_WRITE_$$visited(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited;



implementation {:inline 1} _LOG_WRITE_$$visited(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then true else _WRITE_HAS_OCCURRED_$$visited);
    _WRITE_READ_BENIGN_FLAG_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$visited);
    return;
}



procedure _CHECK_WRITE_$$visited(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited != _value);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$visited != _value);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$visited(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$visited;



implementation {:inline 1} _LOG_ATOMIC_$$visited(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$visited := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$visited);
    return;
}



procedure _CHECK_ATOMIC_$$visited(_P: bool, _offset: bv32);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);
  requires {:source_name "visited"} {:array "$$visited"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$visited;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$visited := (if _P && _WRITE_HAS_OCCURRED_$$visited && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$visited);
    return;
}



const _WATCHED_VALUE_$$cost: bv32;

procedure {:inline 1} _LOG_READ_$$cost(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$cost;



implementation {:inline 1} _LOG_READ_$$cost(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then true else _READ_HAS_OCCURRED_$$cost);
    return;
}



procedure _CHECK_READ_$$cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cost);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cost: bool;

procedure {:inline 1} _LOG_WRITE_$$cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$cost, _WRITE_READ_BENIGN_FLAG_$$cost;



implementation {:inline 1} _LOG_WRITE_$$cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then true else _WRITE_HAS_OCCURRED_$$cost);
    _WRITE_READ_BENIGN_FLAG_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cost);
    return;
}



procedure _CHECK_WRITE_$$cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost != _value);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cost != _value);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cost(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$cost;



implementation {:inline 1} _LOG_ATOMIC_$$cost(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cost);
    return;
}



procedure _CHECK_ATOMIC_$$cost(_P: bool, _offset: bv32);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);
  requires {:source_name "cost"} {:array "$$cost"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cost(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$cost;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cost(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cost := (if _P && _WRITE_HAS_OCCURRED_$$cost && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cost);
    return;
}



const _WATCHED_VALUE_$$edgeArray: bv32;

procedure {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _READ_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_READ_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArray);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArray: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$edgeArray, _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _LOG_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then true else _WRITE_HAS_OCCURRED_$$edgeArray);
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



procedure _CHECK_WRITE_$$edgeArray(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArray != _value);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArray;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArray(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArray);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArray(_P: bool, _offset: bv32);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArray"} {:array "$$edgeArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArray(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArray := (if _P && _WRITE_HAS_OCCURRED_$$edgeArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArray);
    return;
}



const _WATCHED_VALUE_$$edgeArrayAux: bv32;

procedure {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _READ_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_READ_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux: bool;

procedure {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$edgeArrayAux, _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _LOG_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then true else _WRITE_HAS_OCCURRED_$$edgeArrayAux);
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



procedure _CHECK_WRITE_$$edgeArrayAux(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$edgeArrayAux != _value);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$edgeArrayAux;



implementation {:inline 1} _LOG_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$edgeArrayAux := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$edgeArrayAux);
    return;
}



procedure _CHECK_ATOMIC_$$edgeArrayAux(_P: bool, _offset: bv32);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);
  requires {:source_name "edgeArrayAux"} {:array "$$edgeArrayAux"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$edgeArrayAux(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux := (if _P && _WRITE_HAS_OCCURRED_$$edgeArrayAux && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$edgeArrayAux);
    return;
}



const _WATCHED_VALUE_$$frontier_length: bv32;

procedure {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_READ_$$frontier_length(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _READ_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_READ_$$frontier_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$frontier_length);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$frontier_length: bool;

procedure {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _LOG_WRITE_$$frontier_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then true else _WRITE_HAS_OCCURRED_$$frontier_length);
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



procedure _CHECK_WRITE_$$frontier_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$frontier_length != _value);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$frontier_length;



implementation {:inline 1} _LOG_ATOMIC_$$frontier_length(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$frontier_length := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$frontier_length);
    return;
}



procedure _CHECK_ATOMIC_$$frontier_length(_P: bool, _offset: bv32);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);
  requires {:source_name "frontier_length"} {:array "$$frontier_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$frontier_length := (if _P && _WRITE_HAS_OCCURRED_$$frontier_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$frontier_length);
    return;
}



const _WATCHED_VALUE_$$b_q: bv32;

procedure {:inline 1} _LOG_READ_$$b_q(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$b_q;



implementation {:inline 1} _LOG_READ_$$b_q(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then true else _READ_HAS_OCCURRED_$$b_q);
    return;
}



procedure _CHECK_READ_$$b_q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b_q && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$b_q: bool;

procedure {:inline 1} _LOG_WRITE_$$b_q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q;



implementation {:inline 1} _LOG_WRITE_$$b_q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then true else _WRITE_HAS_OCCURRED_$$b_q);
    _WRITE_READ_BENIGN_FLAG_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b_q);
    return;
}



procedure _CHECK_WRITE_$$b_q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$b_q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b_q;



implementation {:inline 1} _LOG_ATOMIC_$$b_q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b_q);
    return;
}



procedure _CHECK_ATOMIC_$$b_q(_P: bool, _offset: bv32);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q"} {:array "$$b_q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b_q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b_q := (if _P && _WRITE_HAS_OCCURRED_$$b_q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b_q);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_multi_block.b_q_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_q_length);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_multi_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_multi_block.b_offset"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_multi_block.b_offset);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_multi_block.b_offset;
    goto anon6;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_multi_block.b_offset;
    goto anon6;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_q_length;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_multi_block.b_offset;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon10;

  anon10:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon12;

  anon12:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_multi_block.b_offset;
    goto anon6;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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
