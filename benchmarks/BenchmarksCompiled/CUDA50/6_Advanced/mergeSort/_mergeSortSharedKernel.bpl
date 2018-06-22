type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "d_DstKey"} {:global} $$d_DstKey: [bv32]bv32;

axiom {:array_info "$$d_DstKey"} {:global} {:elem_width 32} {:source_name "d_DstKey"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_DstKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_DstKey: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_DstKey: bool;

var {:source_name "d_DstVal"} {:global} $$d_DstVal: [bv32]bv32;

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

var {:source_name "s_key"} {:group_shared} $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:group_shared} {:elem_width 32} {:source_name "s_key"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

var {:source_name "s_val"} {:group_shared} $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: [bv1][bv32]bv32;

axiom {:array_info "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:group_shared} {:elem_width 32} {:source_name "s_val"} {:source_elem_width 32} {:source_dimensions "1024"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

const _WATCHED_OFFSET: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvlshr"} BV32_LSHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvugt"} BV32_UGT(bv32, bv32) : bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "mergeSortSharedKernel<1>"} {:kernel} $_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j($arrayLength: bv32);
  requires !_READ_HAS_OCCURRED_$$d_DstKey && !_WRITE_HAS_OCCURRED_$$d_DstKey && !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
  requires !_READ_HAS_OCCURRED_$$d_DstVal && !_WRITE_HAS_OCCURRED_$$d_DstVal && !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
  requires !_READ_HAS_OCCURRED_$$d_SrcKey && !_WRITE_HAS_OCCURRED_$$d_SrcKey && !_ATOMIC_HAS_OCCURRED_$$d_SrcKey;
  requires !_READ_HAS_OCCURRED_$$d_SrcVal && !_WRITE_HAS_OCCURRED_$$d_SrcVal && !_ATOMIC_HAS_OCCURRED_$$d_SrcVal;
  requires !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
  requires !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_HAS_OCCURRED_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey, _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_HAS_OCCURRED_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal, _TRACKING, _TRACKING;



implementation {:source_name "mergeSortSharedKernel<1>"} {:kernel} $_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j($arrayLength: bv32)
{
  var $stride.0: bv32;
  var $retval.i.0$1: bv32;
  var $retval.i.0$2: bv32;
  var $stride.addr.i.0: bv32;
  var $pos.i.0$1: bv32;
  var $pos.i.0$2: bv32;
  var $cond.i$1: bv32;
  var $cond.i$2: bv32;
  var $pos.i.1$1: bv32;
  var $pos.i.1$2: bv32;
  var $retval.i.56.0$1: bv32;
  var $retval.i.56.0$2: bv32;
  var $pos.i.61.0$1: bv32;
  var $pos.i.61.0$2: bv32;
  var $stride.addr.i.60.0: bv32;
  var $cond.i.74$1: bv32;
  var $cond.i.74$2: bv32;
  var $pos.i.61.1$1: bv32;
  var $pos.i.61.1$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v9$1: bv32;
  var v9$2: bv32;
  var v10$1: bv32;
  var v10$2: bv32;
  var v8: bool;
  var v11$1: bv32;
  var v11$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v31$1: bv32;
  var v31$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15$1: bv32;
  var v15$2: bv32;
  var v18$1: bool;
  var v18$2: bool;
  var v16: bool;
  var v17: bool;
  var v20$1: bool;
  var v20$2: bool;
  var v23: bool;
  var v24$1: bool;
  var v24$2: bool;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22: bool;
  var v27$1: bv32;
  var v27$2: bv32;
  var v26$1: bool;
  var v26$2: bool;
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


  $entry:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024bv32), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024bv32), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024bv32), local_id_x$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024bv32), local_id_x$2);
    v2$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024bv32), local_id_x$1);
    v2$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024bv32), local_id_x$2);
    v3$1 := BV32_ADD(BV32_MUL(group_id_x$1, 1024bv32), local_id_x$1);
    v3$2 := BV32_ADD(BV32_MUL(group_id_x$2, 1024bv32), local_id_x$2);
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
    call {:sourceloc} {:sourceloc_num 6} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$1, 512bv32), v6$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$2, 512bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 6} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 6} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(true, BV32_ADD(local_id_x$2, 512bv32), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512bv32)] := v6$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512bv32)] := v6$2;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$1, 512bv32), v7$1, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$2, 512bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(true, BV32_ADD(local_id_x$2, 512bv32), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} true;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512bv32)] := v7$1;
    $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512bv32)] := v7$2;
    $stride.0 := 1bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "nowrite"} _b27 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assert {:tag "nowrite"} _b26 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assert {:tag "pow2NotZero"} _b25 ==> $stride.addr.i.60.0 != 0bv32;
    assert {:tag "pow2"} _b24 ==> $stride.addr.i.60.0 == 0bv32 || BV32_AND($stride.addr.i.60.0, BV32_SUB($stride.addr.i.60.0, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b23 ==> $stride.addr.i.0 != 0bv32;
    assert {:tag "pow2"} _b22 ==> $stride.addr.i.0 == 0bv32 || BV32_AND($stride.addr.i.0, BV32_SUB($stride.addr.i.0, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b21 ==> $stride.0 != 0bv32;
    assert {:tag "pow2"} _b20 ==> $stride.0 == 0bv32 || BV32_AND($stride.0, BV32_SUB($stride.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_UGE($stride.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_ULE($stride.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SGE($stride.0, 1bv32);
    assert {:tag "loopBound"} {:thread 1} _b0 ==> BV32_SLE($stride.0, 1bv32);
    assert {:block_sourceloc} {:sourceloc_num 9} true;
    v8 := BV32_ULT($stride.0, $arrayLength);
    goto __partitioned_block_$truebb_0, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v8;
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 47} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 48} true;
    v28$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][local_id_x$1];
    v28$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$d_DstKey(true, v2$1, v28$1, $$d_DstKey[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$d_DstKey(true, v2$2, v28$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstKey"} true;
    $$d_DstKey[v2$1] := v28$1;
    $$d_DstKey[v2$2] := v28$2;
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 50} true;
    v29$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][local_id_x$1];
    v29$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][local_id_x$2];
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$d_DstVal(true, v3$1, v29$1, $$d_DstVal[v3$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(true, v3$2);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$d_DstVal(true, v3$2, v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstVal"} true;
    $$d_DstVal[v3$1] := v29$1;
    $$d_DstVal[v3$2] := v29$2;
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 52} true;
    v30$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(local_id_x$1, 512bv32)];
    v30$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512bv32)];
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$d_DstKey(true, BV32_ADD(v2$1, 512bv32), v30$1, $$d_DstKey[BV32_ADD(v2$1, 512bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(true, BV32_ADD(v2$2, 512bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$d_DstKey(true, BV32_ADD(v2$2, 512bv32), v30$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstKey"} true;
    $$d_DstKey[BV32_ADD(v2$1, 512bv32)] := v30$1;
    $$d_DstKey[BV32_ADD(v2$2, 512bv32)] := v30$2;
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 54} true;
    v31$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(local_id_x$1, 512bv32)];
    v31$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(local_id_x$2, 512bv32)];
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$d_DstVal(true, BV32_ADD(v3$1, 512bv32), v31$1, $$d_DstVal[BV32_ADD(v3$1, 512bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(true, BV32_ADD(v3$2, 512bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$d_DstVal(true, BV32_ADD(v3$2, 512bv32), v31$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_DstVal"} true;
    $$d_DstVal[BV32_ADD(v3$1, 512bv32)] := v31$1;
    $$d_DstVal[BV32_ADD(v3$2, 512bv32)] := v31$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v8;
    v9$1 := BV32_AND(local_id_x$1, BV32_SUB($stride.0, 1bv32));
    v9$2 := BV32_AND(local_id_x$2, BV32_SUB($stride.0, 1bv32));
    v10$1 := BV32_MUL(2bv32, BV32_SUB(local_id_x$1, v9$1));
    v10$2 := BV32_MUL(2bv32, BV32_SUB(local_id_x$2, v9$2));
    v11$1 := BV32_MUL(2bv32, BV32_SUB(local_id_x$1, v9$1));
    v11$2 := BV32_MUL(2bv32, BV32_SUB(local_id_x$2, v9$2));
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 11} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 12} true;
    v12$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, v9$1)];
    v12$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, v9$2)];
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 13} true;
    v13$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, v9$1)];
    v13$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, v9$2)];
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 14} true;
    v14$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_ADD(v9$1, $stride.0))];
    v14$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_ADD(v9$2, $stride.0))];
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 15} true;
    v15$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[1bv1][BV32_ADD(v11$1, BV32_ADD(v9$1, $stride.0))];
    v15$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v11$2, BV32_ADD(v9$2, $stride.0))];
    v16 := $stride.0 == 0bv32;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v16;
    $stride.addr.i.0, $pos.i.0$1 := $stride.0, 0bv32;
    $pos.i.0$2 := 0bv32;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.i;

  $for.cond.i:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "pow2NotZero"} _b29 ==> $stride.addr.i.0 != 0bv32;
    assert {:tag "pow2"} _b28 ==> $stride.addr.i.0 == 0bv32 || BV32_AND($stride.addr.i.0, BV32_SUB($stride.addr.i.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_UGE($pos.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b11 ==> BV32_UGE($pos.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b10 ==> BV32_ULE($pos.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b10 ==> BV32_ULE($pos.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_SGE($pos.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b9 ==> BV32_SGE($pos.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_SLE($pos.i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b8 ==> BV32_SLE($pos.i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_UGE($stride.addr.i.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_ULE($stride.addr.i.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b5 ==> BV32_SGE($stride.addr.i.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_SLE($stride.addr.i.0, $stride.0);
    assert {:block_sourceloc} {:sourceloc_num 18} true;
    v17 := BV32_UGT($stride.addr.i.0, 0bv32);
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
    $retval.i.0$1 := $pos.i.0$1;
    $retval.i.0$2 := $pos.i.0$2;
    goto $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit;

  $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit:
    v21$1 := BV32_ADD($retval.i.0$1, v9$1);
    v21$2 := BV32_ADD($retval.i.0$2, v9$2);
    v22 := $stride.0 == 0bv32;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v22;
    $pos.i.61.0$1, $stride.addr.i.60.0 := 0bv32, $stride.0;
    $pos.i.61.0$2 := 0bv32;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.i.67;

  $for.cond.i.67:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "pow2NotZero"} _b31 ==> $stride.addr.i.60.0 != 0bv32;
    assert {:tag "pow2"} _b30 ==> $stride.addr.i.60.0 == 0bv32 || BV32_AND($stride.addr.i.60.0, BV32_SUB($stride.addr.i.60.0, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b19 ==> BV32_UGE($pos.i.61.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b19 ==> BV32_UGE($pos.i.61.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b18 ==> BV32_ULE($pos.i.61.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b18 ==> BV32_ULE($pos.i.61.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b17 ==> BV32_SGE($pos.i.61.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b17 ==> BV32_SGE($pos.i.61.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b16 ==> BV32_SLE($pos.i.61.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} _b16 ==> BV32_SLE($pos.i.61.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} _b15 ==> BV32_UGE($stride.addr.i.60.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b14 ==> BV32_ULE($stride.addr.i.60.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b13 ==> BV32_SGE($stride.addr.i.60.0, $stride.0);
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_SLE($stride.addr.i.60.0, $stride.0);
    assert {:block_sourceloc} {:sourceloc_num 30} true;
    v23 := BV32_UGT($stride.addr.i.60.0, 0bv32);
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
    $retval.i.56.0$1 := $pos.i.61.0$1;
    $retval.i.56.0$2 := $pos.i.61.0$2;
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0;

  __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0:
    v27$1 := BV32_ADD($retval.i.56.0$1, v9$1);
    v27$2 := BV32_ADD($retval.i.56.0$2, v9$2);
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_1;

  __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_1:
    call {:sourceloc_num 40} $bugle_barrier_duplicated_2(1bv1, 1bv1);
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
    $stride.0 := BV32_SHL($stride.0, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $truebb5:
    assume {:partition} v23;
    v24$1 := BV32_ULT(BV32_ADD($pos.i.61.0$1, $stride.addr.i.60.0), $stride.0);
    v24$2 := BV32_ULT(BV32_ADD($pos.i.61.0$2, $stride.addr.i.60.0), $stride.0);
    p5$1 := (if v24$1 then v24$1 else p5$1);
    p5$2 := (if v24$2 then v24$2 else p5$2);
    p4$1 := (if !v24$1 then !v24$1 else p4$1);
    p4$2 := (if !v24$2 then !v24$2 else p4$2);
    $cond.i.74$1 := (if p4$1 then $stride.0 else $cond.i.74$1);
    $cond.i.74$2 := (if p4$2 then $stride.0 else $cond.i.74$2);
    $cond.i.74$1 := (if p5$1 then BV32_ADD($pos.i.61.0$1, $stride.addr.i.60.0) else $cond.i.74$1);
    $cond.i.74$2 := (if p5$2 then BV32_ADD($pos.i.61.0$2, $stride.addr.i.60.0) else $cond.i.74$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 35} true;
    v25$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(v10$1, BV32_SUB($cond.i.74$1, 1bv32))];
    v25$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v10$2, BV32_SUB($cond.i.74$2, 1bv32))];
    v26$1 := BV32_ULE(v25$1, v14$1);
    v26$2 := BV32_ULE(v25$2, v14$2);
    p7$1 := (if v26$1 then v26$1 else p7$1);
    p7$2 := (if v26$2 then v26$2 else p7$2);
    p6$1 := (if !v26$1 then !v26$1 else p6$1);
    p6$2 := (if !v26$2 then !v26$2 else p6$2);
    $pos.i.61.1$1 := (if p6$1 then $pos.i.61.0$1 else $pos.i.61.1$1);
    $pos.i.61.1$2 := (if p6$2 then $pos.i.61.0$2 else $pos.i.61.1$2);
    $pos.i.61.1$1 := (if p7$1 then $cond.i.74$1 else $pos.i.61.1$1);
    $pos.i.61.1$2 := (if p7$2 then $cond.i.74$2 else $pos.i.61.1$2);
    $pos.i.61.0$1, $stride.addr.i.60.0 := $pos.i.61.1$1, BV32_LSHR($stride.addr.i.60.0, 1bv32);
    $pos.i.61.0$2 := $pos.i.61.1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.i.67;

  $truebb4:
    assume {:partition} v22;
    $retval.i.56.0$1 := 0bv32;
    $retval.i.56.0$2 := 0bv32;
    goto __partitioned_block_$_ZL21binarySearchInclusiveILj1EEjjPjjj.exit_0;

  $truebb1:
    assume {:partition} v17;
    v18$1 := BV32_ULT(BV32_ADD($pos.i.0$1, $stride.addr.i.0), $stride.0);
    v18$2 := BV32_ULT(BV32_ADD($pos.i.0$2, $stride.addr.i.0), $stride.0);
    p1$1 := (if v18$1 then v18$1 else p1$1);
    p1$2 := (if v18$2 then v18$2 else p1$2);
    p0$1 := (if !v18$1 then !v18$1 else p0$1);
    p0$2 := (if !v18$2 then !v18$2 else p0$2);
    $cond.i$1 := (if p0$1 then $stride.0 else $cond.i$1);
    $cond.i$2 := (if p0$2 then $stride.0 else $cond.i$2);
    $cond.i$1 := (if p1$1 then BV32_ADD($pos.i.0$1, $stride.addr.i.0) else $cond.i$1);
    $cond.i$2 := (if p1$2 then BV32_ADD($pos.i.0$2, $stride.addr.i.0) else $cond.i$2);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 23} true;
    v19$1 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[1bv1][BV32_ADD(BV32_ADD(v10$1, $stride.0), BV32_SUB($cond.i$1, 1bv32))];
    v19$2 := $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v10$2, $stride.0), BV32_SUB($cond.i$2, 1bv32))];
    v20$1 := BV32_ULT(v19$1, v12$1);
    v20$2 := BV32_ULT(v19$2, v12$2);
    p3$1 := (if v20$1 then v20$1 else p3$1);
    p3$2 := (if v20$2 then v20$2 else p3$2);
    p2$1 := (if !v20$1 then !v20$1 else p2$1);
    p2$2 := (if !v20$2 then !v20$2 else p2$2);
    $pos.i.1$1 := (if p2$1 then $pos.i.0$1 else $pos.i.1$1);
    $pos.i.1$2 := (if p2$2 then $pos.i.0$2 else $pos.i.1$2);
    $pos.i.1$1 := (if p3$1 then $cond.i$1 else $pos.i.1$1);
    $pos.i.1$2 := (if p3$2 then $cond.i$2 else $pos.i.1$2);
    $stride.addr.i.0, $pos.i.0$1 := BV32_LSHR($stride.addr.i.0, 1bv32), $pos.i.1$1;
    $pos.i.0$2 := $pos.i.1$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.i;

  $truebb0:
    assume {:partition} v16;
    $retval.i.0$1 := 0bv32;
    $retval.i.0$2 := 0bv32;
    goto $_ZL21binarySearchExclusiveILj1EEjjPjjj.exit;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 512bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 4096bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, $$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, $$d_DstKey, $$d_DstVal, _TRACKING;



function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const _WATCHED_VALUE_$$d_DstKey: bv32;

procedure {:inline 1} _LOG_READ_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_DstKey;



implementation {:inline 1} _LOG_READ_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then true else _READ_HAS_OCCURRED_$$d_DstKey);
    return;
}



procedure _CHECK_READ_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_DstKey: bool;

procedure {:inline 1} _LOG_WRITE_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_DstKey, _WRITE_READ_BENIGN_FLAG_$$d_DstKey;



implementation {:inline 1} _LOG_WRITE_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then true else _WRITE_HAS_OCCURRED_$$d_DstKey);
    _WRITE_READ_BENIGN_FLAG_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
    return;
}



procedure _CHECK_WRITE_$$d_DstKey(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey != _value);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstKey != _value);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_DstKey(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_DstKey;



implementation {:inline 1} _LOG_ATOMIC_$$d_DstKey(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_DstKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_DstKey);
    return;
}



procedure _CHECK_ATOMIC_$$d_DstKey(_P: bool, _offset: bv32);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_DstKey"} {:array "$$d_DstKey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_DstKey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstKey(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_DstKey := (if _P && _WRITE_HAS_OCCURRED_$$d_DstKey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_DstKey);
    return;
}



const _WATCHED_VALUE_$$d_DstVal: bv32;

procedure {:inline 1} _LOG_READ_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_DstVal;



implementation {:inline 1} _LOG_READ_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then true else _READ_HAS_OCCURRED_$$d_DstVal);
    return;
}



procedure _CHECK_READ_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_DstVal: bool;

procedure {:inline 1} _LOG_WRITE_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_DstVal, _WRITE_READ_BENIGN_FLAG_$$d_DstVal;



implementation {:inline 1} _LOG_WRITE_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then true else _WRITE_HAS_OCCURRED_$$d_DstVal);
    _WRITE_READ_BENIGN_FLAG_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
    return;
}



procedure _CHECK_WRITE_$$d_DstVal(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal != _value);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_DstVal != _value);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_DstVal(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_DstVal;



implementation {:inline 1} _LOG_ATOMIC_$$d_DstVal(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_DstVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_DstVal);
    return;
}



procedure _CHECK_ATOMIC_$$d_DstVal(_P: bool, _offset: bv32);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_DstVal"} {:array "$$d_DstVal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_DstVal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_DstVal(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_DstVal := (if _P && _WRITE_HAS_OCCURRED_$$d_DstVal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_DstVal);
    return;
}



const _WATCHED_VALUE_$$d_SrcKey: bv32;

procedure {:inline 1} _LOG_READ_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_SrcKey;



implementation {:inline 1} _LOG_READ_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then true else _READ_HAS_OCCURRED_$$d_SrcKey);
    return;
}



procedure _CHECK_READ_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_SrcKey: bool;

procedure {:inline 1} _LOG_WRITE_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_SrcKey, _WRITE_READ_BENIGN_FLAG_$$d_SrcKey;



implementation {:inline 1} _LOG_WRITE_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then true else _WRITE_HAS_OCCURRED_$$d_SrcKey);
    _WRITE_READ_BENIGN_FLAG_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
    return;
}



procedure _CHECK_WRITE_$$d_SrcKey(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey != _value);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcKey != _value);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_SrcKey(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_SrcKey;



implementation {:inline 1} _LOG_ATOMIC_$$d_SrcKey(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_SrcKey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_SrcKey);
    return;
}



procedure _CHECK_ATOMIC_$$d_SrcKey(_P: bool, _offset: bv32);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_SrcKey"} {:array "$$d_SrcKey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcKey(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_SrcKey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcKey(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_SrcKey := (if _P && _WRITE_HAS_OCCURRED_$$d_SrcKey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_SrcKey);
    return;
}



const _WATCHED_VALUE_$$d_SrcVal: bv32;

procedure {:inline 1} _LOG_READ_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$d_SrcVal;



implementation {:inline 1} _LOG_READ_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then true else _READ_HAS_OCCURRED_$$d_SrcVal);
    return;
}



procedure _CHECK_READ_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_SrcVal: bool;

procedure {:inline 1} _LOG_WRITE_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$d_SrcVal, _WRITE_READ_BENIGN_FLAG_$$d_SrcVal;



implementation {:inline 1} _LOG_WRITE_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then true else _WRITE_HAS_OCCURRED_$$d_SrcVal);
    _WRITE_READ_BENIGN_FLAG_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
    return;
}



procedure _CHECK_WRITE_$$d_SrcVal(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal != _value);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_SrcVal != _value);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_SrcVal(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$d_SrcVal;



implementation {:inline 1} _LOG_ATOMIC_$$d_SrcVal(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_SrcVal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_SrcVal);
    return;
}



procedure _CHECK_ATOMIC_$$d_SrcVal(_P: bool, _offset: bv32);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_SrcVal"} {:array "$$d_SrcVal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcVal(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_SrcVal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_SrcVal(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_SrcVal := (if _P && _WRITE_HAS_OCCURRED_$$d_SrcVal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_SrcVal);
    return;
}



const _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then true else _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_key"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key);
    return;
}



const _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then true else _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_READ_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val, _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_WRITE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_val"} {:array "$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
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



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
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



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_key;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ21mergeSortSharedKernelILj1EEvPjS0_S0_S0_jE5s_val;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstKey;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstKey;
    goto anon6;

  anon6:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$d_DstVal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$d_DstVal;
    goto anon7;

  anon7:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$d_DstKey;
    goto anon9;

  anon9:
    havoc $$d_DstVal;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
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



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;
