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
 b0009: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Dst"} {:global} $$d_Dst: [int]int;

axiom {:array_info "$$d_Dst"} {:global} {:elem_width 32} {:source_name "d_Dst"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Dst: bool;

axiom {:array_info "$$d_Src"} {:global} {:elem_width 32} {:source_name "d_Src"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Src: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$idata4.i.i"} {:elem_width 32} {:source_name "idata4.i.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$idata4.i"} {:elem_width 32} {:source_name "idata4.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$idata4"} {:elem_width 32} {:source_name "idata4"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$odata4"} {:elem_width 32} {:source_name "odata4"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:source_name "s_Data"} {:group_shared} $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: [bv1][int]int;

axiom {:array_info "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:group_shared} {:elem_width 32} {:source_name "s_Data"} {:source_elem_width 32} {:source_dimensions "512"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: bool;

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

function  BV1_ZEXT32(x: int) : int
{
  x
}

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

function  BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "scanExclusiveShared"} {:kernel} $_Z19scanExclusiveSharedP5uint4S0_j($size: int);
  requires {:sourceloc_num 0} {:thread 1} (if BV32_AND($size, BV32_SUB($size, 1)) == 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Dst && !_WRITE_HAS_OCCURRED_$$d_Dst && !_ATOMIC_HAS_OCCURRED_$$d_Dst;
  requires !_READ_HAS_OCCURRED_$$d_Src && !_WRITE_HAS_OCCURRED_$$d_Src && !_ATOMIC_HAS_OCCURRED_$$d_Src;
  requires !_READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && !_WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && !_ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
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
  modifies $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst, $$d_Dst, _TRACKING, _TRACKING;



implementation {:source_name "scanExclusiveShared"} {:kernel} $_Z19scanExclusiveSharedP5uint4S0_j($size: int)
{
  var $offset.i.i.i.i.0: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
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
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31: bool;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
  var v46$1: int;
  var v46$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51$1: int;
  var v51$2: int;
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
  var v54$1: int;
  var v54$2: int;
  var v55$1: int;
  var v55$2: int;
  var v56$1: int;
  var v56$2: int;
  var v57$1: int;
  var v57$2: int;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    havoc v1$1, v1$2;
    $$idata4$0$1 := v1$1;
    $$idata4$0$2 := v1$2;
    havoc v2$1, v2$2;
    $$idata4$1$1 := v2$1;
    $$idata4$1$2 := v2$2;
    havoc v3$1, v3$2;
    $$idata4$2$1 := v3$1;
    $$idata4$2$2 := v3$2;
    havoc v4$1, v4$2;
    $$idata4$3$1 := v4$1;
    $$idata4$3$2 := v4$2;
    v5$1 := $$idata4$0$1;
    v5$2 := $$idata4$0$2;
    $$3$0$1 := v5$1;
    $$3$0$2 := v5$2;
    v6$1 := $$idata4$1$1;
    v6$2 := $$idata4$1$2;
    $$3$1$1 := v6$1;
    $$3$1$2 := v6$2;
    v7$1 := $$idata4$2$1;
    v7$2 := $$idata4$2$2;
    $$3$2$1 := v7$1;
    $$3$2$2 := v7$2;
    v8$1 := $$idata4$3$1;
    v8$2 := $$idata4$3$2;
    $$3$3$1 := v8$1;
    $$3$3$2 := v8$2;
    v9$1 := $$3$0$1;
    v9$2 := $$3$0$2;
    v10$1 := $$3$1$1;
    v10$2 := $$3$1$2;
    v11$1 := $$3$2$1;
    v11$2 := $$3$2$2;
    v12$1 := $$3$3$1;
    v12$2 := $$3$3$2;
    $$idata4.i$0$1 := v9$1;
    $$idata4.i$0$2 := v9$2;
    $$idata4.i$1$1 := v10$1;
    $$idata4.i$1$2 := v10$2;
    $$idata4.i$2$1 := v11$1;
    $$idata4.i$2$2 := v11$2;
    $$idata4.i$3$1 := v12$1;
    $$idata4.i$3$2 := v12$2;
    v13$1 := $$idata4.i$0$1;
    v13$2 := $$idata4.i$0$2;
    $$2$0$1 := v13$1;
    $$2$0$2 := v13$2;
    v14$1 := $$idata4.i$1$1;
    v14$2 := $$idata4.i$1$2;
    $$2$1$1 := v14$1;
    $$2$1$2 := v14$2;
    v15$1 := $$idata4.i$2$1;
    v15$2 := $$idata4.i$2$2;
    $$2$2$1 := v15$1;
    $$2$2$2 := v15$2;
    v16$1 := $$idata4.i$3$1;
    v16$2 := $$idata4.i$3$2;
    $$2$3$1 := v16$1;
    $$2$3$2 := v16$2;
    v17$1 := $$2$0$1;
    v17$2 := $$2$0$2;
    v18$1 := $$2$1$1;
    v18$2 := $$2$1$2;
    v19$1 := $$2$2$1;
    v19$2 := $$2$2$2;
    v20$1 := $$2$3$1;
    v20$2 := $$2$3$2;
    $$idata4.i.i$0$1 := v17$1;
    $$idata4.i.i$0$2 := v17$2;
    $$idata4.i.i$1$1 := v18$1;
    $$idata4.i.i$1$2 := v18$2;
    $$idata4.i.i$2$1 := v19$1;
    $$idata4.i.i$2$2 := v19$2;
    $$idata4.i.i$3$1 := v20$1;
    $$idata4.i.i$3$2 := v20$2;
    v21$1 := $$idata4.i.i$0$1;
    v21$2 := $$idata4.i.i$0$2;
    v22$1 := $$idata4.i.i$1$1;
    v22$2 := $$idata4.i.i$1$2;
    $$idata4.i.i$1$1 := BV32_ADD(v22$1, v21$1);
    $$idata4.i.i$1$2 := BV32_ADD(v22$2, v21$2);
    v23$1 := $$idata4.i.i$1$1;
    v23$2 := $$idata4.i.i$1$2;
    v24$1 := $$idata4.i.i$2$1;
    v24$2 := $$idata4.i.i$2$2;
    $$idata4.i.i$2$1 := BV32_ADD(v24$1, v23$1);
    $$idata4.i.i$2$2 := BV32_ADD(v24$2, v23$2);
    v25$1 := $$idata4.i.i$2$1;
    v25$2 := $$idata4.i.i$2$2;
    v26$1 := $$idata4.i.i$3$1;
    v26$2 := $$idata4.i.i$3$2;
    $$idata4.i.i$3$1 := BV32_ADD(v26$1, v25$1);
    $$idata4.i.i$3$2 := BV32_ADD(v26$2, v25$2);
    v27$1 := $$idata4.i.i$3$1;
    v27$2 := $$idata4.i.i$3$2;
    v28 := BV32_UDIV($size, 4);
    v29$1 := BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB(v28, 1)));
    v29$2 := BV32_SUB(BV32_MUL(2, local_id_x$2), BV32_AND(local_id_x$2, BV32_SUB(v28, 1)));
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v29$1, 0, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v29$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v29$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v29$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v29$1] := 0;
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v29$2] := 0;
    v30$1 := BV32_ADD(v29$1, v28);
    v30$2 := BV32_ADD(v29$2, v28);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$1, v27$1, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2, v27$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1] := v27$1;
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2] := v27$2;
    $offset.i.i.i.i.0 := 1;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
assert  my_inv (  (  BV32_SLE($offset.i.i.i.i.0, 1) ) ,  (  BV32_SGE($offset.i.i.i.i.0, 1) ) ,  (  BV32_ULE($offset.i.i.i.i.0, 1) ) ,  (  BV32_UGE($offset.i.i.i.i.0, 1) ) ,  (  $offset.i.i.i.i.0 == 0 || BV32_AND($offset.i.i.i.i.0, BV32_SUB($offset.i.i.i.i.0, 1)) == 0 ) ,  (  $offset.i.i.i.i.0 != 0 ) ,  (  !_READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ) ,  (  !_WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ) ,  (  _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB(BV32_UDIV($size, 4), 1))), BV32_UDIV($size, 4)) || _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> _WATCHED_OFFSET == BV32_ADD(BV32_SUB(BV32_MUL(2, local_id_x$1), BV32_AND(local_id_x$1, BV32_SUB(BV32_UDIV($size, 4), 1))), BV32_UDIV($size, 4)) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 54} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 55} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data ==> BV32_OR(BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == v30$1 then 1 else 0)), BV1_ZEXT32((if BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4) == BV32_SUB(v30$1, v28) then 1 else 0))) != 0 then 1 else 0) != 0;
    v31 := BV32_ULT($offset.i.i.i.i.0, v28);
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v31;
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$1, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    v34$1 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1];
    v34$2 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2];
    v35$1 := BV32_SUB(v34$1, v27$1);
    v35$2 := BV32_SUB(v34$2, v27$2);
    v36$1 := $$idata4.i.i$0$1;
    v36$2 := $$idata4.i.i$0$2;
    $$idata4.i.i$0$1 := BV32_ADD(v36$1, v35$1);
    $$idata4.i.i$0$2 := BV32_ADD(v36$2, v35$2);
    v37$1 := $$idata4.i.i$1$1;
    v37$2 := $$idata4.i.i$1$2;
    $$idata4.i.i$1$1 := BV32_ADD(v37$1, v35$1);
    $$idata4.i.i$1$2 := BV32_ADD(v37$2, v35$2);
    v38$1 := $$idata4.i.i$2$1;
    v38$2 := $$idata4.i.i$2$2;
    $$idata4.i.i$2$1 := BV32_ADD(v38$1, v35$1);
    $$idata4.i.i$2$2 := BV32_ADD(v38$2, v35$2);
    v39$1 := $$idata4.i.i$3$1;
    v39$2 := $$idata4.i.i$3$2;
    $$idata4.i.i$3$1 := BV32_ADD(v39$1, v35$1);
    $$idata4.i.i$3$2 := BV32_ADD(v39$2, v35$2);
    v40$1 := $$idata4.i.i$0$1;
    v40$2 := $$idata4.i.i$0$2;
    $$0$0$1 := v40$1;
    $$0$0$2 := v40$2;
    v41$1 := $$idata4.i.i$1$1;
    v41$2 := $$idata4.i.i$1$2;
    $$0$1$1 := v41$1;
    $$0$1$2 := v41$2;
    v42$1 := $$idata4.i.i$2$1;
    v42$2 := $$idata4.i.i$2$2;
    $$0$2$1 := v42$1;
    $$0$2$2 := v42$2;
    v43$1 := $$idata4.i.i$3$1;
    v43$2 := $$idata4.i.i$3$2;
    $$0$3$1 := v43$1;
    $$0$3$2 := v43$2;
    v44$1 := $$0$0$1;
    v44$2 := $$0$0$2;
    v45$1 := $$0$1$1;
    v45$2 := $$0$1$2;
    v46$1 := $$0$2$1;
    v46$2 := $$0$2$2;
    v47$1 := $$0$3$1;
    v47$2 := $$0$3$2;
    $$1$0$1 := v44$1;
    $$1$0$2 := v44$2;
    $$1$1$1 := v45$1;
    $$1$1$2 := v45$2;
    $$1$2$1 := v46$1;
    $$1$2$2 := v46$2;
    $$1$3$1 := v47$1;
    $$1$3$2 := v47$2;
    v48$1 := $$idata4.i$0$1;
    v48$2 := $$idata4.i$0$2;
    v49$1 := $$1$0$1;
    v49$2 := $$1$0$2;
    $$1$0$1 := BV32_SUB(v49$1, v48$1);
    $$1$0$2 := BV32_SUB(v49$2, v48$2);
    v50$1 := $$idata4.i$1$1;
    v50$2 := $$idata4.i$1$2;
    v51$1 := $$1$1$1;
    v51$2 := $$1$1$2;
    $$1$1$1 := BV32_SUB(v51$1, v50$1);
    $$1$1$2 := BV32_SUB(v51$2, v50$2);
    v52$1 := $$idata4.i$2$1;
    v52$2 := $$idata4.i$2$2;
    v53$1 := $$1$2$1;
    v53$2 := $$1$2$2;
    $$1$2$1 := BV32_SUB(v53$1, v52$1);
    $$1$2$2 := BV32_SUB(v53$2, v52$2);
    v54$1 := $$idata4.i$3$1;
    v54$2 := $$idata4.i$3$2;
    v55$1 := $$1$3$1;
    v55$2 := $$1$3$2;
    $$1$3$1 := BV32_SUB(v55$1, v54$1);
    $$1$3$2 := BV32_SUB(v55$2, v54$2);
    v56$1 := $$1$0$1;
    v56$2 := $$1$0$2;
    v57$1 := $$1$1$1;
    v57$2 := $$1$1$2;
    v58$1 := $$1$2$1;
    v58$2 := $$1$2$2;
    v59$1 := $$1$3$1;
    v59$2 := $$1$3$2;
    $$odata4$0$1 := v56$1;
    $$odata4$0$2 := v56$2;
    $$odata4$1$1 := v57$1;
    $$odata4$1$2 := v57$2;
    $$odata4$2$1 := v58$1;
    $$odata4$2$2 := v58$2;
    $$odata4$3$1 := v59$1;
    $$odata4$3$2 := v59$2;
    v60$1 := $$odata4$0$1;
    v60$2 := $$odata4$0$2;
    call {:sourceloc} {:sourceloc_num 109} _LOG_WRITE_$$d_Dst(true, BV32_MUL(v0$1, 4), v60$1, $$d_Dst[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 109} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 109} _CHECK_WRITE_$$d_Dst(true, BV32_MUL(v0$2, 4), v60$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(v0$1, 4)] := v60$1;
    $$d_Dst[BV32_MUL(v0$2, 4)] := v60$2;
    v61$1 := $$odata4$1$1;
    v61$2 := $$odata4$1$2;
    call {:sourceloc} {:sourceloc_num 111} _LOG_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v61$1, $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 111} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 111} _CHECK_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v61$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v61$1;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v61$2;
    v62$1 := $$odata4$2$1;
    v62$2 := $$odata4$2$2;
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v62$1, $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v62$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v62$1;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v62$2;
    v63$1 := $$odata4$3$1;
    v63$2 := $$odata4$3$2;
    call {:sourceloc} {:sourceloc_num 115} _LOG_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v63$1, $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 115} _CHECK_WRITE_$$d_Dst(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v63$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v63$1;
    $$d_Dst[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v63$2;
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v31;
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 57} $bugle_barrier_duplicated_0(-1, -1);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$1, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2, $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    v32$1 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1];
    v32$2 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2];
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, BV32_SUB(v30$1, $offset.i.i.i.i.0), $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][BV32_SUB(v30$1, $offset.i.i.i.i.0)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, BV32_SUB(v30$2, $offset.i.i.i.i.0), $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v30$2, $offset.i.i.i.i.0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    v33$1 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][BV32_SUB(v30$1, $offset.i.i.i.i.0)];
    v33$2 := $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_SUB(v30$2, $offset.i.i.i.i.0)];
    goto __partitioned_block_$truebb_2;

  __partitioned_block_$truebb_2:
    call {:sourceloc_num 60} $bugle_barrier_duplicated_1(-1, -1);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$1, BV32_ADD(v32$1, v33$1), $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(true, v30$2, BV32_ADD(v32$2, v33$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} true;
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[1bv1][v30$1] := BV32_ADD(v32$1, v33$1);
    $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][v30$2] := BV32_ADD(v32$2, v33$2);
    $offset.i.i.i.i.0 := BV32_SHL($offset.i.i.i.i.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
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
  modifies $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, $$d_Dst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, $$d_Dst, _TRACKING;



var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$idata4.i.i$0$1: int;

var $$idata4.i.i$0$2: int;

var $$idata4.i.i$1$1: int;

var $$idata4.i.i$1$2: int;

var $$idata4.i.i$2$1: int;

var $$idata4.i.i$2$2: int;

var $$idata4.i.i$3$1: int;

var $$idata4.i.i$3$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$idata4.i$0$1: int;

var $$idata4.i$0$2: int;

var $$idata4.i$1$1: int;

var $$idata4.i$1$2: int;

var $$idata4.i$2$1: int;

var $$idata4.i$2$2: int;

var $$idata4.i$3$1: int;

var $$idata4.i$3$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$idata4$0$1: int;

var $$idata4$0$2: int;

var $$idata4$1$1: int;

var $$idata4$1$2: int;

var $$idata4$2$1: int;

var $$idata4$2$2: int;

var $$idata4$3$1: int;

var $$idata4$3$2: int;

var $$odata4$0$1: int;

var $$odata4$0$2: int;

var $$odata4$1$1: int;

var $$odata4$1$2: int;

var $$odata4$2$1: int;

var $$odata4$2$2: int;

var $$odata4$3$1: int;

var $$odata4$3$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

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



const _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: int;

procedure {:inline 1} _LOG_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;



implementation {:inline 1} _LOG_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data == _value then true else _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data);
    return;
}



procedure _CHECK_READ_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data, _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;



implementation {:inline 1} _LOG_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data);
    return;
}



procedure _CHECK_WRITE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int, _value: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "s_Data"} {:array "$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Dst;
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
    havoc $$d_Dst;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$d_Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$d_Dst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$d_Dst;
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
    havoc $$d_Dst;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$_ZZ19scanExclusiveSharedP5uint4S0_jE6s_Data;
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












