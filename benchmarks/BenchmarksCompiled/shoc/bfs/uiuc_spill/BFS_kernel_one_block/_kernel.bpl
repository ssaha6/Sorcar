type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(_P$1: bool, x$1: [bv32]bv32, y$1: bv32, _P$2: bool, x$2: [bv32]bv32, y$2: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "frontier"} {:global} $$frontier: [bv32]bv32;

axiom {:array_info "$$frontier"} {:global} {:elem_width 32} {:source_name "frontier"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier: bool;

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

var {:source_name "frontier_length"} {:global} $$frontier_length: [bv32]bv32;

axiom {:array_info "$$frontier_length"} {:global} {:elem_width 32} {:source_name "frontier_length"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier_length: bool;

var {:source_name "b_q"} {:group_shared} $$b_q: [bv1][bv32]bv32;

axiom {:array_info "$$b_q"} {:group_shared} {:elem_width 32} {:source_name "b_q"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q: bool;

var {:source_name "b_q2"} {:group_shared} $$b_q2: [bv1][bv32]bv32;

axiom {:array_info "$$b_q2"} {:group_shared} {:elem_width 32} {:source_name "b_q2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q2: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q2: bool;

axiom {:array_info "$$BFS_kernel_one_block.b_q_length"} {:group_shared} {:elem_width 32} {:source_name "b_q_length"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length: bool;

axiom {:array_info "$$BFS_kernel_one_block.b_offset"} {:group_shared} {:elem_width 32} {:source_name "b_offset"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "BFS_kernel_one_block"} {:kernel} $BFS_kernel_one_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $frontier_len == 1bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $max_local_mem == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$frontier && !_WRITE_HAS_OCCURRED_$$frontier && !_ATOMIC_HAS_OCCURRED_$$frontier;
  requires !_READ_HAS_OCCURRED_$$visited && !_WRITE_HAS_OCCURRED_$$visited && !_ATOMIC_HAS_OCCURRED_$$visited;
  requires !_READ_HAS_OCCURRED_$$cost && !_WRITE_HAS_OCCURRED_$$cost && !_ATOMIC_HAS_OCCURRED_$$cost;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$frontier_length && !_WRITE_HAS_OCCURRED_$$frontier_length && !_ATOMIC_HAS_OCCURRED_$$frontier_length;
  requires !_READ_HAS_OCCURRED_$$b_q && !_WRITE_HAS_OCCURRED_$$b_q && !_ATOMIC_HAS_OCCURRED_$$b_q;
  requires !_READ_HAS_OCCURRED_$$b_q2 && !_WRITE_HAS_OCCURRED_$$b_q2 && !_ATOMIC_HAS_OCCURRED_$$b_q2;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
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
  modifies $$b_q, _USED_$$BFS_kernel_one_block.b_q_length, _USED_$$BFS_kernel_one_block.b_offset, $$b_q2, _READ_HAS_OCCURRED_$$frontier, _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, $$frontier, $$frontier_length, _TRACKING, _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length, _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset, _TRACKING, _READ_HAS_OCCURRED_$$b_q, _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _READ_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$visited, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_HAS_OCCURRED_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2, _TRACKING, _READ_HAS_OCCURRED_$$b_q2, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:source_name "BFS_kernel_one_block"} {:kernel} $BFS_kernel_one_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32)
{
  var $f_len.0$1: bv32;
  var $f_len.0$2: bv32;
  var $offset.0$1: bv32;
  var $offset.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v9$1: bv32;
  var v9$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bv32;
  var v21$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v13$1: bool;
  var v13$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v22$1: bool;
  var v22$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v25$1: bool;
  var v25$2: bool;
  var v23$1: bool;
  var v23$2: bool;
  var v27$1: bool;
  var v27$2: bool;
  var v18$1: bv32;
  var v18$2: bv32;
  var v33$1: bool;
  var v33$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v34$1: bv32;
  var v34$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
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
  var _abstracted_call_arg_13$1: bv32;
  var _abstracted_call_arg_13$2: bv32;
  var _abstracted_call_arg_14$1: bv32;
  var _abstracted_call_arg_14$2: bv32;
  var _abstracted_call_arg_15$1: bv32;
  var _abstracted_call_arg_15$2: bv32;
  var _abstracted_call_arg_16$1: bv32;
  var _abstracted_call_arg_16$2: bv32;
  var _abstracted_call_arg_17$1: bv32;
  var _abstracted_call_arg_17$2: bv32;
  var _abstracted_call_arg_18$1: bv32;
  var _abstracted_call_arg_18$2: bv32;
  var _abstracted_call_arg_19$1: bv32;
  var _abstracted_call_arg_19$2: bv32;
  var _abstracted_call_arg_20$1: bv32;
  var _abstracted_call_arg_20$2: bv32;
  var _abstracted_call_arg_21$1: bv32;
  var _abstracted_call_arg_21$2: bv32;
  var _abstracted_call_arg_22$1: bv32;
  var _abstracted_call_arg_22$2: bv32;
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
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.13: bool;
  var _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.13: bool;
  var _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.13: bool;
  var _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.13: bool;
  var _WRITE_HAS_OCCURRED_$$b_q2$ghost$$while.cond.13: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$while.cond.13: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$while.cond.13: bool;


  __partitioned_block_$entry_0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_ULT(v0$1, $frontier_len);
    v1$2 := BV32_ULT(v0$2, $frontier_len);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$frontier(p0$1, v0$1, $$frontier[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$frontier(p0$2, v0$2, $$frontier[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$frontier"} true;
    v2$1 := (if p0$1 then $$frontier[v0$1] else v2$1);
    v2$2 := (if p0$2 then $$frontier[v0$2] else v2$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$b_q(p0$1, v0$1, v2$1, $$b_q[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$b_q(p0$2, v0$2, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v0$1] := (if p0$1 then v2$1 else $$b_q[1bv1][v0$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p0$2 then v2$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $f_len.0$1 := $frontier_len;
    $f_len.0$2 := $frontier_len;
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$while.body_0;

  __partitioned_block_$while.body_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b83 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b82 ==> _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b81 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assert {:tag "nowrite"} _b80 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b79 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b78 ==> _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b77 ==> _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b76 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assert {:tag "nowrite"} _b75 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assert {:tag "noread"} _b74 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b73 ==> _WRITE_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == v16$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b72 ==> _READ_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b71 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assert {:tag "noread"} _b70 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b69 ==> _WRITE_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b68 ==> _READ_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b67 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assert {:tag "noread"} _b66 ==> !_READ_HAS_OCCURRED_$$b_q;
    assert {:tag "noatomic"} _b65 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    assert {:tag "noread"} _b64 ==> !_READ_HAS_OCCURRED_$$cost;
    assert {:tag "noatomic"} _b63 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    assert {:tag "nowrite"} _b62 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b61 ==> _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v18$1;
    assert {:tag "nowrite"} _b60 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assert {:tag "predicatedEquality"} _b59 ==> p2$1 && p2$2 ==> _abstracted_call_arg_22$1 == _abstracted_call_arg_22$2;
    assert {:tag "predicatedEquality"} _b58 ==> p2$1 && p2$2 ==> _abstracted_call_arg_21$1 == _abstracted_call_arg_21$2;
    assert {:tag "predicatedEquality"} _b57 ==> p2$1 && p2$2 ==> _abstracted_call_arg_20$1 == _abstracted_call_arg_20$2;
    assert {:tag "predicatedEquality"} _b56 ==> p2$1 && p2$2 ==> _abstracted_call_arg_19$1 == _abstracted_call_arg_19$2;
    assert {:tag "predicatedEquality"} _b55 ==> p2$1 && p2$2 ==> _abstracted_call_arg_18$1 == _abstracted_call_arg_18$2;
    assert {:tag "predicatedEquality"} _b54 ==> p2$1 && p2$2 ==> _abstracted_call_arg_17$1 == _abstracted_call_arg_17$2;
    assert {:tag "predicatedEquality"} _b53 ==> p2$1 && p2$2 ==> _abstracted_call_arg_16$1 == _abstracted_call_arg_16$2;
    assert {:tag "predicatedEquality"} _b52 ==> p2$1 && p2$2 ==> _abstracted_call_arg_7$1 == _abstracted_call_arg_7$2;
    assert {:tag "predicatedEquality"} _b51 ==> p2$1 && p2$2 ==> _abstracted_call_arg_6$1 == _abstracted_call_arg_6$2;
    assert {:tag "predicatedEquality"} _b50 ==> p2$1 && p2$2 ==> _abstracted_call_arg_5$1 == _abstracted_call_arg_5$2;
    assert {:tag "predicatedEquality"} _b49 ==> p2$1 && p2$2 ==> _abstracted_call_arg_4$1 == _abstracted_call_arg_4$2;
    assert {:tag "predicatedEquality"} _b48 ==> p2$1 && p2$2 ==> _abstracted_call_arg_3$1 == _abstracted_call_arg_3$2;
    assert {:tag "predicatedEquality"} _b47 ==> p2$1 && p2$2 ==> _abstracted_call_arg_2$1 == _abstracted_call_arg_2$2;
    assert {:tag "predicatedEquality"} _b46 ==> p2$1 && p2$2 ==> _abstracted_call_arg_1$1 == _abstracted_call_arg_1$2;
    assert {:tag "predicatedEquality"} _b45 ==> p2$1 && p2$2 ==> _abstracted_call_arg_0$1 == _abstracted_call_arg_0$2;
    assert {:tag "predicatedEquality"} _b44 ==> p2$1 && p2$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b43 ==> p2$1 && p2$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b42 ==> p2$1 && p2$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b41 ==> p2$1 && p2$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b40 ==> p2$1 && p2$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b39 ==> p2$1 && p2$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b38 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b37 ==> p2$1 && p2$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b36 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b35 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b34 ==> p2$1 && p2$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b33 ==> p2$1 && p2$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b32 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b31 ==> p2$1 && p2$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b30 ==> p2$1 && p2$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b29 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b28 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b27 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b26 ==> p2$1 && p2$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b25 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b24 ==> p2$1 && p2$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b23 ==> p2$1 && p2$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b22 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b21 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b20 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b19 ==> p2$1 && p2$2 ==> $offset.0$1 == $offset.0$2;
    assert {:tag "predicatedEquality"} _b18 ==> p2$1 && p2$2 ==> $f_len.0$1 == $f_len.0$2;
    assert {:tag "loopPredicateEquality"} _b17 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b16 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> v21$1 != 0bv32 ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> v21$2 != 0bv32 ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b5 ==> BV32_UGE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b5 ==> BV32_UGE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV32_ULE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV32_ULE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b3 ==> BV32_SGE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b3 ==> BV32_SGE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b2 ==> BV32_SLE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b2 ==> BV32_SLE($f_len.0$2, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($f_len.0$1, $frontier_len) == BV32_SUB($f_len.0$2, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b1 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($f_len.0$2, $frontier_len) == BV32_SUB($f_len.0$1, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b0 ==> BV32_SUB($f_len.0$1, $frontier_len) == BV32_SUB($f_len.0$2, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b0 ==> BV32_SUB($f_len.0$2, $frontier_len) == BV32_SUB($f_len.0$1, $frontier_len);
    assert {:block_sourceloc} {:sourceloc_num 8} p2$1 ==> true;
    v3$1 := (if p2$1 then v0$1 == 0bv32 else v3$1);
    v3$2 := (if p2$2 then v0$2 == 0bv32 else v3$2);
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
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p4$1 := (if p2$1 && v3$1 then v3$1 else p4$1);
    p4$2 := (if p2$2 && v3$2 then v3$2 else p4$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_21$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_21$1);
    _abstracted_call_arg_21$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_21$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(p4$1, 0bv32, 0bv32, _abstracted_call_arg_21$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$BFS_kernel_one_block.b_q_length(p4$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_22$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_22$1);
    _abstracted_call_arg_22$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_22$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(p4$1, 0bv32, 0bv32, _abstracted_call_arg_22$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$BFS_kernel_one_block.b_offset(p4$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_one_block.b_offset"} true;
    goto __partitioned_block_$while.body_1;

  __partitioned_block_$while.body_1:
    call {:sourceloc_num 13} $bugle_barrier_duplicated_1(1bv1, 1bv1, p2$1, p2$2);
    v4$1 := (if p2$1 then BV32_ULT(v0$1, $f_len.0$1) else v4$1);
    v4$2 := (if p2$2 then BV32_ULT(v0$2, $f_len.0$2) else v4$2);
    p6$1 := (if p2$1 && v4$1 then v4$1 else p6$1);
    p6$2 := (if p2$2 && v4$2 then v4$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$b_q(p6$1, v0$1, $$b_q[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$b_q(p6$2, v0$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v5$1 := (if p6$1 then $$b_q[1bv1][v0$1] else v5$1);
    v5$2 := (if p6$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v5$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_16$1 := (if p6$1 then _HAVOC_bv32$1 else _abstracted_call_arg_16$1);
    _abstracted_call_arg_16$2 := (if p6$2 then _HAVOC_bv32$2 else _abstracted_call_arg_16$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$visited(p6$1, v5$1, 0bv32, _abstracted_call_arg_16$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(p6$2, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$visited(p6$2, v5$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$visited"} true;
    v6$1 := (if p6$1 then $$edgeArray[v5$1] else v6$1);
    v6$2 := (if p6$2 then $$edgeArray[v5$2] else v6$2);
    v7$1 := (if p6$1 then $$edgeArray[BV32_ADD(v5$1, 1bv32)] else v7$1);
    v7$2 := (if p6$2 then $$edgeArray[BV32_ADD(v5$2, 1bv32)] else v7$2);
    $offset.0$1 := (if p6$1 then v6$1 else $offset.0$1);
    $offset.0$2 := (if p6$2 then v6$2 else $offset.0$2);
    p7$1 := (if p6$1 then true else p7$1);
    p7$2 := (if p6$2 then true else p7$2);
    _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.13 := _WRITE_HAS_OCCURRED_$$frontier;
    _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.13 := _ATOMIC_HAS_OCCURRED_$$visited;
    _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.13 := _READ_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.13 := _ATOMIC_HAS_OCCURRED_$$cost;
    _WRITE_HAS_OCCURRED_$$b_q2$ghost$$while.cond.13 := _WRITE_HAS_OCCURRED_$$b_q2;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$while.cond.13 := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$while.cond.13 := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $while.cond.13;

  $while.cond.13:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b94 ==> !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset$ghost$$while.cond.13 == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b93 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b92 ==> !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length$ghost$$while.cond.13 == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b91 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b90 ==> !p6$1 ==> _WRITE_HAS_OCCURRED_$$b_q2$ghost$$while.cond.13 == _WRITE_HAS_OCCURRED_$$b_q2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b89 ==> _WRITE_HAS_OCCURRED_$$b_q2 ==> _WATCHED_OFFSET == v16$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b88 ==> !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.13 == _ATOMIC_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b87 ==> !p6$1 ==> _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.13 == _READ_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b86 ==> !p6$1 ==> _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.13 == _ATOMIC_HAS_OCCURRED_$$visited;
    assert {:tag "disabledMaintainsInstrumentation"} _b85 ==> !p6$1 ==> _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.13 == _WRITE_HAS_OCCURRED_$$frontier;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b84 ==> _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v18$1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p7"} {:dominator_predicate "p6"} true;
    assert p7$1 ==> p2$1;
    assert p7$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _WRITE_HAS_OCCURRED_$$b_q2 ==> BV32_ULT(local_id_x$1, $f_len.0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _WRITE_HAS_OCCURRED_$$frontier ==> BV32_ULT(local_id_x$1, $f_len.0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$cost ==> BV32_ULT(local_id_x$1, $f_len.0$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV32_ULT(local_id_x$1, $f_len.0$1) && BV32_ULT($offset.0$1, v7$1) ==> p7$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV32_ULT(local_id_x$2, $f_len.0$2) && BV32_ULT($offset.0$2, v7$2) ==> p7$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p7$1 ==> _b11 ==> p7$1 ==> BV32_ULT(local_id_x$1, $f_len.0$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p7$2 ==> _b11 ==> p7$2 ==> BV32_ULT(local_id_x$2, $f_len.0$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b10 ==> BV32_UGE($offset.0$1, v6$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b10 ==> BV32_UGE($offset.0$2, v6$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b9 ==> BV32_ULE($offset.0$1, v6$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b9 ==> BV32_ULE($offset.0$2, v6$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b8 ==> BV32_SGE($offset.0$1, v6$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b8 ==> BV32_SGE($offset.0$2, v6$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b7 ==> BV32_SLE($offset.0$1, v6$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b7 ==> BV32_SLE($offset.0$2, v6$2);
    assert {:block_sourceloc} {:sourceloc_num 19} p7$1 ==> true;
    v8$1 := (if p7$1 then BV32_ULT($offset.0$1, v7$1) else v8$1);
    v8$2 := (if p7$2 then BV32_ULT($offset.0$2, v7$2) else v8$2);
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p8$1 := (if p7$1 && v8$1 then v8$1 else p8$1);
    p8$2 := (if p7$2 && v8$2 then v8$2 else p8$2);
    p7$1 := (if p7$1 && !v8$1 then v8$1 else p7$1);
    p7$2 := (if p7$2 && !v8$2 then v8$2 else p7$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v9$1 := (if p8$1 then _HAVOC_bv32$1 else v9$1);
    v9$2 := (if p8$2 then _HAVOC_bv32$2 else v9$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_17$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_17$1);
    _abstracted_call_arg_17$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_17$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$cost(p8$1, v5$1, _abstracted_call_arg_17$1);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 22} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_18$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_18$1);
    _abstracted_call_arg_18$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_18$2);
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$cost(p8$2, v5$2, _abstracted_call_arg_18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v10$1 := (if p8$1 then _HAVOC_bv32$1 else v10$1);
    v10$2 := (if p8$2 then _HAVOC_bv32$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_ATOMIC_$$cost(p8$1, BV32_SDIV(BV32_MUL(v9$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 23} _CHECK_ATOMIC_$$cost(p8$2, BV32_SDIV(BV32_MUL(v9$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p8$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p8$2 then _HAVOC_bv32$2 else v11$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_19$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_19$1);
    _abstracted_call_arg_19$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_19$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$cost(p8$1, v5$1, _abstracted_call_arg_19$1);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 24} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_20$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_20$1);
    _abstracted_call_arg_20$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_20$2);
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$cost(p8$2, v5$2, _abstracted_call_arg_20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v12$1 := (if p8$1 then _HAVOC_bv32$1 else v12$1);
    v12$2 := (if p8$2 then _HAVOC_bv32$2 else v12$2);
    v13$1 := (if p8$1 then BV32_UGT(v11$1, BV32_ADD(v12$1, 1bv32)) else v13$1);
    v13$2 := (if p8$2 then BV32_UGT(v11$2, BV32_ADD(v12$2, 1bv32)) else v13$2);
    p10$1 := (if p8$1 && v13$1 then v13$1 else p10$1);
    p10$2 := (if p8$2 && v13$2 then v13$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_ATOMIC_$$visited(p10$1, BV32_SDIV(BV32_MUL(v9$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 26} _CHECK_ATOMIC_$$visited(p10$2, BV32_SDIV(BV32_MUL(v9$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$visited"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p10$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p10$2 then _HAVOC_bv32$2 else v14$2);
    v15$1 := (if p10$1 then v14$1 == 0bv32 else v15$1);
    v15$2 := (if p10$2 then v14$2 == 0bv32 else v15$2);
    p12$1 := (if p10$1 && v15$1 then v15$1 else p12$1);
    p12$2 := (if p10$2 && v15$2 then v15$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(p12$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 28} _CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length(p12$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v16$1 := (if p12$1 then _HAVOC_bv32$1 else v16$1);
    v16$2 := (if p12$2 then _HAVOC_bv32$2 else v16$2);
    assume !_USED_$$BFS_kernel_one_block.b_q_length[0bv32][v16$1];
    _USED_$$BFS_kernel_one_block.b_q_length[0bv32][v16$1] := true;
    assume !_USED_$$BFS_kernel_one_block.b_q_length[0bv32][v16$2];
    _USED_$$BFS_kernel_one_block.b_q_length[0bv32][v16$2] := true;
    v17$1 := (if p12$1 then BV32_ULT(v16$1, $max_local_mem) else v17$1);
    v17$2 := (if p12$2 then BV32_ULT(v16$2, $max_local_mem) else v17$2);
    p14$1 := (if p12$1 && v17$1 then v17$1 else p14$1);
    p14$2 := (if p12$2 && v17$2 then v17$2 else p14$2);
    p13$1 := (if p12$1 && !v17$1 then !v17$1 else p13$1);
    p13$2 := (if p12$2 && !v17$2 then !v17$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(p13$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 32} _CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset(p13$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v18$1 := (if p13$1 then _HAVOC_bv32$1 else v18$1);
    v18$2 := (if p13$2 then _HAVOC_bv32$2 else v18$2);
    assume !_USED_$$BFS_kernel_one_block.b_offset[0bv32][v18$1];
    _USED_$$BFS_kernel_one_block.b_offset[0bv32][v18$1] := true;
    assume !_USED_$$BFS_kernel_one_block.b_offset[0bv32][v18$2];
    _USED_$$BFS_kernel_one_block.b_offset[0bv32][v18$2] := true;
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$frontier(p13$1, v18$1, v9$1, $$frontier[v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p13$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$frontier(p13$2, v18$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[v18$1] := (if p13$1 then v9$1 else $$frontier[v18$1]);
    $$frontier[v18$2] := (if p13$2 then v9$2 else $$frontier[v18$2]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$b_q2(p14$1, v16$1, v9$1, $$b_q2[1bv1][v16$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(p14$2, v16$2);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$b_q2(p14$2, v16$2, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q2"} true;
    $$b_q2[1bv1][v16$1] := (if p14$1 then v9$1 else $$b_q2[1bv1][v16$1]);
    $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v16$2] := (if p14$2 then v9$2 else $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v16$2]);
    $offset.0$1 := (if p8$1 then BV32_ADD($offset.0$1, 1bv32) else $offset.0$1);
    $offset.0$2 := (if p8$2 then BV32_ADD($offset.0$2, 1bv32) else $offset.0$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $while.cond.13.backedge, __partitioned_block_$while.cond.13.tail_0;

  __partitioned_block_$while.cond.13.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$while.cond.13.tail_1;

  __partitioned_block_$while.cond.13.tail_1:
    call {:sourceloc_num 39} $bugle_barrier_duplicated_2(1bv1, 1bv1, p2$1, p2$2);
    v19$1 := (if p2$1 then BV32_ULT(v0$1, $max_local_mem) else v19$1);
    v19$2 := (if p2$2 then BV32_ULT(v0$2, $max_local_mem) else v19$2);
    p16$1 := (if p2$1 && v19$1 then v19$1 else p16$1);
    p16$2 := (if p2$2 && v19$2 then v19$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$b_q2(p16$1, v0$1, $$b_q2[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$b_q2(p16$2, v0$2, $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q2"} true;
    v20$1 := (if p16$1 then $$b_q2[1bv1][v0$1] else v20$1);
    v20$2 := (if p16$2 then $$b_q2[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v20$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$b_q(p16$1, v0$1, v20$1, $$b_q[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p16$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$b_q(p16$2, v0$2, v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v0$1] := (if p16$1 then v20$1 else $$b_q[1bv1][v0$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p16$2 then v20$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$while.cond.13.tail_2;

  __partitioned_block_$while.cond.13.tail_2:
    call {:sourceloc_num 44} $bugle_barrier_duplicated_3(1bv1, 1bv1, p2$1, p2$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_0$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p2$1, 0bv32, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 45} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_1$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p2$2, 0bv32, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v21$1 := (if p2$1 then _HAVOC_bv32$1 else v21$1);
    v21$2 := (if p2$2 then _HAVOC_bv32$2 else v21$2);
    v22$1 := (if p2$1 then v21$1 == 0bv32 else v22$1);
    v22$2 := (if p2$2 then v21$2 == 0bv32 else v22$2);
    p27$1 := (if p2$1 && v22$1 then v22$1 else p27$1);
    p27$2 := (if p2$2 && v22$2 then v22$2 else p27$2);
    p2$1 := (if p2$1 && v22$1 then !v22$1 else p2$1);
    p2$2 := (if p2$2 && v22$2 then !v22$2 else p2$2);
    p17$1 := (if p2$1 && !v22$1 then !v22$1 else p17$1);
    p17$2 := (if p2$2 && !v22$2 then !v22$2 else p17$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_2$1 := (if p17$1 then _HAVOC_bv32$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p17$2 then _HAVOC_bv32$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p17$1, 0bv32, _abstracted_call_arg_2$1);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 51} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_3$1 := (if p17$1 then _HAVOC_bv32$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p17$2 then _HAVOC_bv32$2 else _abstracted_call_arg_3$2);
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p17$2, 0bv32, _abstracted_call_arg_3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v24$1 := (if p17$1 then _HAVOC_bv32$1 else v24$1);
    v24$2 := (if p17$2 then _HAVOC_bv32$2 else v24$2);
    v25$1 := (if p17$1 then BV32_UGT(v24$1, group_size_x) else v25$1);
    v25$2 := (if p17$2 then BV32_UGT(v24$2, group_size_x) else v25$2);
    p22$1 := (if p17$1 && v25$1 then v25$1 else p22$1);
    p22$2 := (if p17$2 && v25$2 then v25$2 else p22$2);
    p2$1 := (if p17$1 && v25$1 then !v25$1 else p2$1);
    p2$2 := (if p17$2 && v25$2 then !v25$2 else p2$2);
    p18$1 := (if p17$1 && !v25$1 then !v25$1 else p18$1);
    p18$2 := (if p17$2 && !v25$2 then !v25$2 else p18$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_4$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p18$1, 0bv32, _abstracted_call_arg_4$1);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 53} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_5$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_5$2);
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p18$2, 0bv32, _abstracted_call_arg_5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v26$1 := (if p18$1 then _HAVOC_bv32$1 else v26$1);
    v26$2 := (if p18$2 then _HAVOC_bv32$2 else v26$2);
    v27$1 := (if p18$1 then BV32_UGT(v26$1, $max_local_mem) else v27$1);
    v27$2 := (if p18$2 then BV32_UGT(v26$2, $max_local_mem) else v27$2);
    p22$1 := (if p18$1 && v27$1 then v27$1 else p22$1);
    p22$2 := (if p18$2 && v27$2 then v27$2 else p22$2);
    p2$1 := (if p18$1 && v27$1 then !v27$1 else p2$1);
    p2$2 := (if p18$2 && v27$2 then !v27$2 else p2$2);
    p19$1 := (if p18$1 && !v27$1 then !v27$1 else p19$1);
    p19$2 := (if p18$2 && !v27$2 then !v27$2 else p19$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_6$1 := (if p19$1 then _HAVOC_bv32$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p19$2 then _HAVOC_bv32$2 else _abstracted_call_arg_6$2);
    call {:sourceloc} {:sourceloc_num 67} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p19$1, 0bv32, _abstracted_call_arg_6$1);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 67} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_7$1 := (if p19$1 then _HAVOC_bv32$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p19$2 then _HAVOC_bv32$2 else _abstracted_call_arg_7$2);
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 67} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p19$2, 0bv32, _abstracted_call_arg_7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v35$1 := (if p19$1 then _HAVOC_bv32$1 else v35$1);
    v35$2 := (if p19$2 then _HAVOC_bv32$2 else v35$2);
    goto __partitioned_block_$while.cond.13.tail_3;

  __partitioned_block_$while.cond.13.tail_3:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_4(1bv1, 1bv1, p19$1, p19$2);
    $f_len.0$1 := (if p19$1 then v35$1 else $f_len.0$1);
    $f_len.0$2 := (if p19$2 then v35$2 else $f_len.0$2);
    p2$1 := (if p19$1 then true else p2$1);
    p2$2 := (if p19$2 then true else p2$2);
    goto $while.body.backedge, $while.body.tail;

  $while.body.tail:
    assume !p2$1 && !p2$2;
    p22$1 := (if p20$1 then true else p22$1);
    p22$2 := (if p20$2 then true else p22$2);
    p22$1 := (if p21$1 then true else p22$1);
    p22$2 := (if p21$2 then true else p22$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_8$1 := (if p22$1 then _HAVOC_bv32$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p22$2 then _HAVOC_bv32$2 else _abstracted_call_arg_8$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p22$1, 0bv32, _abstracted_call_arg_8$1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 55} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_9$1 := (if p22$1 then _HAVOC_bv32$1 else _abstracted_call_arg_9$1);
    _abstracted_call_arg_9$2 := (if p22$2 then _HAVOC_bv32$2 else _abstracted_call_arg_9$2);
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p22$2, 0bv32, _abstracted_call_arg_9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v28$1 := (if p22$1 then _HAVOC_bv32$1 else v28$1);
    v28$2 := (if p22$2 then _HAVOC_bv32$2 else v28$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_10$1 := (if p22$1 then _HAVOC_bv32$1 else _abstracted_call_arg_10$1);
    _abstracted_call_arg_10$2 := (if p22$2 then _HAVOC_bv32$2 else _abstracted_call_arg_10$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$BFS_kernel_one_block.b_offset(p22$1, 0bv32, _abstracted_call_arg_10$1);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 56} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_11$1 := (if p22$1 then _HAVOC_bv32$1 else _abstracted_call_arg_11$1);
    _abstracted_call_arg_11$2 := (if p22$2 then _HAVOC_bv32$2 else _abstracted_call_arg_11$2);
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$BFS_kernel_one_block.b_offset(p22$2, 0bv32, _abstracted_call_arg_11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v29$1 := (if p22$1 then _HAVOC_bv32$1 else v29$1);
    v29$2 := (if p22$2 then _HAVOC_bv32$2 else v29$2);
    v30$1 := (if p22$1 then BV32_ULT(v0$1, BV32_SUB(v28$1, v29$1)) else v30$1);
    v30$2 := (if p22$2 then BV32_ULT(v0$2, BV32_SUB(v28$2, v29$2)) else v30$2);
    p23$1 := (if p22$1 && v30$1 then v30$1 else p23$1);
    p23$2 := (if p22$2 && v30$2 then v30$2 else p23$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$b_q(p23$1, v0$1, $$b_q[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$b_q(p23$2, v0$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v31$1 := (if p23$1 then $$b_q[1bv1][v0$1] else v31$1);
    v31$2 := (if p23$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v31$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_14$1 := (if p23$1 then _HAVOC_bv32$1 else _abstracted_call_arg_14$1);
    _abstracted_call_arg_14$2 := (if p23$2 then _HAVOC_bv32$2 else _abstracted_call_arg_14$2);
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$BFS_kernel_one_block.b_offset(p23$1, 0bv32, _abstracted_call_arg_14$1);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 59} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_15$1 := (if p23$1 then _HAVOC_bv32$1 else _abstracted_call_arg_15$1);
    _abstracted_call_arg_15$2 := (if p23$2 then _HAVOC_bv32$2 else _abstracted_call_arg_15$2);
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$BFS_kernel_one_block.b_offset(p23$2, 0bv32, _abstracted_call_arg_15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_offset"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v32$1 := (if p23$1 then _HAVOC_bv32$1 else v32$1);
    v32$2 := (if p23$2 then _HAVOC_bv32$2 else v32$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$frontier(p23$1, BV32_ADD(v32$1, v0$1), v31$1, $$frontier[BV32_ADD(v32$1, v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p23$2, BV32_ADD(v32$2, v0$2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$frontier(p23$2, BV32_ADD(v32$2, v0$2), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[BV32_ADD(v32$1, v0$1)] := (if p23$1 then v31$1 else $$frontier[BV32_ADD(v32$1, v0$1)]);
    $$frontier[BV32_ADD(v32$2, v0$2)] := (if p23$2 then v31$2 else $$frontier[BV32_ADD(v32$2, v0$2)]);
    v33$1 := (if p22$1 then v0$1 == 0bv32 else v33$1);
    v33$2 := (if p22$2 then v0$2 == 0bv32 else v33$2);
    p25$1 := (if p22$1 && v33$1 then v33$1 else p25$1);
    p25$2 := (if p22$2 && v33$2 then v33$2 else p25$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_12$1 := (if p25$1 then _HAVOC_bv32$1 else _abstracted_call_arg_12$1);
    _abstracted_call_arg_12$2 := (if p25$2 then _HAVOC_bv32$2 else _abstracted_call_arg_12$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$BFS_kernel_one_block.b_q_length(p25$1, 0bv32, _abstracted_call_arg_12$1);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 63} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_13$1 := (if p25$1 then _HAVOC_bv32$1 else _abstracted_call_arg_13$1);
    _abstracted_call_arg_13$2 := (if p25$2 then _HAVOC_bv32$2 else _abstracted_call_arg_13$2);
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$BFS_kernel_one_block.b_q_length(p25$2, 0bv32, _abstracted_call_arg_13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_one_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v34$1 := (if p25$1 then _HAVOC_bv32$1 else v34$1);
    v34$2 := (if p25$2 then _HAVOC_bv32$2 else v34$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$frontier_length(p25$1, 0bv32, v34$1, $$frontier_length[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(p25$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$frontier_length(p25$2, 0bv32, v34$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier_length"} true;
    $$frontier_length[0bv32] := (if p25$1 then v34$1 else $$frontier_length[0bv32]);
    $$frontier_length[0bv32] := (if p25$2 then v34$2 else $$frontier_length[0bv32]);
    v23$1 := (if p27$1 then v0$1 == 0bv32 else v23$1);
    v23$2 := (if p27$2 then v0$2 == 0bv32 else v23$2);
    p28$1 := (if p27$1 && v23$1 then v23$1 else p28$1);
    p28$2 := (if p27$2 && v23$2 then v23$2 else p28$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$frontier_length(p28$1, 0bv32, 0bv32, $$frontier_length[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(p28$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$frontier_length(p28$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier_length"} true;
    $$frontier_length[0bv32] := (if p28$1 then 0bv32 else $$frontier_length[0bv32]);
    $$frontier_length[0bv32] := (if p28$2 then 0bv32 else $$frontier_length[0bv32]);
    return;

  $while.body.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$while.body_0;

  $while.cond.13.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $while.cond.13;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1024bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$b_q2, $$frontier, $$frontier_length, _TRACKING;



const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

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

var {:atomic_usedmap} _USED_$$BFS_kernel_one_block.b_q_length: [bv32][bv32]bool;

var {:atomic_usedmap} _USED_$$BFS_kernel_one_block.b_offset: [bv32][bv32]bool;

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



const _WATCHED_VALUE_$$b_q2: bv32;

procedure {:inline 1} _LOG_READ_$$b_q2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$b_q2;



implementation {:inline 1} _LOG_READ_$$b_q2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then true else _READ_HAS_OCCURRED_$$b_q2);
    return;
}



procedure _CHECK_READ_$$b_q2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b_q2 && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$b_q2: bool;

procedure {:inline 1} _LOG_WRITE_$$b_q2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$b_q2, _WRITE_READ_BENIGN_FLAG_$$b_q2;



implementation {:inline 1} _LOG_WRITE_$$b_q2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then true else _WRITE_HAS_OCCURRED_$$b_q2);
    _WRITE_READ_BENIGN_FLAG_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b_q2);
    return;
}



procedure _CHECK_WRITE_$$b_q2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b_q2 != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$b_q2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b_q2;



implementation {:inline 1} _LOG_ATOMIC_$$b_q2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b_q2 := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b_q2);
    return;
}



procedure _CHECK_ATOMIC_$$b_q2(_P: bool, _offset: bv32);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q2"} {:array "$$b_q2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b_q2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b_q2 := (if _P && _WRITE_HAS_OCCURRED_$$b_q2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b_q2);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_one_block.b_q_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_q_length);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_one_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_one_block.b_offset"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_one_block.b_offset);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q2;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q2;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_q_length;
    goto anon3;

  anon3:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_one_block.b_offset;
    goto anon4;

  anon4:
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    goto anon10;

  anon10:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier_length;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier_length;
    goto anon11;

  anon11:
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon14;

  anon14:
    havoc _TRACKING;
    return;

  anon17_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon13;

  anon13:
    havoc $$frontier_length;
    goto anon14;

  anon16_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon6;

  anon6:
    havoc $$b_q2;
    goto anon7;

  anon15_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;
