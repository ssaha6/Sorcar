type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 8} {:source_name "output"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

axiom {:array_info "$$input"} {:global} {:elem_width 8} {:source_name "input"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "block"} {:group_shared} $$block: [bv1][int]int;

axiom {:array_info "$$block"} {:group_shared} {:elem_width 8} {:source_name "block"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$block: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

procedure {:source_name "transpose_kernel"} {:kernel} $transpose_kernel($width: int, $height: int, $blockSize: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $height == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $blockSize == 2 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$block && !_WRITE_HAS_OCCURRED_$$block && !_ATOMIC_HAS_OCCURRED_$$block;
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
  modifies $$block, _WRITE_HAS_OCCURRED_$$block, _WRITE_READ_BENIGN_FLAG_$$block, _WRITE_READ_BENIGN_FLAG_$$block, $$output, _TRACKING, _READ_HAS_OCCURRED_$$block, _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output;



implementation {:source_name "transpose_kernel"} {:kernel} $transpose_kernel($width: int, $height: int, $blockSize: int)
{
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
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := local_id_x$1;
    v2$2 := local_id_x$2;
    v3$1 := local_id_y$1;
    v3$2 := local_id_y$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$block(true, BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), v4$1, $$block[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(true, BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$block(true, BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$block"} true;
    $$block[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4)] := v4$1;
    $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4)] := v4$2;
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1), v5$1, $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$block"} true;
    $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1)] := v5$1;
    $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1)] := v5$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2), v6$1, $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$block"} true;
    $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2)] := v6$1;
    $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2)] := v6$2;
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3), v7$1, $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$block"} true;
    $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3)] := v7$1;
    $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3)] := v7$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(-1, 0);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$block(true, BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), $$block[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$block(true, BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$block"} true;
    v8$1 := $$block[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4)];
    v8$2 := $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4)];
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1), $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1), $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$block"} true;
    v9$1 := $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 1)];
    v9$2 := $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 1)];
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2), $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2), $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$block"} true;
    v10$1 := $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 2)];
    v10$2 := $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 2)];
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3), $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$block(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3), $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$block"} true;
    v11$1 := $$block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$1, $blockSize), v2$1), 4), 3)];
    v11$2 := $$block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v3$2, $blockSize), v2$2), 4), 3)];
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$output(true, BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), v8$1, $$output[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$output(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4)] := v8$1;
    $$output[BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4)] := v8$2;
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 1), v9$1, $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 1), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 1)] := v9$1;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 1)] := v9$2;
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 2), v10$1, $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 2), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 2)] := v10$1;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 2)] := v10$2;
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 3), v11$1, $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 3), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(v0$1, $height)), 4), 3)] := v11$1;
    $$output[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(v0$2, $height)), 4), 3)] := v11$2;
    return;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if num_groups_y == 512 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$block, $$output, _TRACKING;



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



const _WATCHED_VALUE_$$input: int;

procedure {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_READ_$$input(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _READ_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_READ_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$input);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$input: bool;

procedure {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$input, _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _LOG_WRITE_$$input(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then true else _WRITE_HAS_OCCURRED_$$input);
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



procedure _CHECK_WRITE_$$input(_P: bool, _offset: int, _value: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$input != _value);
  requires {:source_name "input"} {:array "$$input"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$input;



implementation {:inline 1} _LOG_ATOMIC_$$input(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$input := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$input);
    return;
}



procedure _CHECK_ATOMIC_$$input(_P: bool, _offset: int);
  requires {:source_name "input"} {:array "$$input"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);
  requires {:source_name "input"} {:array "$$input"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$input;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$input(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$input := (if _P && _WRITE_HAS_OCCURRED_$$input && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$input);
    return;
}



const _WATCHED_VALUE_$$block: int;

procedure {:inline 1} _LOG_READ_$$block(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$block;



implementation {:inline 1} _LOG_READ_$$block(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$block == _value then true else _READ_HAS_OCCURRED_$$block);
    return;
}



procedure _CHECK_READ_$$block(_P: bool, _offset: int, _value: int);
  requires {:source_name "block"} {:array "$$block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$block: bool;

procedure {:inline 1} _LOG_WRITE_$$block(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$block, _WRITE_READ_BENIGN_FLAG_$$block;



implementation {:inline 1} _LOG_WRITE_$$block(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$block == _value then true else _WRITE_HAS_OCCURRED_$$block);
    _WRITE_READ_BENIGN_FLAG_$$block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$block);
    return;
}



procedure _CHECK_WRITE_$$block(_P: bool, _offset: int, _value: int);
  requires {:source_name "block"} {:array "$$block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$block(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$block;



implementation {:inline 1} _LOG_ATOMIC_$$block(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$block);
    return;
}



procedure _CHECK_ATOMIC_$$block(_P: bool, _offset: int);
  requires {:source_name "block"} {:array "$$block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$block(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$block := (if _P && _WRITE_HAS_OCCURRED_$$block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$block);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$block;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$block;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$block;
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
    havoc $$block;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
