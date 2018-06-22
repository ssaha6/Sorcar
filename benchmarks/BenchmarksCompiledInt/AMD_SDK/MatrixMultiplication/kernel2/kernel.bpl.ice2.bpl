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
 b0014: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$matrixA"} {:global} {:elem_width 32} {:source_name "matrixA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixA: bool;

axiom {:array_info "$$matrixB"} {:global} {:elem_width 32} {:source_name "matrixB"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixB: bool;

var {:source_name "matrixC"} {:global} $$matrixC: [int]int;

axiom {:array_info "$$matrixC"} {:global} {:elem_width 32} {:source_name "matrixC"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixC: bool;

var {:source_name "blockA"} {:group_shared} $$blockA: [bv1][int]int;

axiom {:array_info "$$blockA"} {:group_shared} {:elem_width 32} {:source_name "blockA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockA: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockA: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockA: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV32_ASHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mmmKernel_local"} {:kernel} $mmmKernel_local($widthA: int);
  requires !_READ_HAS_OCCURRED_$$matrixA && !_WRITE_HAS_OCCURRED_$$matrixA && !_ATOMIC_HAS_OCCURRED_$$matrixA;
  requires !_READ_HAS_OCCURRED_$$matrixB && !_WRITE_HAS_OCCURRED_$$matrixB && !_ATOMIC_HAS_OCCURRED_$$matrixB;
  requires !_READ_HAS_OCCURRED_$$matrixC && !_WRITE_HAS_OCCURRED_$$matrixC && !_ATOMIC_HAS_OCCURRED_$$matrixC;
  requires !_READ_HAS_OCCURRED_$$blockA && !_WRITE_HAS_OCCURRED_$$blockA && !_ATOMIC_HAS_OCCURRED_$$blockA;
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
  modifies $$blockA, _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC, _WRITE_HAS_OCCURRED_$$blockA, _WRITE_READ_BENIGN_FLAG_$$blockA, _WRITE_READ_BENIGN_FLAG_$$blockA, $$matrixC, _TRACKING, _TRACKING, _READ_HAS_OCCURRED_$$blockA;



implementation {:source_name "mmmKernel_local"} {:kernel} $mmmKernel_local($widthA: int)
{
  var $sum0.0$1: int;
  var $sum0.0$2: int;
  var $sum1.0$1: int;
  var $sum1.0$2: int;
  var $sum2.0$1: int;
  var $sum2.0$2: int;
  var $sum3.0$1: int;
  var $sum3.0$2: int;
  var $i.0: int;
  var $sum0.1$1: int;
  var $sum0.1$2: int;
  var $sum1.1$1: int;
  var $sum1.1$2: int;
  var $sum2.1$1: int;
  var $sum2.1$2: int;
  var $sum3.1$1: int;
  var $sum3.1$2: int;
  var $j.0: int;
  var v0$1: int;
  var v0$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2: int;
  var v3: bool;
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
  var v22: bool;
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


  $0:
    v0$1 := BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2)));
    v0$2 := BV32_ADD(local_id_x$2, BV32_MUL(group_size_x, BV32_SHL(local_id_y$2, 2)));
    v1$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_MUL(BV32_SHL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 2), BV32_MUL(group_size_x, num_groups_x)));
    v1$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_MUL(BV32_SHL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 2), BV32_MUL(group_size_x, num_groups_x)));
    v2 := BV32_SDIV($widthA, 4);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := 0, 0, 0, 0, 0;
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := 0, 0, 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  (  $i.0 mod 1 == 0 mod 1 ) ,  (  BV32_SLE($i.0, 0) ) ,  (  BV32_SGE($i.0, 0) ) ,  (  BV32_ULE($i.0, 0) ) ,  (  BV32_UGE($i.0, 0) ) ,  true ,  true ,  true ,  true ,  true ,  (  !_READ_HAS_OCCURRED_$$blockA ) ,  (  !_WRITE_HAS_OCCURRED_$$blockA ) ,  (  _READ_HAS_OCCURRED_$$blockA ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 3) mod BV32_MUL(1, 4) ) ,  (  _WRITE_HAS_OCCURRED_$$blockA ==> _WATCHED_OFFSET == BV32_MUL(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), 4), 3) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), group_size_x), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), group_size_x), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), group_size_x), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), group_size_x), 4), 3) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(2, group_size_x)), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(2, group_size_x)), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(2, group_size_x)), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(2, group_size_x)), 4), 3) || _WATCHED_OFFSET == BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(3, group_size_x)), 4) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(3, group_size_x)), 4), 1) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(3, group_size_x)), 4), 2) || _WATCHED_OFFSET == BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(local_id_x$1, BV32_MUL(group_size_x, BV32_SHL(local_id_y$1, 2))), BV32_MUL(3, group_size_x)), 4), 3) ) ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v3 := BV32_ULT($i.0, BV32_UDIV(v2, group_size_x));
    goto __partitioned_block_$truebb_0, $falsebb;

  $falsebb:
    assume {:partition} !v3;
    call {:sourceloc} {:sourceloc_num 75} _LOG_WRITE_$$matrixC(true, BV32_MUL(v1$1, 4), BV_EXTRACT($sum0.0$1, 32, 0), $$matrixC[BV32_MUL(v1$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(v1$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 75} _CHECK_WRITE_$$matrixC(true, BV32_MUL(v1$2, 4), BV_EXTRACT($sum0.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(v1$1, 4)] := BV_EXTRACT($sum0.0$1, 32, 0);
    $$matrixC[BV32_MUL(v1$2, 4)] := BV_EXTRACT($sum0.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$1, 4), 1), BV_EXTRACT($sum0.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 1), BV_EXTRACT($sum0.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 1)] := BV_EXTRACT($sum0.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(v1$2, 4), 1)] := BV_EXTRACT($sum0.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$1, 4), 2), BV_EXTRACT($sum0.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 2), BV_EXTRACT($sum0.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 2)] := BV_EXTRACT($sum0.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(v1$2, 4), 2)] := BV_EXTRACT($sum0.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 78} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$1, 4), 3), BV_EXTRACT($sum0.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 78} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(v1$2, 4), 3), BV_EXTRACT($sum0.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(v1$1, 4), 3)] := BV_EXTRACT($sum0.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(v1$2, 4), 3)] := BV_EXTRACT($sum0.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 79} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), BV_EXTRACT($sum1.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 79} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), BV_EXTRACT($sum1.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4)] := BV_EXTRACT($sum1.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4)] := BV_EXTRACT($sum1.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 80} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 1), BV_EXTRACT($sum1.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 80} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 1), BV_EXTRACT($sum1.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 1)] := BV_EXTRACT($sum1.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 1)] := BV_EXTRACT($sum1.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 81} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 2), BV_EXTRACT($sum1.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 81} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 2), BV_EXTRACT($sum1.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 2)] := BV_EXTRACT($sum1.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 2)] := BV_EXTRACT($sum1.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 82} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 3), BV_EXTRACT($sum1.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 82} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 3), BV_EXTRACT($sum1.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(group_size_x, num_groups_x)), 4), 3)] := BV_EXTRACT($sum1.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(group_size_x, num_groups_x)), 4), 3)] := BV_EXTRACT($sum1.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), BV_EXTRACT($sum2.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), BV_EXTRACT($sum2.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4)] := BV_EXTRACT($sum2.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4)] := BV_EXTRACT($sum2.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 84} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1), BV_EXTRACT($sum2.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 84} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1), BV_EXTRACT($sum2.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1)] := BV_EXTRACT($sum2.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 1)] := BV_EXTRACT($sum2.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2), BV_EXTRACT($sum2.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2), BV_EXTRACT($sum2.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2)] := BV_EXTRACT($sum2.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 2)] := BV_EXTRACT($sum2.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3), BV_EXTRACT($sum2.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3), BV_EXTRACT($sum2.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3)] := BV_EXTRACT($sum2.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(2, BV32_MUL(group_size_x, num_groups_x))), 4), 3)] := BV_EXTRACT($sum2.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 87} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), BV_EXTRACT($sum3.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 87} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), BV_EXTRACT($sum3.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4)] := BV_EXTRACT($sum3.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4)] := BV_EXTRACT($sum3.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1), BV_EXTRACT($sum3.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1), BV_EXTRACT($sum3.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1)] := BV_EXTRACT($sum3.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 1)] := BV_EXTRACT($sum3.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 89} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2), BV_EXTRACT($sum3.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 89} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2), BV_EXTRACT($sum3.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2)] := BV_EXTRACT($sum3.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 2)] := BV_EXTRACT($sum3.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3), BV_EXTRACT($sum3.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3), BV_EXTRACT($sum3.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$1, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3)] := BV_EXTRACT($sum3.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(v1$2, BV32_MUL(3, BV32_MUL(group_size_x, num_groups_x))), 4), 3)] := BV_EXTRACT($sum3.0$2, 128, 96);
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v3;
    v4$1 := BV32_ADD(BV32_ADD(BV32_MUL($i.0, group_size_x), local_id_x$1), BV32_MUL(BV32_SHL(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 2), v2));
    v4$2 := BV32_ADD(BV32_ADD(BV32_MUL($i.0, group_size_x), local_id_x$2), BV32_MUL(BV32_SHL(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 2), v2));
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    call {:sourceloc} {:sourceloc_num 7} _LOG_WRITE_$$blockA(true, BV32_MUL(v0$1, 4), v5$1, $$blockA[1bv1][BV32_MUL(v0$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_MUL(v0$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 7} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 7} _CHECK_WRITE_$$blockA(true, BV32_MUL(v0$2, 4), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_MUL(v0$1, 4)] := v5$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(v0$2, 4)] := v5$2;
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$1, 4), 1), v6$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 1), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 1)] := v6$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 1)] := v6$2;
    call {:sourceloc} {:sourceloc_num 9} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$1, 4), 2), v7$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 9} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 2), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 2)] := v7$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 2)] := v7$2;
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$1, 4), 3), v8$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(v0$2, 4), 3), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(v0$1, 4), 3)] := v8$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(v0$2, 4), 3)] := v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), v9$1, $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, group_size_x), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, group_size_x), 4));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), v9$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, group_size_x), 4)] := v9$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, group_size_x), 4)] := v9$2;
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 1), v10$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 1), v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 1)] := v10$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 1)] := v10$2;
    call {:sourceloc} {:sourceloc_num 17} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 2), v11$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 17} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 2), v11$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 2)] := v11$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 2)] := v11$2;
    call {:sourceloc} {:sourceloc_num 18} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 3), v12$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 18} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 18} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 3), v12$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, group_size_x), 4), 3)] := v12$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, group_size_x), 4), 3)] := v12$2;
    havoc v13$1, v13$2;
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), v13$1, $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), v13$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4)] := v13$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4)] := v13$2;
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 1), v14$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 1), v14$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 1)] := v14$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 1)] := v14$2;
    call {:sourceloc} {:sourceloc_num 25} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 2), v15$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 25} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 2), v15$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 2)] := v15$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 2)] := v15$2;
    call {:sourceloc} {:sourceloc_num 26} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 3), v16$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 26} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 3), v16$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(2, group_size_x)), 4), 3)] := v16$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(2, group_size_x)), 4), 3)] := v16$2;
    havoc v17$1, v17$2;
    havoc v18$1, v18$2;
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    call {:sourceloc} {:sourceloc_num 31} _LOG_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), v17$1, $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 31} _CHECK_WRITE_$$blockA(true, BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), v17$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4)] := v17$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4)] := v17$2;
    call {:sourceloc} {:sourceloc_num 32} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 1), v18$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 32} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 1), v18$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 1)] := v18$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 1)] := v18$2;
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 2), v19$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 2), v19$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 2)] := v19$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 2)] := v19$2;
    call {:sourceloc} {:sourceloc_num 34} _LOG_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 3), v20$1, $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 34} _CHECK_WRITE_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 3), v20$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$blockA"} true;
    $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(v0$1, BV32_MUL(3, group_size_x)), 4), 3)] := v20$1;
    $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(v0$2, BV32_MUL(3, group_size_x)), 4), 3)] := v20$2;
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 35} $bugle_barrier_duplicated_0(-1, 0);
    v21$1 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), BV32_MUL(BV32_SHL(BV32_MUL($i.0, group_size_x), 2), BV32_MUL(group_size_x, num_groups_x)));
    v21$2 := BV32_ADD(BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), BV32_MUL(BV32_SHL(BV32_MUL($i.0, group_size_x), 2), BV32_MUL(group_size_x, num_groups_x)));
    $sum0.1$1, $sum1.1$1, $sum2.1$1, $sum3.1$1, $j.0 := $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, 0;
    $sum0.1$2, $sum1.1$2, $sum2.1$2, $sum3.1$2 := $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$blockA ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  (  $j.0 mod 4 == 0 mod 4 ) ,  (  BV32_SLE($j.0, 0) ) ,  (  BV32_SGE($j.0, 0) ) ,  (  BV32_ULE($j.0, 0) ) ,  (  BV32_UGE($j.0, 0) ) ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$blockA ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 3) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(BV32_ADD(0, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 3) mod BV32_MUL(1, 4) )  ); 


    assert {:block_sourceloc} {:sourceloc_num 36} true;
    v22 := BV32_ULT($j.0, BV32_MUL(group_size_x, 4));
    goto $truebb0, __partitioned_block_$falsebb0_0;

  __partitioned_block_$falsebb0_0:
    assume {:partition} !v22;
    goto __partitioned_block_$falsebb0_1;

  __partitioned_block_$falsebb0_1:
    call {:sourceloc_num 72} $bugle_barrier_duplicated_1(-1, 0);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $i.0 := $sum0.1$1, $sum1.1$1, $sum2.1$1, $sum3.1$1, BV32_ADD($i.0, 1);
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2 := $sum0.1$2, $sum1.1$2, $sum2.1$2, $sum3.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb0:
    assume {:partition} v22;
    call {:sourceloc} {:sourceloc_num 38} _LOG_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 38} _CHECK_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v23$1 := $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4)];
    v23$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4)];
    call {:sourceloc} {:sourceloc_num 39} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 1), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 39} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 1), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v24$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 1)];
    v24$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 1)];
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 2), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 2), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v25$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 2)];
    v25$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 2)];
    call {:sourceloc} {:sourceloc_num 41} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 3), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 41} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 3), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v26$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$1, 4), group_size_x)), 4), 3)];
    v26$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_MUL(local_id_y$2, 4), group_size_x)), 4), 3)];
    call {:sourceloc} {:sourceloc_num 42} _LOG_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 42} _CHECK_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v27$1 := $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4)];
    v27$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4)];
    call {:sourceloc} {:sourceloc_num 43} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 1), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 43} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 1), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v28$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 1)];
    v28$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 1)];
    call {:sourceloc} {:sourceloc_num 44} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 2), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 44} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 2), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v29$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 2)];
    v29$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 2)];
    call {:sourceloc} {:sourceloc_num 45} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 3), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 45} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 3), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v30$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 1), group_size_x)), 4), 3)];
    v30$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 1), group_size_x)), 4), 3)];
    call {:sourceloc} {:sourceloc_num 46} _LOG_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 46} _CHECK_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v31$1 := $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4)];
    v31$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4)];
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 1), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 1), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v32$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 1)];
    v32$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 1)];
    call {:sourceloc} {:sourceloc_num 48} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 2), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 48} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 2), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v33$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 2)];
    v33$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 2)];
    call {:sourceloc} {:sourceloc_num 49} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 3), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 49} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 3), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v34$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 2), group_size_x)), 4), 3)];
    v34$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 2), group_size_x)), 4), 3)];
    call {:sourceloc} {:sourceloc_num 50} _LOG_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 50} _CHECK_READ_$$blockA(true, BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v35$1 := $$blockA[1bv1][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4)];
    v35$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4)];
    call {:sourceloc} {:sourceloc_num 51} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 1), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 51} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 1), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v36$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 1)];
    v36$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 1)];
    call {:sourceloc} {:sourceloc_num 52} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 2), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 52} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 2), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v37$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 2)];
    v37$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 2)];
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 3), $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$blockA(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 3), $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$blockA"} true;
    v38$1 := $$blockA[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 4), 3), group_size_x)), 4), 3)];
    v38$2 := $$blockA[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_ASHR($j.0, 2), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, 4), 3), group_size_x)), 4), 3)];
    havoc v39$1, v39$2;
    havoc v40$1, v40$2;
    havoc v41$1, v41$2;
    havoc v42$1, v42$2;
    havoc v43$1, v43$2;
    havoc v44$1, v44$2;
    havoc v45$1, v45$2;
    havoc v46$1, v46$2;
    havoc v47$1, v47$2;
    havoc v48$1, v48$2;
    havoc v49$1, v49$2;
    havoc v50$1, v50$2;
    havoc v51$1, v51$2;
    havoc v52$1, v52$2;
    havoc v53$1, v53$2;
    havoc v54$1, v54$2;
    v55$1 := BV_EXTRACT($sum0.1$1, 64, 32);
    v55$2 := BV_EXTRACT($sum0.1$2, 64, 32);
    v56$1 := BV_EXTRACT($sum0.1$1, 96, 64);
    v56$2 := BV_EXTRACT($sum0.1$2, 96, 64);
    v57$1 := BV_EXTRACT($sum0.1$1, 128, 96);
    v57$2 := BV_EXTRACT($sum0.1$2, 128, 96);
    v58$1 := BV_EXTRACT($sum1.1$1, 64, 32);
    v58$2 := BV_EXTRACT($sum1.1$2, 64, 32);
    v59$1 := BV_EXTRACT($sum1.1$1, 96, 64);
    v59$2 := BV_EXTRACT($sum1.1$2, 96, 64);
    v60$1 := BV_EXTRACT($sum1.1$1, 128, 96);
    v60$2 := BV_EXTRACT($sum1.1$2, 128, 96);
    v61$1 := BV_EXTRACT($sum2.1$1, 64, 32);
    v61$2 := BV_EXTRACT($sum2.1$2, 64, 32);
    v62$1 := BV_EXTRACT($sum2.1$1, 96, 64);
    v62$2 := BV_EXTRACT($sum2.1$2, 96, 64);
    v63$1 := BV_EXTRACT($sum2.1$1, 128, 96);
    v63$2 := BV_EXTRACT($sum2.1$2, 128, 96);
    v64$1 := BV_EXTRACT($sum3.1$1, 64, 32);
    v64$2 := BV_EXTRACT($sum3.1$2, 64, 32);
    v65$1 := BV_EXTRACT($sum3.1$1, 96, 64);
    v65$2 := BV_EXTRACT($sum3.1$2, 96, 64);
    v66$1 := BV_EXTRACT($sum3.1$1, 128, 96);
    v66$2 := BV_EXTRACT($sum3.1$2, 128, 96);
    $sum0.1$1, $sum1.1$1, $sum2.1$1, $sum3.1$1, $j.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v57$1, FADD32(FMUL32(v26$1, v54$1), FADD32(FMUL32(v25$1, v50$1), FADD32(FMUL32(v23$1, v42$1), FMUL32(v24$1, v46$1))))), FADD32(v56$1, FADD32(FMUL32(v26$1, v53$1), FADD32(FMUL32(v25$1, v49$1), FADD32(FMUL32(v23$1, v41$1), FMUL32(v24$1, v45$1)))))), FADD32(v55$1, FADD32(FMUL32(v26$1, v52$1), FADD32(FMUL32(v25$1, v48$1), FADD32(FMUL32(v23$1, v40$1), FMUL32(v24$1, v44$1)))))), FADD32(BV_EXTRACT($sum0.1$1, 32, 0), FADD32(FMUL32(v26$1, v51$1), FADD32(FMUL32(v25$1, v47$1), FADD32(FMUL32(v23$1, v39$1), FMUL32(v24$1, v43$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v60$1, FADD32(FMUL32(v30$1, v54$1), FADD32(FMUL32(v29$1, v50$1), FADD32(FMUL32(v27$1, v42$1), FMUL32(v28$1, v46$1))))), FADD32(v59$1, FADD32(FMUL32(v30$1, v53$1), FADD32(FMUL32(v29$1, v49$1), FADD32(FMUL32(v27$1, v41$1), FMUL32(v28$1, v45$1)))))), FADD32(v58$1, FADD32(FMUL32(v30$1, v52$1), FADD32(FMUL32(v29$1, v48$1), FADD32(FMUL32(v27$1, v40$1), FMUL32(v28$1, v44$1)))))), FADD32(BV_EXTRACT($sum1.1$1, 32, 0), FADD32(FMUL32(v30$1, v51$1), FADD32(FMUL32(v29$1, v47$1), FADD32(FMUL32(v27$1, v39$1), FMUL32(v28$1, v43$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v63$1, FADD32(FMUL32(v34$1, v54$1), FADD32(FMUL32(v33$1, v50$1), FADD32(FMUL32(v31$1, v42$1), FMUL32(v32$1, v46$1))))), FADD32(v62$1, FADD32(FMUL32(v34$1, v53$1), FADD32(FMUL32(v33$1, v49$1), FADD32(FMUL32(v31$1, v41$1), FMUL32(v32$1, v45$1)))))), FADD32(v61$1, FADD32(FMUL32(v34$1, v52$1), FADD32(FMUL32(v33$1, v48$1), FADD32(FMUL32(v31$1, v40$1), FMUL32(v32$1, v44$1)))))), FADD32(BV_EXTRACT($sum2.1$1, 32, 0), FADD32(FMUL32(v34$1, v51$1), FADD32(FMUL32(v33$1, v47$1), FADD32(FMUL32(v31$1, v39$1), FMUL32(v32$1, v43$1)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v66$1, FADD32(FMUL32(v38$1, v54$1), FADD32(FMUL32(v37$1, v50$1), FADD32(FMUL32(v35$1, v42$1), FMUL32(v36$1, v46$1))))), FADD32(v65$1, FADD32(FMUL32(v38$1, v53$1), FADD32(FMUL32(v37$1, v49$1), FADD32(FMUL32(v35$1, v41$1), FMUL32(v36$1, v45$1)))))), FADD32(v64$1, FADD32(FMUL32(v38$1, v52$1), FADD32(FMUL32(v37$1, v48$1), FADD32(FMUL32(v35$1, v40$1), FMUL32(v36$1, v44$1)))))), FADD32(BV_EXTRACT($sum3.1$1, 32, 0), FADD32(FMUL32(v38$1, v51$1), FADD32(FMUL32(v37$1, v47$1), FADD32(FMUL32(v35$1, v39$1), FMUL32(v36$1, v43$1)))))), BV32_ADD($j.0, 4);
    $sum0.1$2, $sum1.1$2, $sum2.1$2, $sum3.1$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v57$2, FADD32(FMUL32(v26$2, v54$2), FADD32(FMUL32(v25$2, v50$2), FADD32(FMUL32(v23$2, v42$2), FMUL32(v24$2, v46$2))))), FADD32(v56$2, FADD32(FMUL32(v26$2, v53$2), FADD32(FMUL32(v25$2, v49$2), FADD32(FMUL32(v23$2, v41$2), FMUL32(v24$2, v45$2)))))), FADD32(v55$2, FADD32(FMUL32(v26$2, v52$2), FADD32(FMUL32(v25$2, v48$2), FADD32(FMUL32(v23$2, v40$2), FMUL32(v24$2, v44$2)))))), FADD32(BV_EXTRACT($sum0.1$2, 32, 0), FADD32(FMUL32(v26$2, v51$2), FADD32(FMUL32(v25$2, v47$2), FADD32(FMUL32(v23$2, v39$2), FMUL32(v24$2, v43$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v60$2, FADD32(FMUL32(v30$2, v54$2), FADD32(FMUL32(v29$2, v50$2), FADD32(FMUL32(v27$2, v42$2), FMUL32(v28$2, v46$2))))), FADD32(v59$2, FADD32(FMUL32(v30$2, v53$2), FADD32(FMUL32(v29$2, v49$2), FADD32(FMUL32(v27$2, v41$2), FMUL32(v28$2, v45$2)))))), FADD32(v58$2, FADD32(FMUL32(v30$2, v52$2), FADD32(FMUL32(v29$2, v48$2), FADD32(FMUL32(v27$2, v40$2), FMUL32(v28$2, v44$2)))))), FADD32(BV_EXTRACT($sum1.1$2, 32, 0), FADD32(FMUL32(v30$2, v51$2), FADD32(FMUL32(v29$2, v47$2), FADD32(FMUL32(v27$2, v39$2), FMUL32(v28$2, v43$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v63$2, FADD32(FMUL32(v34$2, v54$2), FADD32(FMUL32(v33$2, v50$2), FADD32(FMUL32(v31$2, v42$2), FMUL32(v32$2, v46$2))))), FADD32(v62$2, FADD32(FMUL32(v34$2, v53$2), FADD32(FMUL32(v33$2, v49$2), FADD32(FMUL32(v31$2, v41$2), FMUL32(v32$2, v45$2)))))), FADD32(v61$2, FADD32(FMUL32(v34$2, v52$2), FADD32(FMUL32(v33$2, v48$2), FADD32(FMUL32(v31$2, v40$2), FMUL32(v32$2, v44$2)))))), FADD32(BV_EXTRACT($sum2.1$2, 32, 0), FADD32(FMUL32(v34$2, v51$2), FADD32(FMUL32(v33$2, v47$2), FADD32(FMUL32(v31$2, v39$2), FMUL32(v32$2, v43$2)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(v66$2, FADD32(FMUL32(v38$2, v54$2), FADD32(FMUL32(v37$2, v50$2), FADD32(FMUL32(v35$2, v42$2), FMUL32(v36$2, v46$2))))), FADD32(v65$2, FADD32(FMUL32(v38$2, v53$2), FADD32(FMUL32(v37$2, v49$2), FADD32(FMUL32(v35$2, v41$2), FMUL32(v36$2, v45$2)))))), FADD32(v64$2, FADD32(FMUL32(v38$2, v52$2), FADD32(FMUL32(v37$2, v48$2), FADD32(FMUL32(v35$2, v40$2), FMUL32(v36$2, v44$2)))))), FADD32(BV_EXTRACT($sum3.1$2, 32, 0), FADD32(FMUL32(v38$2, v51$2), FADD32(FMUL32(v37$2, v47$2), FADD32(FMUL32(v35$2, v39$2), FMUL32(v36$2, v43$2))))));
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 4 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$blockA, $$matrixC, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$blockA, $$matrixC, _TRACKING;





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













const _WATCHED_VALUE_$$matrixA: int;

procedure {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _READ_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixA);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixA: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixA, _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _WRITE_HAS_OCCURRED_$$matrixA);
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



procedure _CHECK_WRITE_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_ATOMIC_$$matrixA(_P: bool, _offset: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



const _WATCHED_VALUE_$$matrixB: int;

procedure {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _READ_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixB);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixB: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixB, _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _WRITE_HAS_OCCURRED_$$matrixB);
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



procedure _CHECK_WRITE_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_ATOMIC_$$matrixB(_P: bool, _offset: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



const _WATCHED_VALUE_$$matrixC: int;

procedure {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _READ_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixC);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixC: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _WRITE_HAS_OCCURRED_$$matrixC);
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



procedure _CHECK_WRITE_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_ATOMIC_$$matrixC(_P: bool, _offset: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



const _WATCHED_VALUE_$$blockA: int;

procedure {:inline 1} _LOG_READ_$$blockA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$blockA;



implementation {:inline 1} _LOG_READ_$$blockA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blockA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockA == _value then true else _READ_HAS_OCCURRED_$$blockA);
    return;
}



procedure _CHECK_READ_$$blockA(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blockA && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$blockA: bool;

procedure {:inline 1} _LOG_WRITE_$$blockA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$blockA, _WRITE_READ_BENIGN_FLAG_$$blockA;



implementation {:inline 1} _LOG_WRITE_$$blockA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blockA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockA == _value then true else _WRITE_HAS_OCCURRED_$$blockA);
    _WRITE_READ_BENIGN_FLAG_$$blockA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blockA);
    return;
}



procedure _CHECK_WRITE_$$blockA(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockA != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockA != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$blockA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blockA;



implementation {:inline 1} _LOG_ATOMIC_$$blockA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blockA := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blockA);
    return;
}



procedure _CHECK_ATOMIC_$$blockA(_P: bool, _offset: int);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "blockA"} {:array "$$blockA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blockA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blockA := (if _P && _WRITE_HAS_OCCURRED_$$blockA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blockA);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$blockA;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockA;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockA;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$matrixC;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$matrixC;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$matrixC;
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
    havoc $$matrixC;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$blockA;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$blockA;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockA;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockA;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$matrixC;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$matrixC;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$matrixC;
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
    havoc $$matrixC;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$blockA;
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










