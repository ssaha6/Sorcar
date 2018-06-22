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
 b0015: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "output"} {:global} $$output: [int]int;

axiom {:array_info "$$output"} {:global} {:elem_width 32} {:source_name "output"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$output: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$output: bool;

axiom {:array_info "$$input"} {:global} {:elem_width 32} {:source_name "input"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$input: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$input: bool;

var {:source_name "shared"} {:group_shared} $$shared: [bv1][int]int;

axiom {:array_info "$$shared"} {:group_shared} {:elem_width 32} {:source_name "shared"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$shared: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$shared: bool;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FDIV32(int, int) : int;

function FP32_TO_UI32(int) : int;

function FPOW32(int, int) : int;

function UI32_TO_FP32(int) : int;

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

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "QuasiRandomSequence"} {:kernel} $QuasiRandomSequence();
  requires !_READ_HAS_OCCURRED_$$output && !_WRITE_HAS_OCCURRED_$$output && !_ATOMIC_HAS_OCCURRED_$$output;
  requires !_READ_HAS_OCCURRED_$$input && !_WRITE_HAS_OCCURRED_$$input && !_ATOMIC_HAS_OCCURRED_$$input;
  requires !_READ_HAS_OCCURRED_$$shared && !_WRITE_HAS_OCCURRED_$$shared && !_ATOMIC_HAS_OCCURRED_$$shared;
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
  modifies $$shared, _WRITE_HAS_OCCURRED_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared, $$output, _TRACKING, _WRITE_HAS_OCCURRED_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _WRITE_READ_BENIGN_FLAG_$$output, _READ_HAS_OCCURRED_$$shared;



implementation {:source_name "QuasiRandomSequence"} {:kernel} $QuasiRandomSequence()
{
  var $i.0$1: int;
  var $i.0$2: int;
  var $temp.0$1: int;
  var $temp.0$2: int;
  var $k.0: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v2$1: bool;
  var v2$2: bool;
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
  var v11: bool;
  var v12: int;
  var v13: int;
  var v14: int;
  var v15: int;
  var v16: int;
  var v22$1: int;
  var v22$2: int;
  var v17: int;
  var v18: int;
  var v19: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
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
  var v28$1: int;
  var v28$2: int;
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
  var v52$1: int;
  var v52$2: int;
  var v69$1: int;
  var v69$2: int;
  var v86$1: int;
  var v86$2: int;
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
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v62$1: int;
  var v62$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
  var v66$1: int;
  var v66$2: int;
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v70$1: int;
  var v70$2: int;
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
  var v73$1: int;
  var v73$2: int;
  var v74$1: int;
  var v74$2: int;
  var v75$1: int;
  var v75$2: int;
  var v76$1: int;
  var v76$2: int;
  var v77$1: int;
  var v77$2: int;
  var v78$1: int;
  var v78$2: int;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: int;
  var v81$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v85$1: int;
  var v85$2: int;
  var v87: int;
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
  var _WRITE_HAS_OCCURRED_$$shared$ghost$$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := local_id_x$1 == 0;
    v1$2 := local_id_x$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p0$1 := (if v1$1 then v1$1 else p0$1);
    p0$2 := (if v1$2 then v1$2 else p0$2);
    $i.0$1 := (if p0$1 then 0 else $i.0$1);
    $i.0$2 := (if p0$2 then 0 else $i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _WRITE_HAS_OCCURRED_$$shared$ghost$$2 := _WRITE_HAS_OCCURRED_$$shared;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) ) ,  (  !p0$1 ==> _WRITE_HAS_OCCURRED_$$shared$ghost$$2 == _WRITE_HAS_OCCURRED_$$shared ) ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  ( p1$1 ==> $i.0$1 mod 1 == 0 mod 1 )  && ( p1$2 ==> $i.0$2 mod 1 == 0 mod 1 ) ,  ( p1$1 ==> BV32_SLE($i.0$1, 0) )  && ( p1$2 ==> BV32_SLE($i.0$2, 0) ) ,  ( p1$1 ==> BV32_SGE($i.0$1, 0) )  && ( p1$2 ==> BV32_SGE($i.0$2, 0) ) ,  ( p1$1 ==> BV32_ULE($i.0$1, 0) )  && ( p1$2 ==> BV32_ULE($i.0$2, 0) ) ,  ( p1$1 ==> BV32_UGE($i.0$1, 0) )  && ( p1$2 ==> BV32_UGE($i.0$2, 0) ) ,  ( p1$1 ==> p1$1 ==> local_id_x$1 == 0 )  && ( p1$2 ==> p1$2 ==> local_id_x$2 == 0 ) ,  (  local_id_x$1 == 0 && BV32_SLT($i.0$1, 8) ==> p1$1 )  && (  local_id_x$2 == 0 && BV32_SLT($i.0$2, 8) ==> p1$2 ) ,  (  _WRITE_HAS_OCCURRED_$$shared ==> local_id_x$1 == 0 ) ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 2} p1$1 ==> true;
    v2$1 := (if p1$1 then BV32_SLT($i.0$1, 8) else v2$1);
    v2$2 := (if p1$2 then BV32_SLT($i.0$2, 8) else v2$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v2$1 then v2$1 else p2$1);
    p2$2 := (if p1$2 && v2$2 then v2$2 else p2$2);
    p1$1 := (if p1$1 && !v2$1 then v2$1 else p1$1);
    p1$2 := (if p1$2 && !v2$2 then v2$2 else p1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p2$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p2$2 then _HAVOC_int$2 else v3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p2$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p2$2 then _HAVOC_int$2 else v4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p2$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p2$2 then _HAVOC_int$2 else v5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p2$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p2$2 then _HAVOC_int$2 else v6$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$shared(p2$1, BV32_MUL($i.0$1, 4), v3$1, $$shared[1bv1][BV32_MUL($i.0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p2$2, BV32_MUL($i.0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$shared(p2$2, BV32_MUL($i.0$2, 4), v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_MUL($i.0$1, 4)] := (if p2$1 then v3$1 else $$shared[1bv1][BV32_MUL($i.0$1, 4)]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($i.0$2, 4)] := (if p2$2 then v3$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($i.0$2, 4)]);
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$shared(p2$1, BV32_ADD(BV32_MUL($i.0$1, 4), 1), v4$1, $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 1), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 1)] := (if p2$1 then v4$1 else $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 1)]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 1)] := (if p2$2 then v4$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$shared(p2$1, BV32_ADD(BV32_MUL($i.0$1, 4), 2), v5$1, $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 2), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 2)] := (if p2$1 then v5$1 else $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 2)]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 2)] := (if p2$2 then v5$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 2)]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_WRITE_$$shared(p2$1, BV32_ADD(BV32_MUL($i.0$1, 4), 3), v6$1, $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 11} _CHECK_WRITE_$$shared(p2$2, BV32_ADD(BV32_MUL($i.0$2, 4), 3), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$shared"} true;
    $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 3)] := (if p2$1 then v6$1 else $$shared[1bv1][BV32_ADD(BV32_MUL($i.0$1, 4), 3)]);
    $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 3)] := (if p2$2 then v6$2 else $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($i.0$2, 4), 3)]);
    $i.0$1 := (if p2$1 then BV32_ADD($i.0$1, 1) else $i.0$1);
    $i.0$2 := (if p2$2 then BV32_ADD($i.0$2, 1) else $i.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 15} $bugle_barrier_duplicated_0(-1, 0);
    v7$1 := BV32_MUL(local_id_x$1, 4);
    v7$2 := BV32_MUL(local_id_x$2, 4);
    v8$1 := BV32_ADD(v7$1, 1);
    v8$2 := BV32_ADD(v7$2, 1);
    v9$1 := BV32_ADD(v7$1, 2);
    v9$2 := BV32_ADD(v7$2, 2);
    v10$1 := BV32_ADD(v7$1, 3);
    v10$2 := BV32_ADD(v7$2, 3);
    $temp.0$1, $k.0 := 0, 0;
    $temp.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_0"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$shared ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  $k.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($k.0, 0) ) ,  (  BV32_SGE($k.0, 0) ) ,  (  BV32_ULE($k.0, 0) ) ,  (  BV32_UGE($k.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$shared ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 16} true;
    v11 := BV32_SLT($k.0, 8);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v11;
    v87 := FPOW32(1073741824, 1107296256);
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$output(true, BV32_MUL(v0$1, 4), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 32, 0)), v87), $$output[BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$output(true, BV32_MUL(v0$2, 4), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 32, 0)), v87));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_MUL(v0$1, 4)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 32, 0)), v87);
    $$output[BV32_MUL(v0$2, 4)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 32, 0)), v87);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 64, 32)), v87), $$output[BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 64, 32)), v87));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v0$1, 4), 1)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 64, 32)), v87);
    $$output[BV32_ADD(BV32_MUL(v0$2, 4), 1)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 64, 32)), v87);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 96, 64)), v87), $$output[BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 96, 64)), v87));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v0$1, 4), 2)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 96, 64)), v87);
    $$output[BV32_ADD(BV32_MUL(v0$2, 4), 2)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 96, 64)), v87);
    call {:sourceloc} {:sourceloc_num 87} _LOG_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 128, 96)), v87), $$output[BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 87} _CHECK_WRITE_$$output(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 128, 96)), v87));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$output"} true;
    $$output[BV32_ADD(BV32_MUL(v0$1, 4), 3)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$1, 128, 96)), v87);
    $$output[BV32_ADD(BV32_MUL(v0$2, 4), 3)] := FDIV32(UI32_TO_FP32(BV_EXTRACT($temp.0$2, 128, 96)), v87);
    return;

  $truebb1:
    assume {:partition} v11;
    v12 := BV32_MUL($k.0, 4);
    v13 := BV32_ADD(v12, 1);
    v14 := BV32_ADD(v12, 2);
    v15 := BV32_ADD(v12, 3);
    v16 := FP32_TO_UI32(FPOW32(1073741824, UI32_TO_FP32(v12)));
    v17 := FP32_TO_UI32(FPOW32(1073741824, UI32_TO_FP32(v13)));
    v18 := FP32_TO_UI32(FPOW32(1073741824, UI32_TO_FP32(v14)));
    v19 := FP32_TO_UI32(FPOW32(1073741824, UI32_TO_FP32(v15)));
    call {:sourceloc} {:sourceloc_num 18} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 18} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v20$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v20$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v21$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v21$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v22$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v22$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v23$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v23$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v24$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v24$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v25$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v25$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v26$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v26$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v27$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v27$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v28$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v28$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v29$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v29$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v30$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v30$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v31$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v31$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v32$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v32$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v33$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v33$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v34$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v34$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v35$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v35$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v36$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v36$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v37$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v37$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v38$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v38$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v39$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v39$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v40$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v40$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v41$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v41$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v42$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v42$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v43$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v43$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v44$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v44$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v45$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v45$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v46$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v46$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v47$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v47$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v48$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v48$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v49$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v49$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v50$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v50$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v51$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v51$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v52$1 := BV_EXTRACT($temp.0$1, 64, 32);
    v52$2 := BV_EXTRACT($temp.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v53$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v53$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v54$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v54$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v55$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v55$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v56$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v56$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v57$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v57$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v58$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v58$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v59$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v59$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v60$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v60$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v61$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v61$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v62$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v62$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 60} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 60} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v63$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v63$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 61} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 61} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v64$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v64$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v65$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v65$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v66$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v66$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v67$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v67$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 65} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 65} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v68$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v68$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v69$1 := BV_EXTRACT($temp.0$1, 96, 64);
    v69$2 := BV_EXTRACT($temp.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v70$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v70$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 67} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 67} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v71$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v71$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 68} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 68} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v72$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v72$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 69} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 69} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v73$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v73$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v74$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v74$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v75$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v75$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v76$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v76$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v77$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v77$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 74} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 74} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v78$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v78$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v79$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v79$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 76} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 76} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v80$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v80$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v81$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v81$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[1bv1][BV32_MUL($k.0, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$shared(true, BV32_MUL($k.0, 4), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v82$1 := $$shared[1bv1][BV32_MUL($k.0, 4)];
    v82$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL($k.0, 4)];
    call {:sourceloc} {:sourceloc_num 79} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 79} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 1), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v83$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    v83$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 1)];
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 2), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v84$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    v84$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 2)];
    call {:sourceloc} {:sourceloc_num 81} _LOG_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 81} _CHECK_READ_$$shared(true, BV32_ADD(BV32_MUL($k.0, 4), 3), $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$shared"} true;
    v85$1 := $$shared[1bv1][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v85$2 := $$shared[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL($k.0, 4), 3)];
    v86$1 := BV_EXTRACT($temp.0$1, 128, 96);
    v86$2 := BV_EXTRACT($temp.0$2, 128, 96);
    $temp.0$1, $k.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_XOR(v86$1, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v10$1, v16), BV32_AND(v12, 31)), v70$1), BV32_MUL(BV32_LSHR(BV32_AND(v10$1, v17), BV32_AND(v13, 31)), v75$1)), BV32_MUL(BV32_LSHR(BV32_AND(v10$1, v18), BV32_AND(v14, 31)), v80$1)), BV32_MUL(BV32_LSHR(BV32_AND(v10$1, v19), BV32_AND(v15, 31)), v85$1))), BV32_XOR(v69$1, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v9$1, v16), BV32_AND(v12, 31)), v53$1), BV32_MUL(BV32_LSHR(BV32_AND(v9$1, v17), BV32_AND(v13, 31)), v58$1)), BV32_MUL(BV32_LSHR(BV32_AND(v9$1, v18), BV32_AND(v14, 31)), v63$1)), BV32_MUL(BV32_LSHR(BV32_AND(v9$1, v19), BV32_AND(v15, 31)), v68$1)))), BV32_XOR(v52$1, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v8$1, v16), BV32_AND(v12, 31)), v36$1), BV32_MUL(BV32_LSHR(BV32_AND(v8$1, v17), BV32_AND(v13, 31)), v41$1)), BV32_MUL(BV32_LSHR(BV32_AND(v8$1, v18), BV32_AND(v14, 31)), v46$1)), BV32_MUL(BV32_LSHR(BV32_AND(v8$1, v19), BV32_AND(v15, 31)), v51$1)))), BV32_XOR(BV_EXTRACT($temp.0$1, 32, 0), BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v7$1, v16), BV32_AND(v12, 31)), v20$1), BV32_MUL(BV32_LSHR(BV32_AND(v7$1, v17), BV32_AND(v13, 31)), v25$1)), BV32_MUL(BV32_LSHR(BV32_AND(v7$1, v18), BV32_AND(v14, 31)), v30$1)), BV32_MUL(BV32_LSHR(BV32_AND(v7$1, v19), BV32_AND(v15, 31)), v35$1)))), BV32_ADD($k.0, 1);
    $temp.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_XOR(v86$2, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v10$2, v16), BV32_AND(v12, 31)), v70$2), BV32_MUL(BV32_LSHR(BV32_AND(v10$2, v17), BV32_AND(v13, 31)), v75$2)), BV32_MUL(BV32_LSHR(BV32_AND(v10$2, v18), BV32_AND(v14, 31)), v80$2)), BV32_MUL(BV32_LSHR(BV32_AND(v10$2, v19), BV32_AND(v15, 31)), v85$2))), BV32_XOR(v69$2, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v9$2, v16), BV32_AND(v12, 31)), v53$2), BV32_MUL(BV32_LSHR(BV32_AND(v9$2, v17), BV32_AND(v13, 31)), v58$2)), BV32_MUL(BV32_LSHR(BV32_AND(v9$2, v18), BV32_AND(v14, 31)), v63$2)), BV32_MUL(BV32_LSHR(BV32_AND(v9$2, v19), BV32_AND(v15, 31)), v68$2)))), BV32_XOR(v52$2, BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v8$2, v16), BV32_AND(v12, 31)), v36$2), BV32_MUL(BV32_LSHR(BV32_AND(v8$2, v17), BV32_AND(v13, 31)), v41$2)), BV32_MUL(BV32_LSHR(BV32_AND(v8$2, v18), BV32_AND(v14, 31)), v46$2)), BV32_MUL(BV32_LSHR(BV32_AND(v8$2, v19), BV32_AND(v15, 31)), v51$2)))), BV32_XOR(BV_EXTRACT($temp.0$2, 32, 0), BV32_XOR(BV32_XOR(BV32_XOR(BV32_MUL(BV32_LSHR(BV32_AND(v7$2, v16), BV32_AND(v12, 31)), v20$2), BV32_MUL(BV32_LSHR(BV32_AND(v7$2, v17), BV32_AND(v13, 31)), v25$2)), BV32_MUL(BV32_LSHR(BV32_AND(v7$2, v18), BV32_AND(v14, 31)), v30$2)), BV32_MUL(BV32_LSHR(BV32_AND(v7$2, v19), BV32_AND(v15, 31)), v35$2))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $7;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $2;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

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
  modifies $$shared, $$output, _TRACKING;





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



const _WATCHED_VALUE_$$shared: int;

procedure {:inline 1} _LOG_READ_$$shared(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$shared;



implementation {:inline 1} _LOG_READ_$$shared(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then true else _READ_HAS_OCCURRED_$$shared);
    return;
}



procedure _CHECK_READ_$$shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$shared && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$shared: bool;

procedure {:inline 1} _LOG_WRITE_$$shared(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$shared, _WRITE_READ_BENIGN_FLAG_$$shared;



implementation {:inline 1} _LOG_WRITE_$$shared(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then true else _WRITE_HAS_OCCURRED_$$shared);
    _WRITE_READ_BENIGN_FLAG_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$shared);
    return;
}



procedure _CHECK_WRITE_$$shared(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$shared != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$shared(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$shared;



implementation {:inline 1} _LOG_ATOMIC_$$shared(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$shared := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$shared);
    return;
}



procedure _CHECK_ATOMIC_$$shared(_P: bool, _offset: int);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared"} {:array "$$shared"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$shared;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$shared(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$shared := (if _P && _WRITE_HAS_OCCURRED_$$shared && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$shared);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$shared;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$shared;
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
    havoc $$shared;
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






