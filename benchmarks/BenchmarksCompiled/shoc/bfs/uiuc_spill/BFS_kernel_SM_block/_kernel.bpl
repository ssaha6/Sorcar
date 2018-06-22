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

var {:source_name "frontier_length"} {:global} $$frontier_length: [bv32]bv32;

axiom {:array_info "$$frontier_length"} {:global} {:elem_width 32} {:source_name "frontier_length"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$frontier_length: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$frontier_length: bool;

axiom {:array_info "$$g_mutex"} {:global} {:elem_width 32} {:source_name "g_mutex"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_mutex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_mutex: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_mutex: bool;

var {:source_name "g_mutex2"} {:global} $$g_mutex2: [bv32]bv32;

axiom {:array_info "$$g_mutex2"} {:global} {:elem_width 32} {:source_name "g_mutex2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_mutex2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_mutex2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_mutex2: bool;

axiom {:array_info "$$g_q_offsets"} {:global} {:elem_width 32} {:source_name "g_q_offsets"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_q_offsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_q_offsets: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_q_offsets: bool;

var {:source_name "g_q_size"} {:global} $$g_q_size: [bv32]bv32;

axiom {:array_info "$$g_q_size"} {:global} {:elem_width 32} {:source_name "g_q_size"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_q_size: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_q_size: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_q_size: bool;

var {:source_name "b_q"} {:group_shared} $$b_q: [bv1][bv32]bv32;

axiom {:array_info "$$b_q"} {:group_shared} {:elem_width 32} {:source_name "b_q"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b_q: bool;

axiom {:array_info "$$BFS_kernel_SM_block.b_q_length"} {:group_shared} {:elem_width 32} {:source_name "b_q_length"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length: bool;

var {:source_name "b_offset"} {:group_shared} $$BFS_kernel_SM_block.b_offset: [bv1][bv32]bv32;

axiom {:array_info "$$BFS_kernel_SM_block.b_offset"} {:group_shared} {:elem_width 32} {:source_name "b_offset"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset: bool;

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

function {:bvbuiltin "bvsrem"} BV32_SREM(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "BFS_kernel_SM_block"} {:kernel} $BFS_kernel_SM_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $frontier_len == 2048bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $max_local_mem == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$frontier && !_WRITE_HAS_OCCURRED_$$frontier && !_ATOMIC_HAS_OCCURRED_$$frontier;
  requires !_READ_HAS_OCCURRED_$$frontier2 && !_WRITE_HAS_OCCURRED_$$frontier2 && !_ATOMIC_HAS_OCCURRED_$$frontier2;
  requires !_READ_HAS_OCCURRED_$$visited && !_WRITE_HAS_OCCURRED_$$visited && !_ATOMIC_HAS_OCCURRED_$$visited;
  requires !_READ_HAS_OCCURRED_$$cost && !_WRITE_HAS_OCCURRED_$$cost && !_ATOMIC_HAS_OCCURRED_$$cost;
  requires !_READ_HAS_OCCURRED_$$edgeArray && !_WRITE_HAS_OCCURRED_$$edgeArray && !_ATOMIC_HAS_OCCURRED_$$edgeArray;
  requires !_READ_HAS_OCCURRED_$$edgeArrayAux && !_WRITE_HAS_OCCURRED_$$edgeArrayAux && !_ATOMIC_HAS_OCCURRED_$$edgeArrayAux;
  requires !_READ_HAS_OCCURRED_$$frontier_length && !_WRITE_HAS_OCCURRED_$$frontier_length && !_ATOMIC_HAS_OCCURRED_$$frontier_length;
  requires !_READ_HAS_OCCURRED_$$g_mutex && !_WRITE_HAS_OCCURRED_$$g_mutex && !_ATOMIC_HAS_OCCURRED_$$g_mutex;
  requires !_READ_HAS_OCCURRED_$$g_mutex2 && !_WRITE_HAS_OCCURRED_$$g_mutex2 && !_ATOMIC_HAS_OCCURRED_$$g_mutex2;
  requires !_READ_HAS_OCCURRED_$$g_q_offsets && !_WRITE_HAS_OCCURRED_$$g_q_offsets && !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
  requires !_READ_HAS_OCCURRED_$$g_q_size && !_WRITE_HAS_OCCURRED_$$g_q_size && !_ATOMIC_HAS_OCCURRED_$$g_q_size;
  requires !_READ_HAS_OCCURRED_$$b_q && !_WRITE_HAS_OCCURRED_$$b_q && !_ATOMIC_HAS_OCCURRED_$$b_q;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
  requires !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
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
  modifies $$BFS_kernel_SM_block.b_offset, _USED_$$BFS_kernel_SM_block.b_q_length, $$b_q, _USED_$$g_mutex, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING, _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length, _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset, _TRACKING, _READ_HAS_OCCURRED_$$frontier2, _READ_HAS_OCCURRED_$$frontier, _WRITE_HAS_OCCURRED_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _WRITE_READ_BENIGN_FLAG_$$visited, _READ_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$cost, _ATOMIC_HAS_OCCURRED_$$visited, _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length, _WRITE_HAS_OCCURRED_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _WRITE_READ_BENIGN_FLAG_$$b_q, _ATOMIC_HAS_OCCURRED_$$g_q_offsets, _WRITE_HAS_OCCURRED_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_READ_BENIGN_FLAG_$$frontier, _WRITE_HAS_OCCURRED_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2, _WRITE_READ_BENIGN_FLAG_$$frontier2, _TRACKING, _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length, _TRACKING, _TRACKING, _ATOMIC_HAS_OCCURRED_$$g_mutex, _READ_HAS_OCCURRED_$$g_mutex, _TRACKING, _READ_HAS_OCCURRED_$$g_q_offsets, _WRITE_HAS_OCCURRED_$$g_q_size, _WRITE_READ_BENIGN_FLAG_$$g_q_size, _WRITE_READ_BENIGN_FLAG_$$g_q_size, _WRITE_HAS_OCCURRED_$$g_q_offsets, _WRITE_READ_BENIGN_FLAG_$$g_q_offsets, _WRITE_READ_BENIGN_FLAG_$$g_q_offsets, _READ_HAS_OCCURRED_$$b_q, _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$g_q_size, _WRITE_HAS_OCCURRED_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length, _WRITE_READ_BENIGN_FLAG_$$frontier_length;



implementation {:source_name "BFS_kernel_SM_block"} {:kernel} $BFS_kernel_SM_block($frontier_len: bv32, $numVertices: bv32, $numEdges: bv32, $max_local_mem: bv32)
{
  var $loop_index.0$1: bv32;
  var $loop_index.0$2: bv32;
  var $l_mutex.0$1: bv32;
  var $l_mutex.0$2: bv32;
  var $f_len.0$1: bv32;
  var $f_len.0$2: bv32;
  var $node_to_process.0$1: bv32;
  var $node_to_process.0$2: bv32;
  var $offset.0$1: bv32;
  var $offset.0$2: bv32;
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v5$1: bool;
  var v5$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v0$1: bv32;
  var v0$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v10$1: bool;
  var v10$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v29$1: bv32;
  var v29$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v21$1: bool;
  var v21$2: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v17$1: bool;
  var v17$2: bool;
  var v27$1: bv32;
  var v27$2: bv32;
  var v28$1: bool;
  var v28$2: bool;
  var v22$1: bool;
  var v22$2: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v35$1: bool;
  var v35$2: bool;
  var v32$1: bool;
  var v32$2: bool;
  var v36$1: bool;
  var v36$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v44$1: bv32;
  var v44$2: bv32;
  var v52$1: bv32;
  var v52$2: bv32;
  var v48$1: bv32;
  var v48$2: bv32;
  var v50$1: bv32;
  var v50$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v56$1: bv32;
  var v56$2: bv32;
  var v54$1: bv32;
  var v54$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v37$1: bv32;
  var v37$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v53$1: bool;
  var v53$2: bool;
  var v51$1: bool;
  var v51$2: bool;
  var v55$1: bool;
  var v55$2: bool;
  var v42$1: bool;
  var v42$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v47$1: bool;
  var v47$2: bool;
  var v41$1: bv32;
  var v41$2: bv32;
  var v49$1: bool;
  var v49$2: bool;
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
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var p42$1: bool;
  var p42$2: bool;
  var p43$1: bool;
  var p43$2: bool;
  var p44$1: bool;
  var p44$2: bool;
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.14: bool;
  var _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond.14: bool;
  var _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.14: bool;
  var _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.14: bool;
  var _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.14: bool;
  var _ATOMIC_HAS_OCCURRED_$$g_q_offsets$ghost$$while.cond.14: bool;
  var _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond.14: bool;
  var _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length$ghost$$while.cond.14: bool;
  var _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i: bool;
  var _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i.126: bool;
  var _WRITE_HAS_OCCURRED_$$frontier$ghost$$for.cond: bool;
  var _READ_HAS_OCCURRED_$$frontier2$ghost$$for.cond: bool;
  var _READ_HAS_OCCURRED_$$g_q_size$ghost$$for.cond: bool;


  __partitioned_block_$entry_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := $$g_mutex2[0bv32];
    v2$2 := $$g_mutex2[0bv32];
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 4} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $loop_index.0$1, $l_mutex.0$1, $f_len.0$1 := 0bv32, v2$1, $frontier_len;
    $loop_index.0$2, $l_mutex.0$2, $f_len.0$2 := 0bv32, v2$2, $frontier_len;
    p0$1 := false;
    p0$2 := false;
    p40$1 := false;
    p40$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto __partitioned_block_$while.body_0;

  __partitioned_block_$while.body_0:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b156 ==> _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b155 ==> _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b154 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assert {:tag "noread"} _b153 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b152 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b151 ==> _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b150 ==> _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b149 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assert {:tag "nowrite"} _b148 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assert {:tag "noread"} _b147 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b146 ==> _WRITE_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == v18$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b145 ==> _READ_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "nowrite"} _b144 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assert {:tag "noread"} _b143 ==> !_READ_HAS_OCCURRED_$$b_q;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b142 ==> _WRITE_HAS_OCCURRED_$$g_q_size ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b141 ==> _READ_HAS_OCCURRED_$$g_q_size ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b140 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assert {:tag "noread"} _b139 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b138 ==> _ATOMIC_HAS_OCCURRED_$$g_q_offsets ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b137 ==> _WRITE_HAS_OCCURRED_$$g_q_offsets ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b136 ==> _READ_HAS_OCCURRED_$$g_q_offsets ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b135 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    assert {:tag "nowrite"} _b134 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assert {:tag "noread"} _b133 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b132 ==> _ATOMIC_HAS_OCCURRED_$$g_mutex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b131 ==> _READ_HAS_OCCURRED_$$g_mutex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b130 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    assert {:tag "noread"} _b129 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assert {:tag "noatomic"} _b128 ==> !_ATOMIC_HAS_OCCURRED_$$cost;
    assert {:tag "noread"} _b127 ==> !_READ_HAS_OCCURRED_$$cost;
    assert {:tag "noatomic"} _b126 ==> !_ATOMIC_HAS_OCCURRED_$$visited;
    assert {:tag "nowrite"} _b125 ==> !_WRITE_HAS_OCCURRED_$$visited;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b124 ==> _WRITE_HAS_OCCURRED_$$frontier2 ==> _WATCHED_OFFSET == v20$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b123 ==> _READ_HAS_OCCURRED_$$frontier2 ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    assert {:tag "nowrite"} _b122 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assert {:tag "noread"} _b121 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b120 ==> _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v20$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b119 ==> _READ_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    assert {:tag "nowrite"} _b118 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assert {:tag "noread"} _b117 ==> !_READ_HAS_OCCURRED_$$frontier;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> _abstracted_call_arg_19$1 == _abstracted_call_arg_19$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> _abstracted_call_arg_18$1 == _abstracted_call_arg_18$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> _abstracted_call_arg_17$1 == _abstracted_call_arg_17$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> _abstracted_call_arg_16$1 == _abstracted_call_arg_16$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> _abstracted_call_arg_15$1 == _abstracted_call_arg_15$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> _abstracted_call_arg_14$1 == _abstracted_call_arg_14$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> _abstracted_call_arg_13$1 == _abstracted_call_arg_13$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> _abstracted_call_arg_12$1 == _abstracted_call_arg_12$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> _abstracted_call_arg_11$1 == _abstracted_call_arg_11$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> _abstracted_call_arg_10$1 == _abstracted_call_arg_10$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> _abstracted_call_arg_9$1 == _abstracted_call_arg_9$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> _abstracted_call_arg_8$1 == _abstracted_call_arg_8$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> _abstracted_call_arg_7$1 == _abstracted_call_arg_7$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> _abstracted_call_arg_6$1 == _abstracted_call_arg_6$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> _abstracted_call_arg_5$1 == _abstracted_call_arg_5$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> _abstracted_call_arg_4$1 == _abstracted_call_arg_4$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> _abstracted_call_arg_3$1 == _abstracted_call_arg_3$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> _abstracted_call_arg_2$1 == _abstracted_call_arg_2$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> _abstracted_call_arg_1$1 == _abstracted_call_arg_1$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> _abstracted_call_arg_0$1 == _abstracted_call_arg_0$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> $offset.0$1 == $offset.0$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> $node_to_process.0$1 == $node_to_process.0$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> $f_len.0$1 == $f_len.0$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> $l_mutex.0$1 == $l_mutex.0$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> $loop_index.0$1 == $loop_index.0$2;
    assert {:tag "loopPredicateEquality"} _b43 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b42 ==> p0$1 == p0$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> !BV32_ULT(v46$1, group_size_x) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> !BV32_ULT(v46$2, group_size_x) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b14 ==> BV32_UGE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b14 ==> BV32_UGE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b13 ==> BV32_ULE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b13 ==> BV32_ULE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b12 ==> BV32_SGE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b12 ==> BV32_SGE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b11 ==> BV32_SLE($f_len.0$1, $frontier_len);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b11 ==> BV32_SLE($f_len.0$2, $frontier_len);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b10 ==> BV32_UGE($loop_index.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b10 ==> BV32_UGE($loop_index.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b9 ==> BV32_ULE($loop_index.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b9 ==> BV32_ULE($loop_index.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b8 ==> BV32_SGE($loop_index.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b8 ==> BV32_SGE($loop_index.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b7 ==> BV32_SLE($loop_index.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b7 ==> BV32_SLE($loop_index.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b6 ==> BV32_UGE($l_mutex.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b6 ==> BV32_UGE($l_mutex.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV32_ULE($l_mutex.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV32_ULE($l_mutex.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_SGE($l_mutex.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_SGE($l_mutex.0$2, v2$2);
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_SLE($l_mutex.0$1, v2$1);
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_SLE($l_mutex.0$2, v2$2);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($f_len.0$1, $frontier_len) == BV32_SUB($f_len.0$2, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b2 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV32_SUB($f_len.0$2, $frontier_len) == BV32_SUB($f_len.0$1, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p0$1 ==> _b1 ==> BV32_SUB($f_len.0$1, $frontier_len) == BV32_SUB($f_len.0$2, $frontier_len);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p0$2 ==> _b1 ==> BV32_SUB($f_len.0$2, $frontier_len) == BV32_SUB($f_len.0$1, $frontier_len);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV32_AND(BV32_SUB(BV32_ADD(num_groups_x, num_groups_x), 1bv32), $l_mutex.0$1) == BV32_AND(BV32_SUB(BV32_ADD(num_groups_x, num_groups_x), 1bv32), v2$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV32_AND(BV32_SUB(BV32_ADD(num_groups_x, num_groups_x), 1bv32), $l_mutex.0$2) == BV32_AND(BV32_SUB(BV32_ADD(num_groups_x, num_groups_x), 1bv32), v2$2);
    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    v3$1 := (if p0$1 then v1$1 == 0bv32 else v3$1);
    v3$2 := (if p0$2 then v1$2 == 0bv32 else v3$2);
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
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p42$1 := false;
    p42$2 := false;
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p2$1 := (if p0$1 && v3$1 then v3$1 else p2$1);
    p2$2 := (if p0$2 && v3$2 then v3$2 else p2$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_19$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_19$1);
    _abstracted_call_arg_19$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_19$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$BFS_kernel_SM_block.b_q_length(p2$1, 0bv32, 0bv32, _abstracted_call_arg_19$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length(p2$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$BFS_kernel_SM_block.b_q_length(p2$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_SM_block.b_q_length"} true;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$BFS_kernel_SM_block.b_offset(p2$1, 0bv32, 0bv32, $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset(p2$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$BFS_kernel_SM_block.b_offset(p2$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_SM_block.b_offset"} true;
    $$BFS_kernel_SM_block.b_offset[1bv1][0bv32] := (if p2$1 then 0bv32 else $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p2$2 then 0bv32 else $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$while.body_1;

  __partitioned_block_$while.body_1:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_1(1bv1, 1bv1, p0$1, p0$2);
    v4$1 := (if p0$1 then BV32_ULT(v0$1, $f_len.0$1) else v4$1);
    v4$2 := (if p0$2 then BV32_ULT(v0$2, $f_len.0$2) else v4$2);
    p4$1 := (if p0$1 && v4$1 then v4$1 else p4$1);
    p4$2 := (if p0$2 && v4$2 then v4$2 else p4$2);
    v5$1 := (if p4$1 then $loop_index.0$1 == 0bv32 else v5$1);
    v5$2 := (if p4$2 then $loop_index.0$2 == 0bv32 else v5$2);
    p6$1 := (if p4$1 && v5$1 then v5$1 else p6$1);
    p6$2 := (if p4$2 && v5$2 then v5$2 else p6$2);
    p5$1 := (if p4$1 && !v5$1 then !v5$1 else p5$1);
    p5$2 := (if p4$2 && !v5$2 then !v5$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$frontier2(p5$1, v0$1, $$frontier2[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$frontier2(p5$2, v0$2, $$frontier2[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$frontier2"} true;
    v7$1 := (if p5$1 then $$frontier2[v0$1] else v7$1);
    v7$2 := (if p5$2 then $$frontier2[v0$2] else v7$2);
    $node_to_process.0$1 := (if p5$1 then v7$1 else $node_to_process.0$1);
    $node_to_process.0$2 := (if p5$2 then v7$2 else $node_to_process.0$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$frontier(p6$1, v0$1, $$frontier[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$frontier(p6$2, v0$2, $$frontier[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$frontier"} true;
    v6$1 := (if p6$1 then $$frontier[v0$1] else v6$1);
    v6$2 := (if p6$2 then $$frontier[v0$2] else v6$2);
    $node_to_process.0$1 := (if p6$1 then v6$1 else $node_to_process.0$1);
    $node_to_process.0$2 := (if p6$2 then v6$2 else $node_to_process.0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_14$1 := (if p4$1 then _HAVOC_bv32$1 else _abstracted_call_arg_14$1);
    _abstracted_call_arg_14$2 := (if p4$2 then _HAVOC_bv32$2 else _abstracted_call_arg_14$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$visited(p4$1, $node_to_process.0$1, 0bv32, _abstracted_call_arg_14$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$visited(p4$2, $node_to_process.0$2);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$visited(p4$2, $node_to_process.0$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$visited"} true;
    v8$1 := (if p4$1 then $$edgeArray[$node_to_process.0$1] else v8$1);
    v8$2 := (if p4$2 then $$edgeArray[$node_to_process.0$2] else v8$2);
    v9$1 := (if p4$1 then $$edgeArray[BV32_ADD($node_to_process.0$1, 1bv32)] else v9$1);
    v9$2 := (if p4$2 then $$edgeArray[BV32_ADD($node_to_process.0$2, 1bv32)] else v9$2);
    $offset.0$1 := (if p4$1 then v8$1 else $offset.0$1);
    $offset.0$2 := (if p4$2 then v8$2 else $offset.0$2);
    p7$1 := (if p4$1 then true else p7$1);
    p7$2 := (if p4$2 then true else p7$2);
    _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.14 := _WRITE_HAS_OCCURRED_$$frontier;
    _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond.14 := _WRITE_HAS_OCCURRED_$$frontier2;
    _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.14 := _ATOMIC_HAS_OCCURRED_$$visited;
    _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.14 := _READ_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.14 := _ATOMIC_HAS_OCCURRED_$$cost;
    _ATOMIC_HAS_OCCURRED_$$g_q_offsets$ghost$$while.cond.14 := _ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond.14 := _WRITE_HAS_OCCURRED_$$b_q;
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length$ghost$$while.cond.14 := _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $while.cond.14;

  $while.cond.14:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b169 ==> !p4$1 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length$ghost$$while.cond.14 == _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b168 ==> _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b167 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$b_q$ghost$$while.cond.14 == _WRITE_HAS_OCCURRED_$$b_q;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b166 ==> _WRITE_HAS_OCCURRED_$$b_q ==> _WATCHED_OFFSET == v18$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b165 ==> !p4$1 ==> _ATOMIC_HAS_OCCURRED_$$g_q_offsets$ghost$$while.cond.14 == _ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b164 ==> _ATOMIC_HAS_OCCURRED_$$g_q_offsets ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b163 ==> !p4$1 ==> _ATOMIC_HAS_OCCURRED_$$cost$ghost$$while.cond.14 == _ATOMIC_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b162 ==> !p4$1 ==> _READ_HAS_OCCURRED_$$cost$ghost$$while.cond.14 == _READ_HAS_OCCURRED_$$cost;
    assert {:tag "disabledMaintainsInstrumentation"} _b161 ==> !p4$1 ==> _ATOMIC_HAS_OCCURRED_$$visited$ghost$$while.cond.14 == _ATOMIC_HAS_OCCURRED_$$visited;
    assert {:tag "disabledMaintainsInstrumentation"} _b160 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$frontier2$ghost$$while.cond.14 == _WRITE_HAS_OCCURRED_$$frontier2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b159 ==> _WRITE_HAS_OCCURRED_$$frontier2 ==> _WATCHED_OFFSET == v20$1;
    assert {:tag "disabledMaintainsInstrumentation"} _b158 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$frontier$ghost$$while.cond.14 == _WRITE_HAS_OCCURRED_$$frontier;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b157 ==> _WRITE_HAS_OCCURRED_$$frontier ==> _WATCHED_OFFSET == v20$1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p7"} {:dominator_predicate "p4"} true;
    assert p7$1 ==> p0$1;
    assert p7$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _WRITE_HAS_OCCURRED_$$frontier2 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _WRITE_HAS_OCCURRED_$$frontier ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _WRITE_HAS_OCCURRED_$$b_q ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _READ_HAS_OCCURRED_$$cost ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b37 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1) && BV32_ULT($offset.0$1, v9$1) ==> p7$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b37 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $f_len.0$2) && BV32_ULT($offset.0$2, v9$2) ==> p7$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p7$1 ==> _b36 ==> p7$1 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $f_len.0$1);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p7$2 ==> _b36 ==> p7$2 ==> BV32_ULT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $f_len.0$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b35 ==> BV32_UGE($offset.0$1, v8$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b35 ==> BV32_UGE($offset.0$2, v8$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b34 ==> BV32_ULE($offset.0$1, v8$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b34 ==> BV32_ULE($offset.0$2, v8$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b33 ==> BV32_SGE($offset.0$1, v8$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b33 ==> BV32_SGE($offset.0$2, v8$2);
    assert {:tag "loopBound"} {:thread 1} p7$1 ==> _b32 ==> BV32_SLE($offset.0$1, v8$1);
    assert {:tag "loopBound"} {:thread 2} p7$2 ==> _b32 ==> BV32_SLE($offset.0$2, v8$2);
    assert {:block_sourceloc} {:sourceloc_num 20} p7$1 ==> true;
    v10$1 := (if p7$1 then BV32_ULT($offset.0$1, v9$1) else v10$1);
    v10$2 := (if p7$2 then BV32_ULT($offset.0$2, v9$2) else v10$2);
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
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p8$1 := (if p7$1 && v10$1 then v10$1 else p8$1);
    p8$2 := (if p7$2 && v10$2 then v10$2 else p8$2);
    p7$1 := (if p7$1 && !v10$1 then v10$1 else p7$1);
    p7$2 := (if p7$2 && !v10$2 then v10$2 else p7$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p8$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p8$2 then _HAVOC_bv32$2 else v11$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_15$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_15$1);
    _abstracted_call_arg_15$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_15$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$cost(p8$1, $node_to_process.0$1, _abstracted_call_arg_15$1);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 23} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_16$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_16$1);
    _abstracted_call_arg_16$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_16$2);
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$cost(p8$2, $node_to_process.0$2, _abstracted_call_arg_16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v12$1 := (if p8$1 then _HAVOC_bv32$1 else v12$1);
    v12$2 := (if p8$2 then _HAVOC_bv32$2 else v12$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_ATOMIC_$$cost(p8$1, BV32_SDIV(BV32_MUL(v11$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 24} _CHECK_ATOMIC_$$cost(p8$2, BV32_SDIV(BV32_MUL(v11$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v13$1 := (if p8$1 then _HAVOC_bv32$1 else v13$1);
    v13$2 := (if p8$2 then _HAVOC_bv32$2 else v13$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_17$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_17$1);
    _abstracted_call_arg_17$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_17$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$cost(p8$1, $node_to_process.0$1, _abstracted_call_arg_17$1);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 25} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_18$1 := (if p8$1 then _HAVOC_bv32$1 else _abstracted_call_arg_18$1);
    _abstracted_call_arg_18$2 := (if p8$2 then _HAVOC_bv32$2 else _abstracted_call_arg_18$2);
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$cost(p8$2, $node_to_process.0$2, _abstracted_call_arg_18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v14$1 := (if p8$1 then _HAVOC_bv32$1 else v14$1);
    v14$2 := (if p8$2 then _HAVOC_bv32$2 else v14$2);
    v15$1 := (if p8$1 then BV32_UGT(v13$1, BV32_ADD(v14$1, 1bv32)) else v15$1);
    v15$2 := (if p8$2 then BV32_UGT(v13$2, BV32_ADD(v14$2, 1bv32)) else v15$2);
    p10$1 := (if p8$1 && v15$1 then v15$1 else p10$1);
    p10$2 := (if p8$2 && v15$2 then v15$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_ATOMIC_$$visited(p10$1, BV32_SDIV(BV32_MUL(v11$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 27} _CHECK_ATOMIC_$$visited(p10$2, BV32_SDIV(BV32_MUL(v11$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$visited"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v16$1 := (if p10$1 then _HAVOC_bv32$1 else v16$1);
    v16$2 := (if p10$2 then _HAVOC_bv32$2 else v16$2);
    v17$1 := (if p10$1 then v16$1 == 0bv32 else v17$1);
    v17$2 := (if p10$2 then v16$2 == 0bv32 else v17$2);
    p12$1 := (if p10$1 && v17$1 then v17$1 else p12$1);
    p12$2 := (if p10$2 && v17$2 then v17$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_ATOMIC_$$BFS_kernel_SM_block.b_q_length(p12$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 29} _CHECK_ATOMIC_$$BFS_kernel_SM_block.b_q_length(p12$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$BFS_kernel_SM_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v18$1 := (if p12$1 then _HAVOC_bv32$1 else v18$1);
    v18$2 := (if p12$2 then _HAVOC_bv32$2 else v18$2);
    assume !_USED_$$BFS_kernel_SM_block.b_q_length[0bv32][v18$1];
    _USED_$$BFS_kernel_SM_block.b_q_length[0bv32][v18$1] := true;
    assume !_USED_$$BFS_kernel_SM_block.b_q_length[0bv32][v18$2];
    _USED_$$BFS_kernel_SM_block.b_q_length[0bv32][v18$2] := true;
    v19$1 := (if p12$1 then BV32_ULT(v18$1, $max_local_mem) else v19$1);
    v19$2 := (if p12$2 then BV32_ULT(v18$2, $max_local_mem) else v19$2);
    p13$1 := (if p12$1 && v19$1 then v19$1 else p13$1);
    p13$2 := (if p12$2 && v19$2 then v19$2 else p13$2);
    p14$1 := (if p12$1 && !v19$1 then !v19$1 else p14$1);
    p14$2 := (if p12$2 && !v19$2 then !v19$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$b_q(p13$1, v18$1, v11$1, $$b_q[1bv1][v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$b_q(p13$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$b_q(p13$2, v18$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$b_q"} true;
    $$b_q[1bv1][v18$1] := (if p13$1 then v11$1 else $$b_q[1bv1][v18$1]);
    $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] := (if p13$2 then v11$2 else $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    call {:sourceloc} {:sourceloc_num 33} _LOG_ATOMIC_$$g_q_offsets(p14$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 33} _CHECK_ATOMIC_$$g_q_offsets(p14$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_q_offsets"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v20$1 := (if p14$1 then _HAVOC_bv32$1 else v20$1);
    v20$2 := (if p14$2 then _HAVOC_bv32$2 else v20$2);
    v21$1 := (if p14$1 then $loop_index.0$1 == 0bv32 else v21$1);
    v21$2 := (if p14$2 then $loop_index.0$2 == 0bv32 else v21$2);
    p16$1 := (if p14$1 && v21$1 then v21$1 else p16$1);
    p16$2 := (if p14$2 && v21$2 then v21$2 else p16$2);
    p15$1 := (if p14$1 && !v21$1 then !v21$1 else p15$1);
    p15$2 := (if p14$2 && !v21$2 then !v21$2 else p15$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$frontier(p15$1, v20$1, v11$1, $$frontier[v20$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p15$2, v20$2);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$frontier(p15$2, v20$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[v20$1] := (if p15$1 then v11$1 else $$frontier[v20$1]);
    $$frontier[v20$2] := (if p15$2 then v11$2 else $$frontier[v20$2]);
    call {:sourceloc} {:sourceloc_num 35} _LOG_WRITE_$$frontier2(p16$1, v20$1, v11$1, $$frontier2[v20$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(p16$2, v20$2);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 35} _CHECK_WRITE_$$frontier2(p16$2, v20$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier2"} true;
    $$frontier2[v20$1] := (if p16$1 then v11$1 else $$frontier2[v20$1]);
    $$frontier2[v20$2] := (if p16$2 then v11$2 else $$frontier2[v20$2]);
    $offset.0$1 := (if p8$1 then BV32_ADD($offset.0$1, 1bv32) else $offset.0$1);
    $offset.0$2 := (if p8$2 then BV32_ADD($offset.0$2, 1bv32) else $offset.0$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $while.cond.14.backedge, __partitioned_block_$while.cond.14.tail_0;

  __partitioned_block_$while.cond.14.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$while.cond.14.tail_1;

  __partitioned_block_$while.cond.14.tail_1:
    call {:sourceloc_num 43} $bugle_barrier_duplicated_2(1bv1, 1bv1, p0$1, p0$2);
    v22$1 := (if p0$1 then v1$1 == 0bv32 else v22$1);
    v22$2 := (if p0$2 then v1$2 == 0bv32 else v22$2);
    p18$1 := (if p0$1 && v22$1 then v22$1 else p18$1);
    p18$2 := (if p0$2 && v22$2 then v22$2 else p18$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_9$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_9$1);
    _abstracted_call_arg_9$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_9$2);
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$BFS_kernel_SM_block.b_q_length(p18$1, 0bv32, _abstracted_call_arg_9$1);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 45} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_10$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_10$1);
    _abstracted_call_arg_10$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_10$2);
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$BFS_kernel_SM_block.b_q_length(p18$2, 0bv32, _abstracted_call_arg_10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_SM_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v23$1 := (if p18$1 then _HAVOC_bv32$1 else v23$1);
    v23$2 := (if p18$2 then _HAVOC_bv32$2 else v23$2);
    v24$1 := (if p18$1 then BV32_UGT(v23$1, $max_local_mem) else v24$1);
    v24$2 := (if p18$2 then BV32_UGT(v23$2, $max_local_mem) else v24$2);
    p20$1 := (if p18$1 && v24$1 then v24$1 else p20$1);
    p20$2 := (if p18$2 && v24$2 then v24$2 else p20$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_13$1 := (if p20$1 then _HAVOC_bv32$1 else _abstracted_call_arg_13$1);
    _abstracted_call_arg_13$2 := (if p20$2 then _HAVOC_bv32$2 else _abstracted_call_arg_13$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$BFS_kernel_SM_block.b_q_length(p20$1, 0bv32, $max_local_mem, _abstracted_call_arg_13$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length(p20$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$BFS_kernel_SM_block.b_q_length(p20$2, 0bv32, $max_local_mem);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_SM_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_11$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_11$1);
    _abstracted_call_arg_11$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_11$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$BFS_kernel_SM_block.b_q_length(p18$1, 0bv32, _abstracted_call_arg_11$1);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 49} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_12$1 := (if p18$1 then _HAVOC_bv32$1 else _abstracted_call_arg_12$1);
    _abstracted_call_arg_12$2 := (if p18$2 then _HAVOC_bv32$2 else _abstracted_call_arg_12$2);
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$BFS_kernel_SM_block.b_q_length(p18$2, 0bv32, _abstracted_call_arg_12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_SM_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v25$1 := (if p18$1 then _HAVOC_bv32$1 else v25$1);
    v25$2 := (if p18$2 then _HAVOC_bv32$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_ATOMIC_$$g_q_offsets(p18$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 50} _CHECK_ATOMIC_$$g_q_offsets(p18$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_q_offsets"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v26$1 := (if p18$1 then _HAVOC_bv32$1 else v26$1);
    v26$2 := (if p18$2 then _HAVOC_bv32$2 else v26$2);
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$BFS_kernel_SM_block.b_offset(p18$1, 0bv32, v26$1, $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset(p18$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$BFS_kernel_SM_block.b_offset(p18$2, 0bv32, v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$BFS_kernel_SM_block.b_offset"} true;
    $$BFS_kernel_SM_block.b_offset[1bv1][0bv32] := (if p18$1 then v26$1 else $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p18$2 then v26$2 else $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$while.cond.14.tail_2;

  __partitioned_block_$while.cond.14.tail_2:
    call {:sourceloc_num 53} $bugle_barrier_duplicated_3(1bv1, 1bv1, p0$1, p0$2);
    v27$1 := (if p0$1 then BV32_ADD($l_mutex.0$1, num_groups_x) else v27$1);
    v27$2 := (if p0$2 then BV32_ADD($l_mutex.0$2, num_groups_x) else v27$2);
    goto __partitioned_block_$while.cond.14.tail_3;

  __partitioned_block_$while.cond.14.tail_3:
    call {:sourceloc_num 54} $bugle_barrier_duplicated_4(1bv1, 1bv1, p0$1, p0$2);
    v28$1 := (if p0$1 then local_id_x$1 == 0bv32 else v28$1);
    v28$2 := (if p0$2 then local_id_x$2 == 0bv32 else v28$2);
    p22$1 := (if p0$1 && v28$1 then v28$1 else p22$1);
    p22$2 := (if p0$2 && v28$2 then v28$2 else p22$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_ATOMIC_$$g_mutex(p22$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 56} _CHECK_ATOMIC_$$g_mutex(p22$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_mutex"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v29$1 := (if p22$1 then _HAVOC_bv32$1 else v29$1);
    v29$2 := (if p22$2 then _HAVOC_bv32$2 else v29$2);
    assume !_USED_$$g_mutex[0bv32][v29$1];
    _USED_$$g_mutex[0bv32][v29$1] := true;
    assume !_USED_$$g_mutex[0bv32][v29$2];
    _USED_$$g_mutex[0bv32][v29$2] := true;
    p23$1 := (if p22$1 then true else p23$1);
    p23$2 := (if p22$2 then true else p23$2);
    _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i := _READ_HAS_OCCURRED_$$g_mutex;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $while.cond.i;

  $while.cond.i:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b171 ==> !p22$1 ==> _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i == _READ_HAS_OCCURRED_$$g_mutex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b170 ==> _READ_HAS_OCCURRED_$$g_mutex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p23"} {:dominator_predicate "p22"} true;
    assert p23$1 ==> p0$1;
    assert p23$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b31 ==> _READ_HAS_OCCURRED_$$g_mutex ==> local_id_x$1 == 0bv32;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b30 ==> local_id_x$1 == 0bv32 && BV32_ULT(v30$1, BV32_ADD($l_mutex.0$1, num_groups_x)) ==> p23$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b30 ==> local_id_x$2 == 0bv32 && BV32_ULT(v30$2, BV32_ADD($l_mutex.0$2, num_groups_x)) ==> p23$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p23$1 ==> _b29 ==> p23$1 ==> local_id_x$1 == 0bv32;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p23$2 ==> _b29 ==> p23$2 ==> local_id_x$2 == 0bv32;
    assert {:block_sourceloc} {:sourceloc_num 57} p23$1 ==> true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_7$1 := (if p23$1 then _HAVOC_bv32$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p23$2 then _HAVOC_bv32$2 else _abstracted_call_arg_7$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$g_mutex(p23$1, 0bv32, _abstracted_call_arg_7$1);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 58} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_8$1 := (if p23$1 then _HAVOC_bv32$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p23$2 then _HAVOC_bv32$2 else _abstracted_call_arg_8$2);
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$g_mutex(p23$2, 0bv32, _abstracted_call_arg_8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_mutex"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v30$1 := (if p23$1 then _HAVOC_bv32$1 else v30$1);
    v30$2 := (if p23$2 then _HAVOC_bv32$2 else v30$2);
    v31$1 := (if p23$1 then BV32_ULT(v30$1, v27$1) else v31$1);
    v31$2 := (if p23$2 then BV32_ULT(v30$2, v27$2) else v31$2);
    p24$1 := false;
    p24$2 := false;
    p23$1 := (if p23$1 && v31$1 then v31$1 else p23$1);
    p23$2 := (if p23$2 && v31$2 then v31$2 else p23$2);
    p23$1 := (if p23$1 && !v31$1 then v31$1 else p23$1);
    p23$2 := (if p23$2 && !v31$2 then v31$2 else p23$2);
    p23$1 := (if p24$1 then true else p23$1);
    p23$2 := (if p24$2 then true else p23$2);
    goto $while.cond.i.backedge, __partitioned_block_$while.cond.i.tail_0;

  __partitioned_block_$while.cond.i.tail_0:
    assume !p23$1 && !p23$2;
    goto __partitioned_block_$while.cond.i.tail_1;

  __partitioned_block_$while.cond.i.tail_1:
    call {:sourceloc_num 62} $bugle_barrier_duplicated_5(1bv1, 1bv1, p0$1, p0$2);
    v32$1 := (if p0$1 then v0$1 == 0bv32 else v32$1);
    v32$2 := (if p0$2 then v0$2 == 0bv32 else v32$2);
    p26$1 := (if p0$1 && v32$1 then v32$1 else p26$1);
    p26$2 := (if p0$2 && v32$2 then v32$2 else p26$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_4$1 := (if p26$1 then _HAVOC_bv32$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p26$2 then _HAVOC_bv32$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$g_q_offsets(p26$1, 0bv32, _abstracted_call_arg_4$1);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 64} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_5$1 := (if p26$1 then _HAVOC_bv32$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p26$2 then _HAVOC_bv32$2 else _abstracted_call_arg_5$2);
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$g_q_offsets(p26$2, 0bv32, _abstracted_call_arg_5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_offsets"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v33$1 := (if p26$1 then _HAVOC_bv32$1 else v33$1);
    v33$2 := (if p26$2 then _HAVOC_bv32$2 else v33$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$g_q_size(p26$1, 0bv32, v33$1, $$g_q_size[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_size(p26$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$g_q_size(p26$2, 0bv32, v33$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_q_size"} true;
    $$g_q_size[0bv32] := (if p26$1 then v33$1 else $$g_q_size[0bv32]);
    $$g_q_size[0bv32] := (if p26$2 then v33$2 else $$g_q_size[0bv32]);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_6$1 := (if p26$1 then _HAVOC_bv32$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p26$2 then _HAVOC_bv32$2 else _abstracted_call_arg_6$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$g_q_offsets(p26$1, 0bv32, 0bv32, _abstracted_call_arg_6$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_offsets(p26$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$g_q_offsets(p26$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_q_offsets"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_0$1 := (if p0$1 then _HAVOC_bv32$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p0$2 then _HAVOC_bv32$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$BFS_kernel_SM_block.b_q_length(p0$1, 0bv32, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 68} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_1$1 := (if p0$1 then _HAVOC_bv32$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p0$2 then _HAVOC_bv32$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$BFS_kernel_SM_block.b_q_length(p0$2, 0bv32, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_SM_block.b_q_length"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v34$1 := (if p0$1 then _HAVOC_bv32$1 else v34$1);
    v34$2 := (if p0$2 then _HAVOC_bv32$2 else v34$2);
    v35$1 := (if p0$1 then BV32_ULT(v1$1, v34$1) else v35$1);
    v35$2 := (if p0$2 then BV32_ULT(v1$2, v34$2) else v35$2);
    p28$1 := (if p0$1 && v35$1 then v35$1 else p28$1);
    p28$2 := (if p0$2 && v35$2 then v35$2 else p28$2);
    v36$1 := (if p28$1 then $loop_index.0$1 == 0bv32 else v36$1);
    v36$2 := (if p28$2 then $loop_index.0$2 == 0bv32 else v36$2);
    p30$1 := (if p28$1 && v36$1 then v36$1 else p30$1);
    p30$2 := (if p28$2 && v36$2 then v36$2 else p30$2);
    p29$1 := (if p28$1 && !v36$1 then !v36$1 else p29$1);
    p29$2 := (if p28$2 && !v36$2 then !v36$2 else p29$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$b_q(p29$1, v1$1, $$b_q[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$b_q(p29$2, v1$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v39$1 := (if p29$1 then $$b_q[1bv1][v1$1] else v39$1);
    v39$2 := (if p29$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v39$2);
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$BFS_kernel_SM_block.b_offset(p29$1, 0bv32, $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$BFS_kernel_SM_block.b_offset(p29$2, 0bv32, $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_SM_block.b_offset"} true;
    v40$1 := (if p29$1 then $$BFS_kernel_SM_block.b_offset[1bv1][0bv32] else v40$1);
    v40$2 := (if p29$2 then $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v40$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$frontier(p29$1, BV32_ADD(v1$1, v40$1), v39$1, $$frontier[BV32_ADD(v1$1, v40$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p29$2, BV32_ADD(v1$2, v40$2));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$frontier(p29$2, BV32_ADD(v1$2, v40$2), v39$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[BV32_ADD(v1$1, v40$1)] := (if p29$1 then v39$1 else $$frontier[BV32_ADD(v1$1, v40$1)]);
    $$frontier[BV32_ADD(v1$2, v40$2)] := (if p29$2 then v39$2 else $$frontier[BV32_ADD(v1$2, v40$2)]);
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$b_q(p30$1, v1$1, $$b_q[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$b_q(p30$2, v1$2, $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$b_q"} true;
    v37$1 := (if p30$1 then $$b_q[1bv1][v1$1] else v37$1);
    v37$2 := (if p30$2 then $$b_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2] else v37$2);
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$BFS_kernel_SM_block.b_offset(p30$1, 0bv32, $$BFS_kernel_SM_block.b_offset[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$BFS_kernel_SM_block.b_offset(p30$2, 0bv32, $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$BFS_kernel_SM_block.b_offset"} true;
    v38$1 := (if p30$1 then $$BFS_kernel_SM_block.b_offset[1bv1][0bv32] else v38$1);
    v38$2 := (if p30$2 then $$BFS_kernel_SM_block.b_offset[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v38$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_WRITE_$$frontier2(p30$1, BV32_ADD(v1$1, v38$1), v37$1, $$frontier2[BV32_ADD(v1$1, v38$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier2(p30$2, BV32_ADD(v1$2, v38$2));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 73} _CHECK_WRITE_$$frontier2(p30$2, BV32_ADD(v1$2, v38$2), v37$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier2"} true;
    $$frontier2[BV32_ADD(v1$1, v38$1)] := (if p30$1 then v37$1 else $$frontier2[BV32_ADD(v1$1, v38$1)]);
    $$frontier2[BV32_ADD(v1$2, v38$2)] := (if p30$2 then v37$2 else $$frontier2[BV32_ADD(v1$2, v38$2)]);
    v41$1 := (if p0$1 then BV32_ADD(v27$1, num_groups_x) else v41$1);
    v41$2 := (if p0$2 then BV32_ADD(v27$2, num_groups_x) else v41$2);
    goto __partitioned_block_$while.cond.i.tail_2;

  __partitioned_block_$while.cond.i.tail_2:
    call {:sourceloc_num 80} $bugle_barrier_duplicated_6(1bv1, 1bv1, p0$1, p0$2);
    v42$1 := (if p0$1 then local_id_x$1 == 0bv32 else v42$1);
    v42$2 := (if p0$2 then local_id_x$2 == 0bv32 else v42$2);
    p32$1 := (if p0$1 && v42$1 then v42$1 else p32$1);
    p32$2 := (if p0$2 && v42$2 then v42$2 else p32$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_ATOMIC_$$g_mutex(p32$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 82} _CHECK_ATOMIC_$$g_mutex(p32$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_mutex"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v43$1 := (if p32$1 then _HAVOC_bv32$1 else v43$1);
    v43$2 := (if p32$2 then _HAVOC_bv32$2 else v43$2);
    assume !_USED_$$g_mutex[0bv32][v43$1];
    _USED_$$g_mutex[0bv32][v43$1] := true;
    assume !_USED_$$g_mutex[0bv32][v43$2];
    _USED_$$g_mutex[0bv32][v43$2] := true;
    p33$1 := (if p32$1 then true else p33$1);
    p33$2 := (if p32$2 then true else p33$2);
    _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i.126 := _READ_HAS_OCCURRED_$$g_mutex;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $while.cond.i.126;

  $while.cond.i.126:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b173 ==> !p32$1 ==> _READ_HAS_OCCURRED_$$g_mutex$ghost$$while.cond.i.126 == _READ_HAS_OCCURRED_$$g_mutex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b172 ==> _READ_HAS_OCCURRED_$$g_mutex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p33"} {:dominator_predicate "p32"} true;
    assert p33$1 ==> p0$1;
    assert p33$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _READ_HAS_OCCURRED_$$g_mutex ==> local_id_x$1 == 0bv32;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b27 ==> local_id_x$1 == 0bv32 && BV32_ULT(v44$1, BV32_ADD(BV32_ADD($l_mutex.0$1, num_groups_x), num_groups_x)) ==> p33$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b27 ==> local_id_x$2 == 0bv32 && BV32_ULT(v44$2, BV32_ADD(BV32_ADD($l_mutex.0$2, num_groups_x), num_groups_x)) ==> p33$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p33$1 ==> _b26 ==> p33$1 ==> local_id_x$1 == 0bv32;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p33$2 ==> _b26 ==> p33$2 ==> local_id_x$2 == 0bv32;
    assert {:block_sourceloc} {:sourceloc_num 83} p33$1 ==> true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_2$1 := (if p33$1 then _HAVOC_bv32$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p33$2 then _HAVOC_bv32$2 else _abstracted_call_arg_2$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$g_mutex(p33$1, 0bv32, _abstracted_call_arg_2$1);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 84} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_3$1 := (if p33$1 then _HAVOC_bv32$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p33$2 then _HAVOC_bv32$2 else _abstracted_call_arg_3$2);
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$g_mutex(p33$2, 0bv32, _abstracted_call_arg_3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_mutex"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v44$1 := (if p33$1 then _HAVOC_bv32$1 else v44$1);
    v44$2 := (if p33$2 then _HAVOC_bv32$2 else v44$2);
    v45$1 := (if p33$1 then BV32_ULT(v44$1, v41$1) else v45$1);
    v45$2 := (if p33$2 then BV32_ULT(v44$2, v41$2) else v45$2);
    p34$1 := false;
    p34$2 := false;
    p33$1 := (if p33$1 && v45$1 then v45$1 else p33$1);
    p33$2 := (if p33$2 && v45$2 then v45$2 else p33$2);
    p33$1 := (if p33$1 && !v45$1 then v45$1 else p33$1);
    p33$2 := (if p33$2 && !v45$2 then v45$2 else p33$2);
    p33$1 := (if p34$1 then true else p33$1);
    p33$2 := (if p34$2 then true else p33$2);
    goto $while.cond.i.126.backedge, __partitioned_block_$while.cond.i.126.tail_0;

  __partitioned_block_$while.cond.i.126.tail_0:
    assume !p33$1 && !p33$2;
    goto __partitioned_block_$while.cond.i.126.tail_1;

  __partitioned_block_$while.cond.i.126.tail_1:
    call {:sourceloc_num 88} $bugle_barrier_duplicated_7(1bv1, 1bv1, p0$1, p0$2);
    call {:sourceloc} {:sourceloc_num 89} _LOG_READ_$$g_q_size(p0$1, 0bv32, $$g_q_size[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 89} _CHECK_READ_$$g_q_size(p0$2, 0bv32, $$g_q_size[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_size"} true;
    v46$1 := (if p0$1 then $$g_q_size[0bv32] else v46$1);
    v46$2 := (if p0$2 then $$g_q_size[0bv32] else v46$2);
    v47$1 := (if p0$1 then BV32_ULT(v46$1, group_size_x) else v47$1);
    v47$2 := (if p0$2 then BV32_ULT(v46$2, group_size_x) else v47$2);
    p0$1 := (if p0$1 && v47$1 then !v47$1 else p0$1);
    p0$2 := (if p0$2 && v47$2 then !v47$2 else p0$2);
    p35$1 := (if p0$1 && !v47$1 then !v47$1 else p35$1);
    p35$2 := (if p0$2 && !v47$2 then !v47$2 else p35$2);
    call {:sourceloc} {:sourceloc_num 91} _LOG_READ_$$g_q_size(p35$1, 0bv32, $$g_q_size[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 91} _CHECK_READ_$$g_q_size(p35$2, 0bv32, $$g_q_size[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_size"} true;
    v48$1 := (if p35$1 then $$g_q_size[0bv32] else v48$1);
    v48$2 := (if p35$2 then $$g_q_size[0bv32] else v48$2);
    v49$1 := (if p35$1 then BV32_UGT(v48$1, BV32_MUL(group_size_x, num_groups_x)) else v49$1);
    v49$2 := (if p35$2 then BV32_UGT(v48$2, BV32_MUL(group_size_x, num_groups_x)) else v49$2);
    p0$1 := (if p35$1 && v49$1 then !v49$1 else p0$1);
    p0$2 := (if p35$2 && v49$2 then !v49$2 else p0$2);
    p36$1 := (if p35$1 && !v49$1 then !v49$1 else p36$1);
    p36$2 := (if p35$2 && !v49$2 then !v49$2 else p36$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$g_q_size(p36$1, 0bv32, $$g_q_size[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$g_q_size(p36$2, 0bv32, $$g_q_size[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_size"} true;
    v50$1 := (if p36$1 then $$g_q_size[0bv32] else v50$1);
    v50$2 := (if p36$2 then $$g_q_size[0bv32] else v50$2);
    $loop_index.0$1, $l_mutex.0$1, $f_len.0$1 := (if p36$1 then BV32_SREM(BV32_ADD($loop_index.0$1, 1bv32), 2bv32) else $loop_index.0$1), (if p36$1 then v41$1 else $l_mutex.0$1), (if p36$1 then v50$1 else $f_len.0$1);
    $loop_index.0$2, $l_mutex.0$2, $f_len.0$2 := (if p36$2 then BV32_SREM(BV32_ADD($loop_index.0$2, 1bv32), 2bv32) else $loop_index.0$2), (if p36$2 then v41$2 else $l_mutex.0$2), (if p36$2 then v50$2 else $f_len.0$2);
    p0$1 := (if p36$1 then true else p0$1);
    p0$2 := (if p36$2 then true else p0$2);
    goto $while.body.backedge, $while.body.tail;

  $while.body.tail:
    assume !p0$1 && !p0$2;
    v51$1 := $loop_index.0$1 == 0bv32;
    v51$2 := $loop_index.0$2 == 0bv32;
    p39$1 := (if v51$1 then v51$1 else p39$1);
    p39$2 := (if v51$2 then v51$2 else p39$2);
    $i.0$1 := (if p39$1 then v0$1 else $i.0$1);
    $i.0$2 := (if p39$2 then v0$2 else $i.0$2);
    p40$1 := (if p39$1 then true else p40$1);
    p40$2 := (if p39$2 then true else p40$2);
    _WRITE_HAS_OCCURRED_$$frontier$ghost$$for.cond := _WRITE_HAS_OCCURRED_$$frontier;
    _READ_HAS_OCCURRED_$$frontier2$ghost$$for.cond := _READ_HAS_OCCURRED_$$frontier2;
    _READ_HAS_OCCURRED_$$g_q_size$ghost$$for.cond := _READ_HAS_OCCURRED_$$g_q_size;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b179 ==> !p39$1 ==> _READ_HAS_OCCURRED_$$g_q_size$ghost$$for.cond == _READ_HAS_OCCURRED_$$g_q_size;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b178 ==> _READ_HAS_OCCURRED_$$g_q_size ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "disabledMaintainsInstrumentation"} _b177 ==> !p39$1 ==> _READ_HAS_OCCURRED_$$frontier2$ghost$$for.cond == _READ_HAS_OCCURRED_$$frontier2;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b176 ==> _READ_HAS_OCCURRED_$$frontier2 ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), v0$1);
    assert {:tag "disabledMaintainsInstrumentation"} _b175 ==> !p39$1 ==> _WRITE_HAS_OCCURRED_$$frontier$ghost$$for.cond == _WRITE_HAS_OCCURRED_$$frontier;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b174 ==> _WRITE_HAS_OCCURRED_$$frontier ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), v0$1);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$b_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p40"} {:dominator_predicate "p39"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b25 ==> _WRITE_HAS_OCCURRED_$$frontier ==> $loop_index.0$1 == 0bv32;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b24 ==> _READ_HAS_OCCURRED_$$frontier2 ==> $loop_index.0$1 == 0bv32;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b23 ==> _READ_HAS_OCCURRED_$$g_q_size ==> $loop_index.0$1 == 0bv32;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b22 ==> $loop_index.0$1 == 0bv32 && BV32_ULT($i.0$1, v52$1) ==> p40$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b22 ==> $loop_index.0$2 == 0bv32 && BV32_ULT($i.0$2, v52$2) ==> p40$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p40$1 ==> _b21 ==> p40$1 ==> $loop_index.0$1 == 0bv32;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p40$2 ==> _b21 ==> p40$2 ==> $loop_index.0$2 == 0bv32;
    assert {:tag "loopBound"} {:thread 1} p40$1 ==> _b20 ==> BV32_UGE($i.0$1, v0$1);
    assert {:tag "loopBound"} {:thread 2} p40$2 ==> _b20 ==> BV32_UGE($i.0$2, v0$2);
    assert {:tag "loopBound"} {:thread 1} p40$1 ==> _b19 ==> BV32_ULE($i.0$1, v0$1);
    assert {:tag "loopBound"} {:thread 2} p40$2 ==> _b19 ==> BV32_ULE($i.0$2, v0$2);
    assert {:tag "loopBound"} {:thread 1} p40$1 ==> _b18 ==> BV32_SGE($i.0$1, v0$1);
    assert {:tag "loopBound"} {:thread 2} p40$2 ==> _b18 ==> BV32_SGE($i.0$2, v0$2);
    assert {:tag "loopBound"} {:thread 1} p40$1 ==> _b17 ==> BV32_SLE($i.0$1, v0$1);
    assert {:tag "loopBound"} {:thread 2} p40$2 ==> _b17 ==> BV32_SLE($i.0$2, v0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p40$1 ==> _b16 ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), $i.0$1) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), v0$1);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p40$2 ==> _b16 ==> BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), $i.0$2) == BV32_AND(BV32_SUB(BV32_MUL(group_size_x, num_groups_x), 1bv32), v0$2);
    assert {:block_sourceloc} {:sourceloc_num 97} p40$1 ==> true;
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$g_q_size(p40$1, 0bv32, $$g_q_size[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$g_q_size(p40$2, 0bv32, $$g_q_size[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_size"} true;
    v52$1 := (if p40$1 then $$g_q_size[0bv32] else v52$1);
    v52$2 := (if p40$2 then $$g_q_size[0bv32] else v52$2);
    v53$1 := (if p40$1 then BV32_ULT($i.0$1, v52$1) else v53$1);
    v53$2 := (if p40$2 then BV32_ULT($i.0$2, v52$2) else v53$2);
    p41$1 := false;
    p41$2 := false;
    p41$1 := (if p40$1 && v53$1 then v53$1 else p41$1);
    p41$2 := (if p40$2 && v53$2 then v53$2 else p41$2);
    p40$1 := (if p40$1 && !v53$1 then v53$1 else p40$1);
    p40$2 := (if p40$2 && !v53$2 then v53$2 else p40$2);
    call {:sourceloc} {:sourceloc_num 100} _LOG_READ_$$frontier2(p41$1, $i.0$1, $$frontier2[$i.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 100} _CHECK_READ_$$frontier2(p41$2, $i.0$2, $$frontier2[$i.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$frontier2"} true;
    v54$1 := (if p41$1 then $$frontier2[$i.0$1] else v54$1);
    v54$2 := (if p41$2 then $$frontier2[$i.0$2] else v54$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_WRITE_$$frontier(p41$1, $i.0$1, v54$1, $$frontier[$i.0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier(p41$2, $i.0$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 101} _CHECK_WRITE_$$frontier(p41$2, $i.0$2, v54$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier"} true;
    $$frontier[$i.0$1] := (if p41$1 then v54$1 else $$frontier[$i.0$1]);
    $$frontier[$i.0$2] := (if p41$2 then v54$2 else $$frontier[$i.0$2]);
    $i.0$1 := (if p41$1 then BV32_ADD($i.0$1, BV32_MUL(group_size_x, num_groups_x)) else $i.0$1);
    $i.0$2 := (if p41$2 then BV32_ADD($i.0$2, BV32_MUL(group_size_x, num_groups_x)) else $i.0$2);
    p40$1 := (if p41$1 then true else p40$1);
    p40$2 := (if p41$2 then true else p40$2);
    goto $for.cond.backedge, $for.cond.tail;

  $for.cond.tail:
    assume !p40$1 && !p40$2;
    v55$1 := v0$1 == 0bv32;
    v55$2 := v0$2 == 0bv32;
    p43$1 := (if v55$1 then v55$1 else p43$1);
    p43$2 := (if v55$2 then v55$2 else p43$2);
    call {:sourceloc} {:sourceloc_num 106} _LOG_READ_$$g_q_size(p43$1, 0bv32, $$g_q_size[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 106} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 106} _CHECK_READ_$$g_q_size(p43$2, 0bv32, $$g_q_size[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_q_size"} true;
    v56$1 := (if p43$1 then $$g_q_size[0bv32] else v56$1);
    v56$2 := (if p43$2 then $$g_q_size[0bv32] else v56$2);
    call {:sourceloc} {:sourceloc_num 107} _LOG_WRITE_$$frontier_length(p43$1, 0bv32, v56$1, $$frontier_length[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$frontier_length(p43$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 107} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 107} _CHECK_WRITE_$$frontier_length(p43$2, 0bv32, v56$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$frontier_length"} true;
    $$frontier_length[0bv32] := (if p43$1 then v56$1 else $$frontier_length[0bv32]);
    $$frontier_length[0bv32] := (if p43$2 then v56$2 else $$frontier_length[0bv32]);
    return;

  $for.cond.backedge:
    assume {:backedge} p40$1 || p40$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $while.body.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto __partitioned_block_$while.body_0;

  $while.cond.i.126.backedge:
    assume {:backedge} p33$1 || p33$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $while.cond.i.126;

  $while.cond.i.backedge:
    assume {:backedge} p23$1 || p23$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $while.cond.i;

  $while.cond.14.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $while.cond.14;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1024bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 4bv32 then 1bv1 else 0bv1) != 0bv1;

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
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$b_q, $$BFS_kernel_SM_block.b_offset, $$frontier, $$frontier2, $$frontier_length, $$g_q_size, _TRACKING;



function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

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

var {:atomic_usedmap} _USED_$$BFS_kernel_SM_block.b_q_length: [bv32][bv32]bool;

var {:atomic_usedmap} _USED_$$g_mutex: [bv32][bv32]bool;

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



const _WATCHED_VALUE_$$g_mutex: bv32;

procedure {:inline 1} _LOG_READ_$$g_mutex(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_mutex;



implementation {:inline 1} _LOG_READ_$$g_mutex(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then true else _READ_HAS_OCCURRED_$$g_mutex);
    return;
}



procedure _CHECK_READ_$$g_mutex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_mutex);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_mutex: bool;

procedure {:inline 1} _LOG_WRITE_$$g_mutex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_mutex, _WRITE_READ_BENIGN_FLAG_$$g_mutex;



implementation {:inline 1} _LOG_WRITE_$$g_mutex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then true else _WRITE_HAS_OCCURRED_$$g_mutex);
    _WRITE_READ_BENIGN_FLAG_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_mutex);
    return;
}



procedure _CHECK_WRITE_$$g_mutex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex != _value);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex != _value);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_mutex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_mutex;



implementation {:inline 1} _LOG_ATOMIC_$$g_mutex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_mutex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_mutex);
    return;
}



procedure _CHECK_ATOMIC_$$g_mutex(_P: bool, _offset: bv32);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_mutex"} {:array "$$g_mutex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_mutex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_mutex := (if _P && _WRITE_HAS_OCCURRED_$$g_mutex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_mutex);
    return;
}



const _WATCHED_VALUE_$$g_mutex2: bv32;

procedure {:inline 1} _LOG_READ_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_mutex2;



implementation {:inline 1} _LOG_READ_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then true else _READ_HAS_OCCURRED_$$g_mutex2);
    return;
}



procedure _CHECK_READ_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_mutex2: bool;

procedure {:inline 1} _LOG_WRITE_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_mutex2, _WRITE_READ_BENIGN_FLAG_$$g_mutex2;



implementation {:inline 1} _LOG_WRITE_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then true else _WRITE_HAS_OCCURRED_$$g_mutex2);
    _WRITE_READ_BENIGN_FLAG_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
    return;
}



procedure _CHECK_WRITE_$$g_mutex2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 != _value);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_mutex2 != _value);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_mutex2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_mutex2;



implementation {:inline 1} _LOG_ATOMIC_$$g_mutex2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_mutex2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_mutex2);
    return;
}



procedure _CHECK_ATOMIC_$$g_mutex2(_P: bool, _offset: bv32);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_mutex2"} {:array "$$g_mutex2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_mutex2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_mutex2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_mutex2 := (if _P && _WRITE_HAS_OCCURRED_$$g_mutex2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_mutex2);
    return;
}



const _WATCHED_VALUE_$$g_q_offsets: bv32;

procedure {:inline 1} _LOG_READ_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_q_offsets;



implementation {:inline 1} _LOG_READ_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then true else _READ_HAS_OCCURRED_$$g_q_offsets);
    return;
}



procedure _CHECK_READ_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_q_offsets: bool;

procedure {:inline 1} _LOG_WRITE_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_q_offsets, _WRITE_READ_BENIGN_FLAG_$$g_q_offsets;



implementation {:inline 1} _LOG_WRITE_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then true else _WRITE_HAS_OCCURRED_$$g_q_offsets);
    _WRITE_READ_BENIGN_FLAG_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
    return;
}



procedure _CHECK_WRITE_$$g_q_offsets(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets != _value);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_offsets != _value);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_q_offsets(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_q_offsets;



implementation {:inline 1} _LOG_ATOMIC_$$g_q_offsets(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_q_offsets := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_q_offsets);
    return;
}



procedure _CHECK_ATOMIC_$$g_q_offsets(_P: bool, _offset: bv32);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_q_offsets"} {:array "$$g_q_offsets"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_offsets(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_q_offsets;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_offsets(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_q_offsets := (if _P && _WRITE_HAS_OCCURRED_$$g_q_offsets && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_q_offsets);
    return;
}



const _WATCHED_VALUE_$$g_q_size: bv32;

procedure {:inline 1} _LOG_READ_$$g_q_size(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_q_size;



implementation {:inline 1} _LOG_READ_$$g_q_size(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then true else _READ_HAS_OCCURRED_$$g_q_size);
    return;
}



procedure _CHECK_READ_$$g_q_size(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_q_size);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_q_size: bool;

procedure {:inline 1} _LOG_WRITE_$$g_q_size(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_q_size, _WRITE_READ_BENIGN_FLAG_$$g_q_size;



implementation {:inline 1} _LOG_WRITE_$$g_q_size(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then true else _WRITE_HAS_OCCURRED_$$g_q_size);
    _WRITE_READ_BENIGN_FLAG_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_q_size);
    return;
}



procedure _CHECK_WRITE_$$g_q_size(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size != _value);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_q_size != _value);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_q_size(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_q_size;



implementation {:inline 1} _LOG_ATOMIC_$$g_q_size(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_q_size := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_q_size);
    return;
}



procedure _CHECK_ATOMIC_$$g_q_size(_P: bool, _offset: bv32);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_q_size"} {:array "$$g_q_size"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_size(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_q_size;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_q_size(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_q_size := (if _P && _WRITE_HAS_OCCURRED_$$g_q_size && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_q_size);
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



const _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_q_length != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_q_length"} {:array "$$BFS_kernel_SM_block.b_q_length"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_q_length);
    return;
}



const _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset: bv32;

procedure {:inline 1} _LOG_READ_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;



implementation {:inline 1} _LOG_READ_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset == _value then true else _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset);
    return;
}



procedure _CHECK_READ_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset: bool;

procedure {:inline 1} _LOG_WRITE_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset, _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset;



implementation {:inline 1} _LOG_WRITE_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset == _value then true else _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset);
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset);
    return;
}



procedure _CHECK_WRITE_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$BFS_kernel_SM_block.b_offset != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;



implementation {:inline 1} _LOG_ATOMIC_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset);
    return;
}



procedure _CHECK_ATOMIC_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "b_offset"} {:array "$$BFS_kernel_SM_block.b_offset"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset := (if _P && _WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$BFS_kernel_SM_block.b_offset);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_7($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$b_q;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$b_q;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_q_length;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$BFS_kernel_SM_block.b_offset;
    goto anon3;

  anon3:
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$frontier2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$frontier2;
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
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_mutex;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_mutex;
    goto anon12;

  anon12:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_offsets;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_offsets;
    goto anon13;

  anon13:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_q_size;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_q_size;
    goto anon14;

  anon14:
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon19;

  anon19:
    havoc _TRACKING;
    return;

  anon22_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$frontier;
    goto anon16;

  anon16:
    havoc $$frontier2;
    goto anon17;

  anon17:
    havoc $$frontier_length;
    goto anon18;

  anon18:
    havoc $$g_q_size;
    goto anon19;

  anon21_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$b_q;
    goto anon5;

  anon5:
    havoc $$BFS_kernel_SM_block.b_offset;
    goto anon6;

  anon20_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

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

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

const {:existential true} _b134: bool;

const {:existential true} _b135: bool;

const {:existential true} _b136: bool;

const {:existential true} _b137: bool;

const {:existential true} _b138: bool;

const {:existential true} _b139: bool;

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;
