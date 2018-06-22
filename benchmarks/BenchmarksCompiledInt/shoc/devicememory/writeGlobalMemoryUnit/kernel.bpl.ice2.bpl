function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

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

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "writeGlobalMemoryUnit"} {:kernel} $writeGlobalMemoryUnit($size: int);
  requires {:sourceloc_num 0} {:thread 1} (if $size == 16777216 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
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
  modifies _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:source_name "writeGlobalMemoryUnit"} {:kernel} $writeGlobalMemoryUnit($size: int)
{
  var $j.0: int;
  var $s.0$1: int;
  var $s.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    $j.0, $s.0$1 := 0, BV32_MUL(v0$1, 1024);
    $s.0$2 := BV32_MUL(v0$2, 1024);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
assert  my_inv (  (  $j.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($j.0, 0) ) ,  (  BV32_SGE($j.0, 0) ) ,  (  BV32_ULE($j.0, 0) ) ,  (  BV32_UGE($j.0, 0) ) ,  (  _WRITE_HAS_OCCURRED_$$output ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v1 := BV32_SLT($j.0, 512);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v1;
    return;

  $truebb:
    assume {:partition} v1;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$output(true, BV32_AND($s.0$1, BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND($s.0$1, BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND($s.0$2, BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$output(true, BV32_AND($s.0$2, BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND($s.0$1, BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND($s.0$2, BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 1), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 1), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 1), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 1), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 1), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 1), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 2), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 2), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 2), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 2), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 2), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 2), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 3), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 3), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 3), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 3), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 3), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 3), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 4), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 4), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 4), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 4), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 4), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 4), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 5), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 5), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 5), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 5), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 5), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 5), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 6), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 6), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 6), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 6), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 6), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 6), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 7), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 7), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 7), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 7), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 7), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 7), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 8), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 8), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 8), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 8), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 8), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 8), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 9), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 9), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 9), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 9), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 9), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 9), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 10), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 10), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 10), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 10), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 10), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 10), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 11), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 11), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 11), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 11), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 11), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 11), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 12), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 12), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 12), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 12), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 12), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 12), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 13), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 13), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 13), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 13), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 13), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 13), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 14), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 14), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 14), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 14), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 14), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 14), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$1, 15), BV32_SUB($size, 1)), SI32_TO_FP32(v0$1), $$output[BV32_AND(BV32_ADD($s.0$1, 15), BV32_SUB($size, 1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_AND(BV32_ADD($s.0$2, 15), BV32_SUB($size, 1)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$output(true, BV32_AND(BV32_ADD($s.0$2, 15), BV32_SUB($size, 1)), SI32_TO_FP32(v0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_AND(BV32_ADD($s.0$1, 15), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$1);
    $$output[BV32_AND(BV32_ADD($s.0$2, 15), BV32_SUB($size, 1))] := SI32_TO_FP32(v0$2);
    $j.0, $s.0$1 := BV32_ADD($j.0, 1), BV32_AND(BV32_ADD($s.0$1, 16), BV32_SUB($size, 1));
    $s.0$2 := BV32_AND(BV32_ADD($s.0$2, 16), BV32_SUB($size, 1));
    assume {:captureState "loop_back_edge_state_0_0"} true;
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



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}


