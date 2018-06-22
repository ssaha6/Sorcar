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
 b0025: bool,
 b0026: bool,
 b0027: bool,
 b0028: bool,
 b0029: bool,
 b0030: bool,
 b0031: bool,
 b0032: bool,
 b0033: bool,
 b0034: bool,
 b0035: bool,
 b0036: bool,
 b0037: bool,
 b0038: bool,
 b0039: bool,
 b0040: bool,
 b0041: bool,
 b0042: bool,
 b0043: bool,
 b0044: bool,
 b0045: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data"} {:global} $$data: [int]int;

axiom {:array_info "$$data"} {:global} {:elem_width 32} {:source_name "data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

var {:source_name "s_data"} {:group_shared} $$scan_inter2_kernel.s_data: [bv1][int]int;

axiom {:array_info "$$scan_inter2_kernel.s_data"} {:group_shared} {:elem_width 32} {:source_name "s_data"} {:source_elem_width 32} {:source_dimensions "544"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data: bool;

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

function BV32_LSHR(int, int) : int;

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

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "scan_inter2_kernel"} {:kernel} $scan_inter2_kernel($iter: int);
  requires {:sourceloc_num 0} {:thread 1} (if $iter == 1 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data && !_WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data && !_ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
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
  modifies $$scan_inter2_kernel.s_data, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data, _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data, _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data, $$data, _TRACKING, _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _TRACKING;



implementation {:source_name "scan_inter2_kernel"} {:kernel} $scan_inter2_kernel($iter: int)
{
  var $stride.0: int;
  var $d.0: int;
  var v16$1: int;
  var v16$2: int;
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
  var v10$1: int;
  var v10$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12: bool;
  var v13: int;
  var v14$1: bool;
  var v14$2: bool;
  var v15$1: int;
  var v15$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2, $iter), BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $iter), 1);
    v1$2 := BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2, $iter), BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $iter), 1);
    v2$1 := BV32_ADD(v1$1, $iter);
    v2$2 := BV32_ADD(v1$2, $iter);
    v3$1 := BV32_MUL(2, v0$1);
    v3$2 := BV32_MUL(2, v0$2);
    v4$1 := BV32_MUL(2, v0$1);
    v4$2 := BV32_MUL(2, v0$2);
    v5$1 := BV32_ADD(v4$1, 1);
    v5$2 := BV32_ADD(v4$2, 1);
    v6$1 := BV32_ADD(4, v3$1);
    v6$2 := BV32_ADD(4, v3$2);
    v7$1 := BV32_ADD(v3$1, BV32_LSHR(BV32_LSHR(v3$1, BV32_AND((if BV32_ULT(v6$1, 24) then v6$1 else 24), 31)), 8));
    v7$2 := BV32_ADD(v3$2, BV32_LSHR(BV32_LSHR(v3$2, BV32_AND((if BV32_ULT(v6$2, 24) then v6$2 else 24), 31)), 8));
    v8$1 := BV32_ADD(v4$1, 5);
    v8$2 := BV32_ADD(v4$2, 5);
    v9$1 := BV32_ADD(v5$1, BV32_LSHR(BV32_LSHR(v5$1, BV32_AND((if BV32_ULT(v8$1, 24) then v8$1 else 24), 31)), 8));
    v9$2 := BV32_ADD(v5$2, BV32_LSHR(BV32_LSHR(v5$2, BV32_AND((if BV32_ULT(v8$2, 24) then v8$2 else 24), 31)), 8));
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$data(true, v1$1, $$data[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$data(true, v1$2, $$data[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v10$1 := $$data[v1$1];
    v10$2 := $$data[v1$2];
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$scan_inter2_kernel.s_data(true, v7$1, v10$1, $$scan_inter2_kernel.s_data[1bv1][v7$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(true, v7$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$scan_inter2_kernel.s_data(true, v7$2, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$scan_inter2_kernel.s_data"} true;
    $$scan_inter2_kernel.s_data[1bv1][v7$1] := v10$1;
    $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2] := v10$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$data(true, v2$1, $$data[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$data(true, v2$2, $$data[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v11$1 := $$data[v2$1];
    v11$2 := $$data[v2$2];
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$scan_inter2_kernel.s_data(true, v9$1, v11$1, $$scan_inter2_kernel.s_data[1bv1][v9$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(true, v9$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$scan_inter2_kernel.s_data(true, v9$2, v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$scan_inter2_kernel.s_data"} true;
    $$scan_inter2_kernel.s_data[1bv1][v9$1] := v11$1;
    $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2] := v11$2;
    $stride.0, $d.0 := BV32_MUL(group_size_x, 2), 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($d.0, 1) ) ,  (  BV32_SGE($d.0, 1) ) ,  (  BV32_ULE($d.0, 1) ) ,  (  BV32_UGE($d.0, 1) ) ,  (  $stride.0 == 0 || BV32_AND($stride.0, BV32_SUB($stride.0, 1)) == 0 ) ,  (  $stride.0 != 0 ) ,  (  $d.0 == 0 || BV32_AND($d.0, BV32_SUB($d.0, 1)) == 0 ) ,  (  $d.0 != 0 ) ,  (  v13 == 0 || BV32_AND(v13, BV32_SUB(v13, 1)) == 0 ) ,  (  v13 != 0 ) ,  (  BV32_MUL($d.0, $stride.0) == 32768 ) ,  (  ($stride.0 == 0 && $d.0 == 65536) || BV32_MUL($d.0, $stride.0) == 32768 ) ,  (  BV32_MUL($d.0, $stride.0) == 16384 ) ,  (  ($stride.0 == 0 && $d.0 == 32768) || BV32_MUL($d.0, $stride.0) == 16384 ) ,  (  BV32_MUL($d.0, $stride.0) == 8192 ) ,  (  ($stride.0 == 0 && $d.0 == 16384) || BV32_MUL($d.0, $stride.0) == 8192 ) ,  (  BV32_MUL($d.0, $stride.0) == 4096 ) ,  (  ($stride.0 == 0 && $d.0 == 8192) || BV32_MUL($d.0, $stride.0) == 4096 ) ,  (  BV32_MUL($d.0, $stride.0) == 2048 ) ,  (  ($stride.0 == 0 && $d.0 == 4096) || BV32_MUL($d.0, $stride.0) == 2048 ) ,  (  BV32_MUL($d.0, $stride.0) == 1024 ) ,  (  ($stride.0 == 0 && $d.0 == 2048) || BV32_MUL($d.0, $stride.0) == 1024 ) ,  (  BV32_MUL($d.0, $stride.0) == 512 ) ,  (  ($stride.0 == 0 && $d.0 == 1024) || BV32_MUL($d.0, $stride.0) == 512 ) ,  (  BV32_MUL($d.0, $stride.0) == 256 ) ,  (  ($stride.0 == 0 && $d.0 == 512) || BV32_MUL($d.0, $stride.0) == 256 ) ,  (  BV32_MUL($d.0, $stride.0) == 128 ) ,  (  ($stride.0 == 0 && $d.0 == 256) || BV32_MUL($d.0, $stride.0) == 128 ) ,  (  BV32_MUL($d.0, $stride.0) == 64 ) ,  (  ($stride.0 == 0 && $d.0 == 128) || BV32_MUL($d.0, $stride.0) == 64 ) ,  (  BV32_MUL($d.0, $stride.0) == 32 ) ,  (  ($stride.0 == 0 && $d.0 == 64) || BV32_MUL($d.0, $stride.0) == 32 ) ,  (  BV32_MUL($d.0, $stride.0) == 16 ) ,  (  ($stride.0 == 0 && $d.0 == 32) || BV32_MUL($d.0, $stride.0) == 16 ) ,  (  BV32_MUL($d.0, $stride.0) == 8 ) ,  (  ($stride.0 == 0 && $d.0 == 16) || BV32_MUL($d.0, $stride.0) == 8 ) ,  (  BV32_MUL($d.0, $stride.0) == 4 ) ,  (  ($stride.0 == 0 && $d.0 == 8) || BV32_MUL($d.0, $stride.0) == 4 ) ,  (  BV32_MUL($d.0, $stride.0) == 2 ) ,  (  ($stride.0 == 0 && $d.0 == 4) || BV32_MUL($d.0, $stride.0) == 2 ) ,  (  BV32_MUL($d.0, $stride.0) == 1 ) ,  (  ($stride.0 == 0 && $d.0 == 2) || BV32_MUL($d.0, $stride.0) == 1 ) ,  (  !_READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data ) ,  (  !_WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data ) ,  (  _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 6} true;
    v12 := BV32_ULE($d.0, group_size_x);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto __partitioned_block_$truebb_0, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v12;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 18} $bugle_barrier_duplicated_0(-1, 0);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$scan_inter2_kernel.s_data(true, v7$1, $$scan_inter2_kernel.s_data[1bv1][v7$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$scan_inter2_kernel.s_data(true, v7$2, $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$scan_inter2_kernel.s_data"} true;
    v24$1 := $$scan_inter2_kernel.s_data[1bv1][v7$1];
    v24$2 := $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v7$2];
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$data(true, v1$1, v24$1, $$data[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(true, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$data(true, v1$2, v24$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v1$1] := v24$1;
    $$data[v1$2] := v24$2;
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$scan_inter2_kernel.s_data(true, v9$1, $$scan_inter2_kernel.s_data[1bv1][v9$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$scan_inter2_kernel.s_data(true, v9$2, $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$scan_inter2_kernel.s_data"} true;
    v25$1 := $$scan_inter2_kernel.s_data[1bv1][v9$1];
    v25$2 := $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v9$2];
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$data(true, v2$1, v25$1, $$data[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$data(true, v2$2, v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v2$1] := v25$1;
    $$data[v2$2] := v25$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v12;
    v13 := BV32_LSHR($stride.0, 1);
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 8} $bugle_barrier_duplicated_1(-1, 0);
    v14$1 := BV32_ULT(v0$1, $d.0);
    v14$2 := BV32_ULT(v0$2, $d.0);
    p1$1 := (if v14$1 then v14$1 else p1$1);
    p1$2 := (if v14$2 then v14$2 else p1$2);
    v15$1 := (if p1$1 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2, v13), v0$1), v13), 1) else v15$1);
    v15$2 := (if p1$2 then BV32_SUB(BV32_ADD(BV32_MUL(BV32_MUL(2, v13), v0$2), v13), 1) else v15$2);
    v16$1 := (if p1$1 then BV32_ADD(v15$1, v13) else v16$1);
    v16$2 := (if p1$2 then BV32_ADD(v15$2, v13) else v16$2);
    v17$1 := (if p1$1 then BV32_ADD(4, v15$1) else v17$1);
    v17$2 := (if p1$2 then BV32_ADD(4, v15$2) else v17$2);
    v18$1 := (if p1$1 then BV32_ADD(v15$1, BV32_LSHR(BV32_LSHR(v15$1, BV32_AND((if BV32_ULT(v17$1, 24) then v17$1 else 24), 31)), 8)) else v18$1);
    v18$2 := (if p1$2 then BV32_ADD(v15$2, BV32_LSHR(BV32_LSHR(v15$2, BV32_AND((if BV32_ULT(v17$2, 24) then v17$2 else 24), 31)), 8)) else v18$2);
    v19$1 := (if p1$1 then BV32_ADD(4, v16$1) else v19$1);
    v19$2 := (if p1$2 then BV32_ADD(4, v16$2) else v19$2);
    v20$1 := (if p1$1 then BV32_ADD(v16$1, BV32_LSHR(BV32_LSHR(v16$1, BV32_AND((if BV32_ULT(v19$1, 24) then v19$1 else 24), 31)), 8)) else v20$1);
    v20$2 := (if p1$2 then BV32_ADD(v16$2, BV32_LSHR(BV32_LSHR(v16$2, BV32_AND((if BV32_ULT(v19$2, 24) then v19$2 else 24), 31)), 8)) else v20$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$scan_inter2_kernel.s_data(p1$1, v18$1, $$scan_inter2_kernel.s_data[1bv1][v18$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$scan_inter2_kernel.s_data(p1$2, v18$2, $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$scan_inter2_kernel.s_data"} true;
    v21$1 := (if p1$1 then $$scan_inter2_kernel.s_data[1bv1][v18$1] else v21$1);
    v21$2 := (if p1$2 then $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] else v21$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$scan_inter2_kernel.s_data(p1$1, v20$1, $$scan_inter2_kernel.s_data[1bv1][v20$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$scan_inter2_kernel.s_data(p1$2, v20$2, $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$scan_inter2_kernel.s_data"} true;
    v22$1 := (if p1$1 then $$scan_inter2_kernel.s_data[1bv1][v20$1] else v22$1);
    v22$2 := (if p1$2 then $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2] else v22$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$scan_inter2_kernel.s_data(p1$1, v18$1, v22$1, $$scan_inter2_kernel.s_data[1bv1][v18$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(p1$2, v18$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$scan_inter2_kernel.s_data(p1$2, v18$2, v22$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$scan_inter2_kernel.s_data"} true;
    $$scan_inter2_kernel.s_data[1bv1][v18$1] := (if p1$1 then v22$1 else $$scan_inter2_kernel.s_data[1bv1][v18$1]);
    $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2] := (if p1$2 then v22$2 else $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v18$2]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$scan_inter2_kernel.s_data(p1$1, v20$1, $$scan_inter2_kernel.s_data[1bv1][v20$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$scan_inter2_kernel.s_data(p1$2, v20$2, $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$scan_inter2_kernel.s_data"} true;
    v23$1 := (if p1$1 then $$scan_inter2_kernel.s_data[1bv1][v20$1] else v23$1);
    v23$2 := (if p1$2 then $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2] else v23$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$scan_inter2_kernel.s_data(p1$1, v20$1, BV32_ADD(v23$1, v21$1), $$scan_inter2_kernel.s_data[1bv1][v20$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(p1$2, v20$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$scan_inter2_kernel.s_data(p1$2, v20$2, BV32_ADD(v23$2, v21$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$scan_inter2_kernel.s_data"} true;
    $$scan_inter2_kernel.s_data[1bv1][v20$1] := (if p1$1 then BV32_ADD(v23$1, v21$1) else $$scan_inter2_kernel.s_data[1bv1][v20$1]);
    $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2] := (if p1$2 then BV32_ADD(v23$2, v21$2) else $$scan_inter2_kernel.s_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v20$2]);
    $stride.0, $d.0 := v13, BV32_MUL($d.0, 2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$scan_inter2_kernel.s_data, $$data, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$scan_inter2_kernel.s_data, $$data, _TRACKING;



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



const _WATCHED_VALUE_$$data: int;

procedure {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_READ_$$data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _READ_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_READ_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$data);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$data: bool;

procedure {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _LOG_WRITE_$$data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then true else _WRITE_HAS_OCCURRED_$$data);
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



procedure _CHECK_WRITE_$$data(_P: bool, _offset: int, _value: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$data != _value);
  requires {:source_name "data"} {:array "$$data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$data;



implementation {:inline 1} _LOG_ATOMIC_$$data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$data);
    return;
}



procedure _CHECK_ATOMIC_$$data(_P: bool, _offset: int);
  requires {:source_name "data"} {:array "$$data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);
  requires {:source_name "data"} {:array "$$data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$data := (if _P && _WRITE_HAS_OCCURRED_$$data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$data);
    return;
}



const _WATCHED_VALUE_$$scan_inter2_kernel.s_data: int;

procedure {:inline 1} _LOG_READ_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data;



implementation {:inline 1} _LOG_READ_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scan_inter2_kernel.s_data == _value then true else _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data);
    return;
}



procedure _CHECK_READ_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data: bool;

procedure {:inline 1} _LOG_WRITE_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data, _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data;



implementation {:inline 1} _LOG_WRITE_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scan_inter2_kernel.s_data == _value then true else _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data);
    _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scan_inter2_kernel.s_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data);
    return;
}



procedure _CHECK_WRITE_$$scan_inter2_kernel.s_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scan_inter2_kernel.s_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$scan_inter2_kernel.s_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$scan_inter2_kernel.s_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data;



implementation {:inline 1} _LOG_ATOMIC_$$scan_inter2_kernel.s_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data);
    return;
}



procedure _CHECK_ATOMIC_$$scan_inter2_kernel.s_data(_P: bool, _offset: int);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_data"} {:array "$$scan_inter2_kernel.s_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data := (if _P && _WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$scan_inter2_kernel.s_data);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
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
    havoc $$data;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$scan_inter2_kernel.s_data;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$scan_inter2_kernel.s_data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$data;
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
    havoc $$data;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$scan_inter2_kernel.s_data;
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

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}




















































































