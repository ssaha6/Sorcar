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
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_odata"} {:global} $$g_odata: [int]int;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

axiom {:array_info "$$g_idata"} {:global} {:elem_width 32} {:source_name "g_idata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_idata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_idata: bool;

var {:source_name "temp"} {:group_shared} $$_ZZ6kernelPfS_iE4temp: [bv1][int]int;

axiom {:array_info "$$_ZZ6kernelPfS_iE4temp"} {:group_shared} {:elem_width 32} {:source_name "temp"} {:source_elem_width 32} {:source_dimensions "64"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp: bool;

const _WATCHED_OFFSET: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel"} {:kernel} $_Z6kernelPfS_i($n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == group_size_x then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$g_idata && !_WRITE_HAS_OCCURRED_$$g_idata && !_ATOMIC_HAS_OCCURRED_$$g_idata;
  requires !_READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && !_WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && !_ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
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
  modifies $$_ZZ6kernelPfS_iE4temp, _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp, $$g_odata, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _TRACKING;



implementation {:source_name "kernel"} {:kernel} $_Z6kernelPfS_i($n: int)
{
  var $0$1: int;
  var $0$2: int;
  var $pout.0: int;
  var $offset.0: int;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3: int;
  var v4: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_SGT(local_id_x$1, 0);
    v0$2 := BV32_SGT(local_id_x$2, 0);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v0$1 then v0$1 else p0$1);
    p0$2 := (if v0$2 then v0$2 else p0$2);
    p1$1 := (if !v0$1 then !v0$1 else p1$1);
    p1$2 := (if !v0$2 then !v0$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v1$1 := (if p0$1 then _HAVOC_int$1 else v1$1);
    v1$2 := (if p0$2 then _HAVOC_int$2 else v1$2);
    $0$1 := (if p0$1 then v1$1 else $0$1);
    $0$2 := (if p0$2 then v1$2 else $0$2);
    $0$1 := (if p1$1 then 0 else $0$1);
    $0$2 := (if p1$2 then 0 else $0$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(0, $n), local_id_x$1), $0$1, $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(0, $n), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(0, $n), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(0, $n), local_id_x$2), $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp"} true;
    $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(0, $n), local_id_x$1)] := $0$1;
    $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(0, $n), local_id_x$2)] := $0$2;
    $pout.0, $offset.0 := 0, 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($offset.0, 1) ) ,  (  BV32_SGE($offset.0, 1) ) ,  (  BV32_ULE($offset.0, 1) ) ,  (  BV32_UGE($offset.0, 1) ) ,  (  $offset.0 == 0 || BV32_AND($offset.0, BV32_SUB($offset.0, 1)) == 0 ) ,  (  $offset.0 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ) ,  (  _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ==> _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n) || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n) ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp ==> _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n) || _WATCHED_OFFSET mod BV32_MUL(1, $n) == BV32_ADD(BV32_MUL(0, $n), local_id_x$1) mod BV32_MUL(1, $n) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 7} true;
    v2 := BV32_SLT($offset.0, $n);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto __partitioned_block_$truebb0_0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v2;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 19} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$1), $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$2), $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ6kernelPfS_iE4temp"} true;
    v10$1 := $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$1)];
    v10$2 := $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($pout.0, $n), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$g_odata(true, local_id_x$1, v10$1, $$g_odata[local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$g_odata(true, local_id_x$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[local_id_x$1] := v10$1;
    $$g_odata[local_id_x$2] := v10$2;
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v2;
    v3 := BV32_SUB(1, $pout.0);
    v4 := BV32_SUB(1, v3);
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 9} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(v4, $n), local_id_x$1), $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(v4, $n), local_id_x$1)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(v4, $n), local_id_x$2), $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v4, $n), local_id_x$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ6kernelPfS_iE4temp"} true;
    v5$1 := $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(v4, $n), local_id_x$1)];
    v5$2 := $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v4, $n), local_id_x$2)];
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(v3, $n), local_id_x$1), v5$1, $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(v3, $n), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(v3, $n), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp(true, BV32_ADD(BV32_MUL(v3, $n), local_id_x$2), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp"} true;
    $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_ADD(BV32_MUL(v3, $n), local_id_x$1)] := v5$1;
    $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v3, $n), local_id_x$2)] := v5$2;
    v6$1 := BV32_SGE(local_id_x$1, $offset.0);
    v6$2 := BV32_SGE(local_id_x$2, $offset.0);
    p3$1 := (if v6$1 then v6$1 else p3$1);
    p3$2 := (if v6$2 then v6$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(p3$1, BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$1), $offset.0), $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$1), $offset.0)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ6kernelPfS_iE4temp(p3$2, BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$2), $offset.0), $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$2), $offset.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ6kernelPfS_iE4temp"} true;
    v7$1 := (if p3$1 then $$_ZZ6kernelPfS_iE4temp[1bv1][BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$1), $offset.0)] else v7$1);
    v7$2 := (if p3$2 then $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(BV32_ADD(BV32_MUL(v4, $n), local_id_x$2), $offset.0)] else v7$2);
    v8$1 := (if p3$1 then BV32_ADD(BV32_MUL(v3, $n), local_id_x$1) else v8$1);
    v8$2 := (if p3$2 then BV32_ADD(BV32_MUL(v3, $n), local_id_x$2) else v8$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(p3$1, v8$1, $$_ZZ6kernelPfS_iE4temp[1bv1][v8$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ6kernelPfS_iE4temp(p3$2, v8$2, $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ6kernelPfS_iE4temp"} true;
    v9$1 := (if p3$1 then $$_ZZ6kernelPfS_iE4temp[1bv1][v8$1] else v9$1);
    v9$2 := (if p3$2 then $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2] else v9$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$_ZZ6kernelPfS_iE4temp(p3$1, v8$1, FADD32(v9$1, v7$1), $$_ZZ6kernelPfS_iE4temp[1bv1][v8$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp(p3$2, v8$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp(p3$2, v8$2, FADD32(v9$2, v7$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp"} true;
    $$_ZZ6kernelPfS_iE4temp[1bv1][v8$1] := (if p3$1 then FADD32(v9$1, v7$1) else $$_ZZ6kernelPfS_iE4temp[1bv1][v8$1]);
    $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2] := (if p3$2 then FADD32(v9$2, v7$2) else $$_ZZ6kernelPfS_iE4temp[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v8$2]);
    $pout.0, $offset.0 := v3, BV32_MUL($offset.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $4;
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
  modifies $$_ZZ6kernelPfS_iE4temp, $$g_odata, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ6kernelPfS_iE4temp, $$g_odata, _TRACKING;



function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}





function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}



const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$g_idata: int;

procedure {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_READ_$$g_idata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _READ_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_READ_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_idata);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_idata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_idata, _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _LOG_WRITE_$$g_idata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then true else _WRITE_HAS_OCCURRED_$$g_idata);
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



procedure _CHECK_WRITE_$$g_idata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_idata != _value);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_idata;



implementation {:inline 1} _LOG_ATOMIC_$$g_idata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_idata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_idata);
    return;
}



procedure _CHECK_ATOMIC_$$g_idata(_P: bool, _offset: int);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_idata"} {:array "$$g_idata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_idata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_idata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_idata := (if _P && _WRITE_HAS_OCCURRED_$$g_idata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_idata);
    return;
}



const _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp: int;

procedure {:inline 1} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;



implementation {:inline 1} _LOG_READ_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp == _value then true else _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp);
    return;
}



procedure _CHECK_READ_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp, _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp;



implementation {:inline 1} _LOG_WRITE_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp);
    return;
}



procedure _CHECK_WRITE_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int, _value: int);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ6kernelPfS_iE4temp != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "temp"} {:array "$$_ZZ6kernelPfS_iE4temp"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ6kernelPfS_iE4temp);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ6kernelPfS_iE4temp;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ6kernelPfS_iE4temp;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ6kernelPfS_iE4temp;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function BV32_AND(int, int) : int;












