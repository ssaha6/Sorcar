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
 b0012: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "knodesD"} {:global} $$knodesD: [int]int;

axiom {:array_info "$$knodesD"} {:global} {:elem_width 8} {:source_name "knodesD"} {:source_elem_width 16544} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$knodesD: bool;

axiom {:array_info "$$recordsD"} {:global} {:elem_width 32} {:source_name "recordsD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$recordsD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$recordsD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$recordsD: bool;

var {:source_name "currKnodeD"} {:global} $$currKnodeD: [int]int;

axiom {:array_info "$$currKnodeD"} {:global} {:elem_width 64} {:source_name "currKnodeD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$currKnodeD: bool;

var {:source_name "offsetD"} {:global} $$offsetD: [int]int;

axiom {:array_info "$$offsetD"} {:global} {:elem_width 64} {:source_name "offsetD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$offsetD: bool;

var {:source_name "keysD"} {:global} $$keysD: [int]int;

axiom {:array_info "$$keysD"} {:global} {:elem_width 32} {:source_name "keysD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$keysD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$keysD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$keysD: bool;

var {:source_name "ansD"} {:global} $$ansD: [int]int;

axiom {:array_info "$$ansD"} {:global} {:elem_width 32} {:source_name "ansD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ansD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ansD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ansD: bool;

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

function BV32_SEXT64(int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV64_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "findK"} {:kernel} $findK($height: int, $knodes_elem: int);
  requires {:sourceloc_num 0} {:thread 1} (if $height == 2 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $knodes_elem == 7874 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$knodesD && !_WRITE_HAS_OCCURRED_$$knodesD && !_ATOMIC_HAS_OCCURRED_$$knodesD;
  requires !_READ_HAS_OCCURRED_$$recordsD && !_WRITE_HAS_OCCURRED_$$recordsD && !_ATOMIC_HAS_OCCURRED_$$recordsD;
  requires !_READ_HAS_OCCURRED_$$currKnodeD && !_WRITE_HAS_OCCURRED_$$currKnodeD && !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
  requires !_READ_HAS_OCCURRED_$$offsetD && !_WRITE_HAS_OCCURRED_$$offsetD && !_ATOMIC_HAS_OCCURRED_$$offsetD;
  requires !_READ_HAS_OCCURRED_$$keysD && !_WRITE_HAS_OCCURRED_$$keysD && !_ATOMIC_HAS_OCCURRED_$$keysD;
  requires !_READ_HAS_OCCURRED_$$ansD && !_WRITE_HAS_OCCURRED_$$ansD && !_ATOMIC_HAS_OCCURRED_$$ansD;
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
  modifies _READ_HAS_OCCURRED_$$currKnodeD, _WRITE_HAS_OCCURRED_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD, _READ_HAS_OCCURRED_$$offsetD, _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, $$currKnodeD, $$offsetD, $$ansD, _TRACKING, _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _TRACKING;



implementation {:source_name "findK"} {:kernel} $findK($height: int, $knodes_elem: int)
{
  var $i.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: bool;
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
  var v9$1: bool;
  var v9$2: bool;
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
  var v16$1: bool;
  var v16$2: bool;
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
  var v22$1: bool;
  var v22$2: bool;
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
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: bool;
  var v36$2: bool;
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
  var p8$1: bool;
  var p8$2: bool;
  var p9$1: bool;
  var p9$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := group_id_x$1;
    v1$2 := group_id_x$2;
    $i.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  (  $i.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i.0, 0) ) ,  (  BV32_SGE($i.0, 0) ) ,  (  BV32_ULE($i.0, 0) ) ,  (  BV32_UGE($i.0, 0) ) ,  (  !_READ_HAS_OCCURRED_$$currKnodeD ) ,  (  !_WRITE_HAS_OCCURRED_$$currKnodeD ) ,  (  _READ_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$offsetD ) ,  (  !_WRITE_HAS_OCCURRED_$$offsetD ) ,  (  _READ_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 3} true;
    v2 := BV64_SLT(BV32_SEXT64($i.0), $height);
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
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v30$1 := $$currKnodeD[v1$1];
    v30$2 := $$currKnodeD[v1$2];
    v31$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4))];
    v31$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4))];
    v32$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 1)];
    v32$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 1)];
    v33$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 2)];
    v33$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 2)];
    v34$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 3)];
    v34$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v30$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 3)];
    v35$1 := $$keysD[v1$1];
    v35$2 := $$keysD[v1$2];
    v36$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v34$1, v33$1), v32$1), v31$1) == v35$1;
    v36$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v34$2, v33$2), v32$2), v31$2) == v35$2;
    p8$1 := (if v36$1 then v36$1 else p8$1);
    p8$2 := (if v36$2 then v36$2 else p8$2);
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$currKnodeD(p8$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$currKnodeD(p8$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v37$1 := (if p8$1 then $$currKnodeD[v1$1] else v37$1);
    v37$2 := (if p8$2 then $$currKnodeD[v1$2] else v37$2);
    v38$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4))] else v38$1);
    v38$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4))] else v38$2);
    v39$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 1)] else v39$1);
    v39$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 1)] else v39$2);
    v40$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 2)] else v40$1);
    v40$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 2)] else v40$2);
    v41$1 := (if p8$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 3)] else v41$1);
    v41$2 := (if p8$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v37$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 3)] else v41$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p8$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p8$2 then _HAVOC_int$2 else v42$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$ansD(p8$1, v1$1, v42$1, $$ansD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(p8$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$ansD(p8$2, v1$2, v42$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ansD"} true;
    $$ansD[v1$1] := (if p8$1 then v42$1 else $$ansD[v1$1]);
    $$ansD[v1$2] := (if p8$2 then v42$2 else $$ansD[v1$2]);
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v3$1 := $$currKnodeD[v1$1];
    v3$2 := $$currKnodeD[v1$2];
    v4$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4))];
    v4$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4))];
    v5$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 1)];
    v5$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 1)];
    v6$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 2)];
    v6$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 2)];
    v7$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$1, 32, 0), 2068), 1032), BV32_MUL(v0$1, 4)), 3)];
    v7$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v3$2, 32, 0), 2068), 1032), BV32_MUL(v0$2, 4)), 3)];
    v8$1 := $$keysD[v1$1];
    v8$2 := $$keysD[v1$2];
    v9$1 := BV32_SLE(BV_CONCAT(BV_CONCAT(BV_CONCAT(v7$1, v6$1), v5$1), v4$1), v8$1);
    v9$2 := BV32_SLE(BV_CONCAT(BV_CONCAT(BV_CONCAT(v7$2, v6$2), v5$2), v4$2), v8$2);
    p1$1 := (if v9$1 then v9$1 else p1$1);
    p1$2 := (if v9$2 then v9$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$currKnodeD(p1$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$currKnodeD(p1$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v10$1 := (if p1$1 then $$currKnodeD[v1$1] else v10$1);
    v10$2 := (if p1$2 then $$currKnodeD[v1$2] else v10$2);
    v11$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$1, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$1, 1), 4))] else v11$1);
    v11$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$2, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$2, 1), 4))] else v11$2);
    v12$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$1, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$1, 1), 4)), 1)] else v12$1);
    v12$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$2, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$2, 1), 4)), 1)] else v12$2);
    v13$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$1, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$1, 1), 4)), 2)] else v13$1);
    v13$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$2, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$2, 1), 4)), 2)] else v13$2);
    v14$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$1, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$1, 1), 4)), 3)] else v14$1);
    v14$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v10$2, 32, 0), 2068), 1032), BV32_MUL(BV32_ADD(v0$2, 1), 4)), 3)] else v14$2);
    v15$1 := (if p1$1 then $$keysD[v1$1] else v15$1);
    v15$2 := (if p1$2 then $$keysD[v1$2] else v15$2);
    v16$1 := (if p1$1 then BV32_SGT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v14$1, v13$1), v12$1), v11$1), v15$1) else v16$1);
    v16$2 := (if p1$2 then BV32_SGT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v14$2, v13$2), v12$2), v11$2), v15$2) else v16$2);
    p3$1 := (if p1$1 && v16$1 then v16$1 else p3$1);
    p3$2 := (if p1$2 && v16$2 then v16$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$offsetD(p3$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$offsetD(p3$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v17$1 := (if p3$1 then $$offsetD[v1$1] else v17$1);
    v17$2 := (if p3$2 then $$offsetD[v1$2] else v17$2);
    v18$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4))] else v18$1);
    v18$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4))] else v18$2);
    v19$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 1)] else v19$1);
    v19$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 1)] else v19$2);
    v20$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 2)] else v20$1);
    v20$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 2)] else v20$2);
    v21$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 3)] else v21$1);
    v21$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v17$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 3)] else v21$2);
    v22$1 := (if p3$1 then BV64_SLT(BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$1, v20$1), v19$1), v18$1)), $knodes_elem) else v22$1);
    v22$2 := (if p3$2 then BV64_SLT(BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v21$2, v20$2), v19$2), v18$2)), $knodes_elem) else v22$2);
    p5$1 := (if p3$1 && v22$1 then v22$1 else p5$1);
    p5$2 := (if p3$2 && v22$2 then v22$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$offsetD(p5$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$offsetD(p5$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v23$1 := (if p5$1 then $$offsetD[v1$1] else v23$1);
    v23$2 := (if p5$2 then $$offsetD[v1$2] else v23$2);
    v24$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4))] else v24$1);
    v24$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4))] else v24$2);
    v25$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 1)] else v25$1);
    v25$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 1)] else v25$2);
    v26$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 2)] else v26$1);
    v26$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 2)] else v26$2);
    v27$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$1, 32, 0), 2068), 4), BV32_MUL(v0$1, 4)), 3)] else v27$1);
    v27$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(BV_EXTRACT(v23$2, 32, 0), 2068), 4), BV32_MUL(v0$2, 4)), 3)] else v27$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$offsetD(p5$1, v1$1, BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$1, v26$1), v25$1), v24$1)), $$offsetD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(p5$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$offsetD(p5$2, v1$2, BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$2, v26$2), v25$2), v24$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$offsetD"} true;
    $$offsetD[v1$1] := (if p5$1 then BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$1, v26$1), v25$1), v24$1)) else $$offsetD[v1$1]);
    $$offsetD[v1$2] := (if p5$2 then BV32_SEXT64(BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$2, v26$2), v25$2), v24$2)) else $$offsetD[v1$2]);
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 33} $bugle_barrier_duplicated_0(-1, 0);
    v28$1 := v0$1 == 0;
    v28$2 := v0$2 == 0;
    p7$1 := (if v28$1 then v28$1 else p7$1);
    p7$2 := (if v28$2 then v28$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$offsetD(p7$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$offsetD(p7$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v29$1 := (if p7$1 then $$offsetD[v1$1] else v29$1);
    v29$2 := (if p7$2 then $$offsetD[v1$2] else v29$2);
    call {:sourceloc} {:sourceloc_num 36} _LOG_WRITE_$$currKnodeD(p7$1, v1$1, v29$1, $$currKnodeD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(p7$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 36} _CHECK_WRITE_$$currKnodeD(p7$2, v1$2, v29$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$currKnodeD"} true;
    $$currKnodeD[v1$1] := (if p7$1 then v29$1 else $$currKnodeD[v1$1]);
    $$currKnodeD[v1$2] := (if p7$2 then v29$2 else $$currKnodeD[v1$2]);
    goto __partitioned_block_$truebb_2;

  __partitioned_block_$truebb_2:
    call {:sourceloc_num 38} $bugle_barrier_duplicated_1(-1, 0);
    $i.0 := BV32_ADD($i.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 10000 then 1 else 0) != 0;

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
  modifies $$currKnodeD, $$offsetD, $$ansD, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$currKnodeD, $$offsetD, $$ansD, _TRACKING;







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



const _WATCHED_VALUE_$$knodesD: int;

procedure {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _READ_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_READ_$$knodesD(_P: bool, _offset: int, _value: int);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$knodesD);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$knodesD: bool;

procedure {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$knodesD, _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _WRITE_HAS_OCCURRED_$$knodesD);
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



procedure _CHECK_WRITE_$$knodesD(_P: bool, _offset: int, _value: int);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_ATOMIC_$$knodesD(_P: bool, _offset: int);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



const _WATCHED_VALUE_$$recordsD: int;

procedure {:inline 1} _LOG_READ_$$recordsD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$recordsD;



implementation {:inline 1} _LOG_READ_$$recordsD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then true else _READ_HAS_OCCURRED_$$recordsD);
    return;
}



procedure _CHECK_READ_$$recordsD(_P: bool, _offset: int, _value: int);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$recordsD);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$recordsD: bool;

procedure {:inline 1} _LOG_WRITE_$$recordsD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$recordsD, _WRITE_READ_BENIGN_FLAG_$$recordsD;



implementation {:inline 1} _LOG_WRITE_$$recordsD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then true else _WRITE_HAS_OCCURRED_$$recordsD);
    _WRITE_READ_BENIGN_FLAG_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$recordsD);
    return;
}



procedure _CHECK_WRITE_$$recordsD(_P: bool, _offset: int, _value: int);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD != _value);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$recordsD != _value);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$recordsD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$recordsD;



implementation {:inline 1} _LOG_ATOMIC_$$recordsD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$recordsD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$recordsD);
    return;
}



procedure _CHECK_ATOMIC_$$recordsD(_P: bool, _offset: int);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);
  requires {:source_name "recordsD"} {:array "$$recordsD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$recordsD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$recordsD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$recordsD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$recordsD := (if _P && _WRITE_HAS_OCCURRED_$$recordsD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$recordsD);
    return;
}



const _WATCHED_VALUE_$$currKnodeD: int;

procedure {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _READ_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_READ_$$currKnodeD(_P: bool, _offset: int, _value: int);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$currKnodeD: bool;

procedure {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _WRITE_HAS_OCCURRED_$$currKnodeD);
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



procedure _CHECK_WRITE_$$currKnodeD(_P: bool, _offset: int, _value: int);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_ATOMIC_$$currKnodeD(_P: bool, _offset: int);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



const _WATCHED_VALUE_$$offsetD: int;

procedure {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _READ_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_READ_$$offsetD(_P: bool, _offset: int, _value: int);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$offsetD);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$offsetD: bool;

procedure {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _WRITE_HAS_OCCURRED_$$offsetD);
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



procedure _CHECK_WRITE_$$offsetD(_P: bool, _offset: int, _value: int);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_ATOMIC_$$offsetD(_P: bool, _offset: int);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



const _WATCHED_VALUE_$$keysD: int;

procedure {:inline 1} _LOG_READ_$$keysD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$keysD;



implementation {:inline 1} _LOG_READ_$$keysD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then true else _READ_HAS_OCCURRED_$$keysD);
    return;
}



procedure _CHECK_READ_$$keysD(_P: bool, _offset: int, _value: int);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$keysD);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$keysD: bool;

procedure {:inline 1} _LOG_WRITE_$$keysD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$keysD, _WRITE_READ_BENIGN_FLAG_$$keysD;



implementation {:inline 1} _LOG_WRITE_$$keysD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then true else _WRITE_HAS_OCCURRED_$$keysD);
    _WRITE_READ_BENIGN_FLAG_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$keysD);
    return;
}



procedure _CHECK_WRITE_$$keysD(_P: bool, _offset: int, _value: int);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD != _value);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$keysD != _value);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$keysD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$keysD;



implementation {:inline 1} _LOG_ATOMIC_$$keysD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$keysD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$keysD);
    return;
}



procedure _CHECK_ATOMIC_$$keysD(_P: bool, _offset: int);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);
  requires {:source_name "keysD"} {:array "$$keysD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keysD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$keysD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$keysD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$keysD := (if _P && _WRITE_HAS_OCCURRED_$$keysD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$keysD);
    return;
}



const _WATCHED_VALUE_$$ansD: int;

procedure {:inline 1} _LOG_READ_$$ansD(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ansD;



implementation {:inline 1} _LOG_READ_$$ansD(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then true else _READ_HAS_OCCURRED_$$ansD);
    return;
}



procedure _CHECK_READ_$$ansD(_P: bool, _offset: int, _value: int);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ansD);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ansD: bool;

procedure {:inline 1} _LOG_WRITE_$$ansD(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ansD, _WRITE_READ_BENIGN_FLAG_$$ansD;



implementation {:inline 1} _LOG_WRITE_$$ansD(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then true else _WRITE_HAS_OCCURRED_$$ansD);
    _WRITE_READ_BENIGN_FLAG_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ansD);
    return;
}



procedure _CHECK_WRITE_$$ansD(_P: bool, _offset: int, _value: int);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD != _value);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ansD != _value);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ansD(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ansD;



implementation {:inline 1} _LOG_ATOMIC_$$ansD(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ansD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ansD);
    return;
}



procedure _CHECK_ATOMIC_$$ansD(_P: bool, _offset: int);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);
  requires {:source_name "ansD"} {:array "$$ansD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ansD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ansD(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ansD := (if _P && _WRITE_HAS_OCCURRED_$$ansD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ansD);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ansD;
    goto anon3;

  anon3:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon7;

  anon7:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$currKnodeD;
    goto anon5;

  anon5:
    havoc $$offsetD;
    goto anon6;

  anon6:
    havoc $$ansD;
    goto anon7;

  anon8_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int)
{

  __BarrierImpl:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$ansD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ansD;
    goto anon3;

  anon3:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon7;

  anon7:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$currKnodeD;
    goto anon5;

  anon5:
    havoc $$offsetD;
    goto anon6;

  anon6:
    havoc $$ansD;
    goto anon7;

  anon8_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}
















