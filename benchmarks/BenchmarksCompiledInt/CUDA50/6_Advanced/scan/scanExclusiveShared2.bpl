type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Buf"} {:global} $$d_Buf: [int]int;

axiom {:array_info "$$d_Buf"} {:global} {:elem_width 32} {:source_name "d_Buf"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Buf: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Buf: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Buf: bool;

axiom {:array_info "$$d_Dst"} {:global} {:elem_width 32} {:source_name "d_Dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Dst: bool;

axiom {:array_info "$$d_Src"} {:global} {:elem_width 32} {:source_name "d_Src"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Src: bool;

var {:source_name "s_Data"} {:group_shared} $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: [bv1][int]int;

axiom {:array_info "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:group_shared} {:elem_width 32} {:source_name "s_Data"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: bool;

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

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "scanExclusiveShared2"} {:kernel} $_Z20scanExclusiveShared2PjS_S_jj($N: int, $arrayLength: int);
  requires {:sourceloc_num 0} {:thread 1} (if $N == 6656 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND($arrayLength, BV32_SUB($arrayLength, 1)) == 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Buf && !_WRITE_HAS_OCCURRED_$$d_Buf && !_ATOMIC_HAS_OCCURRED_$$d_Buf;
  requires !_READ_HAS_OCCURRED_$$d_Dst && !_WRITE_HAS_OCCURRED_$$d_Dst && !_ATOMIC_HAS_OCCURRED_$$d_Dst;
  requires !_READ_HAS_OCCURRED_$$d_Src && !_WRITE_HAS_OCCURRED_$$d_Src && !_ATOMIC_HAS_OCCURRED_$$d_Src;
  requires !_READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && !_WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && !_ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
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
  modifies $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _WRITE_HAS_OCCURRED_$$d_Buf, _WRITE_READ_BENIGN_FLAG_$$d_Buf, _WRITE_READ_BENIGN_FLAG_$$d_Buf, $$d_Buf, _TRACKING, _TRACKING;



implementation {:source_name "scanExclusiveShared2"} {:kernel} $_Z20scanExclusiveShared2PjS_S_jj($N: int, $arrayLength: int)
{
  var $idata.0$1: int;
  var $idata.0$2: int;
  var $offset.i.i.0: int;
  var v1$1: bool;
  var v1$2: bool;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6: bool;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: bool;
  var v10$2: bool;
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
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ULT(v0$1, $N);
    v1$2 := BV32_ULT(v0$2, $N);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    $idata.0$1 := (if p0$1 then BV32_ADD(v2$1, v3$1) else $idata.0$1);
    $idata.0$2 := (if p0$2 then BV32_ADD(v2$2, v3$2) else $idata.0$2);
    $idata.0$1 := (if p1$1 then 0 else $idata.0$1);
    $idata.0$2 := (if p1$2 then 0 else $idata.0$2);
    v4$1 := BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB($arrayLength, 1)));
    v4$2 := BV32_SUB(BV32_MUL(2, local_id_x$2), BV32_AND(local_id_x$2, BV32_SUB($arrayLength, 1)));
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v4$1, 0, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v4$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v4$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v4$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v4$1] := 0;
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v4$2] := 0;
    v5$1 := BV32_ADD(v4$1, $arrayLength);
    v5$2 := BV32_ADD(v4$2, $arrayLength);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$1, $idata.0$1, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2, $idata.0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1] := $idata.0$1;
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := $idata.0$2;
    $offset.i.i.0 := 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b9 ==> _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB($arrayLength, 1))), $arrayLength);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b8 ==> _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB($arrayLength, 1))), $arrayLength) || _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "nowrite"} _b7 ==> !_WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assert {:tag "noread"} _b6 ==> !_READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assert {:tag "pow2NotZero"} _b5 ==> $offset.i.i.0 != 0;
    assert {:tag "pow2"} _b4 ==> $offset.i.i.0 == 0 || BV32_AND($offset.i.i.0, BV32_SUB($offset.i.i.0, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($offset.i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($offset.i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($offset.i.i.0, 1);
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($offset.i.i.0, 1);
    assert {:block_sourceloc} {:sourceloc_num 9} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 10} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == v5$1 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == BV32_SUB(v5$1, $arrayLength) then 1 else 0))) != 0 then 1 else 0) != 0;
    v6 := BV32_ULT($offset.i.i.0, $arrayLength);
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto __partitioned_block_$truebb0_0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$1, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    v9$1 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1];
    v9$2 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2];
    v10$1 := BV32_ULT(v0$1, $N);
    v10$2 := BV32_ULT(v0$2, $N);
    p2$1 := (if v10$1 then v10$1 else p2$1);
    p2$2 := (if v10$2 then v10$2 else p2$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$d_Buf(p2$1, v0$1, BV32_SUB(v9$1, $idata.0$1), $$d_Buf[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Buf(p2$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$d_Buf(p2$2, v0$2, BV32_SUB(v9$2, $idata.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Buf"} true;
    $$d_Buf[v0$1] := (if p2$1 then BV32_SUB(v9$1, $idata.0$1) else $$d_Buf[v0$1]);
    $$d_Buf[v0$2] := (if p2$2 then BV32_SUB(v9$2, $idata.0$2) else $$d_Buf[v0$2]);
    return;

  __partitioned_block_$truebb0_0:
    assume {:partition} v6;
    goto __partitioned_block_$truebb0_1;

  __partitioned_block_$truebb0_1:
    call {:sourceloc_num 12} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$1, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2, $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    v7$1 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1];
    v7$2 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2];
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, BV32_SUB(v5$1, $offset.i.i.0), $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][BV32_SUB(v5$1, $offset.i.i.0)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, BV32_SUB(v5$2, $offset.i.i.0), $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, $offset.i.i.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    v8$1 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][BV32_SUB(v5$1, $offset.i.i.0)];
    v8$2 := $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v5$2, $offset.i.i.0)];
    goto __partitioned_block_$truebb0_2;

  __partitioned_block_$truebb0_2:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$1, BV32_ADD(v7$1, v8$1), $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(true, v5$2, BV32_ADD(v7$2, v8$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} true;
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[1bv1][v5$1] := BV32_ADD(v7$1, v8$1);
    $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v5$2] := BV32_ADD(v7$2, v8$2);
    $offset.i.i.0 := BV32_SHL($offset.i.i.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 26 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, $$d_Buf, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, $$d_Buf, _TRACKING;



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

const _WATCHED_VALUE_$$d_Buf: int;

procedure {:inline 1} _LOG_READ_$$d_Buf(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Buf;



implementation {:inline 1} _LOG_READ_$$d_Buf(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Buf := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buf == _value then true else _READ_HAS_OCCURRED_$$d_Buf);
    return;
}



procedure _CHECK_READ_$$d_Buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Buf);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Buf: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Buf(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Buf, _WRITE_READ_BENIGN_FLAG_$$d_Buf;



implementation {:inline 1} _LOG_WRITE_$$d_Buf(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Buf := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buf == _value then true else _WRITE_HAS_OCCURRED_$$d_Buf);
    _WRITE_READ_BENIGN_FLAG_$$d_Buf := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buf == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Buf);
    return;
}



procedure _CHECK_WRITE_$$d_Buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buf != _value);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buf != _value);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Buf(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Buf;



implementation {:inline 1} _LOG_ATOMIC_$$d_Buf(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Buf := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Buf);
    return;
}



procedure _CHECK_ATOMIC_$$d_Buf(_P: bool, _offset: int);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Buf"} {:array "$$d_Buf"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Buf(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Buf;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Buf(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Buf := (if _P && _WRITE_HAS_OCCURRED_$$d_Buf && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Buf);
    return;
}



const _WATCHED_VALUE_$$d_Dst: int;

procedure {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _READ_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Dst);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _WRITE_HAS_OCCURRED_$$d_Dst);
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



procedure _CHECK_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



const _WATCHED_VALUE_$$d_Src: int;

procedure {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _READ_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Src);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Src: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Src, _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _WRITE_HAS_OCCURRED_$$d_Src);
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



procedure _CHECK_WRITE_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_ATOMIC_$$d_Src(_P: bool, _offset: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



const _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: int;

procedure {:inline 1} _LOG_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;



implementation {:inline 1} _LOG_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data == _value then true else _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data);
    return;
}



procedure _CHECK_READ_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;



implementation {:inline 1} _LOG_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data);
    return;
}



procedure _CHECK_WRITE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Buf;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Buf;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Buf;
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
    havoc $$d_Buf;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Buf;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Buf;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Buf;
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
    havoc $$d_Buf;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data;
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

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;
