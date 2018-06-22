type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "outputArray"} {:global} $$outputArray: [int]int;

axiom {:array_info "$$outputArray"} {:global} {:elem_width 32} {:source_name "outputArray"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$outputArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$outputArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$outputArray: bool;

var {:source_name "sortedArray"} {:global} $$sortedArray: [int]int;

axiom {:array_info "$$sortedArray"} {:global} {:elem_width 32} {:source_name "sortedArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sortedArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sortedArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sortedArray: bool;

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

function __other_bv32(int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

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

procedure {:source_name "binarySearch"} {:kernel} $binarySearch($findMe: int, $globalLowerBound: int, $globalUpperBound: int, $subdivSize: int);
  requires {:sourceloc_num 0} {:thread 1} (if $subdivSize == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $globalLowerBound == 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$outputArray && !_WRITE_HAS_OCCURRED_$$outputArray && !_ATOMIC_HAS_OCCURRED_$$outputArray;
  requires !_READ_HAS_OCCURRED_$$sortedArray && !_WRITE_HAS_OCCURRED_$$sortedArray && !_ATOMIC_HAS_OCCURRED_$$sortedArray;
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
  modifies _READ_HAS_OCCURRED_$$outputArray, _WRITE_HAS_OCCURRED_$$outputArray, _WRITE_READ_BENIGN_FLAG_$$outputArray, _WRITE_READ_BENIGN_FLAG_$$outputArray;



implementation {:source_name "binarySearch"} {:kernel} $binarySearch($findMe: int, $globalLowerBound: int, $globalUpperBound: int, $subdivSize: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
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
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
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


  $0:
    v0$1 := BV32_ADD($globalLowerBound, BV32_MUL($subdivSize, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)));
    v0$2 := BV32_ADD($globalLowerBound, BV32_MUL($subdivSize, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    v1$1 := BV32_SUB(BV32_ADD(v0$1, $subdivSize), 1);
    v1$2 := BV32_SUB(BV32_ADD(v0$2, $subdivSize), 1);
    assume BV1_ZEXT32((if BV32_ULT(v0$1, v1$1) ==> BV32_ULT($$sortedArray[v0$1], $$sortedArray[v1$1]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_ULT(v0$2, v1$2) ==> BV32_ULT($$sortedArray[v0$2], $$sortedArray[v1$2]) then 1 else 0)) != 0;
    assume BV1_ZEXT32((if BV32_ULT(v1$2, v0$1) ==> BV32_ULT($$sortedArray[v1$2], $$sortedArray[v0$1]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_ULT(v1$1, v0$2) ==> BV32_ULT($$sortedArray[v1$1], $$sortedArray[v0$2]) then 1 else 0)) != 0;
    assume BV1_ZEXT32((if BV32_ULT(v1$1, v0$2) ==> BV32_ULT($$sortedArray[v1$1], $$sortedArray[v0$2]) then 1 else 0)) != 0 && BV1_ZEXT32((if BV32_ULT(v1$2, v0$1) ==> BV32_ULT($$sortedArray[v1$2], $$sortedArray[v0$1]) then 1 else 0)) != 0;
    v2$1 := $$sortedArray[v0$1];
    v2$2 := $$sortedArray[v0$2];
    v3$1 := $$sortedArray[v1$1];
    v3$2 := $$sortedArray[v1$2];
    v4$1 := BV32_UGT(v2$1, $findMe);
    v4$2 := BV32_UGT(v2$2, $findMe);
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
    p3$1 := (if v4$1 then v4$1 else p3$1);
    p3$2 := (if v4$2 then v4$2 else p3$2);
    p1$1 := (if !v4$1 then !v4$1 else p1$1);
    p1$2 := (if !v4$2 then !v4$2 else p1$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    v5$1 := (if p1$1 then BV32_ULT(v3$1, $findMe) else v5$1);
    v5$2 := (if p1$2 then BV32_ULT(v3$2, $findMe) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    p4$1 := (if p1$1 && !v5$1 then !v5$1 else p4$1);
    p4$2 := (if p1$2 && !v5$2 then !v5$2 else p4$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$outputArray(p4$1, 0, $$outputArray[0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$outputArray(p4$2, 0, $$outputArray[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v6$1 := (if p4$1 then $$outputArray[0] else v6$1);
    v6$2 := (if p4$2 then $$outputArray[0] else v6$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$outputArray(p4$1, 1, $$outputArray[1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$outputArray(p4$2, 1, $$outputArray[1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v7$1 := (if p4$1 then $$outputArray[1] else v7$1);
    v7$2 := (if p4$2 then $$outputArray[1] else v7$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$outputArray(p4$1, 2, $$outputArray[2]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$outputArray(p4$2, 2, $$outputArray[2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v8$1 := (if p4$1 then $$outputArray[2] else v8$1);
    v8$2 := (if p4$2 then $$outputArray[2] else v8$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$outputArray(p4$1, 3, $$outputArray[3]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$outputArray(p4$2, 3, $$outputArray[3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v9$1 := (if p4$1 then $$outputArray[3] else v9$1);
    v9$2 := (if p4$2 then $$outputArray[3] else v9$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$outputArray(p4$1, 0, v0$1, $$outputArray[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$outputArray(p4$2, 0, v0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[0] := (if p4$1 then v0$1 else $$outputArray[0]);
    $$outputArray[0] := (if p4$2 then v0$2 else $$outputArray[0]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$outputArray(p4$1, 1, v7$1, $$outputArray[1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 1);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$outputArray(p4$2, 1, v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[1] := (if p4$1 then v7$1 else $$outputArray[1]);
    $$outputArray[1] := (if p4$2 then v7$2 else $$outputArray[1]);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$outputArray(p4$1, 2, v8$1, $$outputArray[2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$outputArray(p4$2, 2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[2] := (if p4$1 then v8$1 else $$outputArray[2]);
    $$outputArray[2] := (if p4$2 then v8$2 else $$outputArray[2]);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$outputArray(p4$1, 3, v9$1, $$outputArray[3]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 3);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$outputArray(p4$2, 3, v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[3] := (if p4$1 then v9$1 else $$outputArray[3]);
    $$outputArray[3] := (if p4$2 then v9$2 else $$outputArray[3]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_READ_$$outputArray(p4$1, 0, $$outputArray[0]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 16} _CHECK_READ_$$outputArray(p4$2, 0, $$outputArray[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v10$1 := (if p4$1 then $$outputArray[0] else v10$1);
    v10$2 := (if p4$2 then $$outputArray[0] else v10$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$outputArray(p4$1, 1, $$outputArray[1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$outputArray(p4$2, 1, $$outputArray[1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v11$1 := (if p4$1 then $$outputArray[1] else v11$1);
    v11$2 := (if p4$2 then $$outputArray[1] else v11$2);
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$outputArray(p4$1, 2, $$outputArray[2]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$outputArray(p4$2, 2, $$outputArray[2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v12$1 := (if p4$1 then $$outputArray[2] else v12$1);
    v12$2 := (if p4$2 then $$outputArray[2] else v12$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$outputArray(p4$1, 3, $$outputArray[3]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$outputArray(p4$2, 3, $$outputArray[3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v13$1 := (if p4$1 then $$outputArray[3] else v13$1);
    v13$2 := (if p4$2 then $$outputArray[3] else v13$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$outputArray(p4$1, 0, v10$1, $$outputArray[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$outputArray(p4$2, 0, v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[0] := (if p4$1 then v10$1 else $$outputArray[0]);
    $$outputArray[0] := (if p4$2 then v10$2 else $$outputArray[0]);
    call {:sourceloc} {:sourceloc_num 21} _LOG_WRITE_$$outputArray(p4$1, 1, v1$1, $$outputArray[1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 1);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 21} _CHECK_WRITE_$$outputArray(p4$2, 1, v1$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[1] := (if p4$1 then v1$1 else $$outputArray[1]);
    $$outputArray[1] := (if p4$2 then v1$2 else $$outputArray[1]);
    call {:sourceloc} {:sourceloc_num 22} _LOG_WRITE_$$outputArray(p4$1, 2, v12$1, $$outputArray[2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 2);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 22} _CHECK_WRITE_$$outputArray(p4$2, 2, v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[2] := (if p4$1 then v12$1 else $$outputArray[2]);
    $$outputArray[2] := (if p4$2 then v12$2 else $$outputArray[2]);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$outputArray(p4$1, 3, v13$1, $$outputArray[3]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 3);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$outputArray(p4$2, 3, v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[3] := (if p4$1 then v13$1 else $$outputArray[3]);
    $$outputArray[3] := (if p4$2 then v13$2 else $$outputArray[3]);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$outputArray(p4$1, 0, $$outputArray[0]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$outputArray(p4$2, 0, $$outputArray[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v14$1 := (if p4$1 then $$outputArray[0] else v14$1);
    v14$2 := (if p4$2 then $$outputArray[0] else v14$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$outputArray(p4$1, 1, $$outputArray[1]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$outputArray(p4$2, 1, $$outputArray[1]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v15$1 := (if p4$1 then $$outputArray[1] else v15$1);
    v15$2 := (if p4$2 then $$outputArray[1] else v15$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$outputArray(p4$1, 2, $$outputArray[2]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$outputArray(p4$2, 2, $$outputArray[2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v16$1 := (if p4$1 then $$outputArray[2] else v16$1);
    v16$2 := (if p4$2 then $$outputArray[2] else v16$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$outputArray(p4$1, 3, $$outputArray[3]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$outputArray(p4$2, 3, $$outputArray[3]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$outputArray"} true;
    v17$1 := (if p4$1 then $$outputArray[3] else v17$1);
    v17$2 := (if p4$2 then $$outputArray[3] else v17$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_WRITE_$$outputArray(p4$1, 0, v14$1, $$outputArray[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 28} _CHECK_WRITE_$$outputArray(p4$2, 0, v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[0] := (if p4$1 then v14$1 else $$outputArray[0]);
    $$outputArray[0] := (if p4$2 then v14$2 else $$outputArray[0]);
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$outputArray(p4$1, 1, v15$1, $$outputArray[1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 1);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$outputArray(p4$2, 1, v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[1] := (if p4$1 then v15$1 else $$outputArray[1]);
    $$outputArray[1] := (if p4$2 then v15$2 else $$outputArray[1]);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$outputArray(p4$1, 2, v16$1, $$outputArray[2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 2);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$outputArray(p4$2, 2, v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[2] := (if p4$1 then v16$1 else $$outputArray[2]);
    $$outputArray[2] := (if p4$2 then v16$2 else $$outputArray[2]);
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$outputArray(p4$1, 3, 1, $$outputArray[3]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(p4$2, 3);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$outputArray(p4$2, 3, 1);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputArray"} true;
    $$outputArray[3] := (if p4$1 then 1 else $$outputArray[3]);
    $$outputArray[3] := (if p4$2 then 1 else $$outputArray[3]);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$outputArray: int;

procedure {:inline 1} _LOG_READ_$$outputArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$outputArray;



implementation {:inline 1} _LOG_READ_$$outputArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$outputArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputArray == _value then true else _READ_HAS_OCCURRED_$$outputArray);
    return;
}



procedure _CHECK_READ_$$outputArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$outputArray);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$outputArray: bool;

procedure {:inline 1} _LOG_WRITE_$$outputArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$outputArray, _WRITE_READ_BENIGN_FLAG_$$outputArray;



implementation {:inline 1} _LOG_WRITE_$$outputArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$outputArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputArray == _value then true else _WRITE_HAS_OCCURRED_$$outputArray);
    _WRITE_READ_BENIGN_FLAG_$$outputArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$outputArray);
    return;
}



procedure _CHECK_WRITE_$$outputArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputArray != _value);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputArray != _value);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$outputArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$outputArray;



implementation {:inline 1} _LOG_ATOMIC_$$outputArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$outputArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$outputArray);
    return;
}



procedure _CHECK_ATOMIC_$$outputArray(_P: bool, _offset: int);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "outputArray"} {:array "$$outputArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$outputArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$outputArray := (if _P && _WRITE_HAS_OCCURRED_$$outputArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$outputArray);
    return;
}



const _WATCHED_VALUE_$$sortedArray: int;

procedure {:inline 1} _LOG_READ_$$sortedArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sortedArray;



implementation {:inline 1} _LOG_READ_$$sortedArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sortedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedArray == _value then true else _READ_HAS_OCCURRED_$$sortedArray);
    return;
}



procedure _CHECK_READ_$$sortedArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sortedArray);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$sortedArray: bool;

procedure {:inline 1} _LOG_WRITE_$$sortedArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sortedArray, _WRITE_READ_BENIGN_FLAG_$$sortedArray;



implementation {:inline 1} _LOG_WRITE_$$sortedArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sortedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedArray == _value then true else _WRITE_HAS_OCCURRED_$$sortedArray);
    _WRITE_READ_BENIGN_FLAG_$$sortedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sortedArray);
    return;
}



procedure _CHECK_WRITE_$$sortedArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedArray != _value);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sortedArray != _value);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$sortedArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sortedArray;



implementation {:inline 1} _LOG_ATOMIC_$$sortedArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sortedArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sortedArray);
    return;
}



procedure _CHECK_ATOMIC_$$sortedArray(_P: bool, _offset: int);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "sortedArray"} {:array "$$sortedArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sortedArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sortedArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sortedArray := (if _P && _WRITE_HAS_OCCURRED_$$sortedArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sortedArray);
    return;
}



var _TRACKING: bool;

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
