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
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool,
 b0016: bool,
 b0017: bool,
 b0018: bool,
 b0019: bool,
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool,
 b0024: bool,
 b0025: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(_P$1: bool, x$1: [bv32]bv32, y$1: bv32, _P$2: bool, x$2: [bv32]bv32, y$2: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "q1"} {:global} $$q1: [bv32]bv32;

axiom {:array_info "$$q1"} {:global} {:elem_width 32} {:source_name "q1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$q1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$q1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$q1: bool;

var {:source_name "q2"} {:global} $$q2: [bv32]bv32;

axiom {:array_info "$$q2"} {:global} {:elem_width 32} {:source_name "q2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$q2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$q2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$q2: bool;

axiom {:array_info "$$g_graph_nodes"} {:global} {:elem_width 32} {:source_name "g_graph_nodes"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_nodes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_nodes: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_nodes: bool;

axiom {:array_info "$$g_graph_edges"} {:global} {:elem_width 32} {:source_name "g_graph_edges"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_graph_edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_graph_edges: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_graph_edges: bool;

axiom {:array_info "$$g_color"} {:global} {:elem_width 32} {:source_name "g_color"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_color: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_color: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_color: bool;

axiom {:array_info "$$g_cost"} {:global} {:elem_width 32} {:source_name "g_cost"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_cost: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_cost: bool;

axiom {:array_info "$$tail"} {:global} {:elem_width 32} {:source_name "tail"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tail: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tail: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tail: bool;

axiom {:array_info "$$local_q_tail"} {:group_shared} {:elem_width 32} {:source_name "local_q_tail"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$local_q_tail: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$local_q_tail: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$local_q_tail: bool;

var {:source_name "local_q"} {:group_shared} $$local_q: [bv1][bv32]bv32;

axiom {:array_info "$$local_q"} {:group_shared} {:elem_width 32} {:source_name "local_q"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$local_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$local_q: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$local_q: bool;

var {:source_name "shift"} {:group_shared} $$shift: [bv1][bv32]bv32;

axiom {:array_info "$$shift"} {:group_shared} {:elem_width 32} {:source_name "shift"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$shift: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$shift: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$shift: bool;

axiom {:array_info "$$cur_node"} {:elem_width 32} {:source_name "cur_node"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$cur_edge"} {:elem_width 32} {:source_name "cur_edge"} {:source_elem_width 64} {:source_dimensions "1"} true;

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

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

procedure {:source_name "BFS_kernel"} {:kernel} $BFS_kernel($no_of_nodes: bv32, $gray_shade: bv32, $k: bv32);
  requires !_READ_HAS_OCCURRED_$$q1 && !_WRITE_HAS_OCCURRED_$$q1 && !_ATOMIC_HAS_OCCURRED_$$q1;
  requires !_READ_HAS_OCCURRED_$$q2 && !_WRITE_HAS_OCCURRED_$$q2 && !_ATOMIC_HAS_OCCURRED_$$q2;
  requires !_READ_HAS_OCCURRED_$$g_graph_nodes && !_WRITE_HAS_OCCURRED_$$g_graph_nodes && !_ATOMIC_HAS_OCCURRED_$$g_graph_nodes;
  requires !_READ_HAS_OCCURRED_$$g_graph_edges && !_WRITE_HAS_OCCURRED_$$g_graph_edges && !_ATOMIC_HAS_OCCURRED_$$g_graph_edges;
  requires !_READ_HAS_OCCURRED_$$g_color && !_WRITE_HAS_OCCURRED_$$g_color && !_ATOMIC_HAS_OCCURRED_$$g_color;
  requires !_READ_HAS_OCCURRED_$$g_cost && !_WRITE_HAS_OCCURRED_$$g_cost && !_ATOMIC_HAS_OCCURRED_$$g_cost;
  requires !_READ_HAS_OCCURRED_$$tail && !_WRITE_HAS_OCCURRED_$$tail && !_ATOMIC_HAS_OCCURRED_$$tail;
  requires !_READ_HAS_OCCURRED_$$local_q_tail && !_WRITE_HAS_OCCURRED_$$local_q_tail && !_ATOMIC_HAS_OCCURRED_$$local_q_tail;
  requires !_READ_HAS_OCCURRED_$$local_q && !_WRITE_HAS_OCCURRED_$$local_q && !_ATOMIC_HAS_OCCURRED_$$local_q;
  requires !_READ_HAS_OCCURRED_$$shift && !_WRITE_HAS_OCCURRED_$$shift && !_ATOMIC_HAS_OCCURRED_$$shift;
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
  modifies _USED_$$local_q_tail, $$local_q, $$shift, _WRITE_HAS_OCCURRED_$$local_q_tail, _WRITE_READ_BENIGN_FLAG_$$local_q_tail, _WRITE_READ_BENIGN_FLAG_$$local_q_tail, $$q2, _TRACKING, _WRITE_HAS_OCCURRED_$$g_color, _WRITE_READ_BENIGN_FLAG_$$g_color, _WRITE_READ_BENIGN_FLAG_$$g_color, _READ_HAS_OCCURRED_$$g_cost, _ATOMIC_HAS_OCCURRED_$$g_cost, _READ_HAS_OCCURRED_$$g_color, _ATOMIC_HAS_OCCURRED_$$g_color, _ATOMIC_HAS_OCCURRED_$$local_q_tail, _WRITE_HAS_OCCURRED_$$local_q, _WRITE_READ_BENIGN_FLAG_$$local_q, _WRITE_READ_BENIGN_FLAG_$$local_q, _TRACKING, _READ_HAS_OCCURRED_$$local_q_tail, _ATOMIC_HAS_OCCURRED_$$tail, _WRITE_HAS_OCCURRED_$$shift, _WRITE_READ_BENIGN_FLAG_$$shift, _WRITE_READ_BENIGN_FLAG_$$shift, _TRACKING, _READ_HAS_OCCURRED_$$local_q, _READ_HAS_OCCURRED_$$shift, _WRITE_HAS_OCCURRED_$$q2, _WRITE_READ_BENIGN_FLAG_$$q2, _WRITE_READ_BENIGN_FLAG_$$q2;



implementation {:source_name "BFS_kernel"} {:kernel} $BFS_kernel($no_of_nodes: bv32, $gray_shade: bv32, $k: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $local_shift.0$1: bv32;
  var $local_shift.0$2: bv32;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bool;
  var v17$2: bool;
  var v18$1: bv32;
  var v18$2: bv32;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bv32;
  var v20$2: bv32;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bool;
  var v23$2: bool;
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv32;
  var v26$2: bv32;
  var v27$1: bool;
  var v27$2: bool;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;
  var _READ_HAS_OCCURRED_$$g_color$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$g_color$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$g_cost$ghost$$4: bool;
  var _ATOMIC_HAS_OCCURRED_$$local_q_tail$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$local_q$ghost$$4: bool;


  __partitioned_block_$0_0:
    v0$1 := local_id_x$1 == 0bv32;
    v0$2 := local_id_x$2 == 0bv32;
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
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_9$1 := (if p0$1 then _HAVOC_bv32$1 else _abstracted_call_arg_9$1);
    _abstracted_call_arg_9$2 := (if p0$2 then _HAVOC_bv32$2 else _abstracted_call_arg_9$2);
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$local_q_tail(p0$1, 0bv32, 0bv32, _abstracted_call_arg_9$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q_tail(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$local_q_tail(p0$2, 0bv32, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$local_q_tail"} true;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 4} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v2$1 := BV32_SLT(v1$1, $no_of_nodes);
    v2$2 := BV32_SLT(v1$2, $no_of_nodes);
    p2$1 := (if v2$1 then v2$1 else p2$1);
    p2$2 := (if v2$2 then v2$2 else p2$2);
    v3$1 := (if p2$1 then $$q1[v1$1] else v3$1);
    v3$2 := (if p2$2 then $$q1[v1$2] else v3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_4$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_4$1);
    _abstracted_call_arg_4$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_4$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$g_color(p2$1, v3$1, 16677221bv32, _abstracted_call_arg_4$1);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_color(p2$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$g_color(p2$2, v3$2, 16677221bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_color"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_5$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_5$1);
    _abstracted_call_arg_5$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_5$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$g_cost(p2$1, v3$1, _abstracted_call_arg_5$1);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 8} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_6$1 := (if p2$1 then _HAVOC_bv32$1 else _abstracted_call_arg_6$1);
    _abstracted_call_arg_6$2 := (if p2$2 then _HAVOC_bv32$2 else _abstracted_call_arg_6$2);
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$g_cost(p2$2, v3$2, _abstracted_call_arg_6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v4$1 := (if p2$1 then _HAVOC_bv32$1 else v4$1);
    v4$2 := (if p2$2 then _HAVOC_bv32$2 else v4$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v5$1 := (if p2$1 then _HAVOC_bv32$1 else v5$1);
    v5$2 := (if p2$2 then _HAVOC_bv32$2 else v5$2);
    $$cur_node$0bv32$1 := (if p2$1 then v5$1 else $$cur_node$0bv32$1);
    $$cur_node$0bv32$2 := (if p2$2 then v5$2 else $$cur_node$0bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v6$1 := (if p2$1 then _HAVOC_bv32$1 else v6$1);
    v6$2 := (if p2$2 then _HAVOC_bv32$2 else v6$2);
    $$cur_node$1bv32$1 := (if p2$1 then v6$1 else $$cur_node$1bv32$1);
    $$cur_node$1bv32$2 := (if p2$2 then v6$2 else $$cur_node$1bv32$2);
    v7$1 := (if p2$1 then $$cur_node$0bv32$1 else v7$1);
    v7$2 := (if p2$2 then $$cur_node$0bv32$2 else v7$2);
    $i.0$1 := (if p2$1 then v7$1 else $i.0$1);
    $i.0$2 := (if p2$2 then v7$2 else $i.0$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    _READ_HAS_OCCURRED_$$g_color$ghost$$4 := _READ_HAS_OCCURRED_$$g_color;
    _ATOMIC_HAS_OCCURRED_$$g_color$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$g_color;
    _ATOMIC_HAS_OCCURRED_$$g_cost$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$g_cost;
    _ATOMIC_HAS_OCCURRED_$$local_q_tail$ghost$$4 := _ATOMIC_HAS_OCCURRED_$$local_q_tail;
    _WRITE_HAS_OCCURRED_$$local_q$ghost$$4 := _WRITE_HAS_OCCURRED_$$local_q;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !p2$1 ==> _READ_HAS_OCCURRED_$$g_color$ghost$$4 == _READ_HAS_OCCURRED_$$g_color ) ,  (  !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$g_color$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$g_color ) ,  (  !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$g_cost$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$g_cost ) ,  (  _ATOMIC_HAS_OCCURRED_$$local_q_tail ==> _WATCHED_OFFSET == 0bv32 ) ,  (  !p2$1 ==> _ATOMIC_HAS_OCCURRED_$$local_q_tail$ghost$$4 == _ATOMIC_HAS_OCCURRED_$$local_q_tail ) ,  (  _WRITE_HAS_OCCURRED_$$local_q ==> _WATCHED_OFFSET == v22$1 ) ,  (  !p2$1 ==> _WRITE_HAS_OCCURRED_$$local_q$ghost$$4 == _WRITE_HAS_OCCURRED_$$local_q ) ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p3"} {:dominator_predicate "p2"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p3$1 ==> BV32_SLE(0bv32, $i.0$1) )  && ( p3$2 ==> BV32_SLE(0bv32, $i.0$2) ) ,  ( p3$1 ==> BV32_SLE($i.0$1, v7$1) )  && ( p3$2 ==> BV32_SLE($i.0$2, v7$2) ) ,  ( p3$1 ==> BV32_SGE($i.0$1, v7$1) )  && ( p3$2 ==> BV32_SGE($i.0$2, v7$2) ) ,  ( p3$1 ==> BV32_ULE($i.0$1, v7$1) )  && ( p3$2 ==> BV32_ULE($i.0$2, v7$2) ) ,  ( p3$1 ==> BV32_UGE($i.0$1, v7$1) )  && ( p3$2 ==> BV32_UGE($i.0$2, v7$2) ) ,  ( p3$1 ==> p3$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $no_of_nodes) )  && ( p3$2 ==> p3$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $no_of_nodes) ) ,  (  BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $no_of_nodes) && BV32_SLT($i.0$1, BV32_ADD(v6$1, v5$1)) ==> p3$1 )  && (  BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), $no_of_nodes) && BV32_SLT($i.0$2, BV32_ADD(v6$2, v5$2)) ==> p3$2 ) ,  (  _READ_HAS_OCCURRED_$$g_color ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $no_of_nodes) ) ,  (  _WRITE_HAS_OCCURRED_$$local_q ==> BV32_SLT(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), $no_of_nodes) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 14} p3$1 ==> true;
    v8$1 := (if p3$1 then $$cur_node$1bv32$1 else v8$1);
    v8$2 := (if p3$2 then $$cur_node$1bv32$2 else v8$2);
    v9$1 := (if p3$1 then $$cur_node$0bv32$1 else v9$1);
    v9$2 := (if p3$2 then $$cur_node$0bv32$2 else v9$2);
    v10$1 := (if p3$1 then BV32_SLT($i.0$1, BV32_ADD(v8$1, v9$1)) else v10$1);
    v10$2 := (if p3$2 then BV32_SLT($i.0$2, BV32_ADD(v8$2, v9$2)) else v10$2);
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
    p4$1 := (if p3$1 && v10$1 then v10$1 else p4$1);
    p4$2 := (if p3$2 && v10$2 then v10$2 else p4$2);
    p3$1 := (if p3$1 && !v10$1 then v10$1 else p3$1);
    p3$2 := (if p3$2 && !v10$2 then v10$2 else p3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v11$1 := (if p4$1 then _HAVOC_bv32$1 else v11$1);
    v11$2 := (if p4$2 then _HAVOC_bv32$2 else v11$2);
    $$cur_edge$0bv32$1 := (if p4$1 then v11$1 else $$cur_edge$0bv32$1);
    $$cur_edge$0bv32$2 := (if p4$2 then v11$2 else $$cur_edge$0bv32$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v12$1 := (if p4$1 then _HAVOC_bv32$1 else v12$1);
    v12$2 := (if p4$2 then _HAVOC_bv32$2 else v12$2);
    $$cur_edge$1bv32$1 := (if p4$1 then v12$1 else $$cur_edge$1bv32$1);
    $$cur_edge$1bv32$2 := (if p4$2 then v12$2 else $$cur_edge$1bv32$2);
    v13$1 := (if p4$1 then $$cur_edge$0bv32$1 else v13$1);
    v13$2 := (if p4$2 then $$cur_edge$0bv32$2 else v13$2);
    v14$1 := (if p4$1 then $$cur_edge$1bv32$1 else v14$1);
    v14$2 := (if p4$2 then $$cur_edge$1bv32$2 else v14$2);
    v15$1 := (if p4$1 then BV32_ADD(v14$1, v4$1) else v15$1);
    v15$2 := (if p4$2 then BV32_ADD(v14$2, v4$2) else v15$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_ATOMIC_$$g_cost(p4$1, BV32_SDIV(BV32_MUL(v13$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 24} _CHECK_ATOMIC_$$g_cost(p4$2, BV32_SDIV(BV32_MUL(v13$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_cost"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v16$1 := (if p4$1 then _HAVOC_bv32$1 else v16$1);
    v16$2 := (if p4$2 then _HAVOC_bv32$2 else v16$2);
    v17$1 := (if p4$1 then BV32_SGT(v16$1, v15$1) else v17$1);
    v17$2 := (if p4$2 then BV32_SGT(v16$2, v15$2) else v17$2);
    p6$1 := (if p4$1 && v17$1 then v17$1 else p6$1);
    p6$2 := (if p4$2 && v17$2 then v17$2 else p6$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_7$1 := (if p6$1 then _HAVOC_bv32$1 else _abstracted_call_arg_7$1);
    _abstracted_call_arg_7$2 := (if p6$2 then _HAVOC_bv32$2 else _abstracted_call_arg_7$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$g_color(p6$1, v13$1, _abstracted_call_arg_7$1);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 26} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_8$1 := (if p6$1 then _HAVOC_bv32$1 else _abstracted_call_arg_8$1);
    _abstracted_call_arg_8$2 := (if p6$2 then _HAVOC_bv32$2 else _abstracted_call_arg_8$2);
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$g_color(p6$2, v13$2, _abstracted_call_arg_8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$g_color"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v18$1 := (if p6$1 then _HAVOC_bv32$1 else v18$1);
    v18$2 := (if p6$2 then _HAVOC_bv32$2 else v18$2);
    v19$1 := (if p6$1 then BV32_SGT(v18$1, 16677216bv32) else v19$1);
    v19$2 := (if p6$2 then BV32_SGT(v18$2, 16677216bv32) else v19$2);
    p8$1 := (if p6$1 && v19$1 then v19$1 else p8$1);
    p8$2 := (if p6$2 && v19$2 then v19$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_ATOMIC_$$g_color(p8$1, BV32_SDIV(BV32_MUL(v13$1, 4bv32), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 28} _CHECK_ATOMIC_$$g_color(p8$2, BV32_SDIV(BV32_MUL(v13$2, 4bv32), 4bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$g_color"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v20$1 := (if p8$1 then _HAVOC_bv32$1 else v20$1);
    v20$2 := (if p8$2 then _HAVOC_bv32$2 else v20$2);
    v21$1 := (if p8$1 then v20$1 != $gray_shade else v21$1);
    v21$2 := (if p8$2 then v20$2 != $gray_shade else v21$2);
    p10$1 := (if p8$1 && v21$1 then v21$1 else p10$1);
    p10$2 := (if p8$2 && v21$2 then v21$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_ATOMIC_$$local_q_tail(p10$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 30} _CHECK_ATOMIC_$$local_q_tail(p10$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$local_q_tail"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v22$1 := (if p10$1 then _HAVOC_bv32$1 else v22$1);
    v22$2 := (if p10$2 then _HAVOC_bv32$2 else v22$2);
    assume !_USED_$$local_q_tail[0bv32][v22$1];
    _USED_$$local_q_tail[0bv32][v22$1] := true;
    assume !_USED_$$local_q_tail[0bv32][v22$2];
    _USED_$$local_q_tail[0bv32][v22$2] := true;
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$local_q(p10$1, v22$1, v13$1, $$local_q[1bv1][v22$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q(p10$2, v22$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$local_q(p10$2, v22$2, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$local_q"} true;
    $$local_q[1bv1][v22$1] := (if p10$1 then v13$1 else $$local_q[1bv1][v22$1]);
    $$local_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v22$2] := (if p10$2 then v13$2 else $$local_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v22$2]);
    $i.0$1 := (if p4$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1);
    $i.0$2 := (if p4$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2);
    p3$1 := (if p4$1 then true else p3$1);
    p3$2 := (if p4$2 then true else p3$2);
    goto $4.backedge, __partitioned_block_$4.tail_0;

  __partitioned_block_$4.tail_0:
    assume !p3$1 && !p3$2;
    goto __partitioned_block_$4.tail_1;

  __partitioned_block_$4.tail_1:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v23$1 := local_id_x$1 == 0bv32;
    v23$2 := local_id_x$2 == 0bv32;
    p12$1 := (if v23$1 then v23$1 else p12$1);
    p12$2 := (if v23$2 then v23$2 else p12$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_2$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_2$1);
    _abstracted_call_arg_2$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_2$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 40} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_3$1 := (if p12$1 then _HAVOC_bv32$1 else _abstracted_call_arg_3$1);
    _abstracted_call_arg_3$2 := (if p12$2 then _HAVOC_bv32$2 else _abstracted_call_arg_3$2);
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v24$1 := (if p12$1 then _HAVOC_bv32$1 else v24$1);
    v24$2 := (if p12$2 then _HAVOC_bv32$2 else v24$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_ATOMIC_$$tail(p12$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 41} _CHECK_ATOMIC_$$tail(p12$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$tail"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v25$1 := (if p12$1 then _HAVOC_bv32$1 else v25$1);
    v25$2 := (if p12$2 then _HAVOC_bv32$2 else v25$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$shift(p12$1, 0bv32, v25$1, $$shift[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shift(p12$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$shift(p12$2, 0bv32, v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shift"} true;
    $$shift[1bv1][0bv32] := (if p12$1 then v25$1 else $$shift[1bv1][0bv32]);
    $$shift[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p12$2 then v25$2 else $$shift[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$4.tail_2;

  __partitioned_block_$4.tail_2:
    call {:sourceloc_num 44} $bugle_barrier_duplicated_2(1bv1, 0bv1);
    $local_shift.0$1 := local_id_x$1;
    $local_shift.0$2 := local_id_x$2;
    p14$1 := true;
    p14$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $17;

  $17:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shift ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$local_q ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$local_q_tail ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p14$1 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $local_shift.0$1) == BV32_AND(BV32_SUB(group_size_x, 1bv32), local_id_x$1) )  && ( p14$2 ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), $local_shift.0$2) == BV32_AND(BV32_SUB(group_size_x, 1bv32), local_id_x$2) ) ,  ( p14$1 ==> BV32_SLE(0bv32, $local_shift.0$1) )  && ( p14$2 ==> BV32_SLE(0bv32, $local_shift.0$2) ) ,  ( p14$1 ==> BV32_SLE($local_shift.0$1, local_id_x$1) )  && ( p14$2 ==> BV32_SLE($local_shift.0$2, local_id_x$2) ) ,  ( p14$1 ==> BV32_SGE($local_shift.0$1, local_id_x$1) )  && ( p14$2 ==> BV32_SGE($local_shift.0$2, local_id_x$2) ) ,  ( p14$1 ==> BV32_ULE($local_shift.0$1, local_id_x$1) )  && ( p14$2 ==> BV32_ULE($local_shift.0$2, local_id_x$2) ) ,  ( p14$1 ==> BV32_UGE($local_shift.0$1, local_id_x$1) )  && ( p14$2 ==> BV32_UGE($local_shift.0$2, local_id_x$2) ) ,  (  BV32_SLT($local_shift.0$1, v26$1) ==> p14$1 )  && (  BV32_SLT($local_shift.0$2, v26$2) ==> p14$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$local_q_tail ==> _WATCHED_OFFSET == 0bv32 ) ,  (  _READ_HAS_OCCURRED_$$local_q ==> BV32_AND(BV32_SUB(group_size_x, 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(group_size_x, 1bv32), local_id_x$1) ) ,  (  _READ_HAS_OCCURRED_$$shift ==> _WATCHED_OFFSET == 0bv32 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 45} p14$1 ==> true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_0$1 := (if p14$1 then _HAVOC_bv32$1 else _abstracted_call_arg_0$1);
    _abstracted_call_arg_0$2 := (if p14$2 then _HAVOC_bv32$2 else _abstracted_call_arg_0$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$local_q_tail(p14$1, 0bv32, _abstracted_call_arg_0$1);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 46} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    _abstracted_call_arg_1$1 := (if p14$1 then _HAVOC_bv32$1 else _abstracted_call_arg_1$1);
    _abstracted_call_arg_1$2 := (if p14$2 then _HAVOC_bv32$2 else _abstracted_call_arg_1$2);
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$local_q_tail(p14$2, 0bv32, _abstracted_call_arg_1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$local_q_tail"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v26$1 := (if p14$1 then _HAVOC_bv32$1 else v26$1);
    v26$2 := (if p14$2 then _HAVOC_bv32$2 else v26$2);
    v27$1 := (if p14$1 then BV32_SLT($local_shift.0$1, v26$1) else v27$1);
    v27$2 := (if p14$2 then BV32_SLT($local_shift.0$2, v26$2) else v27$2);
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p15$1 := (if p14$1 && v27$1 then v27$1 else p15$1);
    p15$2 := (if p14$2 && v27$2 then v27$2 else p15$2);
    p14$1 := (if p14$1 && !v27$1 then v27$1 else p14$1);
    p14$2 := (if p14$2 && !v27$2 then v27$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$local_q(p15$1, $local_shift.0$1, $$local_q[1bv1][$local_shift.0$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$local_q(p15$2, $local_shift.0$2, $$local_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$local_shift.0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$local_q"} true;
    v28$1 := (if p15$1 then $$local_q[1bv1][$local_shift.0$1] else v28$1);
    v28$2 := (if p15$2 then $$local_q[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][$local_shift.0$2] else v28$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$shift(p15$1, 0bv32, $$shift[1bv1][0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$shift(p15$2, 0bv32, $$shift[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shift"} true;
    v29$1 := (if p15$1 then $$shift[1bv1][0bv32] else v29$1);
    v29$2 := (if p15$2 then $$shift[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v29$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$q2(p15$1, BV32_ADD(v29$1, $local_shift.0$1), v28$1, $$q2[BV32_ADD(v29$1, $local_shift.0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$q2(p15$2, BV32_ADD(v29$2, $local_shift.0$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$q2(p15$2, BV32_ADD(v29$2, $local_shift.0$2), v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$q2"} true;
    $$q2[BV32_ADD(v29$1, $local_shift.0$1)] := (if p15$1 then v28$1 else $$q2[BV32_ADD(v29$1, $local_shift.0$1)]);
    $$q2[BV32_ADD(v29$2, $local_shift.0$2)] := (if p15$2 then v28$2 else $$q2[BV32_ADD(v29$2, $local_shift.0$2)]);
    $local_shift.0$1 := (if p15$1 then BV32_ADD($local_shift.0$1, group_size_x) else $local_shift.0$1);
    $local_shift.0$2 := (if p15$2 then BV32_ADD($local_shift.0$2, group_size_x) else $local_shift.0$2);
    p14$1 := (if p15$1 then true else p14$1);
    p14$2 := (if p15$2 then true else p14$2);
    goto $17.backedge, $17.tail;

  $17.tail:
    assume !p14$1 && !p14$2;
    return;

  $17.backedge:
    assume {:backedge} p14$1 || p14$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $17;

  $4.backedge:
    assume {:backedge} p3$1 || p3$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $4;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

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
  requires $1 == 0bv1;
  modifies $$local_q, $$shift, $$q2, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$local_q, $$shift, $$q2, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$local_q, $$shift, $$q2, _TRACKING;



var $$cur_node$0bv32$1: bv32;

var $$cur_node$0bv32$2: bv32;

var $$cur_node$1bv32$1: bv32;

var $$cur_node$1bv32$2: bv32;

var $$cur_edge$0bv32$1: bv32;

var $$cur_edge$0bv32$2: bv32;

var $$cur_edge$1bv32$1: bv32;

var $$cur_edge$1bv32$2: bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;





function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;























var {:atomic_usedmap} _USED_$$local_q_tail: [bv32][bv32]bool;

const _WATCHED_VALUE_$$q1: bv32;

procedure {:inline 1} _LOG_READ_$$q1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$q1;



implementation {:inline 1} _LOG_READ_$$q1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$q1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q1 == _value then true else _READ_HAS_OCCURRED_$$q1);
    return;
}



procedure _CHECK_READ_$$q1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$q1);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$q1: bool;

procedure {:inline 1} _LOG_WRITE_$$q1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$q1, _WRITE_READ_BENIGN_FLAG_$$q1;



implementation {:inline 1} _LOG_WRITE_$$q1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$q1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q1 == _value then true else _WRITE_HAS_OCCURRED_$$q1);
    _WRITE_READ_BENIGN_FLAG_$$q1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$q1);
    return;
}



procedure _CHECK_WRITE_$$q1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q1 != _value);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q1 != _value);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$q1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$q1;



implementation {:inline 1} _LOG_ATOMIC_$$q1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$q1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$q1);
    return;
}



procedure _CHECK_ATOMIC_$$q1(_P: bool, _offset: bv32);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "q1"} {:array "$$q1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$q1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$q1 := (if _P && _WRITE_HAS_OCCURRED_$$q1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$q1);
    return;
}



const _WATCHED_VALUE_$$q2: bv32;

procedure {:inline 1} _LOG_READ_$$q2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$q2;



implementation {:inline 1} _LOG_READ_$$q2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$q2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q2 == _value then true else _READ_HAS_OCCURRED_$$q2);
    return;
}



procedure _CHECK_READ_$$q2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$q2);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$q2: bool;

procedure {:inline 1} _LOG_WRITE_$$q2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$q2, _WRITE_READ_BENIGN_FLAG_$$q2;



implementation {:inline 1} _LOG_WRITE_$$q2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$q2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q2 == _value then true else _WRITE_HAS_OCCURRED_$$q2);
    _WRITE_READ_BENIGN_FLAG_$$q2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$q2);
    return;
}



procedure _CHECK_WRITE_$$q2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q2 != _value);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$q2 != _value);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$q2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$q2;



implementation {:inline 1} _LOG_ATOMIC_$$q2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$q2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$q2);
    return;
}



procedure _CHECK_ATOMIC_$$q2(_P: bool, _offset: bv32);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "q2"} {:array "$$q2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$q2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$q2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$q2 := (if _P && _WRITE_HAS_OCCURRED_$$q2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$q2);
    return;
}



const _WATCHED_VALUE_$$g_graph_nodes: bv32;

procedure {:inline 1} _LOG_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_graph_nodes;



implementation {:inline 1} _LOG_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then true else _READ_HAS_OCCURRED_$$g_graph_nodes);
    return;
}



procedure _CHECK_READ_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_nodes, _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes;



implementation {:inline 1} _LOG_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_nodes);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
    return;
}



procedure _CHECK_WRITE_$$g_graph_nodes(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes != _value);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_nodes != _value);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_nodes;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_nodes := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_nodes);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_nodes(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_nodes"} {:array "$$g_graph_nodes"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_nodes(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_nodes(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_nodes && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_nodes);
    return;
}



const _WATCHED_VALUE_$$g_graph_edges: bv32;

procedure {:inline 1} _LOG_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_graph_edges;



implementation {:inline 1} _LOG_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then true else _READ_HAS_OCCURRED_$$g_graph_edges);
    return;
}



procedure _CHECK_READ_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_graph_edges: bool;

procedure {:inline 1} _LOG_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_graph_edges, _WRITE_READ_BENIGN_FLAG_$$g_graph_edges;



implementation {:inline 1} _LOG_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then true else _WRITE_HAS_OCCURRED_$$g_graph_edges);
    _WRITE_READ_BENIGN_FLAG_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
    return;
}



procedure _CHECK_WRITE_$$g_graph_edges(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges != _value);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_graph_edges != _value);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_graph_edges;



implementation {:inline 1} _LOG_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_graph_edges := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_graph_edges);
    return;
}



procedure _CHECK_ATOMIC_$$g_graph_edges(_P: bool, _offset: bv32);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_graph_edges"} {:array "$$g_graph_edges"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_edges(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_graph_edges;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_graph_edges(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_graph_edges := (if _P && _WRITE_HAS_OCCURRED_$$g_graph_edges && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_graph_edges);
    return;
}



const _WATCHED_VALUE_$$g_color: bv32;

procedure {:inline 1} _LOG_READ_$$g_color(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_color;



implementation {:inline 1} _LOG_READ_$$g_color(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_color := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_color == _value then true else _READ_HAS_OCCURRED_$$g_color);
    return;
}



procedure _CHECK_READ_$$g_color(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_color);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_color: bool;

procedure {:inline 1} _LOG_WRITE_$$g_color(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_color, _WRITE_READ_BENIGN_FLAG_$$g_color;



implementation {:inline 1} _LOG_WRITE_$$g_color(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_color := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_color == _value then true else _WRITE_HAS_OCCURRED_$$g_color);
    _WRITE_READ_BENIGN_FLAG_$$g_color := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_color == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_color);
    return;
}



procedure _CHECK_WRITE_$$g_color(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_color != _value);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_color != _value);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_color(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_color;



implementation {:inline 1} _LOG_ATOMIC_$$g_color(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_color := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_color);
    return;
}



procedure _CHECK_ATOMIC_$$g_color(_P: bool, _offset: bv32);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_color"} {:array "$$g_color"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_color(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_color;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_color(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_color := (if _P && _WRITE_HAS_OCCURRED_$$g_color && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_color);
    return;
}



const _WATCHED_VALUE_$$g_cost: bv32;

procedure {:inline 1} _LOG_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$g_cost;



implementation {:inline 1} _LOG_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then true else _READ_HAS_OCCURRED_$$g_cost);
    return;
}



procedure _CHECK_READ_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_cost);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_cost: bool;

procedure {:inline 1} _LOG_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$g_cost, _WRITE_READ_BENIGN_FLAG_$$g_cost;



implementation {:inline 1} _LOG_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then true else _WRITE_HAS_OCCURRED_$$g_cost);
    _WRITE_READ_BENIGN_FLAG_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_cost);
    return;
}



procedure _CHECK_WRITE_$$g_cost(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost != _value);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_cost != _value);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_cost(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$g_cost;



implementation {:inline 1} _LOG_ATOMIC_$$g_cost(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_cost := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_cost);
    return;
}



procedure _CHECK_ATOMIC_$$g_cost(_P: bool, _offset: bv32);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_cost"} {:array "$$g_cost"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_cost(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_cost;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_cost(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_cost := (if _P && _WRITE_HAS_OCCURRED_$$g_cost && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_cost);
    return;
}



const _WATCHED_VALUE_$$tail: bv32;

procedure {:inline 1} _LOG_READ_$$tail(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$tail;



implementation {:inline 1} _LOG_READ_$$tail(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tail := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tail == _value then true else _READ_HAS_OCCURRED_$$tail);
    return;
}



procedure _CHECK_READ_$$tail(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tail);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tail: bool;

procedure {:inline 1} _LOG_WRITE_$$tail(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$tail, _WRITE_READ_BENIGN_FLAG_$$tail;



implementation {:inline 1} _LOG_WRITE_$$tail(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tail := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tail == _value then true else _WRITE_HAS_OCCURRED_$$tail);
    _WRITE_READ_BENIGN_FLAG_$$tail := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tail == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tail);
    return;
}



procedure _CHECK_WRITE_$$tail(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tail != _value);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tail != _value);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tail(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tail;



implementation {:inline 1} _LOG_ATOMIC_$$tail(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tail := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tail);
    return;
}



procedure _CHECK_ATOMIC_$$tail(_P: bool, _offset: bv32);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset);
  requires {:source_name "tail"} {:array "$$tail"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tail(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tail;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tail(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tail := (if _P && _WRITE_HAS_OCCURRED_$$tail && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tail);
    return;
}



const _WATCHED_VALUE_$$local_q_tail: bv32;

procedure {:inline 1} _LOG_READ_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$local_q_tail;



implementation {:inline 1} _LOG_READ_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$local_q_tail := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q_tail == _value then true else _READ_HAS_OCCURRED_$$local_q_tail);
    return;
}



procedure _CHECK_READ_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$local_q_tail && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$local_q_tail: bool;

procedure {:inline 1} _LOG_WRITE_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$local_q_tail, _WRITE_READ_BENIGN_FLAG_$$local_q_tail;



implementation {:inline 1} _LOG_WRITE_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$local_q_tail := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q_tail == _value then true else _WRITE_HAS_OCCURRED_$$local_q_tail);
    _WRITE_READ_BENIGN_FLAG_$$local_q_tail := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q_tail == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$local_q_tail);
    return;
}



procedure _CHECK_WRITE_$$local_q_tail(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q_tail != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q_tail != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$local_q_tail(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$local_q_tail;



implementation {:inline 1} _LOG_ATOMIC_$$local_q_tail(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$local_q_tail := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$local_q_tail);
    return;
}



procedure _CHECK_ATOMIC_$$local_q_tail(_P: bool, _offset: bv32);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q_tail"} {:array "$$local_q_tail"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q_tail(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$local_q_tail;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q_tail(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$local_q_tail := (if _P && _WRITE_HAS_OCCURRED_$$local_q_tail && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$local_q_tail);
    return;
}



const _WATCHED_VALUE_$$local_q: bv32;

procedure {:inline 1} _LOG_READ_$$local_q(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$local_q;



implementation {:inline 1} _LOG_READ_$$local_q(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$local_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q == _value then true else _READ_HAS_OCCURRED_$$local_q);
    return;
}



procedure _CHECK_READ_$$local_q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$local_q && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$local_q: bool;

procedure {:inline 1} _LOG_WRITE_$$local_q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$local_q, _WRITE_READ_BENIGN_FLAG_$$local_q;



implementation {:inline 1} _LOG_WRITE_$$local_q(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$local_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q == _value then true else _WRITE_HAS_OCCURRED_$$local_q);
    _WRITE_READ_BENIGN_FLAG_$$local_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$local_q);
    return;
}



procedure _CHECK_WRITE_$$local_q(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$local_q != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$local_q(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$local_q;



implementation {:inline 1} _LOG_ATOMIC_$$local_q(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$local_q := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$local_q);
    return;
}



procedure _CHECK_ATOMIC_$$local_q(_P: bool, _offset: bv32);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "local_q"} {:array "$$local_q"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$local_q;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$local_q(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$local_q := (if _P && _WRITE_HAS_OCCURRED_$$local_q && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$local_q);
    return;
}



const _WATCHED_VALUE_$$shift: bv32;

procedure {:inline 1} _LOG_READ_$$shift(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$shift;



implementation {:inline 1} _LOG_READ_$$shift(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$shift := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shift == _value then true else _READ_HAS_OCCURRED_$$shift);
    return;
}



procedure _CHECK_READ_$$shift(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$shift && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$shift: bool;

procedure {:inline 1} _LOG_WRITE_$$shift(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$shift, _WRITE_READ_BENIGN_FLAG_$$shift;



implementation {:inline 1} _LOG_WRITE_$$shift(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$shift := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shift == _value then true else _WRITE_HAS_OCCURRED_$$shift);
    _WRITE_READ_BENIGN_FLAG_$$shift := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shift == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$shift);
    return;
}



procedure _CHECK_WRITE_$$shift(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shift != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shift != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$shift(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$shift;



implementation {:inline 1} _LOG_ATOMIC_$$shift(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$shift := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$shift);
    return;
}



procedure _CHECK_ATOMIC_$$shift(_P: bool, _offset: bv32);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shift"} {:array "$$shift"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shift(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$shift;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shift(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$shift := (if _P && _WRITE_HAS_OCCURRED_$$shift && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$shift);
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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q_tail;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$shift;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$q2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_color;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tail;
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
    havoc $$q2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$local_q;
    goto anon5;

  anon5:
    havoc $$shift;
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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q_tail;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$shift;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$q2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_color;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tail;
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
    havoc $$q2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$local_q;
    goto anon5;

  anon5:
    havoc $$shift;
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
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q_tail;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q_tail;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$local_q;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$local_q;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$shift;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$shift;
    goto anon3;

  anon3:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$q2;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$q2;
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_color;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_color;
    goto anon8;

  anon8:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$g_cost;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$g_cost;
    goto anon9;

  anon9:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$tail;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$tail;
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
    havoc $$q2;
    goto anon12;

  anon14_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$local_q;
    goto anon5;

  anon5:
    havoc $$shift;
    goto anon6;

  anon13_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}






















