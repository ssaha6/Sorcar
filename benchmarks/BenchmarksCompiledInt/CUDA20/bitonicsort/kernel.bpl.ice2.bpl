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
 b0017: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "values"} {:global} $$values: [int]int;

axiom {:array_info "$$values"} {:global} {:elem_width 32} {:source_name "values"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$values: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$values: bool;

var {:source_name "shared"} {:group_shared} $$shared: [bv1][int]int;

axiom {:array_info "$$shared"} {:group_shared} {:elem_width 32} {:source_name "shared"} {:source_elem_width 32} {:source_dimensions "32"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$shared: bool;

const _WATCHED_OFFSET: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "BitonicKernel"} {:kernel} $_Z13BitonicKernelPi();
  requires !_READ_HAS_OCCURRED_$$values && !_WRITE_HAS_OCCURRED_$$values && !_ATOMIC_HAS_OCCURRED_$$values;
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
  modifies $$shared, _READ_HAS_OCCURRED_$$values, _WRITE_HAS_OCCURRED_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, $$values, _TRACKING, _READ_HAS_OCCURRED_$$shared, _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _WRITE_READ_BENIGN_FLAG_$$values, _TRACKING;



implementation {:source_name "BitonicKernel"} {:kernel} $_Z13BitonicKernelPi()
{
  var $k.0: int;
  var $j.0: int;
  var v1: bool;
  var v2: bool;
  var v0$1: int;
  var v0$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: int;
  var v6$2: int;
  var v8$1: bool;
  var v8$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v14$1: bool;
  var v14$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
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


  __partitioned_block_$0_0:
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$values(true, local_id_x$1, $$values[local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$values(true, local_id_x$2, $$values[local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$values"} true;
    v0$1 := $$values[local_id_x$1];
    v0$2 := $$values[local_id_x$2];
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$shared(true, local_id_x$1, v0$1, $$shared[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$shared(true, local_id_x$2, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][local_id_x$1] := v0$1;
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v0$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 3} $bugle_barrier_duplicated_0(-1, -1);
    $k.0 := 2;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($k.0, 2) ) ,  (  BV32_SGE($k.0, 2) ) ,  (  BV32_ULE($k.0, 2) ) ,  (  BV32_UGE($k.0, 2) ) ,  true ,  true ,  true ,  true ,  (  $k.0 == 0 || BV32_AND($k.0, BV32_SUB($k.0, 1)) == 0 ) ,  (  $k.0 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$shared ) ,  (  !_WRITE_HAS_OCCURRED_$$shared ) ,  (  _READ_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 4} true;
    v1 := BV32_ULE($k.0, 32);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v1;
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$shared(true, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$shared(true, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v18$1 := $$shared[1bv1][local_id_x$1];
    v18$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$values(true, local_id_x$1, v18$1, $$values[local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$values(true, local_id_x$2, v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$values"} true;
    $$values[local_id_x$1] := v18$1;
    $$values[local_id_x$2] := v18$2;
    return;

  $truebb:
    assume {:partition} v1;
    $j.0 := BV32_UDIV($k.0, 2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  (  BV32_SLE($j.0, BV32_UDIV($k.0, 2)) ) ,  (  BV32_SGE($j.0, BV32_UDIV($k.0, 2)) ) ,  (  BV32_ULE($j.0, BV32_UDIV($k.0, 2)) ) ,  (  BV32_UGE($j.0, BV32_UDIV($k.0, 2)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  (  !_READ_HAS_OCCURRED_$$shared ) ,  (  !_WRITE_HAS_OCCURRED_$$shared ) ,  (  _READ_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 6} true;
    v2 := BV32_UGT($j.0, 0);
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
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v2;
    $k.0 := BV32_MUL($k.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  __partitioned_block_$truebb0_0:
    assume {:partition} v2;
    v3$1 := BV32_XOR(local_id_x$1, $j.0);
    v3$2 := BV32_XOR(local_id_x$2, $j.0);
    v4$1 := BV32_UGT(v3$1, local_id_x$1);
    v4$2 := BV32_UGT(v3$2, local_id_x$2);
    p1$1 := (if v4$1 then v4$1 else p1$1);
    p1$2 := (if v4$2 then v4$2 else p1$2);
    v5$1 := (if p1$1 then BV32_AND(local_id_x$1, $k.0) == 0 else v5$1);
    v5$2 := (if p1$2 then BV32_AND(local_id_x$2, $k.0) == 0 else v5$2);
    p2$1 := (if p1$1 && v5$1 then v5$1 else p2$1);
    p2$2 := (if p1$2 && v5$2 then v5$2 else p2$2);
    p5$1 := (if p1$1 && !v5$1 then !v5$1 else p5$1);
    p5$2 := (if p1$2 && !v5$2 then !v5$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$shared(p2$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$shared(p2$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v6$1 := (if p2$1 then $$shared[1bv1][local_id_x$1] else v6$1);
    v6$2 := (if p2$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v6$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$shared(p2$1, v3$1, $$shared[1bv1][v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$shared(p2$2, v3$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v7$1 := (if p2$1 then $$shared[1bv1][v3$1] else v7$1);
    v7$2 := (if p2$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] else v7$2);
    v8$1 := (if p2$1 then BV32_SGT(v6$1, v7$1) else v8$1);
    v8$2 := (if p2$2 then BV32_SGT(v6$2, v7$2) else v8$2);
    p4$1 := (if p2$1 && v8$1 then v8$1 else p4$1);
    p4$2 := (if p2$2 && v8$2 then v8$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$shared(p4$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$shared(p4$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v9$1 := (if p4$1 then $$shared[1bv1][local_id_x$1] else v9$1);
    v9$2 := (if p4$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v9$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$shared(p4$1, v3$1, $$shared[1bv1][v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$shared(p4$2, v3$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v10$1 := (if p4$1 then $$shared[1bv1][v3$1] else v10$1);
    v10$2 := (if p4$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] else v10$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$shared(p4$1, local_id_x$1, v10$1, $$shared[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p4$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$shared(p4$2, local_id_x$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][local_id_x$1] := (if p4$1 then v10$1 else $$shared[1bv1][local_id_x$1]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p4$2 then v10$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$shared(p4$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$shared(p4$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v11$1 := (if p4$1 then $$shared[1bv1][local_id_x$1] else v11$1);
    v11$2 := (if p4$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v11$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$shared(p4$1, v3$1, v11$1, $$shared[1bv1][v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p4$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$shared(p4$2, v3$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][v3$1] := (if p4$1 then v11$1 else $$shared[1bv1][v3$1]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] := (if p4$2 then v11$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$shared(p5$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$shared(p5$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v12$1 := (if p5$1 then $$shared[1bv1][local_id_x$1] else v12$1);
    v12$2 := (if p5$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v12$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$shared(p5$1, v3$1, $$shared[1bv1][v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$shared(p5$2, v3$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v13$1 := (if p5$1 then $$shared[1bv1][v3$1] else v13$1);
    v13$2 := (if p5$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] else v13$2);
    v14$1 := (if p5$1 then BV32_SLT(v12$1, v13$1) else v14$1);
    v14$2 := (if p5$2 then BV32_SLT(v12$2, v13$2) else v14$2);
    p7$1 := (if p5$1 && v14$1 then v14$1 else p7$1);
    p7$2 := (if p5$2 && v14$2 then v14$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$shared(p7$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$shared(p7$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v15$1 := (if p7$1 then $$shared[1bv1][local_id_x$1] else v15$1);
    v15$2 := (if p7$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v15$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$shared(p7$1, v3$1, $$shared[1bv1][v3$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$shared(p7$2, v3$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v16$1 := (if p7$1 then $$shared[1bv1][v3$1] else v16$1);
    v16$2 := (if p7$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] else v16$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$shared(p7$1, local_id_x$1, v16$1, $$shared[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p7$2, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$shared(p7$2, local_id_x$2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][local_id_x$1] := (if p7$1 then v16$1 else $$shared[1bv1][local_id_x$1]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := (if p7$2 then v16$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$shared(p7$1, local_id_x$1, $$shared[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$shared(p7$2, local_id_x$2, $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v17$1 := (if p7$1 then $$shared[1bv1][local_id_x$1] else v17$1);
    v17$2 := (if p7$2 then $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v17$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$shared(p7$1, v3$1, v17$1, $$shared[1bv1][v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p7$2, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$shared(p7$2, v3$2, v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][v3$1] := (if p7$1 then v17$1 else $$shared[1bv1][v3$1]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2] := (if p7$2 then v17$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v3$2]);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 30} $bugle_barrier_duplicated_1(-1, -1);
    $j.0 := BV32_UDIV($j.0, 2);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$shared, $$values, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$shared, $$values, _TRACKING;



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}





function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}











const _WATCHED_VALUE_$$values: int;

procedure {:inline 1} _LOG_READ_$$values(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_READ_$$values(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _READ_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_READ_$$values(_P: bool, _offset: int, _value: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$values);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$values: bool;

procedure {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$values, _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _LOG_WRITE_$$values(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then true else _WRITE_HAS_OCCURRED_$$values);
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$values);
    return;
}



procedure _CHECK_WRITE_$$values(_P: bool, _offset: int, _value: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$values != _value);
  requires {:source_name "values"} {:array "$$values"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$values;



implementation {:inline 1} _LOG_ATOMIC_$$values(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$values := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$values);
    return;
}



procedure _CHECK_ATOMIC_$$values(_P: bool, _offset: int);
  requires {:source_name "values"} {:array "$$values"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);
  requires {:source_name "values"} {:array "$$values"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$values;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$values(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$values := (if _P && _WRITE_HAS_OCCURRED_$$values && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$values);
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
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$values;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$values;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$values;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$values;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$shared;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SUB(x: int, y: int) : int
{
  x - y
}




















