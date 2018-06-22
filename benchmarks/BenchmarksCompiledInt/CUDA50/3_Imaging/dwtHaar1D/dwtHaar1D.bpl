type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$id"} {:global} {:elem_width 32} {:source_name "id"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$id: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$id: bool;

var {:source_name "od"} {:global} $$od: [int]int;

axiom {:array_info "$$od"} {:global} {:elem_width 32} {:source_name "od"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$od: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$od: bool;

var {:source_name "approx_final"} {:global} $$approx_final: [int]int;

axiom {:array_info "$$approx_final"} {:global} {:elem_width 32} {:source_name "approx_final"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$approx_final: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$approx_final: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$approx_final: bool;

var {:source_name "shared"} {:group_shared} $$shared: [bv1][int]int;

axiom {:array_info "$$shared"} {:group_shared} {:elem_width 32} {:source_name "shared"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$shared: bool;

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

function BV32_ASHR(int, int) : int;

function BV32_LSHR(int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "dwtHaar1D"} {:kernel} $_Z9dwtHaar1DPfS_S_jji($dlevels: int, $slength_step_half: int, $bdim: int);
  requires {:sourceloc_num 0} {:thread 1} (if $slength_step_half == 2048 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $bdim == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$id && !_WRITE_HAS_OCCURRED_$$id && !_ATOMIC_HAS_OCCURRED_$$id;
  requires !_READ_HAS_OCCURRED_$$od && !_WRITE_HAS_OCCURRED_$$od && !_ATOMIC_HAS_OCCURRED_$$od;
  requires !_READ_HAS_OCCURRED_$$approx_final && !_WRITE_HAS_OCCURRED_$$approx_final && !_ATOMIC_HAS_OCCURRED_$$approx_final;
  requires !_READ_HAS_OCCURRED_$$shared && !_WRITE_HAS_OCCURRED_$$shared && !_ATOMIC_HAS_OCCURRED_$$shared;
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
  modifies $$shared, _WRITE_HAS_OCCURRED_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, $$od, $$approx_final, _TRACKING, _READ_HAS_OCCURRED_$$shared, _TRACKING, _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _WRITE_READ_BENIGN_FLAG_$$od, _TRACKING, _WRITE_HAS_OCCURRED_$$approx_final, _WRITE_READ_BENIGN_FLAG_$$approx_final, _WRITE_READ_BENIGN_FLAG_$$approx_final, _TRACKING;



implementation {:source_name "dwtHaar1D"} {:kernel} $_Z9dwtHaar1DPfS_S_jji($dlevels: int, $slength_step_half: int, $bdim: int)
{
  var $offset_neighbor.0$1: int;
  var $offset_neighbor.0$2: int;
  var $num_threads.0$1: int;
  var $num_threads.0$2: int;
  var $idata0.0$1: int;
  var $idata0.0$2: int;
  var $i.0: int;
  var $offset_neighbor.1$1: int;
  var $offset_neighbor.1$2: int;
  var $num_threads.1$1: int;
  var $num_threads.1$2: int;
  var $idata0.1$1: int;
  var $idata0.1$2: int;
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
  var v5: bool;
  var v6: bool;
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
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
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


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, BV32_MUL(2, $bdim)), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, BV32_MUL(2, $bdim)), local_id_x$2);
    havoc v1$1, v1$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$shared(true, local_id_x$1, v1$1, $$shared[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$shared(true, local_id_x$2, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][local_id_x$1] := v1$1;
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v1$2;
    havoc v2$1, v2$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$shared(true, BV32_ADD(local_id_x$1, $bdim), v2$1, $$shared[1bv1][BV32_ADD(local_id_x$1, $bdim)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(true, BV32_ADD(local_id_x$2, $bdim));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$shared(true, BV32_ADD(local_id_x$2, $bdim), v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_ADD(local_id_x$1, $bdim)] := v2$1;
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, $bdim)] := v2$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 7} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$shared(true, BV32_MUL(2, local_id_x$1), $$shared[1bv1][BV32_MUL(2, local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$shared(true, BV32_MUL(2, local_id_x$2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(2, local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v3$1 := $$shared[1bv1][BV32_MUL(2, local_id_x$1)];
    v3$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(2, local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL(2, local_id_x$1), 1), $$shared[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL(2, local_id_x$2), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2, local_id_x$2), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v4$1 := $$shared[1bv1][BV32_ADD(BV32_MUL(2, local_id_x$1), 1)];
    v4$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(2, local_id_x$2), 1)];
    goto __partitioned_block_$0_2;

  __partitioned_block_$0_2:
    call {:sourceloc_num 10} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$od(true, BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, $bdim), local_id_x$1), $slength_step_half), FMUL32(FSUB32(v3$1, v4$1), 1060439283), $$od[BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, $bdim), local_id_x$1), $slength_step_half)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(true, BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, $bdim), local_id_x$2), $slength_step_half));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$od(true, BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, $bdim), local_id_x$2), $slength_step_half), FMUL32(FSUB32(v3$2, v4$2), 1060439283));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, $bdim), local_id_x$1), $slength_step_half)] := FMUL32(FSUB32(v3$1, v4$1), 1060439283);
    $$od[BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, $bdim), local_id_x$2), $slength_step_half)] := FMUL32(FSUB32(v3$2, v4$2), 1060439283);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$shared(true, BV32_ADD(local_id_x$1, BV32_ASHR(local_id_x$1, 4)), FMUL32(FADD32(v3$1, v4$1), 1060439283), $$shared[1bv1][BV32_ADD(local_id_x$1, BV32_ASHR(local_id_x$1, 4))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(true, BV32_ADD(local_id_x$2, BV32_ASHR(local_id_x$2, 4)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$shared(true, BV32_ADD(local_id_x$2, BV32_ASHR(local_id_x$2, 4)), FMUL32(FADD32(v3$2, v4$2), 1060439283));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_ADD(local_id_x$1, BV32_ASHR(local_id_x$1, 4))] := FMUL32(FADD32(v3$1, v4$1), 1060439283);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, BV32_ASHR(local_id_x$2, 4))] := FMUL32(FADD32(v3$2, v4$2), 1060439283);
    goto __partitioned_block_$0_3;

  __partitioned_block_$0_3:
    call {:sourceloc_num 13} $bugle_barrier_duplicated_2(-1, -1);
    v5 := BV32_UGT($dlevels, 1);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v5;
    goto $10;

  $10:
    return;

  $truebb:
    assume {:partition} v5;
    $offset_neighbor.0$1, $num_threads.0$1, $idata0.0$1, $i.0 := 1, BV32_ASHR($bdim, 1), BV32_MUL(local_id_x$1, 2), 1;
    $offset_neighbor.0$2, $num_threads.0$2, $idata0.0$2 := 1, BV32_ASHR($bdim, 1), BV32_MUL(local_id_x$2, 2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "nowrite"} _b35 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assert {:tag "noread"} _b34 ==> !_READ_HAS_OCCURRED_$$shared;
    assert {:tag "nowrite"} _b33 ==> !_WRITE_HAS_OCCURRED_$$od;
    assert {:tag "pow2NotZero"} _b32 ==> $idata0.1$2 != 0;
    assert {:tag "pow2"} _b31 ==> $idata0.1$2 == 0 || BV32_AND($idata0.1$2, BV32_SUB($idata0.1$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b30 ==> $idata0.1$1 != 0;
    assert {:tag "pow2"} _b29 ==> $idata0.1$1 == 0 || BV32_AND($idata0.1$1, BV32_SUB($idata0.1$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b28 ==> $num_threads.1$2 != 0;
    assert {:tag "pow2"} _b27 ==> $num_threads.1$2 == 0 || BV32_AND($num_threads.1$2, BV32_SUB($num_threads.1$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b26 ==> $num_threads.1$1 != 0;
    assert {:tag "pow2"} _b25 ==> $num_threads.1$1 == 0 || BV32_AND($num_threads.1$1, BV32_SUB($num_threads.1$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b24 ==> $offset_neighbor.1$2 != 0;
    assert {:tag "pow2"} _b23 ==> $offset_neighbor.1$2 == 0 || BV32_AND($offset_neighbor.1$2, BV32_SUB($offset_neighbor.1$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b22 ==> $offset_neighbor.1$1 != 0;
    assert {:tag "pow2"} _b21 ==> $offset_neighbor.1$1 == 0 || BV32_AND($offset_neighbor.1$1, BV32_SUB($offset_neighbor.1$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b20 ==> $idata0.0$2 != 0;
    assert {:tag "pow2"} _b19 ==> $idata0.0$2 == 0 || BV32_AND($idata0.0$2, BV32_SUB($idata0.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b18 ==> $idata0.0$1 != 0;
    assert {:tag "pow2"} _b17 ==> $idata0.0$1 == 0 || BV32_AND($idata0.0$1, BV32_SUB($idata0.0$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b16 ==> $num_threads.0$2 != 0;
    assert {:tag "pow2"} _b15 ==> $num_threads.0$2 == 0 || BV32_AND($num_threads.0$2, BV32_SUB($num_threads.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b14 ==> $num_threads.0$1 != 0;
    assert {:tag "pow2"} _b13 ==> $num_threads.0$1 == 0 || BV32_AND($num_threads.0$1, BV32_SUB($num_threads.0$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b12 ==> $offset_neighbor.0$2 != 0;
    assert {:tag "pow2"} _b11 ==> $offset_neighbor.0$2 == 0 || BV32_AND($offset_neighbor.0$2, BV32_SUB($offset_neighbor.0$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b10 ==> $offset_neighbor.0$1 != 0;
    assert {:tag "pow2"} _b9 ==> $offset_neighbor.0$1 == 0 || BV32_AND($offset_neighbor.0$1, BV32_SUB($offset_neighbor.0$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_UGE($num_threads.0$1, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 2} _b8 ==> BV32_UGE($num_threads.0$2, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_ULE($num_threads.0$1, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 2} _b7 ==> BV32_ULE($num_threads.0$2, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SGE($num_threads.0$1, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 2} _b6 ==> BV32_SGE($num_threads.0$2, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SLE($num_threads.0$1, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 2} _b5 ==> BV32_SLE($num_threads.0$2, BV32_ASHR($bdim, 1));
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.0, 1);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $i.0 mod 1 == 1 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 15} true;
    assert {:originated_from_invariant} {:sourceloc_num 16} {:thread 1} (if BV32_ULT(local_id_x$1, $num_threads.0$1) ==> $num_threads.0$1 == BV32_ASHR($bdim, $i.0) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 16} {:thread 2} (if BV32_ULT(local_id_x$2, $num_threads.0$2) ==> $num_threads.0$2 == BV32_ASHR($bdim, $i.0) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 17} {:thread 1} (if BV32_ULT(local_id_x$1, $num_threads.0$1) ==> $offset_neighbor.0$1 == BV32_SHL(1, BV32_SUB($i.0, 1)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 17} {:thread 2} (if BV32_ULT(local_id_x$2, $num_threads.0$2) ==> $offset_neighbor.0$2 == BV32_SHL(1, BV32_SUB($i.0, 1)) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 18} {:thread 1} (if BV32_ULT(local_id_x$1, $num_threads.0$1) ==> $idata0.0$1 == BV32_SHL(local_id_x$1, $i.0) then 1 else 0) != 0;
    assert {:originated_from_invariant} {:sourceloc_num 18} {:thread 2} (if BV32_ULT(local_id_x$2, $num_threads.0$2) ==> $idata0.0$2 == BV32_SHL(local_id_x$2, $i.0) then 1 else 0) != 0;
    v6 := BV32_ULT($i.0, $dlevels);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    v15$1 := 0 == local_id_x$1;
    v15$2 := 0 == local_id_x$2;
    p2$1 := (if v15$1 then v15$1 else p2$1);
    p2$2 := (if v15$2 then v15$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$shared(p2$1, 0, $$shared[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$shared(p2$2, 0, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v16$1 := (if p2$1 then $$shared[1bv1][0] else v16$1);
    v16$2 := (if p2$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v16$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$approx_final(p2$1, group_id_x$1, v16$1, $$approx_final[group_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$approx_final(p2$2, group_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$approx_final(p2$2, group_id_x$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$approx_final"} true;
    $$approx_final[group_id_x$1] := (if p2$1 then v16$1 else $$approx_final[group_id_x$1]);
    $$approx_final[group_id_x$2] := (if p2$2 then v16$2 else $$approx_final[group_id_x$2]);
    goto $10;

  __partitioned_block_$truebb0_0:
    assume {:partition} v6;
    v7$1 := BV32_ULT(local_id_x$1, $num_threads.0$1);
    v7$2 := BV32_ULT(local_id_x$2, $num_threads.0$2);
    p1$1 := (if v7$1 then v7$1 else p1$1);
    p1$2 := (if v7$2 then v7$2 else p1$2);
    p0$1 := (if !v7$1 then !v7$1 else p0$1);
    p0$2 := (if !v7$2 then !v7$2 else p0$2);
    $offset_neighbor.1$1, $num_threads.1$1, $idata0.1$1 := (if p0$1 then $offset_neighbor.0$1 else $offset_neighbor.1$1), (if p0$1 then $num_threads.0$1 else $num_threads.1$1), (if p0$1 then $idata0.0$1 else $idata0.1$1);
    $offset_neighbor.1$2, $num_threads.1$2, $idata0.1$2 := (if p0$2 then $offset_neighbor.0$2 else $offset_neighbor.1$2), (if p0$2 then $num_threads.0$2 else $num_threads.1$2), (if p0$2 then $idata0.0$2 else $idata0.1$2);
    v8$1 := (if p1$1 then BV32_ADD($idata0.0$1, $offset_neighbor.0$1) else v8$1);
    v8$2 := (if p1$2 then BV32_ADD($idata0.0$2, $offset_neighbor.0$2) else v8$2);
    v9$1 := (if p1$1 then BV32_ADD($idata0.0$1, BV32_LSHR($idata0.0$1, 4)) else v9$1);
    v9$2 := (if p1$2 then BV32_ADD($idata0.0$2, BV32_LSHR($idata0.0$2, 4)) else v9$2);
    v10$1 := (if p1$1 then BV32_ADD(v8$1, BV32_LSHR(v8$1, 4)) else v10$1);
    v10$2 := (if p1$2 then BV32_ADD(v8$2, BV32_LSHR(v8$2, 4)) else v10$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$shared(p1$1, v9$1, $$shared[1bv1][v9$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$shared(p1$2, v9$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v11$1 := (if p1$1 then $$shared[1bv1][v9$1] else v11$1);
    v11$2 := (if p1$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2] else v11$2);
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$shared(p1$1, v10$1, $$shared[1bv1][v10$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$shared(p1$2, v10$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v10$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v12$1 := (if p1$1 then $$shared[1bv1][v10$1] else v12$1);
    v12$2 := (if p1$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v10$2] else v12$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$od(p1$1, BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$1, num_groups_x), BV32_MUL(group_id_x$1, $num_threads.0$1)), local_id_x$1), FMUL32(FSUB32(v11$1, v12$1), 1060439283), $$od[BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$1, num_groups_x), BV32_MUL(group_id_x$1, $num_threads.0$1)), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(p1$2, BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$2, num_groups_x), BV32_MUL(group_id_x$2, $num_threads.0$2)), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$od(p1$2, BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$2, num_groups_x), BV32_MUL(group_id_x$2, $num_threads.0$2)), local_id_x$2), FMUL32(FSUB32(v11$2, v12$2), 1060439283));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$od"} true;
    $$od[BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$1, num_groups_x), BV32_MUL(group_id_x$1, $num_threads.0$1)), local_id_x$1)] := (if p1$1 then FMUL32(FSUB32(v11$1, v12$1), 1060439283) else $$od[BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$1, num_groups_x), BV32_MUL(group_id_x$1, $num_threads.0$1)), local_id_x$1)]);
    $$od[BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$2, num_groups_x), BV32_MUL(group_id_x$2, $num_threads.0$2)), local_id_x$2)] := (if p1$2 then FMUL32(FSUB32(v11$2, v12$2), 1060439283) else $$od[BV32_ADD(BV32_ADD(BV32_MUL($num_threads.0$2, num_groups_x), BV32_MUL(group_id_x$2, $num_threads.0$2)), local_id_x$2)]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$shared(p1$1, v9$1, $$shared[1bv1][v9$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$shared(p1$2, v9$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v13$1 := (if p1$1 then $$shared[1bv1][v9$1] else v13$1);
    v13$2 := (if p1$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2] else v13$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$shared(p1$1, v10$1, $$shared[1bv1][v10$1]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$shared(p1$2, v10$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v10$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v14$1 := (if p1$1 then $$shared[1bv1][v10$1] else v14$1);
    v14$2 := (if p1$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v10$2] else v14$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$shared(p1$1, v9$1, FMUL32(FADD32(v13$1, v14$1), 1060439283), $$shared[1bv1][v9$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p1$2, v9$2);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$shared(p1$2, v9$2, FMUL32(FADD32(v13$2, v14$2), 1060439283));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][v9$1] := (if p1$1 then FMUL32(FADD32(v13$1, v14$1), 1060439283) else $$shared[1bv1][v9$1]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2] := (if p1$2 then FMUL32(FADD32(v13$2, v14$2), 1060439283) else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2]);
    $offset_neighbor.1$1, $num_threads.1$1, $idata0.1$1 := (if p1$1 then BV32_SHL($offset_neighbor.0$1, 1) else $offset_neighbor.1$1), (if p1$1 then BV32_LSHR($num_threads.0$1, 1) else $num_threads.1$1), (if p1$1 then BV32_SHL($idata0.0$1, 1) else $idata0.1$1);
    $offset_neighbor.1$2, $num_threads.1$2, $idata0.1$2 := (if p1$2 then BV32_SHL($offset_neighbor.0$2, 1) else $offset_neighbor.1$2), (if p1$2 then BV32_LSHR($num_threads.0$2, 1) else $num_threads.1$2), (if p1$2 then BV32_SHL($idata0.0$2, 1) else $idata0.1$2);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 28} $bugle_barrier_duplicated_3(-1, -1);
    $offset_neighbor.0$1, $num_threads.0$1, $idata0.0$1, $i.0 := $offset_neighbor.1$1, $num_threads.1$1, $idata0.1$1, BV32_ADD($i.0, 1);
    $offset_neighbor.0$2, $num_threads.0$2, $idata0.0$2 := $offset_neighbor.1$2, $num_threads.1$2, $idata0.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$shared, $$od, $$approx_final, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$shared, $$od, $$approx_final, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$shared, $$od, $$approx_final, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  modifies $$shared, $$od, $$approx_final, _TRACKING;



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

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const _WATCHED_VALUE_$$id: int;

procedure {:inline 1} _LOG_READ_$$id(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_READ_$$id(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _READ_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_READ_$$id(_P: bool, _offset: int, _value: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$id);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$id: bool;

procedure {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$id, _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _LOG_WRITE_$$id(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then true else _WRITE_HAS_OCCURRED_$$id);
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



procedure _CHECK_WRITE_$$id(_P: bool, _offset: int, _value: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$id != _value);
  requires {:source_name "id"} {:array "$$id"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$id;



implementation {:inline 1} _LOG_ATOMIC_$$id(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$id := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$id);
    return;
}



procedure _CHECK_ATOMIC_$$id(_P: bool, _offset: int);
  requires {:source_name "id"} {:array "$$id"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);
  requires {:source_name "id"} {:array "$$id"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$id;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$id(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$id := (if _P && _WRITE_HAS_OCCURRED_$$id && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$id);
    return;
}



const _WATCHED_VALUE_$$od: int;

procedure {:inline 1} _LOG_READ_$$od(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_READ_$$od(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _READ_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_READ_$$od(_P: bool, _offset: int, _value: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$od);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$od: bool;

procedure {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$od, _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _LOG_WRITE_$$od(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then true else _WRITE_HAS_OCCURRED_$$od);
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



procedure _CHECK_WRITE_$$od(_P: bool, _offset: int, _value: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$od != _value);
  requires {:source_name "od"} {:array "$$od"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$od;



implementation {:inline 1} _LOG_ATOMIC_$$od(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$od := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$od);
    return;
}



procedure _CHECK_ATOMIC_$$od(_P: bool, _offset: int);
  requires {:source_name "od"} {:array "$$od"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);
  requires {:source_name "od"} {:array "$$od"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$od;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$od(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$od := (if _P && _WRITE_HAS_OCCURRED_$$od && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$od);
    return;
}



const _WATCHED_VALUE_$$approx_final: int;

procedure {:inline 1} _LOG_READ_$$approx_final(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$approx_final;



implementation {:inline 1} _LOG_READ_$$approx_final(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$approx_final := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$approx_final == _value then true else _READ_HAS_OCCURRED_$$approx_final);
    return;
}



procedure _CHECK_READ_$$approx_final(_P: bool, _offset: int, _value: int);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$approx_final);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$approx_final: bool;

procedure {:inline 1} _LOG_WRITE_$$approx_final(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$approx_final, _WRITE_READ_BENIGN_FLAG_$$approx_final;



implementation {:inline 1} _LOG_WRITE_$$approx_final(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$approx_final := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$approx_final == _value then true else _WRITE_HAS_OCCURRED_$$approx_final);
    _WRITE_READ_BENIGN_FLAG_$$approx_final := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$approx_final == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$approx_final);
    return;
}



procedure _CHECK_WRITE_$$approx_final(_P: bool, _offset: int, _value: int);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$approx_final != _value);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$approx_final != _value);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$approx_final(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$approx_final;



implementation {:inline 1} _LOG_ATOMIC_$$approx_final(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$approx_final := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$approx_final);
    return;
}



procedure _CHECK_ATOMIC_$$approx_final(_P: bool, _offset: int);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset);
  requires {:source_name "approx_final"} {:array "$$approx_final"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$approx_final(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$approx_final;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$approx_final(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$approx_final := (if _P && _WRITE_HAS_OCCURRED_$$approx_final && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$approx_final);
    return;
}



const _WATCHED_VALUE_$$shared: int;

procedure {:inline 1} _LOG_READ_$$shared(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$shared;



implementation {:inline 1} _LOG_READ_$$shared(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then true else _READ_HAS_OCCURRED_$$shared);
    return;
}



procedure _CHECK_READ_$$shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$shared && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$shared: bool;

procedure {:inline 1} _LOG_WRITE_$$shared(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared;



implementation {:inline 1} _LOG_WRITE_$$shared(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then true else _WRITE_HAS_OCCURRED_$$shared);
    _WRITE_READ_BENIGN_FLAG_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$shared);
    return;
}



procedure _CHECK_WRITE_$$shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$shared(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$shared;



implementation {:inline 1} _LOG_ATOMIC_$$shared(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$shared);
    return;
}



procedure _CHECK_ATOMIC_$$shared(_P: bool, _offset: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$shared;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$shared := (if _P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$shared);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$od;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$approx_final;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$od;
    goto anon7;

  anon7:
    havoc $$approx_final;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$od;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$approx_final;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$od;
    goto anon7;

  anon7:
    havoc $$approx_final;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$od;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$approx_final;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$od;
    goto anon7;

  anon7:
    havoc $$approx_final;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

  anon9_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$od;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$od;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$approx_final;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$approx_final;
    goto anon5;

  anon5:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon8;

  anon8:
    havoc _TRACKING;
    return;

  anon11_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$od;
    goto anon7;

  anon7:
    havoc $$approx_final;
    goto anon8;

  anon10_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

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

function BV32_AND(int, int) : int;

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
