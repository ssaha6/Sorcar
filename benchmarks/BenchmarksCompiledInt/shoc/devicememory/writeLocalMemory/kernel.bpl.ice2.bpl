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
 b0012: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

var {:source_name "lbuf"} {:group_shared} $$writeLocalMemory.lbuf: [bv1][int]int;

axiom {:array_info "$$writeLocalMemory.lbuf"} {:group_shared} {:elem_width 32} {:source_name "lbuf"} {:source_elem_width 32} {:source_dimensions "4096"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf: bool;

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

function SI32_TO_FP32(int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "writeLocalMemory"} {:kernel} $writeLocalMemory($size: int);
  requires {:sourceloc_num 0} {:thread 1} (if $size == 16777216 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$writeLocalMemory.lbuf && !_WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf && !_ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf;
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
  modifies $$writeLocalMemory.lbuf, $$output, _TRACKING, _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf, _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf, _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf, _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf;



implementation {:source_name "writeLocalMemory"} {:kernel} $writeLocalMemory($size: int)
{
  var $j.0: int;
  var $s.0$1: int;
  var $s.0$2: int;
  var $j.1: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
  var v3: bool;
  var v4$1: int;
  var v4$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    $j.0, $s.0$1 := 0, v1$1;
    $s.0$2 := v1$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_1"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  $j.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($j.0, 0) ) ,  (  BV32_SGE($j.0, 0) ) ,  (  BV32_ULE($j.0, 0) ) ,  (  BV32_UGE($j.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v2 := BV32_SLT($j.0, 3000);
    goto $truebb, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v2;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 22} $bugle_barrier_duplicated_0(-1, 0);
    $j.1 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_0"} true;
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  (  $j.1 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($j.1, 0) ) ,  (  BV32_SGE($j.1, 0) ) ,  (  BV32_ULE($j.1, 0) ) ,  (  BV32_UGE($j.1, 0) ) ,  true ,  (  _WRITE_HAS_OCCURRED_$$output ==> _WATCHED_OFFSET == BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1) ) ,  (  _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf ==> _WATCHED_OFFSET == local_id_x$1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 23} true;
    v3 := BV32_SLT($j.1, BV32_SDIV(4096, group_size_x));
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v3;
    return;

  $truebb0:
    assume {:partition} v3;
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$writeLocalMemory.lbuf(true, v1$1, $$writeLocalMemory.lbuf[1bv1][v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$writeLocalMemory.lbuf(true, v1$2, $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$writeLocalMemory.lbuf"} true;
    v4$1 := $$writeLocalMemory.lbuf[1bv1][v1$1];
    v4$2 := $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v1$2];
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$output(true, v0$1, v4$1, $$output[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$output(true, v0$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[v0$1] := v4$1;
    $$output[v0$2] := v4$2;
    $j.1 := BV32_ADD($j.1, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $5;

  $truebb:
    assume {:partition} v2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND($s.0$1, 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND($s.0$1, 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND($s.0$2, 4095));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND($s.0$2, 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND($s.0$1, 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND($s.0$2, 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 1), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 1), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 1), 4095));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 1), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 1), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 1), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 2), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 2), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 2), 4095));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 2), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 2), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 2), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 3), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 3), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 3), 4095));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 3), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 3), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 3), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 4), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 4), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 4), 4095));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 4), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 4), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 4), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 5), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 5), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 5), 4095));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 5), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 5), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 5), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 6), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 6), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 6), 4095));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 6), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 6), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 6), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 7), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 7), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 7), 4095));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 7), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 7), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 7), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 8), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 8), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 8), 4095));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 8), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 8), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 8), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 9), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 9), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 9), 4095));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 9), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 9), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 9), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 10), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 10), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 10), 4095));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 10), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 10), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 10), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 11), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 11), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 11), 4095));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 11), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 11), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 11), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 12), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 12), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 12), 4095));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 12), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 12), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 12), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 13), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 13), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 13), 4095));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 13), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 13), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 13), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 14), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 14), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 14), 4095));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 14), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 14), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 14), 4095)] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$1, 15), 4095), SI32_TO_FP32(v0$1), $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 15), 4095)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 15), 4095));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$writeLocalMemory.lbuf(true, BV32_AND(BV32_ADD($s.0$2, 15), 4095), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$writeLocalMemory.lbuf"} true;
    $$writeLocalMemory.lbuf[1bv1][BV32_AND(BV32_ADD($s.0$1, 15), 4095)] := SI32_TO_FP32(v0$1);
    $$writeLocalMemory.lbuf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(BV32_ADD($s.0$2, 15), 4095)] := SI32_TO_FP32(v0$2);
    $j.0, $s.0$1 := BV32_ADD($j.0, 1), BV32_AND(BV32_ADD($s.0$1, 16), 4095);
    $s.0$2 := BV32_AND(BV32_ADD($s.0$2, 16), 4095);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 40 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$writeLocalMemory.lbuf, $$output, _TRACKING;





function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}



function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}



function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}













const _WATCHED_VALUE_$$output: int;

procedure {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_READ_$$output(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _READ_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_READ_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$output);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$output: bool;

procedure {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _LOG_WRITE_$$output(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then true else _WRITE_HAS_OCCURRED_$$output);
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



procedure _CHECK_WRITE_$$output(_P: bool, _offset: int, _value: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$output != _value);
  requires {:source_name "output"} {:array "$$output"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$output;



implementation {:inline 1} _LOG_ATOMIC_$$output(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$output := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$output);
    return;
}



procedure _CHECK_ATOMIC_$$output(_P: bool, _offset: int);
  requires {:source_name "output"} {:array "$$output"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);
  requires {:source_name "output"} {:array "$$output"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$output := (if _P && _WRITE_HAS_OCCURRED_$$output && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$output);
    return;
}



const _WATCHED_VALUE_$$writeLocalMemory.lbuf: int;

procedure {:inline 1} _LOG_READ_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf;



implementation {:inline 1} _LOG_READ_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$writeLocalMemory.lbuf == _value then true else _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf);
    return;
}



procedure _CHECK_READ_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf: bool;

procedure {:inline 1} _LOG_WRITE_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf, _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf;



implementation {:inline 1} _LOG_WRITE_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$writeLocalMemory.lbuf == _value then true else _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf);
    _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$writeLocalMemory.lbuf == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf);
    return;
}



procedure _CHECK_WRITE_$$writeLocalMemory.lbuf(_P: bool, _offset: int, _value: int);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$writeLocalMemory.lbuf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$writeLocalMemory.lbuf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$writeLocalMemory.lbuf(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf;



implementation {:inline 1} _LOG_ATOMIC_$$writeLocalMemory.lbuf(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf);
    return;
}



procedure _CHECK_ATOMIC_$$writeLocalMemory.lbuf(_P: bool, _offset: int);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "lbuf"} {:array "$$writeLocalMemory.lbuf"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf := (if _P && _WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$writeLocalMemory.lbuf);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$writeLocalMemory.lbuf;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$writeLocalMemory.lbuf;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$writeLocalMemory.lbuf;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$output;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$output;
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
    havoc $$output;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$writeLocalMemory.lbuf;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}






