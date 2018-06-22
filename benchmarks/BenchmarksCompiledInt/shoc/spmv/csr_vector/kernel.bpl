type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$val"} {:global} {:elem_width 32} {:source_name "val"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$val: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$val: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$val: bool;

axiom {:array_info "$$vec"} {:global} {:elem_width 32} {:source_name "vec"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$vec: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$vec: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$vec: bool;

axiom {:array_info "$$cols"} {:global} {:elem_width 32} {:source_name "cols"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cols: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cols: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cols: bool;

var {:source_name "rowDelimiters"} {:global} $$rowDelimiters: [int]int;

axiom {:array_info "$$rowDelimiters"} {:global} {:elem_width 32} {:source_name "rowDelimiters"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$rowDelimiters: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$rowDelimiters: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$rowDelimiters: bool;

var {:source_name "out"} {:global} $$out: [int]int;

axiom {:array_info "$$out"} {:global} {:elem_width 32} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$out: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$out: bool;

var {:source_name "partialSums"} {:group_shared} $$spmv_csr_vector_kernel.partialSums: [bv1][int]int;

axiom {:array_info "$$spmv_csr_vector_kernel.partialSums"} {:group_shared} {:elem_width 32} {:source_name "partialSums"} {:source_elem_width 32} {:source_dimensions "128"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums: bool;

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

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

procedure {:source_name "spmv_csr_vector_kernel"} {:kernel} $spmv_csr_vector_kernel($dim: int);
  requires {:sourceloc_num 0} {:thread 1} (if $dim == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$val && !_WRITE_HAS_OCCURRED_$$val && !_ATOMIC_HAS_OCCURRED_$$val;
  requires !_READ_HAS_OCCURRED_$$vec && !_WRITE_HAS_OCCURRED_$$vec && !_ATOMIC_HAS_OCCURRED_$$vec;
  requires !_READ_HAS_OCCURRED_$$cols && !_WRITE_HAS_OCCURRED_$$cols && !_ATOMIC_HAS_OCCURRED_$$cols;
  requires !_READ_HAS_OCCURRED_$$rowDelimiters && !_WRITE_HAS_OCCURRED_$$rowDelimiters && !_ATOMIC_HAS_OCCURRED_$$rowDelimiters;
  requires !_READ_HAS_OCCURRED_$$out && !_WRITE_HAS_OCCURRED_$$out && !_ATOMIC_HAS_OCCURRED_$$out;
  requires !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
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
  modifies $$spmv_csr_vector_kernel.partialSums, _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums, _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums, _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING, _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$out, _WRITE_READ_BENIGN_FLAG_$$out, _WRITE_READ_BENIGN_FLAG_$$out;



implementation {:source_name "spmv_csr_vector_kernel"} {:kernel} $spmv_csr_vector_kernel($dim: int)
{
  var $mySum.0$1: int;
  var $mySum.0$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var v8$1: int;
  var v8$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v10$1: bool;
  var v10$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v22$1: bool;
  var v22$2: bool;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: bool;
  var v25$2: bool;
  var v26$1: int;
  var v26$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_AND(v0$1, 31);
    v1$2 := BV32_AND(v0$2, 31);
    v2$1 := BV32_ADD(BV32_MUL(group_id_x$1, BV32_UDIV(group_size_x, 32)), BV32_SDIV(v0$1, 32));
    v2$2 := BV32_ADD(BV32_MUL(group_id_x$2, BV32_UDIV(group_size_x, 32)), BV32_SDIV(v0$2, 32));
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(true, v0$1, 0, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(true, v0$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := 0;
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := 0;
    v3$1 := BV32_SLT(v2$1, $dim);
    v3$2 := BV32_SLT(v2$2, $dim);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p15$1 := false;
    p15$2 := false;
    p0$1 := (if v3$1 then v3$1 else p0$1);
    p0$2 := (if v3$2 then v3$2 else p0$2);
    v4$1 := (if p0$1 then $$rowDelimiters[v2$1] else v4$1);
    v4$2 := (if p0$2 then $$rowDelimiters[v2$2] else v4$2);
    v5$1 := (if p0$1 then $$rowDelimiters[BV32_ADD(v2$1, 1)] else v5$1);
    v5$2 := (if p0$2 then $$rowDelimiters[BV32_ADD(v2$2, 1)] else v5$2);
    $mySum.0$1, $j.0$1 := (if p0$1 then 0 else $mySum.0$1), (if p0$1 then BV32_ADD(v4$1, v1$1) else $j.0$1);
    $mySum.0$2, $j.0$2 := (if p0$2 then 0 else $mySum.0$2), (if p0$2 then BV32_ADD(v4$2, v1$2) else $j.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:block_sourceloc} {:sourceloc_num 6} p1$1 ==> true;
    v6$1 := (if p1$1 then BV32_SLT($j.0$1, v5$1) else v6$1);
    v6$2 := (if p1$2 then BV32_SLT($j.0$2, v5$2) else v6$2);
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
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p2$1 := (if p1$1 && v6$1 then v6$1 else p2$1);
    p2$2 := (if p1$2 && v6$2 then v6$2 else p2$2);
    p1$1 := (if p1$1 && !v6$1 then v6$1 else p1$1);
    p1$2 := (if p1$2 && !v6$2 then v6$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p2$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p2$2 then _HAVOC_int$2 else v7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p2$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p2$2 then _HAVOC_int$2 else v8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p2$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p2$2 then _HAVOC_int$2 else v9$2);
    $mySum.0$1, $j.0$1 := (if p2$1 then FADD32($mySum.0$1, FMUL32(v8$1, v9$1)) else $mySum.0$1), (if p2$1 then BV32_ADD($j.0$1, 32) else $j.0$1);
    $mySum.0$2, $j.0$2 := (if p2$2 then FADD32($mySum.0$2, FMUL32(v8$2, v9$2)) else $mySum.0$2), (if p2$2 then BV32_ADD($j.0$2, 32) else $j.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p0$1, v0$1, $mySum.0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p0$2, v0$2, $mySum.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p0$1 then $mySum.0$1 else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p0$2 then $mySum.0$2 else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(-1, 0, p0$1, p0$2);
    v10$1 := (if p0$1 then BV32_SLT(v1$1, 16) else v10$1);
    v10$2 := (if p0$2 then BV32_SLT(v1$2, 16) else v10$2);
    p3$1 := (if p0$1 && v10$1 then v10$1 else p3$1);
    p3$2 := (if p0$2 && v10$2 then v10$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p3$1, BV32_ADD(v0$1, 16), $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 16)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p3$2, BV32_ADD(v0$2, 16), $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 16)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v11$1 := (if p3$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 16)] else v11$1);
    v11$2 := (if p3$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 16)] else v11$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p3$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p3$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v12$1 := (if p3$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v12$1);
    v12$2 := (if p3$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v12$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p3$1, v0$1, FADD32(v12$1, v11$1), $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p3$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p3$2, v0$2, FADD32(v12$2, v11$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p3$1 then FADD32(v12$1, v11$1) else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p3$2 then FADD32(v12$2, v11$2) else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_2;

  __partitioned_block_$2.tail_2:
    call {:sourceloc_num 20} $bugle_barrier_duplicated_1(-1, 0, p0$1, p0$2);
    v13$1 := (if p0$1 then BV32_SLT(v1$1, 8) else v13$1);
    v13$2 := (if p0$2 then BV32_SLT(v1$2, 8) else v13$2);
    p5$1 := (if p0$1 && v13$1 then v13$1 else p5$1);
    p5$2 := (if p0$2 && v13$2 then v13$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p5$1, BV32_ADD(v0$1, 8), $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 8)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p5$2, BV32_ADD(v0$2, 8), $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 8)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v14$1 := (if p5$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 8)] else v14$1);
    v14$2 := (if p5$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 8)] else v14$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p5$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p5$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v15$1 := (if p5$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v15$1);
    v15$2 := (if p5$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v15$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p5$1, v0$1, FADD32(v15$1, v14$1), $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p5$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p5$2, v0$2, FADD32(v15$2, v14$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p5$1 then FADD32(v15$1, v14$1) else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p5$2 then FADD32(v15$2, v14$2) else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_3;

  __partitioned_block_$2.tail_3:
    call {:sourceloc_num 26} $bugle_barrier_duplicated_2(-1, 0, p0$1, p0$2);
    v16$1 := (if p0$1 then BV32_SLT(v1$1, 4) else v16$1);
    v16$2 := (if p0$2 then BV32_SLT(v1$2, 4) else v16$2);
    p7$1 := (if p0$1 && v16$1 then v16$1 else p7$1);
    p7$2 := (if p0$2 && v16$2 then v16$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p7$1, BV32_ADD(v0$1, 4), $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p7$2, BV32_ADD(v0$2, 4), $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v17$1 := (if p7$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 4)] else v17$1);
    v17$2 := (if p7$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 4)] else v17$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p7$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p7$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v18$1 := (if p7$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v18$1);
    v18$2 := (if p7$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v18$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p7$1, v0$1, FADD32(v18$1, v17$1), $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p7$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p7$2, v0$2, FADD32(v18$2, v17$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p7$1 then FADD32(v18$1, v17$1) else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p7$2 then FADD32(v18$2, v17$2) else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_4;

  __partitioned_block_$2.tail_4:
    call {:sourceloc_num 32} $bugle_barrier_duplicated_3(-1, 0, p0$1, p0$2);
    v19$1 := (if p0$1 then BV32_SLT(v1$1, 2) else v19$1);
    v19$2 := (if p0$2 then BV32_SLT(v1$2, 2) else v19$2);
    p9$1 := (if p0$1 && v19$1 then v19$1 else p9$1);
    p9$2 := (if p0$2 && v19$2 then v19$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p9$1, BV32_ADD(v0$1, 2), $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 2)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p9$2, BV32_ADD(v0$2, 2), $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v20$1 := (if p9$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 2)] else v20$1);
    v20$2 := (if p9$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 2)] else v20$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p9$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p9$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v21$1 := (if p9$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v21$1);
    v21$2 := (if p9$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v21$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p9$1, v0$1, FADD32(v21$1, v20$1), $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p9$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p9$2, v0$2, FADD32(v21$2, v20$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p9$1 then FADD32(v21$1, v20$1) else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p9$2 then FADD32(v21$2, v20$2) else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_5;

  __partitioned_block_$2.tail_5:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_4(-1, 0, p0$1, p0$2);
    v22$1 := (if p0$1 then BV32_SLT(v1$1, 1) else v22$1);
    v22$2 := (if p0$2 then BV32_SLT(v1$2, 1) else v22$2);
    p11$1 := (if p0$1 && v22$1 then v22$1 else p11$1);
    p11$2 := (if p0$2 && v22$2 then v22$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p11$1, BV32_ADD(v0$1, 1), $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p11$2, BV32_ADD(v0$2, 1), $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v23$1 := (if p11$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][BV32_ADD(v0$1, 1)] else v23$1);
    v23$2 := (if p11$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v0$2, 1)] else v23$2);
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p11$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p11$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v24$1 := (if p11$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v24$1);
    v24$2 := (if p11$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v24$2);
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(p11$1, v0$1, FADD32(v24$1, v23$1), $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(p11$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(p11$2, v0$2, FADD32(v24$2, v23$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums"} true;
    $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] := (if p11$1 then FADD32(v24$1, v23$1) else $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] := (if p11$2 then FADD32(v24$2, v23$2) else $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    goto __partitioned_block_$2.tail_6;

  __partitioned_block_$2.tail_6:
    call {:sourceloc_num 44} $bugle_barrier_duplicated_5(-1, 0, p0$1, p0$2);
    v25$1 := (if p0$1 then v1$1 == 0 else v25$1);
    v25$2 := (if p0$2 then v1$2 == 0 else v25$2);
    p13$1 := (if p0$1 && v25$1 then v25$1 else p13$1);
    p13$2 := (if p0$2 && v25$2 then v25$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(p13$1, v0$1, $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(p13$2, v0$2, $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$spmv_csr_vector_kernel.partialSums"} true;
    v26$1 := (if p13$1 then $$spmv_csr_vector_kernel.partialSums[1bv1][v0$1] else v26$1);
    v26$2 := (if p13$2 then $$spmv_csr_vector_kernel.partialSums[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v0$2] else v26$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$out(p13$1, v2$1, v26$1, $$out[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$out(p13$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$out(p13$2, v2$2, v26$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$out"} true;
    $$out[v2$1] := (if p13$1 then v26$1 else $$out[v2$1]);
    $$out[v2$2] := (if p13$2 then v26$2 else $$out[v2$2]);
    return;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

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

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $1 == 0;
  requires _P$2 ==> $1 == 0;
  requires {:barrier_divergence} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 == _P$2;
  modifies $$spmv_csr_vector_kernel.partialSums, $$out, _TRACKING;



const _WATCHED_VALUE_$$val: int;

procedure {:inline 1} _LOG_READ_$$val(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$val;



implementation {:inline 1} _LOG_READ_$$val(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$val := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$val == _value then true else _READ_HAS_OCCURRED_$$val);
    return;
}



procedure _CHECK_READ_$$val(_P: bool, _offset: int, _value: int);
  requires {:source_name "val"} {:array "$$val"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$val);
  requires {:source_name "val"} {:array "$$val"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$val: bool;

procedure {:inline 1} _LOG_WRITE_$$val(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$val, _WRITE_READ_BENIGN_FLAG_$$val;



implementation {:inline 1} _LOG_WRITE_$$val(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$val := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$val == _value then true else _WRITE_HAS_OCCURRED_$$val);
    _WRITE_READ_BENIGN_FLAG_$$val := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$val == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$val);
    return;
}



procedure _CHECK_WRITE_$$val(_P: bool, _offset: int, _value: int);
  requires {:source_name "val"} {:array "$$val"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$val != _value);
  requires {:source_name "val"} {:array "$$val"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$val != _value);
  requires {:source_name "val"} {:array "$$val"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$val(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$val;



implementation {:inline 1} _LOG_ATOMIC_$$val(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$val := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$val);
    return;
}



procedure _CHECK_ATOMIC_$$val(_P: bool, _offset: int);
  requires {:source_name "val"} {:array "$$val"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset);
  requires {:source_name "val"} {:array "$$val"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$val(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$val;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$val(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$val := (if _P && _WRITE_HAS_OCCURRED_$$val && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$val);
    return;
}



const _WATCHED_VALUE_$$vec: int;

procedure {:inline 1} _LOG_READ_$$vec(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$vec;



implementation {:inline 1} _LOG_READ_$$vec(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vec == _value then true else _READ_HAS_OCCURRED_$$vec);
    return;
}



procedure _CHECK_READ_$$vec(_P: bool, _offset: int, _value: int);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$vec);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$vec: bool;

procedure {:inline 1} _LOG_WRITE_$$vec(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$vec, _WRITE_READ_BENIGN_FLAG_$$vec;



implementation {:inline 1} _LOG_WRITE_$$vec(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vec == _value then true else _WRITE_HAS_OCCURRED_$$vec);
    _WRITE_READ_BENIGN_FLAG_$$vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vec == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$vec);
    return;
}



procedure _CHECK_WRITE_$$vec(_P: bool, _offset: int, _value: int);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vec != _value);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$vec != _value);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$vec(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$vec;



implementation {:inline 1} _LOG_ATOMIC_$$vec(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$vec := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$vec);
    return;
}



procedure _CHECK_ATOMIC_$$vec(_P: bool, _offset: int);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset);
  requires {:source_name "vec"} {:array "$$vec"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vec(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$vec;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$vec(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$vec := (if _P && _WRITE_HAS_OCCURRED_$$vec && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$vec);
    return;
}



const _WATCHED_VALUE_$$cols: int;

procedure {:inline 1} _LOG_READ_$$cols(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$cols;



implementation {:inline 1} _LOG_READ_$$cols(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cols := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cols == _value then true else _READ_HAS_OCCURRED_$$cols);
    return;
}



procedure _CHECK_READ_$$cols(_P: bool, _offset: int, _value: int);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cols);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cols: bool;

procedure {:inline 1} _LOG_WRITE_$$cols(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$cols, _WRITE_READ_BENIGN_FLAG_$$cols;



implementation {:inline 1} _LOG_WRITE_$$cols(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cols := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cols == _value then true else _WRITE_HAS_OCCURRED_$$cols);
    _WRITE_READ_BENIGN_FLAG_$$cols := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cols == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cols);
    return;
}



procedure _CHECK_WRITE_$$cols(_P: bool, _offset: int, _value: int);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cols != _value);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cols != _value);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cols(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$cols;



implementation {:inline 1} _LOG_ATOMIC_$$cols(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cols := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cols);
    return;
}



procedure _CHECK_ATOMIC_$$cols(_P: bool, _offset: int);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset);
  requires {:source_name "cols"} {:array "$$cols"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cols(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$cols;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cols(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cols := (if _P && _WRITE_HAS_OCCURRED_$$cols && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cols);
    return;
}



const _WATCHED_VALUE_$$rowDelimiters: int;

procedure {:inline 1} _LOG_READ_$$rowDelimiters(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$rowDelimiters;



implementation {:inline 1} _LOG_READ_$$rowDelimiters(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$rowDelimiters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rowDelimiters == _value then true else _READ_HAS_OCCURRED_$$rowDelimiters);
    return;
}



procedure _CHECK_READ_$$rowDelimiters(_P: bool, _offset: int, _value: int);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$rowDelimiters);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$rowDelimiters: bool;

procedure {:inline 1} _LOG_WRITE_$$rowDelimiters(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$rowDelimiters, _WRITE_READ_BENIGN_FLAG_$$rowDelimiters;



implementation {:inline 1} _LOG_WRITE_$$rowDelimiters(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$rowDelimiters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rowDelimiters == _value then true else _WRITE_HAS_OCCURRED_$$rowDelimiters);
    _WRITE_READ_BENIGN_FLAG_$$rowDelimiters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rowDelimiters == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$rowDelimiters);
    return;
}



procedure _CHECK_WRITE_$$rowDelimiters(_P: bool, _offset: int, _value: int);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rowDelimiters != _value);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$rowDelimiters != _value);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$rowDelimiters(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$rowDelimiters;



implementation {:inline 1} _LOG_ATOMIC_$$rowDelimiters(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$rowDelimiters := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$rowDelimiters);
    return;
}



procedure _CHECK_ATOMIC_$$rowDelimiters(_P: bool, _offset: int);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset);
  requires {:source_name "rowDelimiters"} {:array "$$rowDelimiters"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rowDelimiters(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$rowDelimiters;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$rowDelimiters(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$rowDelimiters := (if _P && _WRITE_HAS_OCCURRED_$$rowDelimiters && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$rowDelimiters);
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



const _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums: int;

procedure {:inline 1} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;



implementation {:inline 1} _LOG_READ_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums == _value then true else _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums);
    return;
}



procedure _CHECK_READ_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums: bool;

procedure {:inline 1} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums, _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums;



implementation {:inline 1} _LOG_WRITE_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums == _value then true else _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums);
    _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums);
    return;
}



procedure _CHECK_WRITE_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int, _value: int);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$spmv_csr_vector_kernel.partialSums != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;



implementation {:inline 1} _LOG_ATOMIC_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums);
    return;
}



procedure _CHECK_ATOMIC_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "partialSums"} {:array "$$spmv_csr_vector_kernel.partialSums"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums := (if _P && _WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$spmv_csr_vector_kernel.partialSums);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$spmv_csr_vector_kernel.partialSums;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$out;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$out;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$out;
    goto anon6;

  anon8_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$spmv_csr_vector_kernel.partialSums;
    goto anon3;

  anon7_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
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
