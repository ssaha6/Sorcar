type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$input_cuda"} {:global} {:elem_width 32} {:source_name "input_cuda"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input_cuda: bool;

axiom {:array_info "$$output_hidden_cuda"} {:global} {:elem_width 32} {:source_name "output_hidden_cuda"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output_hidden_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output_hidden_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda: bool;

var {:source_name "input_hidden_cuda"} {:global} $$input_hidden_cuda: [int]int;

axiom {:array_info "$$input_hidden_cuda"} {:global} {:elem_width 32} {:source_name "input_hidden_cuda"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input_hidden_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input_hidden_cuda: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda: bool;

var {:source_name "hidden_partial_sum"} {:global} $$hidden_partial_sum: [int]int;

axiom {:array_info "$$hidden_partial_sum"} {:global} {:elem_width 32} {:source_name "hidden_partial_sum"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$hidden_partial_sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$hidden_partial_sum: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum: bool;

var {:source_name "input_node"} {:group_shared} $$input_node: [bv1][int]int;

axiom {:array_info "$$input_node"} {:group_shared} {:elem_width 32} {:source_name "input_node"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input_node: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input_node: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input_node: bool;

var {:source_name "weight_matrix"} {:group_shared} $$weight_matrix: [bv1][int]int;

axiom {:array_info "$$weight_matrix"} {:group_shared} {:elem_width 32} {:source_name "weight_matrix"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$weight_matrix: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$weight_matrix: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$weight_matrix: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "bpnn_layerforward_ocl"} {:kernel} $bpnn_layerforward_ocl($in: int, $hid: int);
  requires {:sourceloc_num 0} {:thread 1} (if $in == 65536 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $hid == 16 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$input_cuda && !_WRITE_HAS_OCCURRED_$$input_cuda && !_ATOMIC_HAS_OCCURRED_$$input_cuda;
  requires !_READ_HAS_OCCURRED_$$output_hidden_cuda && !_WRITE_HAS_OCCURRED_$$output_hidden_cuda && !_ATOMIC_HAS_OCCURRED_$$output_hidden_cuda;
  requires !_READ_HAS_OCCURRED_$$input_hidden_cuda && !_WRITE_HAS_OCCURRED_$$input_hidden_cuda && !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
  requires !_READ_HAS_OCCURRED_$$hidden_partial_sum && !_WRITE_HAS_OCCURRED_$$hidden_partial_sum && !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
  requires !_READ_HAS_OCCURRED_$$input_node && !_WRITE_HAS_OCCURRED_$$input_node && !_ATOMIC_HAS_OCCURRED_$$input_node;
  requires !_READ_HAS_OCCURRED_$$weight_matrix && !_WRITE_HAS_OCCURRED_$$weight_matrix && !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
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
  modifies $$input_node, $$weight_matrix, _WRITE_HAS_OCCURRED_$$input_node, _WRITE_READ_BENIGN_FLAG_$$input_node, _WRITE_READ_BENIGN_FLAG_$$input_node, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING, _READ_HAS_OCCURRED_$$input_hidden_cuda, _WRITE_HAS_OCCURRED_$$weight_matrix, _WRITE_READ_BENIGN_FLAG_$$weight_matrix, _WRITE_READ_BENIGN_FLAG_$$weight_matrix, _TRACKING, _READ_HAS_OCCURRED_$$weight_matrix, _READ_HAS_OCCURRED_$$input_node, _TRACKING, _WRITE_HAS_OCCURRED_$$input_hidden_cuda, _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda, _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda, _TRACKING, _WRITE_HAS_OCCURRED_$$hidden_partial_sum, _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum, _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum, _TRACKING;



implementation {:source_name "bpnn_layerforward_ocl"} {:kernel} $bpnn_layerforward_ocl($in: int, $hid: int)
{
  var $i.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v15$1: bool;
  var v15$2: bool;
  var v10: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v16$1: int;
  var v16$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := group_id_y$1;
    v0$2 := group_id_y$2;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := local_id_y$1;
    v2$2 := local_id_y$2;
    v3$1 := BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD($hid, 1), 16), v0$1), BV32_MUL(BV32_ADD($hid, 1), v2$1)), v1$1), 1), BV32_ADD($hid, 1));
    v3$2 := BV32_ADD(BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD($hid, 1), 16), v0$2), BV32_MUL(BV32_ADD($hid, 1), v2$2)), v1$2), 1), BV32_ADD($hid, 1));
    v4$1 := BV32_ADD(BV32_ADD(BV32_MUL(16, v0$1), v2$1), 1);
    v4$2 := BV32_ADD(BV32_ADD(BV32_MUL(16, v0$2), v2$2), 1);
    v5$1 := v1$1 == 0;
    v5$2 := v1$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p0$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p0$2 then _HAVOC_int$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$input_node(p0$1, v2$1, v6$1, $$input_node[1bv1][v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_node(p0$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$input_node(p0$2, v2$2, v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$input_node"} true;
    $$input_node[1bv1][v2$1] := (if p0$1 then v6$1 else $$input_node[1bv1][v2$1]);
    $$input_node[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2] := (if p0$2 then v6$2 else $$input_node[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, 0);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$input_hidden_cuda(true, v3$1, $$input_hidden_cuda[v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$input_hidden_cuda(true, v3$2, $$input_hidden_cuda[v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$input_hidden_cuda"} true;
    v7$1 := $$input_hidden_cuda[v3$1];
    v7$2 := $$input_hidden_cuda[v3$2];
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), v7$1, $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$weight_matrix"} true;
    $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)] := v7$1;
    $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)] := v7$2;
    goto __partitioned_block_$0_2;

  __partitioned_block_$0_2:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_1(-1, 0);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$weight_matrix"} true;
    v8$1 := $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)];
    v8$2 := $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)];
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$input_node(true, v2$1, $$input_node[1bv1][v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$input_node(true, v2$2, $$input_node[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$input_node"} true;
    v9$1 := $$input_node[1bv1][v2$1];
    v9$2 := $$input_node[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v2$2];
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), FMUL32(v8$1, v9$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), FMUL32(v8$2, v9$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$weight_matrix"} true;
    $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)] := FMUL32(v8$1, v9$1);
    $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)] := FMUL32(v8$2, v9$2);
    goto __partitioned_block_$0_3;

  __partitioned_block_$0_3:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_2(-1, 0);
    $i.0 := 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$weight_matrix ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$weight_matrix ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 16), local_id_x$1) || _WATCHED_OFFSET mod BV32_MUL(1, 16) == BV32_ADD(BV32_MUL(BV32_ADD(0, local_id_y$1), 16), local_id_x$1) mod BV32_MUL(1, 16);
    assert {:tag "nowrite"} _b7 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assert {:tag "noread"} _b6 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assert {:tag "pow2NotZero"} _b5 ==> $i.0 != 0;
    assert {:tag "pow2"} _b4 ==> $i.0 == 0 || BV32_AND($i.0, BV32_SUB($i.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$weight_matrix ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$weight_matrix ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$weight_matrix ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$input_node ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$input_node ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$input_node ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($i.0, 1);
    assert {:block_sourceloc} {:sourceloc_num 15} true;
    v10 := BV32_SLE($i.0, 16);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    goto __partitioned_block_$truebb0_0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v10;
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$weight_matrix(true, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$weight_matrix"} true;
    v14$1 := $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)];
    v14$2 := $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)];
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$input_hidden_cuda(true, v3$1, v14$1, $$input_hidden_cuda[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$input_hidden_cuda(true, v3$2, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$input_hidden_cuda"} true;
    $$input_hidden_cuda[v3$1] := v14$1;
    $$input_hidden_cuda[v3$2] := v14$2;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 27} $bugle_barrier_duplicated_3(-1, 0);
    v15$1 := v1$1 == 0;
    v15$2 := v1$2 == 0;
    p4$1 := (if v15$1 then v15$1 else p4$1);
    p4$2 := (if v15$2 then v15$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$weight_matrix(p4$1, BV32_ADD(BV32_MUL(v1$1, 16), v2$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v2$1)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$weight_matrix(p4$2, BV32_ADD(BV32_MUL(v1$2, 16), v2$2), $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v1$2, 16), v2$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$weight_matrix"} true;
    v16$1 := (if p4$1 then $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v1$1, 16), v2$1)] else v16$1);
    v16$2 := (if p4$2 then $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v1$2, 16), v2$2)] else v16$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$hidden_partial_sum(p4$1, BV32_ADD(BV32_MUL(v0$1, $hid), v2$1), v16$1, $$hidden_partial_sum[BV32_ADD(BV32_MUL(v0$1, $hid), v2$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum(p4$2, BV32_ADD(BV32_MUL(v0$2, $hid), v2$2));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$hidden_partial_sum(p4$2, BV32_ADD(BV32_MUL(v0$2, $hid), v2$2), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$hidden_partial_sum"} true;
    $$hidden_partial_sum[BV32_ADD(BV32_MUL(v0$1, $hid), v2$1)] := (if p4$1 then v16$1 else $$hidden_partial_sum[BV32_ADD(BV32_MUL(v0$1, $hid), v2$1)]);
    $$hidden_partial_sum[BV32_ADD(BV32_MUL(v0$2, $hid), v2$2)] := (if p4$2 then v16$2 else $$hidden_partial_sum[BV32_ADD(BV32_MUL(v0$2, $hid), v2$2)]);
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v10;
    v11$1 := BV32_SREM(v2$1, $i.0) == 0;
    v11$2 := BV32_SREM(v2$2, $i.0) == 0;
    p3$1 := (if v11$1 then v11$1 else p3$1);
    p3$2 := (if v11$2 then v11$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$weight_matrix(p3$1, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$weight_matrix(p3$2, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$weight_matrix"} true;
    v12$1 := (if p3$1 then $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)] else v12$1);
    v12$2 := (if p3$2 then $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)] else v12$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$weight_matrix(p3$1, BV32_ADD(BV32_MUL(BV32_ADD(v2$1, BV32_SDIV($i.0, 2)), 16), v1$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v2$1, BV32_SDIV($i.0, 2)), 16), v1$1)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$weight_matrix(p3$2, BV32_ADD(BV32_MUL(BV32_ADD(v2$2, BV32_SDIV($i.0, 2)), 16), v1$2), $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v2$2, BV32_SDIV($i.0, 2)), 16), v1$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$weight_matrix"} true;
    v13$1 := (if p3$1 then $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v2$1, BV32_SDIV($i.0, 2)), 16), v1$1)] else v13$1);
    v13$2 := (if p3$2 then $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v2$2, BV32_SDIV($i.0, 2)), 16), v1$2)] else v13$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$weight_matrix(p3$1, BV32_ADD(BV32_MUL(v2$1, 16), v1$1), FADD32(v12$1, v13$1), $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$weight_matrix(p3$2, BV32_ADD(BV32_MUL(v2$2, 16), v1$2));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$weight_matrix(p3$2, BV32_ADD(BV32_MUL(v2$2, 16), v1$2), FADD32(v12$2, v13$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$weight_matrix"} true;
    $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)] := (if p3$1 then FADD32(v12$1, v13$1) else $$weight_matrix[1bv1][BV32_ADD(BV32_MUL(v2$1, 16), v1$1)]);
    $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)] := (if p3$2 then FADD32(v12$2, v13$2) else $$weight_matrix[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v2$2, 16), v1$2)]);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_4(-1, 0);
    $i.0 := BV32_MUL($i.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 4096 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$input_node, $$weight_matrix, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$input_node, $$weight_matrix, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  requires $1 == 0;
  modifies $$input_node, $$weight_matrix, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  requires $1 == 0;
  modifies $$input_node, $$weight_matrix, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  requires $1 == 0;
  modifies $$input_node, $$weight_matrix, $$input_hidden_cuda, $$hidden_partial_sum, _TRACKING;



const {:existential true} _b0: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b3: bool;

const _WATCHED_VALUE_$$input_cuda: int;

procedure {:inline 1} _LOG_READ_$$input_cuda(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input_cuda;



implementation {:inline 1} _LOG_READ_$$input_cuda(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_cuda == _value then true else _READ_HAS_OCCURRED_$$input_cuda);
    return;
}



procedure _CHECK_READ_$$input_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input_cuda);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input_cuda: bool;

procedure {:inline 1} _LOG_WRITE_$$input_cuda(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input_cuda, _WRITE_READ_BENIGN_FLAG_$$input_cuda;



implementation {:inline 1} _LOG_WRITE_$$input_cuda(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_cuda == _value then true else _WRITE_HAS_OCCURRED_$$input_cuda);
    _WRITE_READ_BENIGN_FLAG_$$input_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_cuda == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input_cuda);
    return;
}



procedure _CHECK_WRITE_$$input_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_cuda != _value);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_cuda != _value);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input_cuda(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input_cuda;



implementation {:inline 1} _LOG_ATOMIC_$$input_cuda(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input_cuda);
    return;
}



procedure _CHECK_ATOMIC_$$input_cuda(_P: bool, _offset: int);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset);
  requires {:source_name "input_cuda"} {:array "$$input_cuda"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_cuda(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input_cuda;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_cuda(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input_cuda := (if _P && _WRITE_HAS_OCCURRED_$$input_cuda && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input_cuda);
    return;
}



const _WATCHED_VALUE_$$output_hidden_cuda: int;

procedure {:inline 1} _LOG_READ_$$output_hidden_cuda(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output_hidden_cuda;



implementation {:inline 1} _LOG_READ_$$output_hidden_cuda(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_hidden_cuda == _value then true else _READ_HAS_OCCURRED_$$output_hidden_cuda);
    return;
}



procedure _CHECK_READ_$$output_hidden_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda: bool;

procedure {:inline 1} _LOG_WRITE_$$output_hidden_cuda(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output_hidden_cuda, _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda;



implementation {:inline 1} _LOG_WRITE_$$output_hidden_cuda(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_hidden_cuda == _value then true else _WRITE_HAS_OCCURRED_$$output_hidden_cuda);
    _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_hidden_cuda == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda);
    return;
}



procedure _CHECK_WRITE_$$output_hidden_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_hidden_cuda != _value);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output_hidden_cuda != _value);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output_hidden_cuda(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda;



implementation {:inline 1} _LOG_ATOMIC_$$output_hidden_cuda(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output_hidden_cuda);
    return;
}



procedure _CHECK_ATOMIC_$$output_hidden_cuda(_P: bool, _offset: int);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset);
  requires {:source_name "output_hidden_cuda"} {:array "$$output_hidden_cuda"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda := (if _P && _WRITE_HAS_OCCURRED_$$output_hidden_cuda && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output_hidden_cuda);
    return;
}



const _WATCHED_VALUE_$$input_hidden_cuda: int;

procedure {:inline 1} _LOG_READ_$$input_hidden_cuda(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input_hidden_cuda;



implementation {:inline 1} _LOG_READ_$$input_hidden_cuda(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_hidden_cuda == _value then true else _READ_HAS_OCCURRED_$$input_hidden_cuda);
    return;
}



procedure _CHECK_READ_$$input_hidden_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda: bool;

procedure {:inline 1} _LOG_WRITE_$$input_hidden_cuda(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input_hidden_cuda, _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda;



implementation {:inline 1} _LOG_WRITE_$$input_hidden_cuda(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_hidden_cuda == _value then true else _WRITE_HAS_OCCURRED_$$input_hidden_cuda);
    _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_hidden_cuda == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda);
    return;
}



procedure _CHECK_WRITE_$$input_hidden_cuda(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_hidden_cuda != _value);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_hidden_cuda != _value);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input_hidden_cuda(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;



implementation {:inline 1} _LOG_ATOMIC_$$input_hidden_cuda(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input_hidden_cuda);
    return;
}



procedure _CHECK_ATOMIC_$$input_hidden_cuda(_P: bool, _offset: int);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset);
  requires {:source_name "input_hidden_cuda"} {:array "$$input_hidden_cuda"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda := (if _P && _WRITE_HAS_OCCURRED_$$input_hidden_cuda && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input_hidden_cuda);
    return;
}



const _WATCHED_VALUE_$$hidden_partial_sum: int;

procedure {:inline 1} _LOG_READ_$$hidden_partial_sum(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$hidden_partial_sum;



implementation {:inline 1} _LOG_READ_$$hidden_partial_sum(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$hidden_partial_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hidden_partial_sum == _value then true else _READ_HAS_OCCURRED_$$hidden_partial_sum);
    return;
}



procedure _CHECK_READ_$$hidden_partial_sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum: bool;

procedure {:inline 1} _LOG_WRITE_$$hidden_partial_sum(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$hidden_partial_sum, _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum;



implementation {:inline 1} _LOG_WRITE_$$hidden_partial_sum(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$hidden_partial_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hidden_partial_sum == _value then true else _WRITE_HAS_OCCURRED_$$hidden_partial_sum);
    _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hidden_partial_sum == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum);
    return;
}



procedure _CHECK_WRITE_$$hidden_partial_sum(_P: bool, _offset: int, _value: int);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hidden_partial_sum != _value);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hidden_partial_sum != _value);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$hidden_partial_sum(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;



implementation {:inline 1} _LOG_ATOMIC_$$hidden_partial_sum(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$hidden_partial_sum);
    return;
}



procedure _CHECK_ATOMIC_$$hidden_partial_sum(_P: bool, _offset: int);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset);
  requires {:source_name "hidden_partial_sum"} {:array "$$hidden_partial_sum"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum := (if _P && _WRITE_HAS_OCCURRED_$$hidden_partial_sum && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$hidden_partial_sum);
    return;
}



const _WATCHED_VALUE_$$input_node: int;

procedure {:inline 1} _LOG_READ_$$input_node(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input_node;



implementation {:inline 1} _LOG_READ_$$input_node(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input_node := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_node == _value then true else _READ_HAS_OCCURRED_$$input_node);
    return;
}



procedure _CHECK_READ_$$input_node(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input_node && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$input_node: bool;

procedure {:inline 1} _LOG_WRITE_$$input_node(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input_node, _WRITE_READ_BENIGN_FLAG_$$input_node;



implementation {:inline 1} _LOG_WRITE_$$input_node(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input_node := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_node == _value then true else _WRITE_HAS_OCCURRED_$$input_node);
    _WRITE_READ_BENIGN_FLAG_$$input_node := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_node == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input_node);
    return;
}



procedure _CHECK_WRITE_$$input_node(_P: bool, _offset: int, _value: int);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_node != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input_node != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$input_node(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input_node;



implementation {:inline 1} _LOG_ATOMIC_$$input_node(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input_node := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input_node);
    return;
}



procedure _CHECK_ATOMIC_$$input_node(_P: bool, _offset: int);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "input_node"} {:array "$$input_node"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_node(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input_node;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input_node(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input_node := (if _P && _WRITE_HAS_OCCURRED_$$input_node && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input_node);
    return;
}



const _WATCHED_VALUE_$$weight_matrix: int;

procedure {:inline 1} _LOG_READ_$$weight_matrix(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$weight_matrix;



implementation {:inline 1} _LOG_READ_$$weight_matrix(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$weight_matrix := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weight_matrix == _value then true else _READ_HAS_OCCURRED_$$weight_matrix);
    return;
}



procedure _CHECK_READ_$$weight_matrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$weight_matrix && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$weight_matrix: bool;

procedure {:inline 1} _LOG_WRITE_$$weight_matrix(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$weight_matrix, _WRITE_READ_BENIGN_FLAG_$$weight_matrix;



implementation {:inline 1} _LOG_WRITE_$$weight_matrix(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$weight_matrix := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weight_matrix == _value then true else _WRITE_HAS_OCCURRED_$$weight_matrix);
    _WRITE_READ_BENIGN_FLAG_$$weight_matrix := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weight_matrix == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$weight_matrix);
    return;
}



procedure _CHECK_WRITE_$$weight_matrix(_P: bool, _offset: int, _value: int);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weight_matrix != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$weight_matrix != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$weight_matrix(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$weight_matrix;



implementation {:inline 1} _LOG_ATOMIC_$$weight_matrix(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$weight_matrix := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$weight_matrix);
    return;
}



procedure _CHECK_ATOMIC_$$weight_matrix(_P: bool, _offset: int);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "weight_matrix"} {:array "$$weight_matrix"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weight_matrix(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$weight_matrix;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$weight_matrix(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$weight_matrix := (if _P && _WRITE_HAS_OCCURRED_$$weight_matrix && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$weight_matrix);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_node;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$input_hidden_cuda;
    goto anon9;

  anon9:
    havoc $$hidden_partial_sum;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$input_node;
    goto anon4;

  anon4:
    havoc $$weight_matrix;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_node;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$input_hidden_cuda;
    goto anon9;

  anon9:
    havoc $$hidden_partial_sum;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$input_node;
    goto anon4;

  anon4:
    havoc $$weight_matrix;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_node;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$input_hidden_cuda;
    goto anon9;

  anon9:
    havoc $$hidden_partial_sum;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$input_node;
    goto anon4;

  anon4:
    havoc $$weight_matrix;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_node;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$input_hidden_cuda;
    goto anon9;

  anon9:
    havoc $$hidden_partial_sum;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$input_node;
    goto anon4;

  anon4:
    havoc $$weight_matrix;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_node;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_node;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$weight_matrix;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$weight_matrix;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$input_hidden_cuda;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$input_hidden_cuda;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$hidden_partial_sum;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$hidden_partial_sum;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$input_hidden_cuda;
    goto anon9;

  anon9:
    havoc $$hidden_partial_sum;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$input_node;
    goto anon4;

  anon4:
    havoc $$weight_matrix;
    goto anon5;

  anon11_Then:
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

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function BV32_AND(int, int) : int;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;
