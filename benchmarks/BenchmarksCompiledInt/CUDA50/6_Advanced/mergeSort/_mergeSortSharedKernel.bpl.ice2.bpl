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
 b0035: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_DstKey"} {:global} $$d_DstKey: [int]int;

axiom {:array_info "$$d_DstKey"} {:global} {:elem_width 32} {:source_name "d_DstKey"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_DstKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_DstKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_DstKey: bool;

var {:source_name "d_DstVal"} {:global} $$d_DstVal: [int]int;

axiom {:array_info "$$d_DstVal"} {:global} {:elem_width 32} {:source_name "d_DstVal"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_DstVal: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_DstVal: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_DstVal: bool;

axiom {:array_info "$$d_SrcKey"} {:global} {:elem_width 32} {:source_name "d_SrcKey"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_SrcKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_SrcKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_SrcKey: bool;

axiom {:array_info "$$d_SrcVal"} {:global} {:elem_width 32} {:source_name "d_SrcVal"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_SrcVal: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_SrcVal: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_SrcVal: bool;

var {:source_name "s_key"} {:group_shared} $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: [bv1][int]int;

axiom {:array_info "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:group_shared} {:elem_width 32} {:source_name "s_key"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:source_name "s_val"} {:group_shared} $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: [bv1][int]int;

axiom {:array_info "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:group_shared} {:elem_width 32} {:source_name "s_val"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

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

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mergeSortSharedKernel<1>"} {:kernel} $_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j($arrayLength: int);
  requires !_READ_HAS_OCCURRED_$$d_DstKey && !_WRITE_HAS_OCCURRED_$$d_DstKey && !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
  requires !_READ_HAS_OCCURRED_$$d_DstVal && !_WRITE_HAS_OCCURRED_$$d_DstVal && !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
  requires !_READ_HAS_OCCURRED_$$d_SrcKey && !_WRITE_HAS_OCCURRED_$$d_SrcKey && !_ATOMIC_HAS_OCCURRED_$$d_SrcKey;
  requires !_READ_HAS_OCCURRED_$$d_SrcVal && !_WRITE_HAS_OCCURRED_$$d_SrcVal && !_ATOMIC_HAS_OCCURRED_$$d_SrcVal;
  requires !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
  requires !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
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
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_HAS_OCCURRED_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey, _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_HAS_OCCURRED_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal, _TRACKING, _TRACKING;



implementation {:source_name "mergeSortSharedKernel<1>"} {:kernel} $_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j($arrayLength: int)
{
  var $stride.0: int;
  var $.02$1: int;
  var $.02$2: int;
  var $.03: int;
  var $pos.i.0$1: int;
  var $pos.i.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $pos.i.1$1: int;
  var $pos.i.1$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var $pos.i1.0$1: int;
  var $pos.i1.0$2: int;
  var $.01: int;
  var $1$1: int;
  var $1$2: int;
  var $pos.i1.1$1: int;
  var $pos.i1.1$2: int;
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
  var v8: bool;
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
  var v16: bool;
  var v17: bool;
  var v18$1: bool;
  var v18$2: bool;
  var v19$1: int;
  var v19$2: int;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: int;
  var v21$2: int;
  var v22: bool;
  var v23: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v25$1: int;
  var v25$2: int;
  var v26$1: bool;
  var v26$2: bool;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
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


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024), local_id_x$2);
    v2$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024), local_id_x$1);
    v2$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024), local_id_x$2);
    v3$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024), local_id_x$1);
    v3$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024), local_id_x$2);
    havoc v4$1, v4$2;
    call {:sourceloc} {:sourceloc_num 2} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, local_id_x$1, v4$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, local_id_x$2, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][local_id_x$1] := v4$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v4$2;
    havoc v5$1, v5$2;
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, local_id_x$1, v5$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][local_id_x$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, local_id_x$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, local_id_x$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][local_id_x$1] := v5$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2] := v5$2;
    havoc v6$1, v6$2;
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$1, 512), v6$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$2, 512));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$2, 512), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512)] := v6$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)] := v6$2;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$1, 512), v7$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$2, 512));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$2, 512), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512)] := v7$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)] := v7$2;
    $stride.0 := 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($stride.0, 1) ) ,  (  BV32_SGE($stride.0, 1) ) ,  (  BV32_ULE($stride.0, 1) ) ,  (  BV32_UGE($stride.0, 1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $stride.0 == 0 || BV32_AND($stride.0, BV32_SUB($stride.0, 1)) == 0 ) ,  (  $stride.0 != 0 ) ,  (  $.03 == 0 || BV32_AND($.03, BV32_SUB($.03, 1)) == 0 ) ,  (  $.03 != 0 ) ,  (  $.01 == 0 || BV32_AND($.01, BV32_SUB($.01, 1)) == 0 ) ,  (  $.01 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ) ,  (  _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ) ,  (  _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 9} true;
    v8 := BV32_ULT($stride.0, $arrayLength);
    goto __partitioned_block_$truebb_0, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v8;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 47} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, local_id_x$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, local_id_x$2, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v28$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][local_id_x$1];
    v28$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$d_DstKey(true, v2$1, v28$1, $$d_DstKey[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$d_DstKey(true, v2$2, v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstKey"} true;
    $$d_DstKey[v2$1] := v28$1;
    $$d_DstKey[v2$2] := v28$2;
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, local_id_x$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][local_id_x$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, local_id_x$2, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    v29$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][local_id_x$1];
    v29$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$d_DstVal(true, v3$1, v29$1, $$d_DstVal[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$d_DstVal(true, v3$2, v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstVal"} true;
    $$d_DstVal[v3$1] := v29$1;
    $$d_DstVal[v3$2] := v29$2;
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$1, 512), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$2, 512), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v30$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512)];
    v30$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)];
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$d_DstKey(true, BV32_ADD(v2$1, 512), v30$1, $$d_DstKey[BV32_ADD(v2$1, 512)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(true, BV32_ADD(v2$2, 512));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$d_DstKey(true, BV32_ADD(v2$2, 512), v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstKey"} true;
    $$d_DstKey[BV32_ADD(v2$1, 512)] := v30$1;
    $$d_DstKey[BV32_ADD(v2$2, 512)] := v30$2;
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$1, 512), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$2, 512), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    v31$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512)];
    v31$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512)];
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$d_DstVal(true, BV32_ADD(v3$1, 512), v31$1, $$d_DstVal[BV32_ADD(v3$1, 512)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(true, BV32_ADD(v3$2, 512));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$d_DstVal(true, BV32_ADD(v3$2, 512), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstVal"} true;
    $$d_DstVal[BV32_ADD(v3$1, 512)] := v31$1;
    $$d_DstVal[BV32_ADD(v3$2, 512)] := v31$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v8;
    v9$1 := BV32_AND(local_id_x$1, BV32_SUB($stride.0, 1));
    v9$2 := BV32_AND(local_id_x$2, BV32_SUB($stride.0, 1));
    v10$1 := BV32_MUL(2, BV32_SUB(local_id_x$1, v9$1));
    v10$2 := BV32_MUL(2, BV32_SUB(local_id_x$2, v9$2));
    v11$1 := BV32_MUL(2, BV32_SUB(local_id_x$1, v9$1));
    v11$2 := BV32_MUL(2, BV32_SUB(local_id_x$2, v9$2));
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$1, v9$1), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v9$1)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, v9$2), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, v9$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v12$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v9$1)];
    v12$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, v9$2)];
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$1, v9$1), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v9$1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, v9$2), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, v9$2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    v13$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v9$1)];
    v13$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, v9$2)];
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$1, BV32_ADD(v9$1, $stride.0)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_ADD(v9$1, $stride.0))]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, BV32_ADD(v9$2, $stride.0)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_ADD(v9$2, $stride.0))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v14$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_ADD(v9$1, $stride.0))];
    v14$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_ADD(v9$2, $stride.0))];
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$1, BV32_ADD(v9$1, $stride.0)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, BV32_ADD(v9$1, $stride.0))]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, BV32_ADD(v9$2, $stride.0)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, BV32_ADD(v9$2, $stride.0))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    v15$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, BV32_ADD(v9$1, $stride.0))];
    v15$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, BV32_ADD(v9$2, $stride.0))];
    v16 := $stride.0 == 0;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v16;
    $.03, $pos.i.0$1 := $stride.0, 0;
    $pos.i.0$2 := 0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_2"} true;
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  (  BV32_SLE($.03, $stride.0) ) ,  (  BV32_SGE($.03, $stride.0) ) ,  (  BV32_ULE($.03, $stride.0) ) ,  (  BV32_UGE($.03, $stride.0) ) ,  (  BV32_SLE($pos.i.0$1, 0) )  && (  BV32_SLE($pos.i.0$2, 0) ) ,  (  BV32_SGE($pos.i.0$1, 0) )  && (  BV32_SGE($pos.i.0$2, 0) ) ,  (  BV32_ULE($pos.i.0$1, 0) )  && (  BV32_ULE($pos.i.0$2, 0) ) ,  (  BV32_UGE($pos.i.0$1, 0) )  && (  BV32_UGE($pos.i.0$2, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $.03 == 0 || BV32_AND($.03, BV32_SUB($.03, 1)) == 0 ) ,  (  $.03 != 0 ) ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 18} true;
    v17 := BV32_UGT($.03, 0);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v17;
    $.02$1 := $pos.i.0$1;
    $.02$2 := $pos.i.0$2;
    goto $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit;

  $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit:
    v21$1 := BV32_ADD($.02$1, v9$1);
    v21$2 := BV32_ADD($.02$2, v9$2);
    v22 := $stride.0 == 0;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v22;
    $pos.i1.0$1, $.01 := 0, $stride.0;
    $pos.i1.0$2 := 0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_1"} true;
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  BV32_SLE($.01, $stride.0) ) ,  (  BV32_SGE($.01, $stride.0) ) ,  (  BV32_ULE($.01, $stride.0) ) ,  (  BV32_UGE($.01, $stride.0) ) ,  (  BV32_SLE($pos.i1.0$1, 0) )  && (  BV32_SLE($pos.i1.0$2, 0) ) ,  (  BV32_SGE($pos.i1.0$1, 0) )  && (  BV32_SGE($pos.i1.0$2, 0) ) ,  (  BV32_ULE($pos.i1.0$1, 0) )  && (  BV32_ULE($pos.i1.0$2, 0) ) ,  (  BV32_UGE($pos.i1.0$1, 0) )  && (  BV32_UGE($pos.i1.0$2, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  $.01 == 0 || BV32_AND($.01, BV32_SUB($.01, 1)) == 0 ) ,  (  $.01 != 0 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 30} true;
    v23 := BV32_UGT($.01, 0);
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v23;
    $.0$1 := $pos.i1.0$1;
    $.0$2 := $pos.i1.0$2;
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0;

  __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0:
    v27$1 := BV32_ADD($.0$1, v9$1);
    v27$2 := BV32_ADD($.0$2, v9$2);
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_1;

  __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_1:
    call {:sourceloc_num 40} $bugle_barrier_duplicated_2(-1, -1);
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$1, v21$1), v12$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v21$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, v21$2));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, v21$2), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v21$1)] := v12$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, v21$2)] := v12$2;
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$1, v21$1), v13$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v21$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, v21$2));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, v21$2), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v21$1)] := v13$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, v21$2)] := v13$2;
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$1, v27$1), v14$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v27$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, v27$2));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, v27$2), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v27$1)] := v14$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, v27$2)] := v14$2;
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$1, v27$1), v15$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v27$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, v27$2));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(v11$2, v27$2), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v27$1)] := v15$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, v27$2)] := v15$2;
    $stride.0 := BV32_SHL($stride.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb5:
    assume {:partition} v23;
    v24$1 := BV32_ULT(BV32_ADD($pos.i1.0$1, $.01), $stride.0);
    v24$2 := BV32_ULT(BV32_ADD($pos.i1.0$2, $.01), $stride.0);
    p5$1 := (if v24$1 then v24$1 else p5$1);
    p5$2 := (if v24$2 then v24$2 else p5$2);
    p4$1 := (if !v24$1 then !v24$1 else p4$1);
    p4$2 := (if !v24$2 then !v24$2 else p4$2);
    $1$1 := (if p4$1 then $stride.0 else $1$1);
    $1$2 := (if p4$2 then $stride.0 else $1$2);
    $1$1 := (if p5$1 then BV32_ADD($pos.i1.0$1, $.01) else $1$1);
    $1$2 := (if p5$2 then BV32_ADD($pos.i1.0$2, $.01) else $1$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$1, BV32_SUB($1$1, 1)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_SUB($1$1, 1))]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(v10$2, BV32_SUB($1$2, 1)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_SUB($1$2, 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v25$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_SUB($1$1, 1))];
    v25$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_SUB($1$2, 1))];
    v26$1 := BV32_ULE(v25$1, v14$1);
    v26$2 := BV32_ULE(v25$2, v14$2);
    p7$1 := (if v26$1 then v26$1 else p7$1);
    p7$2 := (if v26$2 then v26$2 else p7$2);
    p6$1 := (if !v26$1 then !v26$1 else p6$1);
    p6$2 := (if !v26$2 then !v26$2 else p6$2);
    $pos.i1.1$1 := (if p6$1 then $pos.i1.0$1 else $pos.i1.1$1);
    $pos.i1.1$2 := (if p6$2 then $pos.i1.0$2 else $pos.i1.1$2);
    $pos.i1.1$1 := (if p7$1 then $1$1 else $pos.i1.1$1);
    $pos.i1.1$2 := (if p7$2 then $1$2 else $pos.i1.1$2);
    $pos.i1.0$1, $.01 := $pos.i1.1$1, BV32_LSHR($.01, 1);
    $pos.i1.0$2 := $pos.i1.1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $15;

  $truebb4:
    assume {:partition} v22;
    $.0$1 := 0;
    $.0$2 := 0;
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0;

  $truebb1:
    assume {:partition} v17;
    v18$1 := BV32_ULT(BV32_ADD($pos.i.0$1, $.03), $stride.0);
    v18$2 := BV32_ULT(BV32_ADD($pos.i.0$2, $.03), $stride.0);
    p1$1 := (if v18$1 then v18$1 else p1$1);
    p1$2 := (if v18$2 then v18$2 else p1$2);
    p0$1 := (if !v18$1 then !v18$1 else p0$1);
    p0$2 := (if !v18$2 then !v18$2 else p0$2);
    $0$1 := (if p0$1 then $stride.0 else $0$1);
    $0$2 := (if p0$2 then $stride.0 else $0$2);
    $0$1 := (if p1$1 then BV32_ADD($pos.i.0$1, $.03) else $0$1);
    $0$2 := (if p1$2 then BV32_ADD($pos.i.0$2, $.03) else $0$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(BV32_ADD(v10$1, $stride.0), BV32_SUB($0$1, 1)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(BV32_ADD(v10$1, $stride.0), BV32_SUB($0$1, 1))]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(BV32_ADD(v10$2, $stride.0), BV32_SUB($0$2, 1)), $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v10$2, $stride.0), BV32_SUB($0$2, 1))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    v19$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(BV32_ADD(v10$1, $stride.0), BV32_SUB($0$1, 1))];
    v19$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v10$2, $stride.0), BV32_SUB($0$2, 1))];
    v20$1 := BV32_ULT(v19$1, v12$1);
    v20$2 := BV32_ULT(v19$2, v12$2);
    p3$1 := (if v20$1 then v20$1 else p3$1);
    p3$2 := (if v20$2 then v20$2 else p3$2);
    p2$1 := (if !v20$1 then !v20$1 else p2$1);
    p2$2 := (if !v20$2 then !v20$2 else p2$2);
    $pos.i.1$1 := (if p2$1 then $pos.i.0$1 else $pos.i.1$1);
    $pos.i.1$2 := (if p2$2 then $pos.i.0$2 else $pos.i.1$2);
    $pos.i.1$1 := (if p3$1 then $0$1 else $pos.i.1$1);
    $pos.i.1$2 := (if p3$2 then $0$2 else $pos.i.1$2);
    $.03, $pos.i.0$1 := BV32_LSHR($.03, 1), $pos.i.1$1;
    $pos.i.0$2 := $pos.i.1$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $5;

  $truebb0:
    assume {:partition} v16;
    $.02$1 := 0;
    $.02$2 := 0;
    goto $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 512 then 1 else 0) != 0;

axiom (if num_groups_x == 4096 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



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



































const _WATCHED_VALUE_$$d_DstKey: int;

procedure {:inline 1} _LOG_READ_$$d_DstKey(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_DstKey;



implementation {:inline 1} _LOG_READ_$$d_DstKey(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then true else _READ_HAS_OCCURRED_$$d_DstKey);
    return;
}



procedure _CHECK_READ_$$d_DstKey(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_DstKey: bool;

procedure {:inline 1} _LOG_WRITE_$$d_DstKey(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey;



implementation {:inline 1} _LOG_WRITE_$$d_DstKey(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then true else _WRITE_HAS_OCCURRED_$$d_DstKey);
    _WRITE_READ_BENIGN_FLAG_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
    return;
}



procedure _CHECK_WRITE_$$d_DstKey(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey != _value);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey != _value);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_DstKey(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_DstKey;



implementation {:inline 1} _LOG_ATOMIC_$$d_DstKey(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_DstKey);
    return;
}



procedure _CHECK_ATOMIC_$$d_DstKey(_P: bool, _offset: int);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_DstKey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_DstKey := (if _P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
    return;
}



const _WATCHED_VALUE_$$d_DstVal: int;

procedure {:inline 1} _LOG_READ_$$d_DstVal(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_DstVal;



implementation {:inline 1} _LOG_READ_$$d_DstVal(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then true else _READ_HAS_OCCURRED_$$d_DstVal);
    return;
}



procedure _CHECK_READ_$$d_DstVal(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_DstVal: bool;

procedure {:inline 1} _LOG_WRITE_$$d_DstVal(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal;



implementation {:inline 1} _LOG_WRITE_$$d_DstVal(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then true else _WRITE_HAS_OCCURRED_$$d_DstVal);
    _WRITE_READ_BENIGN_FLAG_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
    return;
}



procedure _CHECK_WRITE_$$d_DstVal(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal != _value);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal != _value);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_DstVal(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_DstVal;



implementation {:inline 1} _LOG_ATOMIC_$$d_DstVal(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_DstVal);
    return;
}



procedure _CHECK_ATOMIC_$$d_DstVal(_P: bool, _offset: int);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_DstVal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_DstVal := (if _P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
    return;
}



const _WATCHED_VALUE_$$d_SrcKey: int;

procedure {:inline 1} _LOG_READ_$$d_SrcKey(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_SrcKey;



implementation {:inline 1} _LOG_READ_$$d_SrcKey(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then true else _READ_HAS_OCCURRED_$$d_SrcKey);
    return;
}



procedure _CHECK_READ_$$d_SrcKey(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_SrcKey: bool;

procedure {:inline 1} _LOG_WRITE_$$d_SrcKey(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_SrcKey, _WRITE_READ_BENIGN_FLAG_$$d_SrcKey;



implementation {:inline 1} _LOG_WRITE_$$d_SrcKey(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then true else _WRITE_HAS_OCCURRED_$$d_SrcKey);
    _WRITE_READ_BENIGN_FLAG_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
    return;
}



procedure _CHECK_WRITE_$$d_SrcKey(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey != _value);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey != _value);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_SrcKey(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_SrcKey;



implementation {:inline 1} _LOG_ATOMIC_$$d_SrcKey(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_SrcKey);
    return;
}



procedure _CHECK_ATOMIC_$$d_SrcKey(_P: bool, _offset: int);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcKey(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_SrcKey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcKey(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_SrcKey := (if _P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
    return;
}



const _WATCHED_VALUE_$$d_SrcVal: int;

procedure {:inline 1} _LOG_READ_$$d_SrcVal(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_SrcVal;



implementation {:inline 1} _LOG_READ_$$d_SrcVal(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then true else _READ_HAS_OCCURRED_$$d_SrcVal);
    return;
}



procedure _CHECK_READ_$$d_SrcVal(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_SrcVal: bool;

procedure {:inline 1} _LOG_WRITE_$$d_SrcVal(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_SrcVal, _WRITE_READ_BENIGN_FLAG_$$d_SrcVal;



implementation {:inline 1} _LOG_WRITE_$$d_SrcVal(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then true else _WRITE_HAS_OCCURRED_$$d_SrcVal);
    _WRITE_READ_BENIGN_FLAG_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
    return;
}



procedure _CHECK_WRITE_$$d_SrcVal(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal != _value);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal != _value);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_SrcVal(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_SrcVal;



implementation {:inline 1} _LOG_ATOMIC_$$d_SrcVal(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_SrcVal);
    return;
}



procedure _CHECK_ATOMIC_$$d_SrcVal(_P: bool, _offset: int);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcVal(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_SrcVal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcVal(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_SrcVal := (if _P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
    return;
}



const _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: int;

procedure {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then true else _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



const _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: int;

procedure {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then true else _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon4;

  anon4:
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon4;

  anon4:
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon5;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon4;

  anon4:
    havoc $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon5;

  anon11_Then:
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
































