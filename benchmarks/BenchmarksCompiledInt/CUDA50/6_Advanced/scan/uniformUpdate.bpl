type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Data"} {:global} $$d_Data: [int]int;

axiom {:array_info "$$d_Data"} {:global} {:elem_width 32} {:source_name "d_Data"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Data: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Data: bool;

axiom {:array_info "$$d_Buffer"} {:global} {:elem_width 32} {:source_name "d_Buffer"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Buffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Buffer: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Buffer: bool;

axiom {:array_info "$$data4"} {:elem_width 32} {:source_name "data4"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:source_name "buf"} {:group_shared} $$_ZZ13uniformUpdateP5uint4PjE3buf: [bv1][int]int;

axiom {:array_info "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:group_shared} {:elem_width 32} {:source_name "buf"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf: bool;

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

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "uniformUpdate"} {:kernel} $_Z13uniformUpdateP5uint4Pj();
  requires !_READ_HAS_OCCURRED_$$d_Data && !_WRITE_HAS_OCCURRED_$$d_Data && !_ATOMIC_HAS_OCCURRED_$$d_Data;
  requires !_READ_HAS_OCCURRED_$$d_Buffer && !_WRITE_HAS_OCCURRED_$$d_Buffer && !_ATOMIC_HAS_OCCURRED_$$d_Buffer;
  requires !_READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && !_WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && !_ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;
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
  modifies $$_ZZ13uniformUpdateP5uint4PjE3buf, _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf, $$d_Data, _TRACKING, _READ_HAS_OCCURRED_$$d_Data, _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf, _WRITE_HAS_OCCURRED_$$d_Data, _WRITE_READ_BENIGN_FLAG_$$d_Data, _WRITE_READ_BENIGN_FLAG_$$d_Data;



implementation {:source_name "uniformUpdate"} {:kernel} $_Z13uniformUpdateP5uint4Pj()
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
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
  var v16$1: int;
  var v16$2: int;
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
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := local_id_x$1 == 0;
    v1$2 := local_id_x$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p0$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p0$2 then _HAVOC_int$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 3} _LOG_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf(p0$1, 0, v2$1, $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 3} _CHECK_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf(p0$2, 0, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf"} true;
    $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0] := (if p0$1 then v2$1 else $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v2$2 else $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 5} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 6} _LOG_READ_$$d_Data(true, BV32_MUL(v0$1, 4), $$d_Data[BV32_MUL(v0$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 6} _CHECK_READ_$$d_Data(true, BV32_MUL(v0$2, 4), $$d_Data[BV32_MUL(v0$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Data"} true;
    v3$1 := $$d_Data[BV32_MUL(v0$1, 4)];
    v3$2 := $$d_Data[BV32_MUL(v0$2, 4)];
    $$data4$0$1 := v3$1;
    $$data4$0$2 := v3$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 8} _CHECK_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Data"} true;
    v4$1 := $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 1)];
    v4$2 := $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 1)];
    $$data4$1$1 := v4$1;
    $$data4$1$2 := v4$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Data"} true;
    v5$1 := $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 2)];
    v5$2 := $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 2)];
    $$data4$2$1 := v5$1;
    $$data4$2$2 := v5$2;
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_Data"} true;
    v6$1 := $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 3)];
    v6$2 := $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 3)];
    $$data4$3$1 := v6$1;
    $$data4$3$2 := v6$2;
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf"} true;
    v7$1 := $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0];
    v7$2 := $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v8$1 := $$data4$0$1;
    v8$2 := $$data4$0$2;
    $$data4$0$1 := BV32_ADD(v8$1, v7$1);
    $$data4$0$2 := BV32_ADD(v8$2, v7$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf"} true;
    v9$1 := $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0];
    v9$2 := $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v10$1 := $$data4$1$1;
    v10$2 := $$data4$1$2;
    $$data4$1$1 := BV32_ADD(v10$1, v9$1);
    $$data4$1$2 := BV32_ADD(v10$2, v9$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf"} true;
    v11$1 := $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0];
    v11$2 := $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v12$1 := $$data4$2$1;
    v12$2 := $$data4$2$2;
    $$data4$2$1 := BV32_ADD(v12$1, v11$1);
    $$data4$2$2 := BV32_ADD(v12$2, v11$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(true, 0, $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf"} true;
    v13$1 := $$_ZZ13uniformUpdateP5uint4PjE3buf[1bv1][0];
    v13$2 := $$_ZZ13uniformUpdateP5uint4PjE3buf[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0];
    v14$1 := $$data4$3$1;
    v14$2 := $$data4$3$2;
    $$data4$3$1 := BV32_ADD(v14$1, v13$1);
    $$data4$3$2 := BV32_ADD(v14$2, v13$2);
    v15$1 := $$data4$0$1;
    v15$2 := $$data4$0$2;
    call {:sourceloc} {:sourceloc_num 27} _LOG_WRITE_$$d_Data(true, BV32_MUL(v0$1, 4), v15$1, $$d_Data[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 27} _CHECK_WRITE_$$d_Data(true, BV32_MUL(v0$2, 4), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Data"} true;
    $$d_Data[BV32_MUL(v0$1, 4)] := v15$1;
    $$d_Data[BV32_MUL(v0$2, 4)] := v15$2;
    v16$1 := $$data4$1$1;
    v16$2 := $$data4$1$2;
    call {:sourceloc} {:sourceloc_num 29} _LOG_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v16$1, $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 29} _CHECK_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Data"} true;
    $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v16$1;
    $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v16$2;
    v17$1 := $$data4$2$1;
    v17$2 := $$data4$2$2;
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v17$1, $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Data"} true;
    $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v17$1;
    $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v17$2;
    v18$1 := $$data4$3$1;
    v18$2 := $$data4$3$2;
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v18$1, $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$d_Data(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Data"} true;
    $$d_Data[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v18$1;
    $$d_Data[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v18$2;
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 6624 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ13uniformUpdateP5uint4PjE3buf, $$d_Data, _TRACKING;



var $$data4$0$1: int;

var $$data4$0$2: int;

var $$data4$1$1: int;

var $$data4$1$2: int;

var $$data4$2$1: int;

var $$data4$2$2: int;

var $$data4$3$1: int;

var $$data4$3$2: int;

const _WATCHED_VALUE_$$d_Data: int;

procedure {:inline 1} _LOG_READ_$$d_Data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Data;



implementation {:inline 1} _LOG_READ_$$d_Data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then true else _READ_HAS_OCCURRED_$$d_Data);
    return;
}



procedure _CHECK_READ_$$d_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Data);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Data: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Data, _WRITE_READ_BENIGN_FLAG_$$d_Data;



implementation {:inline 1} _LOG_WRITE_$$d_Data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then true else _WRITE_HAS_OCCURRED_$$d_Data);
    _WRITE_READ_BENIGN_FLAG_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Data);
    return;
}



procedure _CHECK_WRITE_$$d_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data != _value);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Data != _value);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Data;



implementation {:inline 1} _LOG_ATOMIC_$$d_Data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Data := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Data);
    return;
}



procedure _CHECK_ATOMIC_$$d_Data(_P: bool, _offset: int);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Data"} {:array "$$d_Data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Data := (if _P && _WRITE_HAS_OCCURRED_$$d_Data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Data);
    return;
}



const _WATCHED_VALUE_$$d_Buffer: int;

procedure {:inline 1} _LOG_READ_$$d_Buffer(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Buffer;



implementation {:inline 1} _LOG_READ_$$d_Buffer(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Buffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buffer == _value then true else _READ_HAS_OCCURRED_$$d_Buffer);
    return;
}



procedure _CHECK_READ_$$d_Buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Buffer);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Buffer: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Buffer(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Buffer, _WRITE_READ_BENIGN_FLAG_$$d_Buffer;



implementation {:inline 1} _LOG_WRITE_$$d_Buffer(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Buffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buffer == _value then true else _WRITE_HAS_OCCURRED_$$d_Buffer);
    _WRITE_READ_BENIGN_FLAG_$$d_Buffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buffer == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Buffer);
    return;
}



procedure _CHECK_WRITE_$$d_Buffer(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buffer != _value);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Buffer != _value);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Buffer(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Buffer;



implementation {:inline 1} _LOG_ATOMIC_$$d_Buffer(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Buffer := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Buffer);
    return;
}



procedure _CHECK_ATOMIC_$$d_Buffer(_P: bool, _offset: int);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Buffer"} {:array "$$d_Buffer"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Buffer(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Buffer;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Buffer(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Buffer := (if _P && _WRITE_HAS_OCCURRED_$$d_Buffer && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Buffer);
    return;
}



const _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;



implementation {:inline 1} _LOG_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf == _value then true else _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf);
    return;
}



procedure _CHECK_READ_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf, _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int, _value: int);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13uniformUpdateP5uint4PjE3buf != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "buf"} {:array "$$_ZZ13uniformUpdateP5uint4PjE3buf"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13uniformUpdateP5uint4PjE3buf);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13uniformUpdateP5uint4PjE3buf;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Data;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Data;
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
    havoc $$d_Data;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ13uniformUpdateP5uint4PjE3buf;
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
