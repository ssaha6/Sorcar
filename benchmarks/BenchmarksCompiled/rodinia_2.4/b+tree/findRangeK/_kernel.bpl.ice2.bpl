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
 b0020: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



var {:source_name "knodesD"} {:global} $$knodesD: [bv32]bv8;

axiom {:array_info "$$knodesD"} {:global} {:elem_width 8} {:source_name "knodesD"} {:source_elem_width 16544} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$knodesD: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16544} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$knodesD: bool;

var {:source_name "currKnodeD"} {:global} $$currKnodeD: [bv32]bv64;

axiom {:array_info "$$currKnodeD"} {:global} {:elem_width 64} {:source_name "currKnodeD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$currKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$currKnodeD: bool;

var {:source_name "offsetD"} {:global} $$offsetD: [bv32]bv64;

axiom {:array_info "$$offsetD"} {:global} {:elem_width 64} {:source_name "offsetD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$offsetD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$offsetD: bool;

var {:source_name "lastKnodeD"} {:global} $$lastKnodeD: [bv32]bv64;

axiom {:array_info "$$lastKnodeD"} {:global} {:elem_width 64} {:source_name "lastKnodeD"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$lastKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$lastKnodeD: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$lastKnodeD: bool;

var {:source_name "offset_2D"} {:global} $$offset_2D: [bv32]bv64;

axiom {:array_info "$$offset_2D"} {:global} {:elem_width 64} {:source_name "offset_2D"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$offset_2D: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$offset_2D: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$offset_2D: bool;

var {:source_name "startD"} {:global} $$startD: [bv32]bv32;

axiom {:array_info "$$startD"} {:global} {:elem_width 32} {:source_name "startD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$startD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$startD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$startD: bool;

var {:source_name "endD"} {:global} $$endD: [bv32]bv32;

axiom {:array_info "$$endD"} {:global} {:elem_width 32} {:source_name "endD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$endD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$endD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$endD: bool;

var {:source_name "RecstartD"} {:global} $$RecstartD: [bv32]bv32;

axiom {:array_info "$$RecstartD"} {:global} {:elem_width 32} {:source_name "RecstartD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RecstartD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RecstartD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RecstartD: bool;

var {:source_name "ReclenD"} {:global} $$ReclenD: [bv32]bv32;

axiom {:array_info "$$ReclenD"} {:global} {:elem_width 32} {:source_name "ReclenD"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ReclenD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ReclenD: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ReclenD: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

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

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

procedure {:source_name "findRangeK"} {:kernel} $findRangeK($height: bv64, $knodes_elem: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $height == 2bv64 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $knodes_elem == 7874bv64 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$knodesD && !_WRITE_HAS_OCCURRED_$$knodesD && !_ATOMIC_HAS_OCCURRED_$$knodesD;
  requires !_READ_HAS_OCCURRED_$$currKnodeD && !_WRITE_HAS_OCCURRED_$$currKnodeD && !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
  requires !_READ_HAS_OCCURRED_$$offsetD && !_WRITE_HAS_OCCURRED_$$offsetD && !_ATOMIC_HAS_OCCURRED_$$offsetD;
  requires !_READ_HAS_OCCURRED_$$lastKnodeD && !_WRITE_HAS_OCCURRED_$$lastKnodeD && !_ATOMIC_HAS_OCCURRED_$$lastKnodeD;
  requires !_READ_HAS_OCCURRED_$$offset_2D && !_WRITE_HAS_OCCURRED_$$offset_2D && !_ATOMIC_HAS_OCCURRED_$$offset_2D;
  requires !_READ_HAS_OCCURRED_$$startD && !_WRITE_HAS_OCCURRED_$$startD && !_ATOMIC_HAS_OCCURRED_$$startD;
  requires !_READ_HAS_OCCURRED_$$endD && !_WRITE_HAS_OCCURRED_$$endD && !_ATOMIC_HAS_OCCURRED_$$endD;
  requires !_READ_HAS_OCCURRED_$$RecstartD && !_WRITE_HAS_OCCURRED_$$RecstartD && !_ATOMIC_HAS_OCCURRED_$$RecstartD;
  requires !_READ_HAS_OCCURRED_$$ReclenD && !_WRITE_HAS_OCCURRED_$$ReclenD && !_ATOMIC_HAS_OCCURRED_$$ReclenD;
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
  modifies _READ_HAS_OCCURRED_$$currKnodeD, _WRITE_HAS_OCCURRED_$$RecstartD, _WRITE_READ_BENIGN_FLAG_$$RecstartD, _WRITE_READ_BENIGN_FLAG_$$RecstartD, $$currKnodeD, $$offsetD, $$lastKnodeD, $$offset_2D, $$RecstartD, $$ReclenD, _TRACKING, _READ_HAS_OCCURRED_$$lastKnodeD, _READ_HAS_OCCURRED_$$RecstartD, _WRITE_HAS_OCCURRED_$$ReclenD, _WRITE_READ_BENIGN_FLAG_$$ReclenD, _WRITE_READ_BENIGN_FLAG_$$ReclenD, _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD, _WRITE_HAS_OCCURRED_$$offset_2D, _WRITE_READ_BENIGN_FLAG_$$offset_2D, _WRITE_READ_BENIGN_FLAG_$$offset_2D, _TRACKING, _READ_HAS_OCCURRED_$$offsetD, _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD, _READ_HAS_OCCURRED_$$offset_2D, _WRITE_HAS_OCCURRED_$$lastKnodeD, _WRITE_READ_BENIGN_FLAG_$$lastKnodeD, _WRITE_READ_BENIGN_FLAG_$$lastKnodeD, _TRACKING;



implementation {:source_name "findRangeK"} {:kernel} $findRangeK($height: bv64, $knodes_elem: bv64)
{
  var $i.0: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2: bool;
  var v3$1: bv64;
  var v3$2: bv64;
  var v4$1: bv8;
  var v4$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v8$1: bv32;
  var v8$2: bv32;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv64;
  var v10$2: bv64;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bv8;
  var v13$2: bv8;
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv32;
  var v15$2: bv32;
  var v16$1: bool;
  var v16$2: bool;
  var v17$1: bv64;
  var v17$2: bv64;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv8;
  var v19$2: bv8;
  var v20$1: bv8;
  var v20$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v22$1: bool;
  var v22$2: bool;
  var v23$1: bv64;
  var v23$2: bv64;
  var v24$1: bv8;
  var v24$2: bv8;
  var v25$1: bv8;
  var v25$2: bv8;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v28$1: bv64;
  var v28$2: bv64;
  var v29$1: bv8;
  var v29$2: bv8;
  var v30$1: bv8;
  var v30$2: bv8;
  var v31$1: bv8;
  var v31$2: bv8;
  var v32$1: bv8;
  var v32$2: bv8;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bool;
  var v34$2: bool;
  var v35$1: bv64;
  var v35$2: bv64;
  var v36$1: bv8;
  var v36$2: bv8;
  var v37$1: bv8;
  var v37$2: bv8;
  var v38$1: bv8;
  var v38$2: bv8;
  var v39$1: bv8;
  var v39$2: bv8;
  var v40$1: bv32;
  var v40$2: bv32;
  var v41$1: bool;
  var v41$2: bool;
  var v42$1: bv64;
  var v42$2: bv64;
  var v43$1: bv8;
  var v43$2: bv8;
  var v44$1: bv8;
  var v44$2: bv8;
  var v45$1: bv8;
  var v45$2: bv8;
  var v46$1: bv8;
  var v46$2: bv8;
  var v47$1: bool;
  var v47$2: bool;
  var v48$1: bv64;
  var v48$2: bv64;
  var v49$1: bv8;
  var v49$2: bv8;
  var v50$1: bv8;
  var v50$2: bv8;
  var v51$1: bv8;
  var v51$2: bv8;
  var v52$1: bv8;
  var v52$2: bv8;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: bv64;
  var v54$2: bv64;
  var v55$1: bv64;
  var v55$2: bv64;
  var v56$1: bv64;
  var v56$2: bv64;
  var v57$1: bv8;
  var v57$2: bv8;
  var v58$1: bv8;
  var v58$2: bv8;
  var v59$1: bv8;
  var v59$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v61$1: bv32;
  var v61$2: bv32;
  var v62$1: bool;
  var v62$2: bool;
  var v63$1: bv64;
  var v63$2: bv64;
  var v64$1: bv8;
  var v64$2: bv8;
  var v65$1: bv8;
  var v65$2: bv8;
  var v66$1: bv8;
  var v66$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v68$1: bv64;
  var v68$2: bv64;
  var v69$1: bv8;
  var v69$2: bv8;
  var v70$1: bv8;
  var v70$2: bv8;
  var v71$1: bv8;
  var v71$2: bv8;
  var v72$1: bv8;
  var v72$2: bv8;
  var v73$1: bv32;
  var v73$2: bv32;
  var v74$1: bool;
  var v74$2: bool;
  var v75$1: bv64;
  var v75$2: bv64;
  var v76$1: bv8;
  var v76$2: bv8;
  var v77$1: bv8;
  var v77$2: bv8;
  var v78$1: bv8;
  var v78$2: bv8;
  var v79$1: bv8;
  var v79$2: bv8;
  var v80$1: bv32;
  var v80$2: bv32;
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
  var p10$1: bool;
  var p10$2: bool;
  var p11$1: bool;
  var p11$2: bool;
  var p12$1: bool;
  var p12$2: bool;
  var p13$1: bool;
  var p13$2: bool;
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var p17$1: bool;
  var p17$2: bool;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := group_id_x$1;
    v1$2 := group_id_x$2;
    $i.0 := 0bv32;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  (  BV32_SLE(0bv32, $i.0) ) ,  (  BV32_SLE($i.0, 0bv32) ) ,  (  BV32_SGE($i.0, 0bv32) ) ,  (  BV32_ULE($i.0, 0bv32) ) ,  (  BV32_UGE($i.0, 0bv32) ) ,  (  !_READ_HAS_OCCURRED_$$currKnodeD ) ,  (  !_WRITE_HAS_OCCURRED_$$currKnodeD ) ,  (  _READ_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$currKnodeD ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$offsetD ) ,  (  !_WRITE_HAS_OCCURRED_$$offsetD ) ,  (  _READ_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$offsetD ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$lastKnodeD ) ,  (  !_WRITE_HAS_OCCURRED_$$lastKnodeD ) ,  (  _READ_HAS_OCCURRED_$$lastKnodeD ==> _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 || _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$lastKnodeD ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  !_READ_HAS_OCCURRED_$$offset_2D ) ,  (  !_WRITE_HAS_OCCURRED_$$offset_2D ) ,  (  _READ_HAS_OCCURRED_$$offset_2D ==> _WATCHED_OFFSET == group_id_x$1 ) ,  (  _WRITE_HAS_OCCURRED_$$offset_2D ==> _WATCHED_OFFSET == group_id_x$1 )  ); 


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
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p16$1 := false;
    p16$2 := false;
    p17$1 := false;
    p17$2 := false;
    goto __partitioned_block_$truebb_0, __partitioned_block_$falsebb_0;

  __partitioned_block_$falsebb_0:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v56$1 := $$currKnodeD[v1$1];
    v56$2 := $$currKnodeD[v1$2];
    v57$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v56$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v57$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v56$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v58$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v58$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v59$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v59$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v60$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v60$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v56$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v61$1 := $$startD[v1$1];
    v61$2 := $$startD[v1$2];
    v62$1 := v60$1 ++ v59$1 ++ v58$1 ++ v57$1 == v61$1;
    v62$2 := v60$2 ++ v59$2 ++ v58$2 ++ v57$2 == v61$2;
    p14$1 := (if v62$1 then v62$1 else p14$1);
    p14$2 := (if v62$2 then v62$2 else p14$2);
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$currKnodeD(p14$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$currKnodeD(p14$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v63$1 := (if p14$1 then $$currKnodeD[v1$1] else v63$1);
    v63$2 := (if p14$2 then $$currKnodeD[v1$2] else v63$2);
    v64$1 := (if p14$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v63$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v64$1);
    v64$2 := (if p14$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v63$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v64$2);
    v65$1 := (if p14$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v65$1);
    v65$2 := (if p14$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v65$2);
    v66$1 := (if p14$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v66$1);
    v66$2 := (if p14$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v66$2);
    v67$1 := (if p14$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v67$1);
    v67$2 := (if p14$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v63$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v67$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$RecstartD(p14$1, v1$1, v67$1 ++ v66$1 ++ v65$1 ++ v64$1, $$RecstartD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RecstartD(p14$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$RecstartD(p14$2, v1$2, v67$2 ++ v66$2 ++ v65$2 ++ v64$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RecstartD"} true;
    $$RecstartD[v1$1] := (if p14$1 then v67$1 ++ v66$1 ++ v65$1 ++ v64$1 else $$RecstartD[v1$1]);
    $$RecstartD[v1$2] := (if p14$2 then v67$2 ++ v66$2 ++ v65$2 ++ v64$2 else $$RecstartD[v1$2]);
    goto __partitioned_block_$falsebb_1;

  __partitioned_block_$falsebb_1:
    call {:sourceloc_num 85} $bugle_barrier_duplicated_0(1bv1, 0bv1);
    call {:sourceloc} {:sourceloc_num 86} _LOG_READ_$$lastKnodeD(true, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 86} _CHECK_READ_$$lastKnodeD(true, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v68$1 := $$lastKnodeD[v1$1];
    v68$2 := $$lastKnodeD[v1$2];
    v69$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v68$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v69$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v68$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v70$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v70$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v71$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v71$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v72$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v72$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v68$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v73$1 := $$endD[v1$1];
    v73$2 := $$endD[v1$2];
    v74$1 := v72$1 ++ v71$1 ++ v70$1 ++ v69$1 == v73$1;
    v74$2 := v72$2 ++ v71$2 ++ v70$2 ++ v69$2 == v73$2;
    p16$1 := (if v74$1 then v74$1 else p16$1);
    p16$2 := (if v74$2 then v74$2 else p16$2);
    call {:sourceloc} {:sourceloc_num 93} _LOG_READ_$$lastKnodeD(p16$1, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 93} _CHECK_READ_$$lastKnodeD(p16$2, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v75$1 := (if p16$1 then $$lastKnodeD[v1$1] else v75$1);
    v75$2 := (if p16$2 then $$lastKnodeD[v1$2] else v75$2);
    v76$1 := (if p16$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v75$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v76$1);
    v76$2 := (if p16$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v75$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v76$2);
    v77$1 := (if p16$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v77$1);
    v77$2 := (if p16$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v77$2);
    v78$1 := (if p16$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v78$1);
    v78$2 := (if p16$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v78$2);
    v79$1 := (if p16$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v79$1);
    v79$2 := (if p16$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v75$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v79$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$RecstartD(p16$1, v1$1, $$RecstartD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$RecstartD(p16$2, v1$2, $$RecstartD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RecstartD"} true;
    v80$1 := (if p16$1 then $$RecstartD[v1$1] else v80$1);
    v80$2 := (if p16$2 then $$RecstartD[v1$2] else v80$2);
    call {:sourceloc} {:sourceloc_num 99} _LOG_WRITE_$$ReclenD(p16$1, v1$1, BV32_ADD(BV32_SUB(v79$1 ++ v78$1 ++ v77$1 ++ v76$1, v80$1), 1bv32), $$ReclenD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ReclenD(p16$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 99} _CHECK_WRITE_$$ReclenD(p16$2, v1$2, BV32_ADD(BV32_SUB(v79$2 ++ v78$2 ++ v77$2 ++ v76$2, v80$2), 1bv32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ReclenD"} true;
    $$ReclenD[v1$1] := (if p16$1 then BV32_ADD(BV32_SUB(v79$1 ++ v78$1 ++ v77$1 ++ v76$1, v80$1), 1bv32) else $$ReclenD[v1$1]);
    $$ReclenD[v1$2] := (if p16$2 then BV32_ADD(BV32_SUB(v79$2 ++ v78$2 ++ v77$2 ++ v76$2, v80$2), 1bv32) else $$ReclenD[v1$2]);
    return;

  __partitioned_block_$truebb_0:
    assume {:partition} v2;
    call {:sourceloc} {:sourceloc_num 5} _LOG_READ_$$currKnodeD(true, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 5} _CHECK_READ_$$currKnodeD(true, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v3$1 := $$currKnodeD[v1$1];
    v3$2 := $$currKnodeD[v1$2];
    v4$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v4$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v5$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v5$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v6$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v6$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v7$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v7$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v3$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v8$1 := $$startD[v1$1];
    v8$2 := $$startD[v1$2];
    v9$1 := BV32_SLE(v7$1 ++ v6$1 ++ v5$1 ++ v4$1, v8$1);
    v9$2 := BV32_SLE(v7$2 ++ v6$2 ++ v5$2 ++ v4$2, v8$2);
    p1$1 := (if v9$1 then v9$1 else p1$1);
    p1$2 := (if v9$2 then v9$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$currKnodeD(p1$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$currKnodeD(p1$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v10$1 := (if p1$1 then $$currKnodeD[v1$1] else v10$1);
    v10$2 := (if p1$2 then $$currKnodeD[v1$2] else v10$2);
    v11$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32))] else v11$1);
    v11$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32))] else v11$2);
    v12$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 1bv32)] else v12$1);
    v12$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 1bv32)] else v12$2);
    v13$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 2bv32)] else v13$1);
    v13$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 2bv32)] else v13$2);
    v14$1 := (if p1$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 3bv32)] else v14$1);
    v14$2 := (if p1$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v10$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 3bv32)] else v14$2);
    v15$1 := (if p1$1 then $$startD[v1$1] else v15$1);
    v15$2 := (if p1$2 then $$startD[v1$2] else v15$2);
    v16$1 := (if p1$1 then BV32_SGT(v14$1 ++ v13$1 ++ v12$1 ++ v11$1, v15$1) else v16$1);
    v16$2 := (if p1$2 then BV32_SGT(v14$2 ++ v13$2 ++ v12$2 ++ v11$2, v15$2) else v16$2);
    p3$1 := (if p1$1 && v16$1 then v16$1 else p3$1);
    p3$2 := (if p1$2 && v16$2 then v16$2 else p3$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$currKnodeD(p3$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$currKnodeD(p3$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v17$1 := (if p3$1 then $$currKnodeD[v1$1] else v17$1);
    v17$2 := (if p3$2 then $$currKnodeD[v1$2] else v17$2);
    v18$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v18$1);
    v18$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v18$2);
    v19$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v19$1);
    v19$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v19$2);
    v20$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v20$1);
    v20$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v20$2);
    v21$1 := (if p3$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v21$1);
    v21$2 := (if p3$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v17$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v21$2);
    v22$1 := (if p3$1 then BV64_SLT(BV32_SEXT64(v21$1 ++ v20$1 ++ v19$1 ++ v18$1), $knodes_elem) else v22$1);
    v22$2 := (if p3$2 then BV64_SLT(BV32_SEXT64(v21$2 ++ v20$2 ++ v19$2 ++ v18$2), $knodes_elem) else v22$2);
    p5$1 := (if p3$1 && v22$1 then v22$1 else p5$1);
    p5$2 := (if p3$2 && v22$2 then v22$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$currKnodeD(p5$1, v1$1, $$currKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$currKnodeD(p5$2, v1$2, $$currKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$currKnodeD"} true;
    v23$1 := (if p5$1 then $$currKnodeD[v1$1] else v23$1);
    v23$2 := (if p5$2 then $$currKnodeD[v1$2] else v23$2);
    v24$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v24$1);
    v24$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v24$2);
    v25$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v25$1);
    v25$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v25$2);
    v26$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v26$1);
    v26$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v26$2);
    v27$1 := (if p5$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v27$1);
    v27$2 := (if p5$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v23$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v27$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_WRITE_$$offsetD(p5$1, v1$1, BV32_SEXT64(v27$1 ++ v26$1 ++ v25$1 ++ v24$1), $$offsetD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(p5$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 30} _CHECK_WRITE_$$offsetD(p5$2, v1$2, BV32_SEXT64(v27$2 ++ v26$2 ++ v25$2 ++ v24$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$offsetD"} true;
    $$offsetD[v1$1] := (if p5$1 then BV32_SEXT64(v27$1 ++ v26$1 ++ v25$1 ++ v24$1) else $$offsetD[v1$1]);
    $$offsetD[v1$2] := (if p5$2 then BV32_SEXT64(v27$2 ++ v26$2 ++ v25$2 ++ v24$2) else $$offsetD[v1$2]);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$lastKnodeD(true, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$lastKnodeD(true, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v28$1 := $$lastKnodeD[v1$1];
    v28$2 := $$lastKnodeD[v1$2];
    v29$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v28$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32))];
    v29$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v28$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32))];
    v30$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)];
    v30$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)];
    v31$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)];
    v31$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)];
    v32$1 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$1[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)];
    v32$2 := $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v28$2[32:0], 2068bv32), 1032bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)];
    v33$1 := $$endD[v1$1];
    v33$2 := $$endD[v1$2];
    v34$1 := BV32_SLE(v32$1 ++ v31$1 ++ v30$1 ++ v29$1, v33$1);
    v34$2 := BV32_SLE(v32$2 ++ v31$2 ++ v30$2 ++ v29$2, v33$2);
    p7$1 := (if v34$1 then v34$1 else p7$1);
    p7$2 := (if v34$2 then v34$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 40} _LOG_READ_$$lastKnodeD(p7$1, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 40} _CHECK_READ_$$lastKnodeD(p7$2, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v35$1 := (if p7$1 then $$lastKnodeD[v1$1] else v35$1);
    v35$2 := (if p7$2 then $$lastKnodeD[v1$2] else v35$2);
    v36$1 := (if p7$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v35$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32))] else v36$1);
    v36$2 := (if p7$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v35$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32))] else v36$2);
    v37$1 := (if p7$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 1bv32)] else v37$1);
    v37$2 := (if p7$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 1bv32)] else v37$2);
    v38$1 := (if p7$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 2bv32)] else v38$1);
    v38$2 := (if p7$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 2bv32)] else v38$2);
    v39$1 := (if p7$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$1[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$1, 1bv32), 4bv32)), 3bv32)] else v39$1);
    v39$2 := (if p7$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v35$2[32:0], 2068bv32), 1032bv32), BV32_MUL(BV32_ADD(v0$2, 1bv32), 4bv32)), 3bv32)] else v39$2);
    v40$1 := (if p7$1 then $$endD[v1$1] else v40$1);
    v40$2 := (if p7$2 then $$endD[v1$2] else v40$2);
    v41$1 := (if p7$1 then BV32_SGT(v39$1 ++ v38$1 ++ v37$1 ++ v36$1, v40$1) else v41$1);
    v41$2 := (if p7$2 then BV32_SGT(v39$2 ++ v38$2 ++ v37$2 ++ v36$2, v40$2) else v41$2);
    p9$1 := (if p7$1 && v41$1 then v41$1 else p9$1);
    p9$2 := (if p7$2 && v41$2 then v41$2 else p9$2);
    call {:sourceloc} {:sourceloc_num 47} _LOG_READ_$$lastKnodeD(p9$1, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 47} _CHECK_READ_$$lastKnodeD(p9$2, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v42$1 := (if p9$1 then $$lastKnodeD[v1$1] else v42$1);
    v42$2 := (if p9$2 then $$lastKnodeD[v1$2] else v42$2);
    v43$1 := (if p9$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v42$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v43$1);
    v43$2 := (if p9$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v42$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v43$2);
    v44$1 := (if p9$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v44$1);
    v44$2 := (if p9$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v44$2);
    v45$1 := (if p9$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v45$1);
    v45$2 := (if p9$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v45$2);
    v46$1 := (if p9$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v46$1);
    v46$2 := (if p9$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v42$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v46$2);
    v47$1 := (if p9$1 then BV64_SLT(BV32_SEXT64(v46$1 ++ v45$1 ++ v44$1 ++ v43$1), $knodes_elem) else v47$1);
    v47$2 := (if p9$2 then BV64_SLT(BV32_SEXT64(v46$2 ++ v45$2 ++ v44$2 ++ v43$2), $knodes_elem) else v47$2);
    p11$1 := (if p9$1 && v47$1 then v47$1 else p11$1);
    p11$2 := (if p9$2 && v47$2 then v47$2 else p11$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$lastKnodeD(p11$1, v1$1, $$lastKnodeD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$lastKnodeD(p11$2, v1$2, $$lastKnodeD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$lastKnodeD"} true;
    v48$1 := (if p11$1 then $$lastKnodeD[v1$1] else v48$1);
    v48$2 := (if p11$2 then $$lastKnodeD[v1$2] else v48$2);
    v49$1 := (if p11$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v48$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32))] else v49$1);
    v49$2 := (if p11$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_MUL(v48$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32))] else v49$2);
    v50$1 := (if p11$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 1bv32)] else v50$1);
    v50$2 := (if p11$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 1bv32)] else v50$2);
    v51$1 := (if p11$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 2bv32)] else v51$1);
    v51$2 := (if p11$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 2bv32)] else v51$2);
    v52$1 := (if p11$1 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$1[32:0], 2068bv32), 4bv32), BV32_MUL(v0$1, 4bv32)), 3bv32)] else v52$1);
    v52$2 := (if p11$2 then $$knodesD[BV32_ADD(BV32_ADD(BV32_ADD(BV32_MUL(v48$2[32:0], 2068bv32), 4bv32), BV32_MUL(v0$2, 4bv32)), 3bv32)] else v52$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$offset_2D(p11$1, v1$1, BV32_SEXT64(v52$1 ++ v51$1 ++ v50$1 ++ v49$1), $$offset_2D[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$offset_2D(p11$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$offset_2D(p11$2, v1$2, BV32_SEXT64(v52$2 ++ v51$2 ++ v50$2 ++ v49$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$offset_2D"} true;
    $$offset_2D[v1$1] := (if p11$1 then BV32_SEXT64(v52$1 ++ v51$1 ++ v50$1 ++ v49$1) else $$offset_2D[v1$1]);
    $$offset_2D[v1$2] := (if p11$2 then BV32_SEXT64(v52$2 ++ v51$2 ++ v50$2 ++ v49$2) else $$offset_2D[v1$2]);
    goto __partitioned_block_$truebb_1;

  __partitioned_block_$truebb_1:
    call {:sourceloc_num 61} $bugle_barrier_duplicated_1(1bv1, 0bv1);
    v53$1 := v0$1 == 0bv32;
    v53$2 := v0$2 == 0bv32;
    p13$1 := (if v53$1 then v53$1 else p13$1);
    p13$2 := (if v53$2 then v53$2 else p13$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$offsetD(p13$1, v1$1, $$offsetD[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$offsetD(p13$2, v1$2, $$offsetD[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offsetD"} true;
    v54$1 := (if p13$1 then $$offsetD[v1$1] else v54$1);
    v54$2 := (if p13$2 then $$offsetD[v1$2] else v54$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$currKnodeD(p13$1, v1$1, v54$1, $$currKnodeD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(p13$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$currKnodeD(p13$2, v1$2, v54$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$currKnodeD"} true;
    $$currKnodeD[v1$1] := (if p13$1 then v54$1 else $$currKnodeD[v1$1]);
    $$currKnodeD[v1$2] := (if p13$2 then v54$2 else $$currKnodeD[v1$2]);
    call {:sourceloc} {:sourceloc_num 65} _LOG_READ_$$offset_2D(p13$1, v1$1, $$offset_2D[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 65} _CHECK_READ_$$offset_2D(p13$2, v1$2, $$offset_2D[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$offset_2D"} true;
    v55$1 := (if p13$1 then $$offset_2D[v1$1] else v55$1);
    v55$2 := (if p13$2 then $$offset_2D[v1$2] else v55$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$lastKnodeD(p13$1, v1$1, v55$1, $$lastKnodeD[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$lastKnodeD(p13$2, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$lastKnodeD(p13$2, v1$2, v55$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$lastKnodeD"} true;
    $$lastKnodeD[v1$1] := (if p13$1 then v55$1 else $$lastKnodeD[v1$1]);
    $$lastKnodeD[v1$2] := (if p13$2 then v55$2 else $$lastKnodeD[v1$2]);
    goto __partitioned_block_$truebb_2;

  __partitioned_block_$truebb_2:
    call {:sourceloc_num 68} $bugle_barrier_duplicated_2(1bv1, 0bv1);
    $i.0 := BV32_ADD($i.0, 1bv32);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 256bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 6000bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

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
  requires $1 == 0bv1;
  modifies $$currKnodeD, $$offsetD, $$lastKnodeD, $$offset_2D, $$RecstartD, $$ReclenD, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$currKnodeD, $$offsetD, $$lastKnodeD, $$offset_2D, $$RecstartD, $$ReclenD, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 0bv1;
  modifies $$currKnodeD, $$offsetD, $$lastKnodeD, $$offset_2D, $$RecstartD, $$ReclenD, _TRACKING;







function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;



function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;



function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;



const _WATCHED_VALUE_$$knodesD: bv8;

procedure {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _READ_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_READ_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$knodesD);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$knodesD: bool;

procedure {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$knodesD, _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _LOG_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then true else _WRITE_HAS_OCCURRED_$$knodesD);
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



procedure _CHECK_WRITE_$$knodesD(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$knodesD != _value);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$knodesD;



implementation {:inline 1} _LOG_ATOMIC_$$knodesD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$knodesD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$knodesD);
    return;
}



procedure _CHECK_ATOMIC_$$knodesD(_P: bool, _offset: bv32);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);
  requires {:source_name "knodesD"} {:array "$$knodesD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$knodesD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$knodesD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$knodesD := (if _P && _WRITE_HAS_OCCURRED_$$knodesD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$knodesD);
    return;
}



const _WATCHED_VALUE_$$currKnodeD: bv64;

procedure {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _READ_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_READ_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$currKnodeD: bool;

procedure {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$currKnodeD, _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _LOG_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then true else _WRITE_HAS_OCCURRED_$$currKnodeD);
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



procedure _CHECK_WRITE_$$currKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$currKnodeD != _value);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$currKnodeD;



implementation {:inline 1} _LOG_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$currKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$currKnodeD);
    return;
}



procedure _CHECK_ATOMIC_$$currKnodeD(_P: bool, _offset: bv32);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);
  requires {:source_name "currKnodeD"} {:array "$$currKnodeD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$currKnodeD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$currKnodeD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$currKnodeD := (if _P && _WRITE_HAS_OCCURRED_$$currKnodeD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$currKnodeD);
    return;
}



const _WATCHED_VALUE_$$offsetD: bv64;

procedure {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _READ_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_READ_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$offsetD);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$offsetD: bool;

procedure {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$offsetD, _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _LOG_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then true else _WRITE_HAS_OCCURRED_$$offsetD);
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



procedure _CHECK_WRITE_$$offsetD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offsetD != _value);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$offsetD;



implementation {:inline 1} _LOG_ATOMIC_$$offsetD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$offsetD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$offsetD);
    return;
}



procedure _CHECK_ATOMIC_$$offsetD(_P: bool, _offset: bv32);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);
  requires {:source_name "offsetD"} {:array "$$offsetD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$offsetD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offsetD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$offsetD := (if _P && _WRITE_HAS_OCCURRED_$$offsetD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$offsetD);
    return;
}



const _WATCHED_VALUE_$$lastKnodeD: bv64;

procedure {:inline 1} _LOG_READ_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$lastKnodeD;



implementation {:inline 1} _LOG_READ_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$lastKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lastKnodeD == _value then true else _READ_HAS_OCCURRED_$$lastKnodeD);
    return;
}



procedure _CHECK_READ_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$lastKnodeD);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$lastKnodeD: bool;

procedure {:inline 1} _LOG_WRITE_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$lastKnodeD, _WRITE_READ_BENIGN_FLAG_$$lastKnodeD;



implementation {:inline 1} _LOG_WRITE_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$lastKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lastKnodeD == _value then true else _WRITE_HAS_OCCURRED_$$lastKnodeD);
    _WRITE_READ_BENIGN_FLAG_$$lastKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lastKnodeD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$lastKnodeD);
    return;
}



procedure _CHECK_WRITE_$$lastKnodeD(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lastKnodeD != _value);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$lastKnodeD != _value);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$lastKnodeD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$lastKnodeD;



implementation {:inline 1} _LOG_ATOMIC_$$lastKnodeD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$lastKnodeD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$lastKnodeD);
    return;
}



procedure _CHECK_ATOMIC_$$lastKnodeD(_P: bool, _offset: bv32);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset);
  requires {:source_name "lastKnodeD"} {:array "$$lastKnodeD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lastKnodeD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$lastKnodeD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$lastKnodeD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$lastKnodeD := (if _P && _WRITE_HAS_OCCURRED_$$lastKnodeD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$lastKnodeD);
    return;
}



const _WATCHED_VALUE_$$offset_2D: bv64;

procedure {:inline 1} _LOG_READ_$$offset_2D(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$offset_2D;



implementation {:inline 1} _LOG_READ_$$offset_2D(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$offset_2D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offset_2D == _value then true else _READ_HAS_OCCURRED_$$offset_2D);
    return;
}



procedure _CHECK_READ_$$offset_2D(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$offset_2D);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$offset_2D: bool;

procedure {:inline 1} _LOG_WRITE_$$offset_2D(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$offset_2D, _WRITE_READ_BENIGN_FLAG_$$offset_2D;



implementation {:inline 1} _LOG_WRITE_$$offset_2D(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$offset_2D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offset_2D == _value then true else _WRITE_HAS_OCCURRED_$$offset_2D);
    _WRITE_READ_BENIGN_FLAG_$$offset_2D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offset_2D == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$offset_2D);
    return;
}



procedure _CHECK_WRITE_$$offset_2D(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offset_2D != _value);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$offset_2D != _value);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$offset_2D(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$offset_2D;



implementation {:inline 1} _LOG_ATOMIC_$$offset_2D(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$offset_2D := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$offset_2D);
    return;
}



procedure _CHECK_ATOMIC_$$offset_2D(_P: bool, _offset: bv32);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset);
  requires {:source_name "offset_2D"} {:array "$$offset_2D"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offset_2D(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$offset_2D;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$offset_2D(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$offset_2D := (if _P && _WRITE_HAS_OCCURRED_$$offset_2D && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$offset_2D);
    return;
}



const _WATCHED_VALUE_$$startD: bv32;

procedure {:inline 1} _LOG_READ_$$startD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$startD;



implementation {:inline 1} _LOG_READ_$$startD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$startD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$startD == _value then true else _READ_HAS_OCCURRED_$$startD);
    return;
}



procedure _CHECK_READ_$$startD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$startD);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$startD: bool;

procedure {:inline 1} _LOG_WRITE_$$startD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$startD, _WRITE_READ_BENIGN_FLAG_$$startD;



implementation {:inline 1} _LOG_WRITE_$$startD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$startD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$startD == _value then true else _WRITE_HAS_OCCURRED_$$startD);
    _WRITE_READ_BENIGN_FLAG_$$startD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$startD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$startD);
    return;
}



procedure _CHECK_WRITE_$$startD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$startD != _value);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$startD != _value);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$startD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$startD;



implementation {:inline 1} _LOG_ATOMIC_$$startD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$startD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$startD);
    return;
}



procedure _CHECK_ATOMIC_$$startD(_P: bool, _offset: bv32);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset);
  requires {:source_name "startD"} {:array "$$startD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$startD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$startD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$startD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$startD := (if _P && _WRITE_HAS_OCCURRED_$$startD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$startD);
    return;
}



const _WATCHED_VALUE_$$endD: bv32;

procedure {:inline 1} _LOG_READ_$$endD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$endD;



implementation {:inline 1} _LOG_READ_$$endD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$endD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$endD == _value then true else _READ_HAS_OCCURRED_$$endD);
    return;
}



procedure _CHECK_READ_$$endD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$endD);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$endD: bool;

procedure {:inline 1} _LOG_WRITE_$$endD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$endD, _WRITE_READ_BENIGN_FLAG_$$endD;



implementation {:inline 1} _LOG_WRITE_$$endD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$endD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$endD == _value then true else _WRITE_HAS_OCCURRED_$$endD);
    _WRITE_READ_BENIGN_FLAG_$$endD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$endD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$endD);
    return;
}



procedure _CHECK_WRITE_$$endD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$endD != _value);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$endD != _value);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$endD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$endD;



implementation {:inline 1} _LOG_ATOMIC_$$endD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$endD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$endD);
    return;
}



procedure _CHECK_ATOMIC_$$endD(_P: bool, _offset: bv32);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset);
  requires {:source_name "endD"} {:array "$$endD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$endD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$endD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$endD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$endD := (if _P && _WRITE_HAS_OCCURRED_$$endD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$endD);
    return;
}



const _WATCHED_VALUE_$$RecstartD: bv32;

procedure {:inline 1} _LOG_READ_$$RecstartD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$RecstartD;



implementation {:inline 1} _LOG_READ_$$RecstartD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RecstartD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RecstartD == _value then true else _READ_HAS_OCCURRED_$$RecstartD);
    return;
}



procedure _CHECK_READ_$$RecstartD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RecstartD);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RecstartD: bool;

procedure {:inline 1} _LOG_WRITE_$$RecstartD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$RecstartD, _WRITE_READ_BENIGN_FLAG_$$RecstartD;



implementation {:inline 1} _LOG_WRITE_$$RecstartD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RecstartD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RecstartD == _value then true else _WRITE_HAS_OCCURRED_$$RecstartD);
    _WRITE_READ_BENIGN_FLAG_$$RecstartD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RecstartD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RecstartD);
    return;
}



procedure _CHECK_WRITE_$$RecstartD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RecstartD != _value);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RecstartD != _value);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RecstartD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$RecstartD;



implementation {:inline 1} _LOG_ATOMIC_$$RecstartD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RecstartD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RecstartD);
    return;
}



procedure _CHECK_ATOMIC_$$RecstartD(_P: bool, _offset: bv32);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset);
  requires {:source_name "RecstartD"} {:array "$$RecstartD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RecstartD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$RecstartD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RecstartD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RecstartD := (if _P && _WRITE_HAS_OCCURRED_$$RecstartD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RecstartD);
    return;
}



const _WATCHED_VALUE_$$ReclenD: bv32;

procedure {:inline 1} _LOG_READ_$$ReclenD(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$ReclenD;



implementation {:inline 1} _LOG_READ_$$ReclenD(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ReclenD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ReclenD == _value then true else _READ_HAS_OCCURRED_$$ReclenD);
    return;
}



procedure _CHECK_READ_$$ReclenD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ReclenD);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ReclenD: bool;

procedure {:inline 1} _LOG_WRITE_$$ReclenD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$ReclenD, _WRITE_READ_BENIGN_FLAG_$$ReclenD;



implementation {:inline 1} _LOG_WRITE_$$ReclenD(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ReclenD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ReclenD == _value then true else _WRITE_HAS_OCCURRED_$$ReclenD);
    _WRITE_READ_BENIGN_FLAG_$$ReclenD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ReclenD == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ReclenD);
    return;
}



procedure _CHECK_WRITE_$$ReclenD(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ReclenD != _value);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ReclenD != _value);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ReclenD(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$ReclenD;



implementation {:inline 1} _LOG_ATOMIC_$$ReclenD(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ReclenD := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ReclenD);
    return;
}



procedure _CHECK_ATOMIC_$$ReclenD(_P: bool, _offset: bv32);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset);
  requires {:source_name "ReclenD"} {:array "$$ReclenD"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ReclenD(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$ReclenD;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ReclenD(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ReclenD := (if _P && _WRITE_HAS_OCCURRED_$$ReclenD && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ReclenD);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lastKnodeD;
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offset_2D;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$RecstartD;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$ReclenD;
    goto anon6;

  anon6:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon13;

  anon13:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$currKnodeD;
    goto anon8;

  anon8:
    havoc $$offsetD;
    goto anon9;

  anon9:
    havoc $$lastKnodeD;
    goto anon10;

  anon10:
    havoc $$offset_2D;
    goto anon11;

  anon11:
    havoc $$RecstartD;
    goto anon12;

  anon12:
    havoc $$ReclenD;
    goto anon13;

  anon14_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lastKnodeD;
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offset_2D;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$RecstartD;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$ReclenD;
    goto anon6;

  anon6:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon13;

  anon13:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$currKnodeD;
    goto anon8;

  anon8:
    havoc $$offsetD;
    goto anon9;

  anon9:
    havoc $$lastKnodeD;
    goto anon10;

  anon10:
    havoc $$offset_2D;
    goto anon11;

  anon11:
    havoc $$RecstartD;
    goto anon12;

  anon12:
    havoc $$ReclenD;
    goto anon13;

  anon14_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$currKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$currKnodeD;
    goto anon1;

  anon1:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offsetD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offsetD;
    goto anon2;

  anon2:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$lastKnodeD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$lastKnodeD;
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$offset_2D;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$offset_2D;
    goto anon4;

  anon4:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$RecstartD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$RecstartD;
    goto anon5;

  anon5:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$ReclenD;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$ReclenD;
    goto anon6;

  anon6:
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon13;

  anon13:
    havoc _TRACKING;
    return;

  anon15_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$currKnodeD;
    goto anon8;

  anon8:
    havoc $$offsetD;
    goto anon9;

  anon9:
    havoc $$lastKnodeD;
    goto anon10;

  anon10:
    havoc $$offset_2D;
    goto anon11;

  anon11:
    havoc $$RecstartD;
    goto anon12;

  anon12:
    havoc $$ReclenD;
    goto anon13;

  anon14_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
































