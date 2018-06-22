type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$matrixA"} {:global} {:elem_width 32} {:source_name "matrixA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixA: bool;

axiom {:array_info "$$matrixB"} {:global} {:elem_width 32} {:source_name "matrixB"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixB: bool;

var {:source_name "matrixC"} {:global} $$matrixC: [bv32]bv32;

axiom {:array_info "$$matrixC"} {:global} {:elem_width 32} {:source_name "matrixC"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixC: bool;

var {:source_name "imageSampler"} {:constant} $$imageSampler$1: [bv32]bv32;

var {:source_name "imageSampler"} {:constant} $$imageSampler$2: [bv32]bv32;

axiom {:array_info "$$imageSampler"} {:constant} {:elem_width 32} {:source_name "imageSampler"} {:source_elem_width 32} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvashr"} BV32_ASHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

procedure {:source_name "mmmKernel2"} {:kernel} $mmmKernel2($widthA: bv32, $widthB: bv32);
  requires $$imageSampler$1[0bv32] == 7bv32;
  requires $$imageSampler$2[0bv32] == 7bv32;
  requires !_READ_HAS_OCCURRED_$$matrixA && !_WRITE_HAS_OCCURRED_$$matrixA && !_ATOMIC_HAS_OCCURRED_$$matrixA;
  requires !_READ_HAS_OCCURRED_$$matrixB && !_WRITE_HAS_OCCURRED_$$matrixB && !_ATOMIC_HAS_OCCURRED_$$matrixB;
  requires !_READ_HAS_OCCURRED_$$matrixC && !_WRITE_HAS_OCCURRED_$$matrixC && !_ATOMIC_HAS_OCCURRED_$$matrixC;
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
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:source_name "mmmKernel2"} {:kernel} $mmmKernel2($widthA: bv32, $widthB: bv32)
{
  var $sum0.0$1: bv128;
  var $sum0.0$2: bv128;
  var $sum1.0$1: bv128;
  var $sum1.0$2: bv128;
  var $sum2.0$1: bv128;
  var $sum2.0$2: bv128;
  var $sum3.0$1: bv128;
  var $sum3.0$2: bv128;
  var $sum4.0$1: bv128;
  var $sum4.0$2: bv128;
  var $sum5.0$1: bv128;
  var $sum5.0$2: bv128;
  var $sum6.0$1: bv128;
  var $sum6.0$2: bv128;
  var $sum7.0$1: bv128;
  var $sum7.0$2: bv128;
  var $i.0: bv32;
  var $0: bv32;
  var $1: bv32;
  var $2$1: bv32;
  var $2$2: bv32;
  var $3$1: bv32;
  var $3$2: bv32;
  var $4: bv32;
  var $5: bv32;
  var $6$1: bv32;
  var $6$2: bv32;
  var $7$1: bv32;
  var $7$2: bv32;
  var $8: bv32;
  var $9: bv32;
  var $10$1: bv32;
  var $10$2: bv32;
  var $11$1: bv32;
  var $11$2: bv32;
  var $12: bv32;
  var $13: bv32;
  var $14$1: bv32;
  var $14$2: bv32;
  var $15$1: bv32;
  var $15$2: bv32;
  var $16: bv32;
  var $17: bv32;
  var $18$1: bv32;
  var $18$2: bv32;
  var $19$1: bv32;
  var $19$2: bv32;
  var $20: bv32;
  var $21: bv32;
  var $22$1: bv32;
  var $22$2: bv32;
  var $23$1: bv32;
  var $23$2: bv32;
  var $24: bv32;
  var $25: bv32;
  var $26$1: bv32;
  var $26$2: bv32;
  var $27$1: bv32;
  var $27$2: bv32;
  var $28: bv32;
  var $29: bv32;
  var $30$1: bv32;
  var $30$2: bv32;
  var $31$1: bv32;
  var $31$2: bv32;
  var $32$1: bv32;
  var $32$2: bv32;
  var $33$1: bv32;
  var $33$2: bv32;
  var $34: bv32;
  var $35: bv32;
  var $36$1: bv32;
  var $36$2: bv32;
  var $37$1: bv32;
  var $37$2: bv32;
  var $38: bv32;
  var $39: bv32;
  var $40$1: bv32;
  var $40$2: bv32;
  var $41$1: bv32;
  var $41$2: bv32;
  var $42: bv32;
  var $43: bv32;
  var $44$1: bv32;
  var $44$2: bv32;
  var $45$1: bv32;
  var $45$2: bv32;
  var $46: bv32;
  var $47: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2: bool;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6: bool;
  var v7: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bv32;
  var v11$2: bv32;
  var v12$1: bv32;
  var v12$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v15: bv32;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17: bool;
  var v18: bool;
  var v19$1: bool;
  var v19$2: bool;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bv32;
  var v21$2: bv32;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v28: bool;
  var v29: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bv32;
  var v32$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v36$1: bv32;
  var v36$2: bv32;
  var v37: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39: bool;
  var v40: bool;
  var v41$1: bool;
  var v41$2: bool;
  var v42$1: bool;
  var v42$2: bool;
  var v43$1: bv32;
  var v43$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v46$1: bv32;
  var v46$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v48: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50: bool;
  var v51: bool;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bool;
  var v53$2: bool;
  var v54$1: bv32;
  var v54$2: bv32;
  var v55$1: bv32;
  var v55$2: bv32;
  var v56$1: bv32;
  var v56$2: bv32;
  var v57$1: bv32;
  var v57$2: bv32;
  var v58$1: bv32;
  var v58$2: bv32;
  var v59: bv32;
  var v60$1: bv32;
  var v60$2: bv32;
  var v61: bool;
  var v62: bool;
  var v63$1: bool;
  var v63$2: bool;
  var v64$1: bool;
  var v64$2: bool;
  var v65$1: bv32;
  var v65$2: bv32;
  var v66$1: bv32;
  var v66$2: bv32;
  var v67$1: bv32;
  var v67$2: bv32;
  var v68$1: bv32;
  var v68$2: bv32;
  var v69$1: bv32;
  var v69$2: bv32;
  var v70: bv32;
  var v71$1: bv32;
  var v71$2: bv32;
  var v72: bool;
  var v73: bool;
  var v74$1: bool;
  var v74$2: bool;
  var v75$1: bool;
  var v75$2: bool;
  var v76$1: bv32;
  var v76$2: bv32;
  var v77$1: bv32;
  var v77$2: bv32;
  var v78$1: bv32;
  var v78$2: bv32;
  var v79$1: bv32;
  var v79$2: bv32;
  var v80$1: bv32;
  var v80$2: bv32;
  var v81: bv32;
  var v82$1: bv32;
  var v82$2: bv32;
  var v83: bool;
  var v84: bool;
  var v85$1: bool;
  var v85$2: bool;
  var v86$1: bool;
  var v86$2: bool;
  var v87$1: bv32;
  var v87$2: bv32;
  var v88$1: bv32;
  var v88$2: bv32;
  var v89$1: bv32;
  var v89$2: bv32;
  var v90$1: bv32;
  var v90$2: bv32;
  var v91$1: bv32;
  var v91$2: bv32;
  var v92$1: bool;
  var v92$2: bool;
  var v93$1: bool;
  var v93$2: bool;
  var v94: bool;
  var v95: bool;
  var v96$1: bv32;
  var v96$2: bv32;
  var v97$1: bv32;
  var v97$2: bv32;
  var v98$1: bv32;
  var v98$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v101: bv32;
  var v102$1: bool;
  var v102$2: bool;
  var v103$1: bool;
  var v103$2: bool;
  var v104: bool;
  var v105: bool;
  var v106$1: bv32;
  var v106$2: bv32;
  var v107$1: bv32;
  var v107$2: bv32;
  var v108$1: bv32;
  var v108$2: bv32;
  var v109$1: bv32;
  var v109$2: bv32;
  var v110$1: bv32;
  var v110$2: bv32;
  var v111: bv32;
  var v112$1: bool;
  var v112$2: bool;
  var v113$1: bool;
  var v113$2: bool;
  var v114: bool;
  var v115: bool;
  var v116$1: bv32;
  var v116$2: bv32;
  var v117$1: bv32;
  var v117$2: bv32;
  var v118$1: bv32;
  var v118$2: bv32;
  var v119$1: bv32;
  var v119$2: bv32;
  var v120$1: bv32;
  var v120$2: bv32;
  var v121: bv32;
  var v122$1: bool;
  var v122$2: bool;
  var v123$1: bool;
  var v123$2: bool;
  var v124: bool;
  var v125: bool;
  var v126$1: bv32;
  var v126$2: bv32;
  var v127$1: bv32;
  var v127$2: bv32;
  var v128$1: bv32;
  var v128$2: bv32;
  var v129$1: bv32;
  var v129$2: bv32;
  var v130$1: bv32;
  var v130$2: bv32;
  var v131$1: bv32;
  var v131$2: bv32;
  var v132$1: bv32;
  var v132$2: bv32;
  var v133$1: bv32;
  var v133$2: bv32;
  var v134$1: bv32;
  var v134$2: bv32;
  var v135$1: bv32;
  var v135$2: bv32;
  var v136$1: bv32;
  var v136$2: bv32;
  var v137$1: bv32;
  var v137$2: bv32;
  var v138$1: bv32;
  var v138$2: bv32;
  var v139$1: bv32;
  var v139$2: bv32;
  var v140$1: bv32;
  var v140$2: bv32;
  var v141$1: bv32;
  var v141$2: bv32;
  var v142$1: bv32;
  var v142$2: bv32;
  var v143$1: bv32;
  var v143$2: bv32;
  var v144$1: bv32;
  var v144$2: bv32;
  var v145$1: bv32;
  var v145$2: bv32;
  var v146$1: bv32;
  var v146$2: bv32;
  var v147$1: bv32;
  var v147$2: bv32;
  var v148$1: bv32;
  var v148$2: bv32;
  var v149$1: bv32;
  var v149$2: bv32;
  var v150$1: bv32;
  var v150$2: bv32;
  var v151$1: bv32;
  var v151$2: bv32;
  var v152$1: bv32;
  var v152$2: bv32;
  var v153$1: bv32;
  var v153$2: bv32;
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
  var p18$1: bool;
  var p18$2: bool;
  var p19$1: bool;
  var p19$2: bool;
  var p20$1: bool;
  var p20$2: bool;
  var p21$1: bool;
  var p21$2: bool;
  var p22$1: bool;
  var p22$2: bool;
  var p23$1: bool;
  var p23$2: bool;
  var p24$1: bool;
  var p24$2: bool;
  var p25$1: bool;
  var p25$2: bool;
  var p26$1: bool;
  var p26$2: bool;
  var p27$1: bool;
  var p27$2: bool;
  var p28$1: bool;
  var p28$2: bool;
  var p29$1: bool;
  var p29$2: bool;
  var p30$1: bool;
  var p30$2: bool;
  var p31$1: bool;
  var p31$2: bool;
  var p32$1: bool;
  var p32$2: bool;
  var p33$1: bool;
  var p33$2: bool;
  var p34$1: bool;
  var p34$2: bool;
  var p35$1: bool;
  var p35$2: bool;
  var p36$1: bool;
  var p36$2: bool;
  var p37$1: bool;
  var p37$2: bool;
  var p38$1: bool;
  var p38$2: bool;
  var p39$1: bool;
  var p39$2: bool;
  var p40$1: bool;
  var p40$2: bool;
  var p41$1: bool;
  var p41$2: bool;
  var p42$1: bool;
  var p42$2: bool;
  var p43$1: bool;
  var p43$2: bool;
  var p44$1: bool;
  var p44$2: bool;
  var p45$1: bool;
  var p45$2: bool;
  var p46$1: bool;
  var p46$2: bool;
  var p47$1: bool;
  var p47$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $sum4.0$1, $sum5.0$1, $sum6.0$1, $sum7.0$1, $i.0 := 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv32;
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2, $sum4.0$2, $sum5.0$2, $sum6.0$2, $sum7.0$2 := 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128, 0bv128;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v2 := BV32_ULT($i.0, $widthA);
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
    p18$1 := false;
    p18$2 := false;
    p19$1 := false;
    p19$2 := false;
    p20$1 := false;
    p20$2 := false;
    p21$1 := false;
    p21$2 := false;
    p22$1 := false;
    p22$2 := false;
    p23$1 := false;
    p23$2 := false;
    p24$1 := false;
    p24$2 := false;
    p25$1 := false;
    p25$2 := false;
    p26$1 := false;
    p26$2 := false;
    p27$1 := false;
    p27$2 := false;
    p28$1 := false;
    p28$2 := false;
    p29$1 := false;
    p29$2 := false;
    p30$1 := false;
    p30$2 := false;
    p31$1 := false;
    p31$2 := false;
    p32$1 := false;
    p32$2 := false;
    p33$1 := false;
    p33$2 := false;
    p34$1 := false;
    p34$2 := false;
    p35$1 := false;
    p35$2 := false;
    p36$1 := false;
    p36$2 := false;
    p37$1 := false;
    p37$2 := false;
    p38$1 := false;
    p38$2 := false;
    p39$1 := false;
    p39$2 := false;
    p40$1 := false;
    p40$2 := false;
    p41$1 := false;
    p41$2 := false;
    p42$1 := false;
    p42$2 := false;
    p43$1 := false;
    p43$2 := false;
    p44$1 := false;
    p44$2 := false;
    p45$1 := false;
    p45$2 := false;
    p46$1 := false;
    p46$2 := false;
    p47$1 := false;
    p47$2 := false;
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    call {:sourceloc} {:sourceloc_num 209} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), $sum0.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 209} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 209} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), $sum0.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32)] := $sum0.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32)] := $sum0.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 210} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum0.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 210} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 210} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum0.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum0.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum0.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 211} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum0.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 211} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 211} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum0.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum0.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum0.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 212} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum0.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 212} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 212} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum0.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 8bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum0.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 8bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum0.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 213} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), $sum1.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 213} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 213} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), $sum1.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32)] := $sum1.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32)] := $sum1.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 214} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum1.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 214} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 214} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum1.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum1.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum1.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 215} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum1.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 215} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 215} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum1.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum1.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum1.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 216} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum1.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 216} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 216} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum1.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 1bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum1.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 1bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum1.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 217} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), $sum2.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 217} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 217} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), $sum2.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32)] := $sum2.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32)] := $sum2.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 218} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum2.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 218} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 218} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum2.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum2.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum2.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 219} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum2.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 219} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 219} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum2.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum2.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum2.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 220} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum2.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 220} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 220} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum2.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 2bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum2.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 2bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum2.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 221} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), $sum3.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 221} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 221} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), $sum3.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32)] := $sum3.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32)] := $sum3.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 222} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum3.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 222} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum3.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum3.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum3.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 223} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum3.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 223} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 223} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum3.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum3.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum3.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 224} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum3.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 224} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 224} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum3.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 3bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum3.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 3bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum3.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 225} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), $sum4.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 225} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 225} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), $sum4.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32)] := $sum4.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32)] := $sum4.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 226} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum4.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 226} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 226} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum4.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum4.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum4.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 227} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum4.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 227} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 227} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum4.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum4.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum4.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 228} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum4.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 228} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 228} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum4.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 4bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum4.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 4bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum4.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 229} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), $sum5.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 229} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 229} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), $sum5.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32)] := $sum5.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32)] := $sum5.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 230} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum5.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 230} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 230} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum5.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum5.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum5.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 231} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum5.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 231} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 231} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum5.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum5.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum5.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 232} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum5.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 232} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 232} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum5.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 5bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum5.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 5bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum5.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 233} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), $sum6.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 233} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 233} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), $sum6.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32)] := $sum6.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32)] := $sum6.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 234} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum6.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 234} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 234} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum6.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum6.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum6.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 235} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum6.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 235} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 235} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum6.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum6.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum6.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 236} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum6.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 236} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 236} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum6.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 6bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum6.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 6bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum6.0$2[128:96];
    call {:sourceloc} {:sourceloc_num 237} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), $sum7.0$1[32:0], $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 237} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 237} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), $sum7.0$2[32:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32)] := $sum7.0$1[32:0];
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32)] := $sum7.0$2[32:0];
    call {:sourceloc} {:sourceloc_num 238} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 1bv32), $sum7.0$1[64:32], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 238} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 238} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 1bv32), $sum7.0$2[64:32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 1bv32)] := $sum7.0$1[64:32];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 1bv32)] := $sum7.0$2[64:32];
    call {:sourceloc} {:sourceloc_num 239} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 2bv32), $sum7.0$1[96:64], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 239} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 239} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 2bv32), $sum7.0$2[96:64]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 2bv32)] := $sum7.0$1[96:64];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 2bv32)] := $sum7.0$2[96:64];
    call {:sourceloc} {:sourceloc_num 240} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 3bv32), $sum7.0$1[128:96], $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 240} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 240} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 3bv32), $sum7.0$2[128:96]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 8bv32), 7bv32), 8192bv32), v0$1), 4bv32), 3bv32)] := $sum7.0$1[128:96];
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 8bv32), 7bv32), 8192bv32), v0$2), 4bv32), 3bv32)] := $sum7.0$2[128:96];
    return;

  $truebb:
    assume {:partition} v2;
    v3$1 := $$imageSampler$1[0bv32];
    v3$2 := $$imageSampler$2[0bv32];
    v4 := BV32_ASHR($i.0, 2bv32);
    v5$1 := BV32_SHL(v1$1, 3bv32);
    v5$2 := BV32_SHL(v1$2, 3bv32);
    v6 := BV32_SLT(v4, 0bv32);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v6;
    v7 := BV32_SGE(v4, 8192bv32);
    goto $truebb1, $falsebb1;

  $falsebb1:
    assume {:partition} !v7;
    $1 := v4;
    goto $7;

  $7:
    $0 := $1;
    goto $8;

  $8:
    v8$1 := BV32_SLT(v5$1, 0bv32);
    v8$2 := BV32_SLT(v5$2, 0bv32);
    p0$1 := (if v8$1 then v8$1 else p0$1);
    p0$2 := (if v8$2 then v8$2 else p0$2);
    p1$1 := (if !v8$1 then !v8$1 else p1$1);
    p1$2 := (if !v8$2 then !v8$2 else p1$2);
    $2$1 := (if p0$1 then 0bv32 else $2$1);
    $2$2 := (if p0$2 then 0bv32 else $2$2);
    v9$1 := (if p1$1 then BV32_SGE(v5$1, 8192bv32) else v9$1);
    v9$2 := (if p1$2 then BV32_SGE(v5$2, 8192bv32) else v9$2);
    p3$1 := (if p1$1 && v9$1 then v9$1 else p3$1);
    p3$2 := (if p1$2 && v9$2 then v9$2 else p3$2);
    p2$1 := (if p1$1 && !v9$1 then !v9$1 else p2$1);
    p2$2 := (if p1$2 && !v9$2 then !v9$2 else p2$2);
    $3$1 := (if p2$1 then v5$1 else $3$1);
    $3$2 := (if p2$2 then v5$2 else $3$2);
    $3$1 := (if p3$1 then 8191bv32 else $3$1);
    $3$2 := (if p3$2 then 8191bv32 else $3$2);
    $2$1 := (if p1$1 then $3$1 else $2$1);
    $2$2 := (if p1$2 then $3$2 else $2$2);
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    v14$1 := $$imageSampler$1[0bv32];
    v14$2 := $$imageSampler$2[0bv32];
    v15 := BV32_ASHR($i.0, 2bv32);
    v16$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 1bv32);
    v16$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 1bv32);
    v17 := BV32_SLT(v15, 0bv32);
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v17;
    v18 := BV32_SGE(v15, 8192bv32);
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v18;
    $5 := v15;
    goto $18;

  $18:
    $4 := $5;
    goto $19;

  $19:
    v19$1 := BV32_SLT(v16$1, 0bv32);
    v19$2 := BV32_SLT(v16$2, 0bv32);
    p4$1 := (if v19$1 then v19$1 else p4$1);
    p4$2 := (if v19$2 then v19$2 else p4$2);
    p5$1 := (if !v19$1 then !v19$1 else p5$1);
    p5$2 := (if !v19$2 then !v19$2 else p5$2);
    $6$1 := (if p4$1 then 0bv32 else $6$1);
    $6$2 := (if p4$2 then 0bv32 else $6$2);
    v20$1 := (if p5$1 then BV32_SGE(v16$1, 8192bv32) else v20$1);
    v20$2 := (if p5$2 then BV32_SGE(v16$2, 8192bv32) else v20$2);
    p7$1 := (if p5$1 && v20$1 then v20$1 else p7$1);
    p7$2 := (if p5$2 && v20$2 then v20$2 else p7$2);
    p6$1 := (if p5$1 && !v20$1 then !v20$1 else p6$1);
    p6$2 := (if p5$2 && !v20$2 then !v20$2 else p6$2);
    $7$1 := (if p6$1 then v16$1 else $7$1);
    $7$2 := (if p6$2 then v16$2 else $7$2);
    $7$1 := (if p7$1 then 8191bv32 else $7$1);
    $7$2 := (if p7$2 then 8191bv32 else $7$2);
    $6$1 := (if p5$1 then $7$1 else $6$1);
    $6$2 := (if p5$2 then $7$2 else $6$2);
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    v25$1 := $$imageSampler$1[0bv32];
    v25$2 := $$imageSampler$2[0bv32];
    v26 := BV32_ASHR($i.0, 2bv32);
    v27$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 2bv32);
    v27$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 2bv32);
    v28 := BV32_SLT(v26, 0bv32);
    goto $truebb8, $falsebb8;

  $falsebb8:
    assume {:partition} !v28;
    v29 := BV32_SGE(v26, 8192bv32);
    goto $truebb9, $falsebb9;

  $falsebb9:
    assume {:partition} !v29;
    $9 := v26;
    goto $29;

  $29:
    $8 := $9;
    goto $30;

  $30:
    v30$1 := BV32_SLT(v27$1, 0bv32);
    v30$2 := BV32_SLT(v27$2, 0bv32);
    p8$1 := (if v30$1 then v30$1 else p8$1);
    p8$2 := (if v30$2 then v30$2 else p8$2);
    p9$1 := (if !v30$1 then !v30$1 else p9$1);
    p9$2 := (if !v30$2 then !v30$2 else p9$2);
    $10$1 := (if p8$1 then 0bv32 else $10$1);
    $10$2 := (if p8$2 then 0bv32 else $10$2);
    v31$1 := (if p9$1 then BV32_SGE(v27$1, 8192bv32) else v31$1);
    v31$2 := (if p9$2 then BV32_SGE(v27$2, 8192bv32) else v31$2);
    p11$1 := (if p9$1 && v31$1 then v31$1 else p11$1);
    p11$2 := (if p9$2 && v31$2 then v31$2 else p11$2);
    p10$1 := (if p9$1 && !v31$1 then !v31$1 else p10$1);
    p10$2 := (if p9$2 && !v31$2 then !v31$2 else p10$2);
    $11$1 := (if p10$1 then v27$1 else $11$1);
    $11$2 := (if p10$2 then v27$2 else $11$2);
    $11$1 := (if p11$1 then 8191bv32 else $11$1);
    $11$2 := (if p11$2 then 8191bv32 else $11$2);
    $10$1 := (if p9$1 then $11$1 else $10$1);
    $10$2 := (if p9$2 then $11$2 else $10$2);
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    havoc v35$1, v35$2;
    v36$1 := $$imageSampler$1[0bv32];
    v36$2 := $$imageSampler$2[0bv32];
    v37 := BV32_ASHR($i.0, 2bv32);
    v38$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 3bv32);
    v38$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 3bv32);
    v39 := BV32_SLT(v37, 0bv32);
    goto $truebb12, $falsebb12;

  $falsebb12:
    assume {:partition} !v39;
    v40 := BV32_SGE(v37, 8192bv32);
    goto $truebb13, $falsebb13;

  $falsebb13:
    assume {:partition} !v40;
    $13 := v37;
    goto $40;

  $40:
    $12 := $13;
    goto $41;

  $41:
    v41$1 := BV32_SLT(v38$1, 0bv32);
    v41$2 := BV32_SLT(v38$2, 0bv32);
    p12$1 := (if v41$1 then v41$1 else p12$1);
    p12$2 := (if v41$2 then v41$2 else p12$2);
    p13$1 := (if !v41$1 then !v41$1 else p13$1);
    p13$2 := (if !v41$2 then !v41$2 else p13$2);
    $14$1 := (if p12$1 then 0bv32 else $14$1);
    $14$2 := (if p12$2 then 0bv32 else $14$2);
    v42$1 := (if p13$1 then BV32_SGE(v38$1, 8192bv32) else v42$1);
    v42$2 := (if p13$2 then BV32_SGE(v38$2, 8192bv32) else v42$2);
    p15$1 := (if p13$1 && v42$1 then v42$1 else p15$1);
    p15$2 := (if p13$2 && v42$2 then v42$2 else p15$2);
    p14$1 := (if p13$1 && !v42$1 then !v42$1 else p14$1);
    p14$2 := (if p13$2 && !v42$2 then !v42$2 else p14$2);
    $15$1 := (if p14$1 then v38$1 else $15$1);
    $15$2 := (if p14$2 then v38$2 else $15$2);
    $15$1 := (if p15$1 then 8191bv32 else $15$1);
    $15$2 := (if p15$2 then 8191bv32 else $15$2);
    $14$1 := (if p13$1 then $15$1 else $14$1);
    $14$2 := (if p13$2 then $15$2 else $14$2);
    havoc v43$1, v43$2;
    havoc v44$1, v44$2;
    havoc v45$1, v45$2;
    havoc v46$1, v46$2;
    v47$1 := $$imageSampler$1[0bv32];
    v47$2 := $$imageSampler$2[0bv32];
    v48 := BV32_ASHR($i.0, 2bv32);
    v49$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 4bv32);
    v49$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 4bv32);
    v50 := BV32_SLT(v48, 0bv32);
    goto $truebb16, $falsebb16;

  $falsebb16:
    assume {:partition} !v50;
    v51 := BV32_SGE(v48, 8192bv32);
    goto $truebb17, $falsebb17;

  $falsebb17:
    assume {:partition} !v51;
    $17 := v48;
    goto $51;

  $51:
    $16 := $17;
    goto $52;

  $52:
    v52$1 := BV32_SLT(v49$1, 0bv32);
    v52$2 := BV32_SLT(v49$2, 0bv32);
    p16$1 := (if v52$1 then v52$1 else p16$1);
    p16$2 := (if v52$2 then v52$2 else p16$2);
    p17$1 := (if !v52$1 then !v52$1 else p17$1);
    p17$2 := (if !v52$2 then !v52$2 else p17$2);
    $18$1 := (if p16$1 then 0bv32 else $18$1);
    $18$2 := (if p16$2 then 0bv32 else $18$2);
    v53$1 := (if p17$1 then BV32_SGE(v49$1, 8192bv32) else v53$1);
    v53$2 := (if p17$2 then BV32_SGE(v49$2, 8192bv32) else v53$2);
    p19$1 := (if p17$1 && v53$1 then v53$1 else p19$1);
    p19$2 := (if p17$2 && v53$2 then v53$2 else p19$2);
    p18$1 := (if p17$1 && !v53$1 then !v53$1 else p18$1);
    p18$2 := (if p17$2 && !v53$2 then !v53$2 else p18$2);
    $19$1 := (if p18$1 then v49$1 else $19$1);
    $19$2 := (if p18$2 then v49$2 else $19$2);
    $19$1 := (if p19$1 then 8191bv32 else $19$1);
    $19$2 := (if p19$2 then 8191bv32 else $19$2);
    $18$1 := (if p17$1 then $19$1 else $18$1);
    $18$2 := (if p17$2 then $19$2 else $18$2);
    havoc v54$1, v54$2;
    havoc v55$1, v55$2;
    havoc v56$1, v56$2;
    havoc v57$1, v57$2;
    v58$1 := $$imageSampler$1[0bv32];
    v58$2 := $$imageSampler$2[0bv32];
    v59 := BV32_ASHR($i.0, 2bv32);
    v60$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 5bv32);
    v60$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 5bv32);
    v61 := BV32_SLT(v59, 0bv32);
    goto $truebb20, $falsebb20;

  $falsebb20:
    assume {:partition} !v61;
    v62 := BV32_SGE(v59, 8192bv32);
    goto $truebb21, $falsebb21;

  $falsebb21:
    assume {:partition} !v62;
    $21 := v59;
    goto $62;

  $62:
    $20 := $21;
    goto $63;

  $63:
    v63$1 := BV32_SLT(v60$1, 0bv32);
    v63$2 := BV32_SLT(v60$2, 0bv32);
    p20$1 := (if v63$1 then v63$1 else p20$1);
    p20$2 := (if v63$2 then v63$2 else p20$2);
    p21$1 := (if !v63$1 then !v63$1 else p21$1);
    p21$2 := (if !v63$2 then !v63$2 else p21$2);
    $22$1 := (if p20$1 then 0bv32 else $22$1);
    $22$2 := (if p20$2 then 0bv32 else $22$2);
    v64$1 := (if p21$1 then BV32_SGE(v60$1, 8192bv32) else v64$1);
    v64$2 := (if p21$2 then BV32_SGE(v60$2, 8192bv32) else v64$2);
    p23$1 := (if p21$1 && v64$1 then v64$1 else p23$1);
    p23$2 := (if p21$2 && v64$2 then v64$2 else p23$2);
    p22$1 := (if p21$1 && !v64$1 then !v64$1 else p22$1);
    p22$2 := (if p21$2 && !v64$2 then !v64$2 else p22$2);
    $23$1 := (if p22$1 then v60$1 else $23$1);
    $23$2 := (if p22$2 then v60$2 else $23$2);
    $23$1 := (if p23$1 then 8191bv32 else $23$1);
    $23$2 := (if p23$2 then 8191bv32 else $23$2);
    $22$1 := (if p21$1 then $23$1 else $22$1);
    $22$2 := (if p21$2 then $23$2 else $22$2);
    havoc v65$1, v65$2;
    havoc v66$1, v66$2;
    havoc v67$1, v67$2;
    havoc v68$1, v68$2;
    v69$1 := $$imageSampler$1[0bv32];
    v69$2 := $$imageSampler$2[0bv32];
    v70 := BV32_ASHR($i.0, 2bv32);
    v71$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 6bv32);
    v71$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 6bv32);
    v72 := BV32_SLT(v70, 0bv32);
    goto $truebb24, $falsebb24;

  $falsebb24:
    assume {:partition} !v72;
    v73 := BV32_SGE(v70, 8192bv32);
    goto $truebb25, $falsebb25;

  $falsebb25:
    assume {:partition} !v73;
    $25 := v70;
    goto $73;

  $73:
    $24 := $25;
    goto $74;

  $74:
    v74$1 := BV32_SLT(v71$1, 0bv32);
    v74$2 := BV32_SLT(v71$2, 0bv32);
    p24$1 := (if v74$1 then v74$1 else p24$1);
    p24$2 := (if v74$2 then v74$2 else p24$2);
    p25$1 := (if !v74$1 then !v74$1 else p25$1);
    p25$2 := (if !v74$2 then !v74$2 else p25$2);
    $26$1 := (if p24$1 then 0bv32 else $26$1);
    $26$2 := (if p24$2 then 0bv32 else $26$2);
    v75$1 := (if p25$1 then BV32_SGE(v71$1, 8192bv32) else v75$1);
    v75$2 := (if p25$2 then BV32_SGE(v71$2, 8192bv32) else v75$2);
    p27$1 := (if p25$1 && v75$1 then v75$1 else p27$1);
    p27$2 := (if p25$2 && v75$2 then v75$2 else p27$2);
    p26$1 := (if p25$1 && !v75$1 then !v75$1 else p26$1);
    p26$2 := (if p25$2 && !v75$2 then !v75$2 else p26$2);
    $27$1 := (if p26$1 then v71$1 else $27$1);
    $27$2 := (if p26$2 then v71$2 else $27$2);
    $27$1 := (if p27$1 then 8191bv32 else $27$1);
    $27$2 := (if p27$2 then 8191bv32 else $27$2);
    $26$1 := (if p25$1 then $27$1 else $26$1);
    $26$2 := (if p25$2 then $27$2 else $26$2);
    havoc v76$1, v76$2;
    havoc v77$1, v77$2;
    havoc v78$1, v78$2;
    havoc v79$1, v79$2;
    v80$1 := $$imageSampler$1[0bv32];
    v80$2 := $$imageSampler$2[0bv32];
    v81 := BV32_ASHR($i.0, 2bv32);
    v82$1 := BV32_ADD(BV32_SHL(v1$1, 3bv32), 7bv32);
    v82$2 := BV32_ADD(BV32_SHL(v1$2, 3bv32), 7bv32);
    v83 := BV32_SLT(v81, 0bv32);
    goto $truebb28, $falsebb28;

  $falsebb28:
    assume {:partition} !v83;
    v84 := BV32_SGE(v81, 8192bv32);
    goto $truebb29, $falsebb29;

  $falsebb29:
    assume {:partition} !v84;
    $29 := v81;
    goto $84;

  $84:
    $28 := $29;
    goto $85;

  $85:
    v85$1 := BV32_SLT(v82$1, 0bv32);
    v85$2 := BV32_SLT(v82$2, 0bv32);
    p28$1 := (if v85$1 then v85$1 else p28$1);
    p28$2 := (if v85$2 then v85$2 else p28$2);
    p29$1 := (if !v85$1 then !v85$1 else p29$1);
    p29$2 := (if !v85$2 then !v85$2 else p29$2);
    $30$1 := (if p28$1 then 0bv32 else $30$1);
    $30$2 := (if p28$2 then 0bv32 else $30$2);
    v86$1 := (if p29$1 then BV32_SGE(v82$1, 8192bv32) else v86$1);
    v86$2 := (if p29$2 then BV32_SGE(v82$2, 8192bv32) else v86$2);
    p31$1 := (if p29$1 && v86$1 then v86$1 else p31$1);
    p31$2 := (if p29$2 && v86$2 then v86$2 else p31$2);
    p30$1 := (if p29$1 && !v86$1 then !v86$1 else p30$1);
    p30$2 := (if p29$2 && !v86$2 then !v86$2 else p30$2);
    $31$1 := (if p30$1 then v82$1 else $31$1);
    $31$2 := (if p30$2 then v82$2 else $31$2);
    $31$1 := (if p31$1 then 8191bv32 else $31$1);
    $31$2 := (if p31$2 then 8191bv32 else $31$2);
    $30$1 := (if p29$1 then $31$1 else $30$1);
    $30$2 := (if p29$2 then $31$2 else $30$2);
    havoc v87$1, v87$2;
    havoc v88$1, v88$2;
    havoc v89$1, v89$2;
    havoc v90$1, v90$2;
    v91$1 := $$imageSampler$1[0bv32];
    v91$2 := $$imageSampler$2[0bv32];
    v92$1 := BV32_SLT(v0$1, 0bv32);
    v92$2 := BV32_SLT(v0$2, 0bv32);
    p32$1 := (if v92$1 then v92$1 else p32$1);
    p32$2 := (if v92$2 then v92$2 else p32$2);
    p33$1 := (if !v92$1 then !v92$1 else p33$1);
    p33$2 := (if !v92$2 then !v92$2 else p33$2);
    $32$1 := (if p32$1 then 0bv32 else $32$1);
    $32$2 := (if p32$2 then 0bv32 else $32$2);
    v93$1 := (if p33$1 then BV32_SGE(v0$1, 8192bv32) else v93$1);
    v93$2 := (if p33$2 then BV32_SGE(v0$2, 8192bv32) else v93$2);
    p35$1 := (if p33$1 && v93$1 then v93$1 else p35$1);
    p35$2 := (if p33$2 && v93$2 then v93$2 else p35$2);
    p34$1 := (if p33$1 && !v93$1 then !v93$1 else p34$1);
    p34$2 := (if p33$2 && !v93$2 then !v93$2 else p34$2);
    $33$1 := (if p34$1 then v0$1 else $33$1);
    $33$2 := (if p34$2 then v0$2 else $33$2);
    $33$1 := (if p35$1 then 8191bv32 else $33$1);
    $33$2 := (if p35$2 then 8191bv32 else $33$2);
    $32$1 := (if p33$1 then $33$1 else $32$1);
    $32$2 := (if p33$2 then $33$2 else $32$2);
    v94 := BV32_SLT($i.0, 0bv32);
    goto $truebb34, $falsebb34;

  $falsebb34:
    assume {:partition} !v94;
    v95 := BV32_SGE($i.0, 8192bv32);
    goto $truebb35, $falsebb35;

  $falsebb35:
    assume {:partition} !v95;
    $35 := $i.0;
    goto $101;

  $101:
    $34 := $35;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit24;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit24:
    havoc v96$1, v96$2;
    havoc v97$1, v97$2;
    havoc v98$1, v98$2;
    havoc v99$1, v99$2;
    v100$1 := $$imageSampler$1[0bv32];
    v100$2 := $$imageSampler$2[0bv32];
    v101 := BV32_ADD($i.0, 1bv32);
    v102$1 := BV32_SLT(v0$1, 0bv32);
    v102$2 := BV32_SLT(v0$2, 0bv32);
    p36$1 := (if v102$1 then v102$1 else p36$1);
    p36$2 := (if v102$2 then v102$2 else p36$2);
    p37$1 := (if !v102$1 then !v102$1 else p37$1);
    p37$2 := (if !v102$2 then !v102$2 else p37$2);
    $36$1 := (if p36$1 then 0bv32 else $36$1);
    $36$2 := (if p36$2 then 0bv32 else $36$2);
    v103$1 := (if p37$1 then BV32_SGE(v0$1, 8192bv32) else v103$1);
    v103$2 := (if p37$2 then BV32_SGE(v0$2, 8192bv32) else v103$2);
    p39$1 := (if p37$1 && v103$1 then v103$1 else p39$1);
    p39$2 := (if p37$2 && v103$2 then v103$2 else p39$2);
    p38$1 := (if p37$1 && !v103$1 then !v103$1 else p38$1);
    p38$2 := (if p37$2 && !v103$2 then !v103$2 else p38$2);
    $37$1 := (if p38$1 then v0$1 else $37$1);
    $37$2 := (if p38$2 then v0$2 else $37$2);
    $37$1 := (if p39$1 then 8191bv32 else $37$1);
    $37$2 := (if p39$2 then 8191bv32 else $37$2);
    $36$1 := (if p37$1 then $37$1 else $36$1);
    $36$2 := (if p37$2 then $37$2 else $36$2);
    v104 := BV32_SLT(v101, 0bv32);
    goto $truebb38, $falsebb38;

  $falsebb38:
    assume {:partition} !v104;
    v105 := BV32_SGE(v101, 8192bv32);
    goto $truebb39, $falsebb39;

  $falsebb39:
    assume {:partition} !v105;
    $39 := v101;
    goto $112;

  $112:
    $38 := $39;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21:
    havoc v106$1, v106$2;
    havoc v107$1, v107$2;
    havoc v108$1, v108$2;
    havoc v109$1, v109$2;
    v110$1 := $$imageSampler$1[0bv32];
    v110$2 := $$imageSampler$2[0bv32];
    v111 := BV32_ADD($i.0, 2bv32);
    v112$1 := BV32_SLT(v0$1, 0bv32);
    v112$2 := BV32_SLT(v0$2, 0bv32);
    p40$1 := (if v112$1 then v112$1 else p40$1);
    p40$2 := (if v112$2 then v112$2 else p40$2);
    p41$1 := (if !v112$1 then !v112$1 else p41$1);
    p41$2 := (if !v112$2 then !v112$2 else p41$2);
    $40$1 := (if p40$1 then 0bv32 else $40$1);
    $40$2 := (if p40$2 then 0bv32 else $40$2);
    v113$1 := (if p41$1 then BV32_SGE(v0$1, 8192bv32) else v113$1);
    v113$2 := (if p41$2 then BV32_SGE(v0$2, 8192bv32) else v113$2);
    p43$1 := (if p41$1 && v113$1 then v113$1 else p43$1);
    p43$2 := (if p41$2 && v113$2 then v113$2 else p43$2);
    p42$1 := (if p41$1 && !v113$1 then !v113$1 else p42$1);
    p42$2 := (if p41$2 && !v113$2 then !v113$2 else p42$2);
    $41$1 := (if p42$1 then v0$1 else $41$1);
    $41$2 := (if p42$2 then v0$2 else $41$2);
    $41$1 := (if p43$1 then 8191bv32 else $41$1);
    $41$2 := (if p43$2 then 8191bv32 else $41$2);
    $40$1 := (if p41$1 then $41$1 else $40$1);
    $40$2 := (if p41$2 then $41$2 else $40$2);
    v114 := BV32_SLT(v111, 0bv32);
    goto $truebb42, $falsebb42;

  $falsebb42:
    assume {:partition} !v114;
    v115 := BV32_SGE(v111, 8192bv32);
    goto $truebb43, $falsebb43;

  $falsebb43:
    assume {:partition} !v115;
    $43 := v111;
    goto $123;

  $123:
    $42 := $43;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18:
    havoc v116$1, v116$2;
    havoc v117$1, v117$2;
    havoc v118$1, v118$2;
    havoc v119$1, v119$2;
    v120$1 := $$imageSampler$1[0bv32];
    v120$2 := $$imageSampler$2[0bv32];
    v121 := BV32_ADD($i.0, 3bv32);
    v122$1 := BV32_SLT(v0$1, 0bv32);
    v122$2 := BV32_SLT(v0$2, 0bv32);
    p44$1 := (if v122$1 then v122$1 else p44$1);
    p44$2 := (if v122$2 then v122$2 else p44$2);
    p45$1 := (if !v122$1 then !v122$1 else p45$1);
    p45$2 := (if !v122$2 then !v122$2 else p45$2);
    $44$1 := (if p44$1 then 0bv32 else $44$1);
    $44$2 := (if p44$2 then 0bv32 else $44$2);
    v123$1 := (if p45$1 then BV32_SGE(v0$1, 8192bv32) else v123$1);
    v123$2 := (if p45$2 then BV32_SGE(v0$2, 8192bv32) else v123$2);
    p47$1 := (if p45$1 && v123$1 then v123$1 else p47$1);
    p47$2 := (if p45$2 && v123$2 then v123$2 else p47$2);
    p46$1 := (if p45$1 && !v123$1 then !v123$1 else p46$1);
    p46$2 := (if p45$2 && !v123$2 then !v123$2 else p46$2);
    $45$1 := (if p46$1 then v0$1 else $45$1);
    $45$2 := (if p46$2 then v0$2 else $45$2);
    $45$1 := (if p47$1 then 8191bv32 else $45$1);
    $45$2 := (if p47$2 then 8191bv32 else $45$2);
    $44$1 := (if p45$1 then $45$1 else $44$1);
    $44$2 := (if p45$2 then $45$2 else $44$2);
    v124 := BV32_SLT(v121, 0bv32);
    goto $truebb46, $falsebb46;

  $falsebb46:
    assume {:partition} !v124;
    v125 := BV32_SGE(v121, 8192bv32);
    goto $truebb47, $falsebb47;

  $falsebb47:
    assume {:partition} !v125;
    $47 := v121;
    goto $134;

  $134:
    $46 := $47;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15:
    havoc v126$1, v126$2;
    havoc v127$1, v127$2;
    havoc v128$1, v128$2;
    havoc v129$1, v129$2;
    v130$1 := $sum0.0$1[64:32];
    v130$2 := $sum0.0$2[64:32];
    v131$1 := $sum0.0$1[96:64];
    v131$2 := $sum0.0$2[96:64];
    v132$1 := $sum0.0$1[128:96];
    v132$2 := $sum0.0$2[128:96];
    v133$1 := $sum1.0$1[64:32];
    v133$2 := $sum1.0$2[64:32];
    v134$1 := $sum1.0$1[96:64];
    v134$2 := $sum1.0$2[96:64];
    v135$1 := $sum1.0$1[128:96];
    v135$2 := $sum1.0$2[128:96];
    v136$1 := $sum2.0$1[64:32];
    v136$2 := $sum2.0$2[64:32];
    v137$1 := $sum2.0$1[96:64];
    v137$2 := $sum2.0$2[96:64];
    v138$1 := $sum2.0$1[128:96];
    v138$2 := $sum2.0$2[128:96];
    v139$1 := $sum3.0$1[64:32];
    v139$2 := $sum3.0$2[64:32];
    v140$1 := $sum3.0$1[96:64];
    v140$2 := $sum3.0$2[96:64];
    v141$1 := $sum3.0$1[128:96];
    v141$2 := $sum3.0$2[128:96];
    v142$1 := $sum4.0$1[64:32];
    v142$2 := $sum4.0$2[64:32];
    v143$1 := $sum4.0$1[96:64];
    v143$2 := $sum4.0$2[96:64];
    v144$1 := $sum4.0$1[128:96];
    v144$2 := $sum4.0$2[128:96];
    v145$1 := $sum5.0$1[64:32];
    v145$2 := $sum5.0$2[64:32];
    v146$1 := $sum5.0$1[96:64];
    v146$2 := $sum5.0$2[96:64];
    v147$1 := $sum5.0$1[128:96];
    v147$2 := $sum5.0$2[128:96];
    v148$1 := $sum6.0$1[64:32];
    v148$2 := $sum6.0$2[64:32];
    v149$1 := $sum6.0$1[96:64];
    v149$2 := $sum6.0$2[96:64];
    v150$1 := $sum6.0$1[128:96];
    v150$2 := $sum6.0$2[128:96];
    v151$1 := $sum7.0$1[64:32];
    v151$2 := $sum7.0$2[64:32];
    v152$1 := $sum7.0$1[96:64];
    v152$2 := $sum7.0$2[96:64];
    v153$1 := $sum7.0$1[128:96];
    v153$2 := $sum7.0$2[128:96];
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $sum4.0$1, $sum5.0$1, $sum6.0$1, $sum7.0$1, $i.0 := FADD32(v132$1, FADD32(FMUL32(v13$1, v129$1), FADD32(FMUL32(v12$1, v119$1), FADD32(FMUL32(v10$1, v99$1), FMUL32(v11$1, v109$1))))) ++ FADD32(v131$1, FADD32(FMUL32(v13$1, v128$1), FADD32(FMUL32(v12$1, v118$1), FADD32(FMUL32(v10$1, v98$1), FMUL32(v11$1, v108$1))))) ++ FADD32(v130$1, FADD32(FMUL32(v13$1, v127$1), FADD32(FMUL32(v12$1, v117$1), FADD32(FMUL32(v10$1, v97$1), FMUL32(v11$1, v107$1))))) ++ FADD32($sum0.0$1[32:0], FADD32(FMUL32(v13$1, v126$1), FADD32(FMUL32(v12$1, v116$1), FADD32(FMUL32(v10$1, v96$1), FMUL32(v11$1, v106$1))))), FADD32(v135$1, FADD32(FMUL32(v24$1, v129$1), FADD32(FMUL32(v23$1, v119$1), FADD32(FMUL32(v21$1, v99$1), FMUL32(v22$1, v109$1))))) ++ FADD32(v134$1, FADD32(FMUL32(v24$1, v128$1), FADD32(FMUL32(v23$1, v118$1), FADD32(FMUL32(v21$1, v98$1), FMUL32(v22$1, v108$1))))) ++ FADD32(v133$1, FADD32(FMUL32(v24$1, v127$1), FADD32(FMUL32(v23$1, v117$1), FADD32(FMUL32(v21$1, v97$1), FMUL32(v22$1, v107$1))))) ++ FADD32($sum1.0$1[32:0], FADD32(FMUL32(v24$1, v126$1), FADD32(FMUL32(v23$1, v116$1), FADD32(FMUL32(v21$1, v96$1), FMUL32(v22$1, v106$1))))), FADD32(v138$1, FADD32(FMUL32(v35$1, v129$1), FADD32(FMUL32(v34$1, v119$1), FADD32(FMUL32(v32$1, v99$1), FMUL32(v33$1, v109$1))))) ++ FADD32(v137$1, FADD32(FMUL32(v35$1, v128$1), FADD32(FMUL32(v34$1, v118$1), FADD32(FMUL32(v32$1, v98$1), FMUL32(v33$1, v108$1))))) ++ FADD32(v136$1, FADD32(FMUL32(v35$1, v127$1), FADD32(FMUL32(v34$1, v117$1), FADD32(FMUL32(v32$1, v97$1), FMUL32(v33$1, v107$1))))) ++ FADD32($sum2.0$1[32:0], FADD32(FMUL32(v35$1, v126$1), FADD32(FMUL32(v34$1, v116$1), FADD32(FMUL32(v32$1, v96$1), FMUL32(v33$1, v106$1))))), FADD32(v141$1, FADD32(FMUL32(v46$1, v129$1), FADD32(FMUL32(v45$1, v119$1), FADD32(FMUL32(v43$1, v99$1), FMUL32(v44$1, v109$1))))) ++ FADD32(v140$1, FADD32(FMUL32(v46$1, v128$1), FADD32(FMUL32(v45$1, v118$1), FADD32(FMUL32(v43$1, v98$1), FMUL32(v44$1, v108$1))))) ++ FADD32(v139$1, FADD32(FMUL32(v46$1, v127$1), FADD32(FMUL32(v45$1, v117$1), FADD32(FMUL32(v43$1, v97$1), FMUL32(v44$1, v107$1))))) ++ FADD32($sum3.0$1[32:0], FADD32(FMUL32(v46$1, v126$1), FADD32(FMUL32(v45$1, v116$1), FADD32(FMUL32(v43$1, v96$1), FMUL32(v44$1, v106$1))))), FADD32(v144$1, FADD32(FMUL32(v57$1, v129$1), FADD32(FMUL32(v56$1, v119$1), FADD32(FMUL32(v54$1, v99$1), FMUL32(v55$1, v109$1))))) ++ FADD32(v143$1, FADD32(FMUL32(v57$1, v128$1), FADD32(FMUL32(v56$1, v118$1), FADD32(FMUL32(v54$1, v98$1), FMUL32(v55$1, v108$1))))) ++ FADD32(v142$1, FADD32(FMUL32(v57$1, v127$1), FADD32(FMUL32(v56$1, v117$1), FADD32(FMUL32(v54$1, v97$1), FMUL32(v55$1, v107$1))))) ++ FADD32($sum4.0$1[32:0], FADD32(FMUL32(v57$1, v126$1), FADD32(FMUL32(v56$1, v116$1), FADD32(FMUL32(v54$1, v96$1), FMUL32(v55$1, v106$1))))), FADD32(v147$1, FADD32(FMUL32(v68$1, v129$1), FADD32(FMUL32(v67$1, v119$1), FADD32(FMUL32(v65$1, v99$1), FMUL32(v66$1, v109$1))))) ++ FADD32(v146$1, FADD32(FMUL32(v68$1, v128$1), FADD32(FMUL32(v67$1, v118$1), FADD32(FMUL32(v65$1, v98$1), FMUL32(v66$1, v108$1))))) ++ FADD32(v145$1, FADD32(FMUL32(v68$1, v127$1), FADD32(FMUL32(v67$1, v117$1), FADD32(FMUL32(v65$1, v97$1), FMUL32(v66$1, v107$1))))) ++ FADD32($sum5.0$1[32:0], FADD32(FMUL32(v68$1, v126$1), FADD32(FMUL32(v67$1, v116$1), FADD32(FMUL32(v65$1, v96$1), FMUL32(v66$1, v106$1))))), FADD32(v150$1, FADD32(FMUL32(v79$1, v129$1), FADD32(FMUL32(v78$1, v119$1), FADD32(FMUL32(v76$1, v99$1), FMUL32(v77$1, v109$1))))) ++ FADD32(v149$1, FADD32(FMUL32(v79$1, v128$1), FADD32(FMUL32(v78$1, v118$1), FADD32(FMUL32(v76$1, v98$1), FMUL32(v77$1, v108$1))))) ++ FADD32(v148$1, FADD32(FMUL32(v79$1, v127$1), FADD32(FMUL32(v78$1, v117$1), FADD32(FMUL32(v76$1, v97$1), FMUL32(v77$1, v107$1))))) ++ FADD32($sum6.0$1[32:0], FADD32(FMUL32(v79$1, v126$1), FADD32(FMUL32(v78$1, v116$1), FADD32(FMUL32(v76$1, v96$1), FMUL32(v77$1, v106$1))))), FADD32(v153$1, FADD32(FMUL32(v90$1, v129$1), FADD32(FMUL32(v89$1, v119$1), FADD32(FMUL32(v87$1, v99$1), FMUL32(v88$1, v109$1))))) ++ FADD32(v152$1, FADD32(FMUL32(v90$1, v128$1), FADD32(FMUL32(v89$1, v118$1), FADD32(FMUL32(v87$1, v98$1), FMUL32(v88$1, v108$1))))) ++ FADD32(v151$1, FADD32(FMUL32(v90$1, v127$1), FADD32(FMUL32(v89$1, v117$1), FADD32(FMUL32(v87$1, v97$1), FMUL32(v88$1, v107$1))))) ++ FADD32($sum7.0$1[32:0], FADD32(FMUL32(v90$1, v126$1), FADD32(FMUL32(v89$1, v116$1), FADD32(FMUL32(v87$1, v96$1), FMUL32(v88$1, v106$1))))), BV32_ADD($i.0, 4bv32);
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2, $sum4.0$2, $sum5.0$2, $sum6.0$2, $sum7.0$2 := FADD32(v132$2, FADD32(FMUL32(v13$2, v129$2), FADD32(FMUL32(v12$2, v119$2), FADD32(FMUL32(v10$2, v99$2), FMUL32(v11$2, v109$2))))) ++ FADD32(v131$2, FADD32(FMUL32(v13$2, v128$2), FADD32(FMUL32(v12$2, v118$2), FADD32(FMUL32(v10$2, v98$2), FMUL32(v11$2, v108$2))))) ++ FADD32(v130$2, FADD32(FMUL32(v13$2, v127$2), FADD32(FMUL32(v12$2, v117$2), FADD32(FMUL32(v10$2, v97$2), FMUL32(v11$2, v107$2))))) ++ FADD32($sum0.0$2[32:0], FADD32(FMUL32(v13$2, v126$2), FADD32(FMUL32(v12$2, v116$2), FADD32(FMUL32(v10$2, v96$2), FMUL32(v11$2, v106$2))))), FADD32(v135$2, FADD32(FMUL32(v24$2, v129$2), FADD32(FMUL32(v23$2, v119$2), FADD32(FMUL32(v21$2, v99$2), FMUL32(v22$2, v109$2))))) ++ FADD32(v134$2, FADD32(FMUL32(v24$2, v128$2), FADD32(FMUL32(v23$2, v118$2), FADD32(FMUL32(v21$2, v98$2), FMUL32(v22$2, v108$2))))) ++ FADD32(v133$2, FADD32(FMUL32(v24$2, v127$2), FADD32(FMUL32(v23$2, v117$2), FADD32(FMUL32(v21$2, v97$2), FMUL32(v22$2, v107$2))))) ++ FADD32($sum1.0$2[32:0], FADD32(FMUL32(v24$2, v126$2), FADD32(FMUL32(v23$2, v116$2), FADD32(FMUL32(v21$2, v96$2), FMUL32(v22$2, v106$2))))), FADD32(v138$2, FADD32(FMUL32(v35$2, v129$2), FADD32(FMUL32(v34$2, v119$2), FADD32(FMUL32(v32$2, v99$2), FMUL32(v33$2, v109$2))))) ++ FADD32(v137$2, FADD32(FMUL32(v35$2, v128$2), FADD32(FMUL32(v34$2, v118$2), FADD32(FMUL32(v32$2, v98$2), FMUL32(v33$2, v108$2))))) ++ FADD32(v136$2, FADD32(FMUL32(v35$2, v127$2), FADD32(FMUL32(v34$2, v117$2), FADD32(FMUL32(v32$2, v97$2), FMUL32(v33$2, v107$2))))) ++ FADD32($sum2.0$2[32:0], FADD32(FMUL32(v35$2, v126$2), FADD32(FMUL32(v34$2, v116$2), FADD32(FMUL32(v32$2, v96$2), FMUL32(v33$2, v106$2))))), FADD32(v141$2, FADD32(FMUL32(v46$2, v129$2), FADD32(FMUL32(v45$2, v119$2), FADD32(FMUL32(v43$2, v99$2), FMUL32(v44$2, v109$2))))) ++ FADD32(v140$2, FADD32(FMUL32(v46$2, v128$2), FADD32(FMUL32(v45$2, v118$2), FADD32(FMUL32(v43$2, v98$2), FMUL32(v44$2, v108$2))))) ++ FADD32(v139$2, FADD32(FMUL32(v46$2, v127$2), FADD32(FMUL32(v45$2, v117$2), FADD32(FMUL32(v43$2, v97$2), FMUL32(v44$2, v107$2))))) ++ FADD32($sum3.0$2[32:0], FADD32(FMUL32(v46$2, v126$2), FADD32(FMUL32(v45$2, v116$2), FADD32(FMUL32(v43$2, v96$2), FMUL32(v44$2, v106$2))))), FADD32(v144$2, FADD32(FMUL32(v57$2, v129$2), FADD32(FMUL32(v56$2, v119$2), FADD32(FMUL32(v54$2, v99$2), FMUL32(v55$2, v109$2))))) ++ FADD32(v143$2, FADD32(FMUL32(v57$2, v128$2), FADD32(FMUL32(v56$2, v118$2), FADD32(FMUL32(v54$2, v98$2), FMUL32(v55$2, v108$2))))) ++ FADD32(v142$2, FADD32(FMUL32(v57$2, v127$2), FADD32(FMUL32(v56$2, v117$2), FADD32(FMUL32(v54$2, v97$2), FMUL32(v55$2, v107$2))))) ++ FADD32($sum4.0$2[32:0], FADD32(FMUL32(v57$2, v126$2), FADD32(FMUL32(v56$2, v116$2), FADD32(FMUL32(v54$2, v96$2), FMUL32(v55$2, v106$2))))), FADD32(v147$2, FADD32(FMUL32(v68$2, v129$2), FADD32(FMUL32(v67$2, v119$2), FADD32(FMUL32(v65$2, v99$2), FMUL32(v66$2, v109$2))))) ++ FADD32(v146$2, FADD32(FMUL32(v68$2, v128$2), FADD32(FMUL32(v67$2, v118$2), FADD32(FMUL32(v65$2, v98$2), FMUL32(v66$2, v108$2))))) ++ FADD32(v145$2, FADD32(FMUL32(v68$2, v127$2), FADD32(FMUL32(v67$2, v117$2), FADD32(FMUL32(v65$2, v97$2), FMUL32(v66$2, v107$2))))) ++ FADD32($sum5.0$2[32:0], FADD32(FMUL32(v68$2, v126$2), FADD32(FMUL32(v67$2, v116$2), FADD32(FMUL32(v65$2, v96$2), FMUL32(v66$2, v106$2))))), FADD32(v150$2, FADD32(FMUL32(v79$2, v129$2), FADD32(FMUL32(v78$2, v119$2), FADD32(FMUL32(v76$2, v99$2), FMUL32(v77$2, v109$2))))) ++ FADD32(v149$2, FADD32(FMUL32(v79$2, v128$2), FADD32(FMUL32(v78$2, v118$2), FADD32(FMUL32(v76$2, v98$2), FMUL32(v77$2, v108$2))))) ++ FADD32(v148$2, FADD32(FMUL32(v79$2, v127$2), FADD32(FMUL32(v78$2, v117$2), FADD32(FMUL32(v76$2, v97$2), FMUL32(v77$2, v107$2))))) ++ FADD32($sum6.0$2[32:0], FADD32(FMUL32(v79$2, v126$2), FADD32(FMUL32(v78$2, v116$2), FADD32(FMUL32(v76$2, v96$2), FMUL32(v77$2, v106$2))))), FADD32(v153$2, FADD32(FMUL32(v90$2, v129$2), FADD32(FMUL32(v89$2, v119$2), FADD32(FMUL32(v87$2, v99$2), FMUL32(v88$2, v109$2))))) ++ FADD32(v152$2, FADD32(FMUL32(v90$2, v128$2), FADD32(FMUL32(v89$2, v118$2), FADD32(FMUL32(v87$2, v98$2), FMUL32(v88$2, v108$2))))) ++ FADD32(v151$2, FADD32(FMUL32(v90$2, v127$2), FADD32(FMUL32(v89$2, v117$2), FADD32(FMUL32(v87$2, v97$2), FMUL32(v88$2, v107$2))))) ++ FADD32($sum7.0$2[32:0], FADD32(FMUL32(v90$2, v126$2), FADD32(FMUL32(v89$2, v116$2), FADD32(FMUL32(v87$2, v96$2), FMUL32(v88$2, v106$2)))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb47:
    assume {:partition} v125;
    $47 := 8191bv32;
    goto $134;

  $truebb46:
    assume {:partition} v124;
    $46 := 0bv32;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit15;

  $truebb43:
    assume {:partition} v115;
    $43 := 8191bv32;
    goto $123;

  $truebb42:
    assume {:partition} v114;
    $42 := 0bv32;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit18;

  $truebb39:
    assume {:partition} v105;
    $39 := 8191bv32;
    goto $112;

  $truebb38:
    assume {:partition} v104;
    $38 := 0bv32;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit21;

  $truebb35:
    assume {:partition} v95;
    $35 := 8191bv32;
    goto $101;

  $truebb34:
    assume {:partition} v94;
    $34 := 0bv32;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit24;

  $truebb29:
    assume {:partition} v84;
    $29 := 8191bv32;
    goto $84;

  $truebb28:
    assume {:partition} v83;
    $28 := 0bv32;
    goto $85;

  $truebb25:
    assume {:partition} v73;
    $25 := 8191bv32;
    goto $73;

  $truebb24:
    assume {:partition} v72;
    $24 := 0bv32;
    goto $74;

  $truebb21:
    assume {:partition} v62;
    $21 := 8191bv32;
    goto $62;

  $truebb20:
    assume {:partition} v61;
    $20 := 0bv32;
    goto $63;

  $truebb17:
    assume {:partition} v51;
    $17 := 8191bv32;
    goto $51;

  $truebb16:
    assume {:partition} v50;
    $16 := 0bv32;
    goto $52;

  $truebb13:
    assume {:partition} v40;
    $13 := 8191bv32;
    goto $40;

  $truebb12:
    assume {:partition} v39;
    $12 := 0bv32;
    goto $41;

  $truebb9:
    assume {:partition} v29;
    $9 := 8191bv32;
    goto $29;

  $truebb8:
    assume {:partition} v28;
    $8 := 0bv32;
    goto $30;

  $truebb5:
    assume {:partition} v18;
    $5 := 8191bv32;
    goto $18;

  $truebb4:
    assume {:partition} v17;
    $4 := 0bv32;
    goto $19;

  $truebb1:
    assume {:partition} v7;
    $1 := 8191bv32;
    goto $7;

  $truebb0:
    assume {:partition} v6;
    $0 := 0bv32;
    goto $8;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 4bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$matrixA: bv32;

procedure {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _READ_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_READ_$$matrixA(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixA);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixA: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$matrixA, _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _WRITE_HAS_OCCURRED_$$matrixA);
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



procedure _CHECK_WRITE_$$matrixA(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_ATOMIC_$$matrixA(_P: bool, _offset: bv32);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



const _WATCHED_VALUE_$$matrixB: bv32;

procedure {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _READ_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_READ_$$matrixB(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixB);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixB: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$matrixB, _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _WRITE_HAS_OCCURRED_$$matrixB);
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



procedure _CHECK_WRITE_$$matrixB(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_ATOMIC_$$matrixB(_P: bool, _offset: bv32);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



const _WATCHED_VALUE_$$matrixC: bv32;

procedure {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _READ_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_READ_$$matrixC(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixC);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixC: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _WRITE_HAS_OCCURRED_$$matrixC);
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



procedure _CHECK_WRITE_$$matrixC(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_ATOMIC_$$matrixC(_P: bool, _offset: bv32);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;
