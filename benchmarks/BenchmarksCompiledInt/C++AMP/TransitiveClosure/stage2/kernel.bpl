type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "graph"} {:global} $$graph: [int]int;

axiom {:array_info "$$graph"} {:global} {:elem_width 32} {:source_name "graph"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$graph: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$graph: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$graph: bool;

var {:source_name "primary_block_buffer"} {:group_shared} $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: [bv1][int]int;

axiom {:array_info "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:group_shared} {:elem_width 32} {:source_name "primary_block_buffer"} {:source_elem_width 32} {:source_dimensions "8,8"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: bool;

var {:source_name "curr_block_buffer"} {:group_shared} $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: [bv1][int]int;

axiom {:array_info "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:group_shared} {:elem_width 32} {:source_name "curr_block_buffer"} {:source_elem_width 32} {:source_dimensions "8,8"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*,8"} _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: bool;

const _WATCHED_OFFSET: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

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

procedure {:source_name "transitive_closure_stage2_kernel"} {:kernel} $_Z32transitive_closure_stage2_kernelPji($passnum: int);
  requires !_READ_HAS_OCCURRED_$$graph && !_WRITE_HAS_OCCURRED_$$graph && !_ATOMIC_HAS_OCCURRED_$$graph;
  requires !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
  requires !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
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
  modifies $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, _READ_HAS_OCCURRED_$$graph, _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, $$graph, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, _WRITE_HAS_OCCURRED_$$graph, _WRITE_READ_BENIGN_FLAG_$$graph, _WRITE_READ_BENIGN_FLAG_$$graph, _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, _TRACKING;



implementation {:source_name "transitive_closure_stage2_kernel"} {:kernel} $_Z32transitive_closure_stage2_kernelPji($passnum: int)
{
  var $group_id1.0$1: int;
  var $group_id1.0$2: int;
  var $group_id0.1$1: int;
  var $group_id0.1$2: int;
  var $group_id1.1$1: int;
  var $group_id1.1$2: int;
  var $group_id0.0$1: int;
  var $group_id0.0$2: int;
  var $k.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7: bool;
  var v8$1: int;
  var v8$2: int;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: int;
  var v11$2: int;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v16$1: bool;
  var v16$2: bool;
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


  __partitioned_block_$0_0:
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$graph(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$1), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$1)), $$graph[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$1), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$graph(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$2), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$2)), $$graph[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$2), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$graph"} true;
    v0$1 := $$graph[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$1), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$1))];
    v0$2 := $$graph[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL($passnum, 8), local_id_y$2), 64), BV32_ADD(BV32_MUL($passnum, 8), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), v0$1, $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} true;
    $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)] := v0$1;
    $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)] := v0$2;
    v1$1 := group_id_y$1 == 0;
    v1$2 := group_id_y$2 == 0;
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
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    p3$1 := (if !v1$1 then !v1$1 else p3$1);
    p3$2 := (if !v1$2 then !v1$2 else p3$2);
    v2$1 := (if p0$1 then BV32_ULT(group_id_x$1, $passnum) else v2$1);
    v2$2 := (if p0$2 then BV32_ULT(group_id_x$2, $passnum) else v2$2);
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p2$1 := (if p0$1 && !v2$1 then !v2$1 else p2$1);
    p2$2 := (if p0$2 && !v2$2 then !v2$2 else p2$2);
    $group_id1.0$1 := (if p1$1 then group_id_x$1 else $group_id1.0$1);
    $group_id1.0$2 := (if p1$2 then group_id_x$2 else $group_id1.0$2);
    $group_id1.0$1 := (if p2$1 then BV32_ADD(group_id_x$1, 1) else $group_id1.0$1);
    $group_id1.0$2 := (if p2$2 then BV32_ADD(group_id_x$2, 1) else $group_id1.0$2);
    $group_id0.1$1, $group_id1.1$1 := (if p0$1 then $passnum else $group_id0.1$1), (if p0$1 then $group_id1.0$1 else $group_id1.1$1);
    $group_id0.1$2, $group_id1.1$2 := (if p0$2 then $passnum else $group_id0.1$2), (if p0$2 then $group_id1.0$2 else $group_id1.1$2);
    v3$1 := (if p3$1 then BV32_ULT(group_id_x$1, $passnum) else v3$1);
    v3$2 := (if p3$2 then BV32_ULT(group_id_x$2, $passnum) else v3$2);
    p4$1 := (if p3$1 && v3$1 then v3$1 else p4$1);
    p4$2 := (if p3$2 && v3$2 then v3$2 else p4$2);
    p5$1 := (if p3$1 && !v3$1 then !v3$1 else p5$1);
    p5$2 := (if p3$2 && !v3$2 then !v3$2 else p5$2);
    $group_id0.0$1 := (if p4$1 then group_id_x$1 else $group_id0.0$1);
    $group_id0.0$2 := (if p4$2 then group_id_x$2 else $group_id0.0$2);
    $group_id0.0$1 := (if p5$1 then BV32_ADD(group_id_x$1, 1) else $group_id0.0$1);
    $group_id0.0$2 := (if p5$2 then BV32_ADD(group_id_x$2, 1) else $group_id0.0$2);
    $group_id0.1$1, $group_id1.1$1 := (if p3$1 then $group_id0.0$1 else $group_id0.1$1), (if p3$1 then $passnum else $group_id1.1$1);
    $group_id0.1$2, $group_id1.1$2 := (if p3$2 then $group_id0.0$2 else $group_id0.1$2), (if p3$2 then $passnum else $group_id1.1$2);
    v4$1 := BV32_ADD(BV32_MUL($group_id0.1$1, 8), local_id_y$1);
    v4$2 := BV32_ADD(BV32_MUL($group_id0.1$2, 8), local_id_y$2);
    v5$1 := BV32_ADD(BV32_MUL($group_id1.1$1, 8), local_id_x$1);
    v5$2 := BV32_ADD(BV32_MUL($group_id1.1$2, 8), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$graph(true, BV32_ADD(BV32_MUL(v4$1, 64), v5$1), $$graph[BV32_ADD(BV32_MUL(v4$1, 64), v5$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$graph(true, BV32_ADD(BV32_MUL(v4$2, 64), v5$2), $$graph[BV32_ADD(BV32_MUL(v4$2, 64), v5$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$graph"} true;
    v6$1 := $$graph[BV32_ADD(BV32_MUL(v4$1, 64), v5$1)];
    v6$2 := $$graph[BV32_ADD(BV32_MUL(v4$2, 64), v5$2)];
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), v6$1, $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)] := v6$1;
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)] := v6$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 13} $bugle_barrier_duplicated_0(-1, -1);
    $k.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1) || _WATCHED_OFFSET mod BV32_MUL(1, 8) == BV32_ADD(BV32_MUL(0, 8), local_id_x$1) mod BV32_MUL(1, 8) || _WATCHED_OFFSET mod 1 == BV32_ADD(0, BV32_MUL(local_id_y$1, 8)) mod 1;
    assert {:tag "nowrite"} _b8 ==> !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assert {:tag "noread"} _b7 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b6 ==> _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer ==> _WATCHED_OFFSET mod 1 == BV32_ADD(0, BV32_MUL(local_id_y$1, 8)) mod 1 || _WATCHED_OFFSET mod BV32_MUL(1, 8) == BV32_ADD(BV32_MUL(0, 8), local_id_x$1) mod BV32_MUL(1, 8);
    assert {:tag "noread"} _b5 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($k.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($k.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($k.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($k.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $k.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 14} true;
    v7 := BV32_ULT($k.0, 8);
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
    goto __partitioned_block_$truebb2_0, $falsebb2;

  $falsebb2:
    assume {:partition} !v7;
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    v19$1 := $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)];
    v19$2 := $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$graph(true, BV32_ADD(BV32_MUL(v4$1, 64), v5$1), v19$1, $$graph[BV32_ADD(BV32_MUL(v4$1, 64), v5$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$graph(true, BV32_ADD(BV32_MUL(v4$2, 64), v5$2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$graph(true, BV32_ADD(BV32_MUL(v4$2, 64), v5$2), v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$graph"} true;
    $$graph[BV32_ADD(BV32_MUL(v4$1, 64), v5$1)] := v19$1;
    $$graph[BV32_ADD(BV32_MUL(v4$2, 64), v5$2)] := v19$2;
    return;

  __partitioned_block_$truebb2_0:
    assume {:partition} v7;
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(true, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    v8$1 := $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)];
    v8$2 := $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)];
    v9$1 := v8$1 == 0;
    v9$2 := v8$2 == 0;
    p7$1 := (if v9$1 then v9$1 else p7$1);
    p7$2 := (if v9$2 then v9$2 else p7$2);
    v10$1 := (if p7$1 then group_id_y$1 == 0 else v10$1);
    v10$2 := (if p7$2 then group_id_y$2 == 0 else v10$2);
    p8$1 := (if p7$1 && v10$1 then v10$1 else p8$1);
    p8$2 := (if p7$2 && v10$2 then v10$2 else p8$2);
    p13$1 := (if p7$1 && !v10$1 then !v10$1 else p13$1);
    p13$2 := (if p7$2 && !v10$2 then !v10$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(p8$1, BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0), $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(p8$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0), $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} true;
    v11$1 := (if p8$1 then $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0)] else v11$1);
    v11$2 := (if p8$2 then $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0)] else v11$2);
    v12$1 := (if p8$1 then v11$1 != 0 else v12$1);
    v12$2 := (if p8$2 then v11$2 != 0 else v12$2);
    p10$1 := (if p8$1 && v12$1 then v12$1 else p10$1);
    p10$2 := (if p8$2 && v12$2 then v12$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p10$1, BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p10$2, BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    v13$1 := (if p10$1 then $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1)] else v13$1);
    v13$2 := (if p10$2 then $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2)] else v13$2);
    v14$1 := (if p10$1 then v13$1 != 0 else v14$1);
    v14$2 := (if p10$2 then v13$2 != 0 else v14$2);
    p12$1 := (if p10$1 && v14$1 then v14$1 else p12$1);
    p12$2 := (if p10$2 && v14$2 then v14$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p12$1, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p12$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p12$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)] := (if p12$1 then BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2) else $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)] := (if p12$2 then BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2) else $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p13$1, BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p13$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    v15$1 := (if p13$1 then $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), $k.0)] else v15$1);
    v15$2 := (if p13$2 then $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), $k.0)] else v15$2);
    v16$1 := (if p13$1 then v15$1 != 0 else v16$1);
    v16$2 := (if p13$2 then v15$2 != 0 else v16$2);
    p15$1 := (if p13$1 && v16$1 then v16$1 else p15$1);
    p15$2 := (if p13$2 && v16$2 then v16$2 else p15$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(p15$1, BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1), $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(p15$2, BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2), $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} true;
    v17$1 := (if p15$1 then $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[1bv1][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$1)] else v17$1);
    v17$2 := (if p15$2 then $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 8), local_id_x$2)] else v17$2);
    v18$1 := (if p15$1 then v17$1 != 0 else v18$1);
    v18$2 := (if p15$2 then v17$2 != 0 else v18$2);
    p17$1 := (if p15$1 && v18$1 then v18$1 else p17$1);
    p17$2 := (if p15$2 && v18$2 then v18$2 else p17$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p17$1, BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1), BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2), $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p17$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(p17$2, BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2), BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} true;
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)] := (if p17$1 then BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2) else $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[1bv1][BV32_ADD(BV32_MUL(local_id_y$1, 8), local_id_x$1)]);
    $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)] := (if p17$2 then BV32_ADD(BV32_ADD(BV32_MUL($passnum, 8), $k.0), 2) else $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(local_id_y$2, 8), local_id_x$2)]);
    goto __partitioned_block_$truebb2_1;

  __partitioned_block_$truebb2_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_1(-1, -1);
    $k.0 := BV32_ADD($k.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $10;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, $$graph, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, $$graph, _TRACKING;



const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b4: bool;

const _WATCHED_VALUE_$$graph: int;

procedure {:inline 1} _LOG_READ_$$graph(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$graph;



implementation {:inline 1} _LOG_READ_$$graph(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$graph := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$graph == _value then true else _READ_HAS_OCCURRED_$$graph);
    return;
}



procedure _CHECK_READ_$$graph(_P: bool, _offset: int, _value: int);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$graph);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$graph: bool;

procedure {:inline 1} _LOG_WRITE_$$graph(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$graph, _WRITE_READ_BENIGN_FLAG_$$graph;



implementation {:inline 1} _LOG_WRITE_$$graph(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$graph := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$graph == _value then true else _WRITE_HAS_OCCURRED_$$graph);
    _WRITE_READ_BENIGN_FLAG_$$graph := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$graph == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$graph);
    return;
}



procedure _CHECK_WRITE_$$graph(_P: bool, _offset: int, _value: int);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$graph != _value);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$graph != _value);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$graph(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$graph;



implementation {:inline 1} _LOG_ATOMIC_$$graph(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$graph := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$graph);
    return;
}



procedure _CHECK_ATOMIC_$$graph(_P: bool, _offset: int);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset);
  requires {:source_name "graph"} {:array "$$graph"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$graph(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$graph;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$graph(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$graph := (if _P && _WRITE_HAS_OCCURRED_$$graph && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$graph);
    return;
}



const _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: int;

procedure {:inline 1} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;



implementation {:inline 1} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer == _value then true else _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer);
    return;
}



procedure _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;



implementation {:inline 1} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer);
    return;
}



procedure _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "primary_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer);
    return;
}



const _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: int;

procedure {:inline 1} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;



implementation {:inline 1} _LOG_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer == _value then true else _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer);
    return;
}



procedure _CHECK_READ_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer, _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;



implementation {:inline 1} _LOG_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer);
    return;
}



procedure _CHECK_WRITE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "curr_block_buffer"} {:array "$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$graph;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$graph;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$graph;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$graph;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    goto anon4;

  anon4:
    havoc $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    goto anon5;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    goto anon2;

  anon2:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$graph;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$graph;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$graph;
    goto anon6;

  anon6:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$graph;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ32transitive_closure_stage2_kernelPjiE20primary_block_buffer;
    goto anon4;

  anon4:
    havoc $$_ZZ32transitive_closure_stage2_kernelPjiE17curr_block_buffer;
    goto anon5;

  anon9_Then:
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

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;
