type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "data"} {:global} $$data: [int]int;

axiom {:array_info "$$data"} {:global} {:elem_width 32} {:source_name "data"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$data: bool;

var {:source_name "sh_data"} {:group_shared} $$_ZZ19bitonic_sort_kernelPfjjE7sh_data: [bv1][int]int;

axiom {:array_info "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:group_shared} {:elem_width 32} {:source_name "sh_data"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data: bool;

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

function BV32_LSHR(int, int) : int;

function FEQ32(int, int) : bool;

function FLT32(int, int) : bool;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "bitonic_sort_kernel"} {:kernel} $_Z19bitonic_sort_kernelPfjj($ulevel: int, $ulevelmask: int);
  requires !_READ_HAS_OCCURRED_$$data && !_WRITE_HAS_OCCURRED_$$data && !_ATOMIC_HAS_OCCURRED_$$data;
  requires !_READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && !_WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && !_ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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
  modifies $$_ZZ19bitonic_sort_kernelPfjjE7sh_data, _READ_HAS_OCCURRED_$$data, _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data, $$data, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data, _WRITE_HAS_OCCURRED_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _WRITE_READ_BENIGN_FLAG_$$data, _TRACKING, _TRACKING;



implementation {:source_name "bitonic_sort_kernel"} {:kernel} $_Z19bitonic_sort_kernelPfjj($ulevel: int, $ulevelmask: int)
{
  var $j.0: int;
  var $0$1: int;
  var $0$2: int;
  var v2: bool;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
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
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    call {:sourceloc} {:sourceloc_num 1} _LOG_READ_$$data(true, v0$1, $$data[v0$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 1} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 1} _CHECK_READ_$$data(true, v0$2, $$data[v0$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$data"} true;
    v1$1 := $$data[v0$1];
    v1$2 := $$data[v0$2];
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$1, v1$1, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$2, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1] := v1$1;
    $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v1$2;
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 3} $bugle_barrier_duplicated_0(-1, -1);
    $j.0 := BV32_LSHR($ulevel, 1);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data ==> _WATCHED_OFFSET == local_id_x$1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET == local_id_x$1 || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b7 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assert {:tag "noread"} _b6 ==> !_READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assert {:tag "pow2NotZero"} _b5 ==> $j.0 != 0;
    assert {:tag "pow2"} _b4 ==> $j.0 == 0 || BV32_AND($j.0, BV32_SUB($j.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($j.0, BV32_LSHR($ulevel, 1));
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($j.0, BV32_LSHR($ulevel, 1));
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($j.0, BV32_LSHR($ulevel, 1));
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($j.0, BV32_LSHR($ulevel, 1));
    assert {:block_sourceloc} {:sourceloc_num 4} true;
    v2 := BV32_UGT($j.0, 0);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$1, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$2, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    v8$1 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1];
    v8$2 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 19} _LOG_WRITE_$$data(true, v0$1, v8$1, $$data[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$data(true, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 19} _CHECK_WRITE_$$data(true, v0$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$data"} true;
    $$data[v0$1] := v8$1;
    $$data[v0$2] := v8$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, BV32_AND(local_id_x$1, BV32_XOR($j.0, -1)), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_AND(local_id_x$1, BV32_XOR($j.0, -1))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, BV32_AND(local_id_x$2, BV32_XOR($j.0, -1)), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(local_id_x$2, BV32_XOR($j.0, -1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    v3$1 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_AND(local_id_x$1, BV32_XOR($j.0, -1))];
    v3$2 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_AND(local_id_x$2, BV32_XOR($j.0, -1))];
    call {:sourceloc} {:sourceloc_num 7} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, BV32_OR(local_id_x$1, $j.0), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_OR(local_id_x$1, $j.0)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 7} _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, BV32_OR(local_id_x$2, $j.0), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_OR(local_id_x$2, $j.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    v4$1 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_OR(local_id_x$1, $j.0)];
    v4$2 := $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_OR(local_id_x$2, $j.0)];
    v5$1 := BV1_ZEXT32((if FEQ32(v3$1, v4$1) || FLT32(v3$1, v4$1) then 1 else 0)) == BV1_ZEXT32((if BV32_AND($ulevelmask, v0$1) != 0 then 1 else 0));
    v5$2 := BV1_ZEXT32((if FEQ32(v3$2, v4$2) || FLT32(v3$2, v4$2) then 1 else 0)) == BV1_ZEXT32((if BV32_AND($ulevelmask, v0$2) != 0 then 1 else 0));
    p1$1 := (if v5$1 then v5$1 else p1$1);
    p1$2 := (if v5$2 then v5$2 else p1$2);
    p0$1 := (if !v5$1 then !v5$1 else p0$1);
    p0$2 := (if !v5$2 then !v5$2 else p0$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(p0$1, local_id_x$1, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(p0$2, local_id_x$2, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    v7$1 := (if p0$1 then $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1] else v7$1);
    v7$2 := (if p0$2 then $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] else v7$2);
    $0$1 := (if p0$1 then v7$1 else $0$1);
    $0$2 := (if p0$2 then v7$2 else $0$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(p1$1, BV32_XOR(local_id_x$1, $j.0), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_XOR(local_id_x$1, $j.0)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(p1$2, BV32_XOR(local_id_x$2, $j.0), $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_XOR(local_id_x$2, $j.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    v6$1 := (if p1$1 then $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][BV32_XOR(local_id_x$1, $j.0)] else v6$1);
    v6$2 := (if p1$2 then $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_XOR(local_id_x$2, $j.0)] else v6$2);
    $0$1 := (if p1$1 then v6$1 else $0$1);
    $0$2 := (if p1$2 then v6$2 else $0$2);
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 13} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$1, $0$1, $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(true, local_id_x$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} true;
    $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[1bv1][local_id_x$1] := $0$1;
    $$_ZZ19bitonic_sort_kernelPfjjE7sh_data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := $0$2;
    goto __partitioned_block_$truebb_2;

  __partitioned_block_$truebb_2:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_2(-1, -1);
    $j.0 := BV32_LSHR($j.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 512 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ19bitonic_sort_kernelPfjjE7sh_data, $$data, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ19bitonic_sort_kernelPfjjE7sh_data, $$data, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$_ZZ19bitonic_sort_kernelPfjjE7sh_data, $$data, _TRACKING;



function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

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



const _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data: int;

procedure {:inline 1} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;



implementation {:inline 1} _LOG_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data == _value then true else _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data);
    return;
}



procedure _CHECK_READ_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;



implementation {:inline 1} _LOG_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data);
    return;
}



procedure _CHECK_WRITE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int, _value: int);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sh_data"} {:array "$$_ZZ19bitonic_sort_kernelPfjjE7sh_data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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
    havoc $$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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
    havoc $$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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
    havoc $$_ZZ19bitonic_sort_kernelPfjjE7sh_data;
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;
