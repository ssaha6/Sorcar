type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



var {:source_name "SrcDst"} {:global} $$SrcDst: [bv32]bv8;

axiom {:array_info "$$SrcDst"} {:global} {:elem_width 8} {:source_name "SrcDst"} {:source_elem_width 16} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$SrcDst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$SrcDst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$SrcDst: bool;

axiom {:array_info "$$sh0.i"} {:elem_width 8} {:source_name "sh0.i"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$sh1.i"} {:elem_width 8} {:source_name "sh1.i"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$sh2.i"} {:elem_width 8} {:source_name "sh2.i"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$sh3.i"} {:elem_width 8} {:source_name "sh3.i"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "block"} {:group_shared} $$_ZZ18CUDAkernelShortDCTPsiE5block: [bv1][bv32]bv8;

axiom {:array_info "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:group_shared} {:elem_width 8} {:source_name "block"} {:source_elem_width 16} {:source_dimensions "1088"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 16} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block: bool;

const _WATCHED_OFFSET: bv32;

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

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvashr"} BV32_ASHR(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvshl"} BV32_SHL(bv32, bv32) : bv32;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvult"} BV32_ULT(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 16"} BV16_SEXT32(bv16) : bv32;

procedure {:source_name "CUDAkernelShortDCT"} {:kernel} $_Z18CUDAkernelShortDCTPsi($ImgStride: bv32);
  requires {:sourceloc_num 0} {:thread 1} (if $ImgStride == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$SrcDst && !_WRITE_HAS_OCCURRED_$$SrcDst && !_ATOMIC_HAS_OCCURRED_$$SrcDst;
  requires !_READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && !_WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && !_ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
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
  modifies $$_ZZ18CUDAkernelShortDCTPsiE5block, _READ_HAS_OCCURRED_$$SrcDst, _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block, $$SrcDst, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:source_name "CUDAkernelShortDCT"} {:kernel} $_Z18CUDAkernelShortDCTPsi($ImgStride: bv32)
{
  var $i.0$1: bv32;
  var $i.0$2: bv32;
  var $i1.0$1: bv32;
  var $i1.0$2: bv32;
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v51$1: bv16;
  var v51$2: bv16;
  var v52$1: bv16;
  var v52$2: bv16;
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
  var v48$1: bv32;
  var v48$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v50$1: bv16;
  var v50$2: bv16;
  var v2$1: bool;
  var v2$2: bool;
  var v37$1: bv32;
  var v37$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v41$1: bv32;
  var v41$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v58$1: bv8;
  var v58$2: bv8;
  var v59$1: bv8;
  var v59$2: bv8;
  var v60$1: bv8;
  var v60$2: bv8;
  var v61$1: bv8;
  var v61$2: bv8;
  var v62$1: bv8;
  var v62$2: bv8;
  var v63$1: bv8;
  var v63$2: bv8;
  var v64$1: bv8;
  var v64$2: bv8;
  var v65$1: bv8;
  var v65$2: bv8;
  var v66$1: bv8;
  var v66$2: bv8;
  var v67$1: bv8;
  var v67$2: bv8;
  var v68$1: bv8;
  var v68$2: bv8;
  var v69$1: bv8;
  var v69$2: bv8;
  var v70$1: bv8;
  var v70$2: bv8;
  var v71$1: bv8;
  var v71$2: bv8;
  var v72$1: bv8;
  var v72$2: bv8;
  var v73$1: bv8;
  var v73$2: bv8;
  var v74$1: bv8;
  var v74$2: bv8;
  var v75$1: bv8;
  var v75$2: bv8;
  var v76$1: bv32;
  var v76$2: bv32;
  var v77$1: bv8;
  var v77$2: bv8;
  var v78$1: bv8;
  var v78$2: bv8;
  var v79$1: bv32;
  var v79$2: bv32;
  var v80$1: bv8;
  var v80$2: bv8;
  var v81$1: bv8;
  var v81$2: bv8;
  var v82$1: bv32;
  var v82$2: bv32;
  var v83$1: bv8;
  var v83$2: bv8;
  var v84$1: bv8;
  var v84$2: bv8;
  var v85$1: bv32;
  var v85$2: bv32;
  var v86$1: bv8;
  var v86$2: bv8;
  var v87$1: bv8;
  var v87$2: bv8;
  var v88$1: bv32;
  var v88$2: bv32;
  var v89$1: bv8;
  var v89$2: bv8;
  var v90$1: bv8;
  var v90$2: bv8;
  var v91$1: bv32;
  var v91$2: bv32;
  var v92$1: bv8;
  var v92$2: bv8;
  var v93$1: bv8;
  var v93$2: bv8;
  var v94$1: bv32;
  var v94$2: bv32;
  var v95$1: bv8;
  var v95$2: bv8;
  var v96$1: bv8;
  var v96$2: bv8;
  var v97$1: bv32;
  var v97$2: bv32;
  var v98$1: bv32;
  var v98$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v101$1: bv32;
  var v101$2: bv32;
  var v102$1: bv32;
  var v102$2: bv32;
  var v103$1: bv32;
  var v103$2: bv32;
  var v104$1: bv32;
  var v104$2: bv32;
  var v105$1: bv32;
  var v105$2: bv32;
  var v106$1: bv32;
  var v106$2: bv32;
  var v107$1: bv32;
  var v107$2: bv32;
  var v108$1: bv16;
  var v108$2: bv16;
  var v109$1: bv16;
  var v109$2: bv16;
  var v110$1: bv16;
  var v110$2: bv16;
  var v111$1: bv16;
  var v111$2: bv16;
  var v112$1: bv32;
  var v112$2: bv32;
  var v113$1: bv32;
  var v113$2: bv32;
  var v114$1: bv32;
  var v114$2: bv32;
  var v115$1: bv32;
  var v115$2: bv32;
  var v116$1: bv32;
  var v116$2: bv32;
  var v117$1: bv32;
  var v117$2: bv32;
  var v118$1: bv32;
  var v118$2: bv32;
  var v119$1: bv32;
  var v119$2: bv32;
  var v120$1: bv16;
  var v120$2: bv16;
  var v121$1: bv16;
  var v121$2: bv16;
  var v8$1: bv8;
  var v8$2: bv8;
  var v9$1: bv8;
  var v9$2: bv8;
  var v10$1: bv32;
  var v10$2: bv32;
  var v11$1: bv8;
  var v11$2: bv8;
  var v12$1: bv8;
  var v12$2: bv8;
  var v13$1: bv32;
  var v13$2: bv32;
  var v4$1: bv8;
  var v4$2: bv8;
  var v5$1: bv8;
  var v5$2: bv8;
  var v6$1: bv8;
  var v6$2: bv8;
  var v7$1: bv8;
  var v7$2: bv8;
  var v53$1: bv16;
  var v53$2: bv16;
  var v54$1: bv16;
  var v54$2: bv16;
  var v55$1: bv16;
  var v55$2: bv16;
  var v56$1: bv16;
  var v56$2: bv16;
  var v57$1: bv16;
  var v57$2: bv16;
  var v3$1: bool;
  var v3$2: bool;
  var v20$1: bv8;
  var v20$2: bv8;
  var v21$1: bv8;
  var v21$2: bv8;
  var v22$1: bv32;
  var v22$2: bv32;
  var v23$1: bv8;
  var v23$2: bv8;
  var v24$1: bv8;
  var v24$2: bv8;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bv8;
  var v26$2: bv8;
  var v27$1: bv8;
  var v27$2: bv8;
  var v28$1: bv32;
  var v28$2: bv32;
  var v29$1: bv8;
  var v29$2: bv8;
  var v30$1: bv8;
  var v30$2: bv8;
  var v31$1: bv32;
  var v31$2: bv32;
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
  var v14$1: bv8;
  var v14$2: bv8;
  var v15$1: bv8;
  var v15$2: bv8;
  var v16$1: bv32;
  var v16$2: bv32;
  var v17$1: bv8;
  var v17$2: bv8;
  var v18$1: bv8;
  var v18$2: bv8;
  var v19$1: bv32;
  var v19$2: bv32;
  var v122$1: bv16;
  var v122$2: bv16;
  var v123$1: bv16;
  var v123$2: bv16;
  var v124$1: bv8;
  var v124$2: bv8;
  var v125$1: bv8;
  var v125$2: bv8;
  var v126$1: bv8;
  var v126$2: bv8;
  var v127$1: bv8;
  var v127$2: bv8;
  var v128$1: bv8;
  var v128$2: bv8;
  var v129$1: bv8;
  var v129$2: bv8;
  var v130$1: bv8;
  var v130$2: bv8;
  var v131$1: bv8;
  var v131$2: bv8;
  var v132$1: bv8;
  var v132$2: bv8;
  var v133$1: bv8;
  var v133$2: bv8;
  var v134$1: bv8;
  var v134$2: bv8;
  var v135$1: bv8;
  var v135$2: bv8;
  var v136$1: bv8;
  var v136$2: bv8;
  var v137$1: bv8;
  var v137$2: bv8;
  var v138$1: bv8;
  var v138$2: bv8;
  var v139$1: bv8;
  var v139$2: bv8;
  var v140$1: bool;
  var v140$2: bool;
  var v141$1: bool;
  var v141$2: bool;
  var v142$1: bv8;
  var v142$2: bv8;
  var v143$1: bv8;
  var v143$2: bv8;
  var v144$1: bv8;
  var v144$2: bv8;
  var v145$1: bv8;
  var v145$2: bv8;
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
  var _READ_HAS_OCCURRED_$$SrcDst$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block$ghost$$2: bool;
  var _WRITE_HAS_OCCURRED_$$SrcDst$ghost$$8: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2);
    v1$1 := BV32_MUL(local_id_z$1, 8bv32);
    v1$2 := BV32_MUL(local_id_z$2, 8bv32);
    v2$1 := BV32_SLT(v0$1, 16bv32);
    v2$2 := BV32_SLT(v0$2, 16bv32);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p7$1 := false;
    p7$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    $i.0$1 := (if p0$1 then 0bv32 else $i.0$1);
    $i.0$2 := (if p0$2 then 0bv32 else $i.0$2);
    p1$1 := (if p0$1 then true else p1$1);
    p1$2 := (if p0$2 then true else p1$2);
    _READ_HAS_OCCURRED_$$SrcDst$ghost$$2 := _READ_HAS_OCCURRED_$$SrcDst;
    _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block$ghost$$2 := _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $2;

  $2:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b21 ==> !p0$1 ==> _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block$ghost$$2 == _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b20 ==> _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), BV32_ADD(BV32_MUL(BV32_MUL(0bv32, 17bv32), 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, 8bv32), 34bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32)), 2bv32))) || BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(0bv32, 17bv32), 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, 8bv32), 34bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32)), 2bv32)), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(0bv32, 17bv32), 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, 8bv32), 34bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32)), 2bv32)), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(BV32_MUL(1bv32, 17bv32), 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(0bv32, 17bv32), 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_MUL(local_id_z$1, 8bv32), 34bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32)), 2bv32)), 3bv32));
    assert {:tag "disabledMaintainsInstrumentation"} _b19 ==> !p0$1 ==> _READ_HAS_OCCURRED_$$SrcDst$ghost$$2 == _READ_HAS_OCCURRED_$$SrcDst;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b18 ==> _READ_HAS_OCCURRED_$$SrcDst ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32))) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 3bv32));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p1"} {:dominator_predicate "p0"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b17 ==> _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$SrcDst ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b15 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32) && BV32_SLT($i.0$1, 8bv32) ==> p1$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b15 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2), 16bv32) && BV32_SLT($i.0$2, 8bv32) ==> p1$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p1$1 ==> _b14 ==> p1$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p1$2 ==> _b14 ==> p1$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2), 16bv32);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b13 ==> BV32_UGE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b13 ==> BV32_UGE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b12 ==> BV32_ULE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b12 ==> BV32_ULE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b11 ==> BV32_SGE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b11 ==> BV32_SGE($i.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p1$1 ==> _b10 ==> BV32_SLE($i.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p1$2 ==> _b10 ==> BV32_SLE($i.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p1$1 ==> _b9 ==> BV32_SLE(0bv32, $i.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p1$2 ==> _b9 ==> BV32_SLE(0bv32, $i.0$2);
    assert {:block_sourceloc} {:sourceloc_num 3} p1$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32)), 4bv32), 17bv32) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 5} {:thread 1} (if _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> BV32_ULT(BV32_UDIV(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32)), 4bv32), 17bv32), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$SrcDst ==> BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32)), 4bv32), BV32_SDIV($ImgStride, 2bv32)) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$SrcDst ==> BV32_ULT(BV32_UDIV(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32)), 4bv32), BV32_SDIV($ImgStride, 2bv32)), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    v3$1 := (if p1$1 then BV32_SLT($i.0$1, 8bv32) else v3$1);
    v3$2 := (if p1$2 then BV32_SLT($i.0$2, 8bv32) else v3$2);
    p2$1 := false;
    p2$2 := false;
    p2$1 := (if p1$1 && v3$1 then v3$1 else p2$1);
    p2$2 := (if p1$2 && v3$2 then v3$2 else p2$2);
    p1$1 := (if p1$1 && !v3$1 then v3$1 else p1$1);
    p1$2 := (if p1$2 && !v3$2 then v3$2 else p1$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$SrcDst(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$SrcDst(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$SrcDst"} true;
    v4$1 := (if p2$1 then $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32))] else v4$1);
    v4$2 := (if p2$2 then $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32))] else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_READ_$$SrcDst(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 10} _CHECK_READ_$$SrcDst(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$SrcDst"} true;
    v5$1 := (if p2$1 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)] else v5$1);
    v5$2 := (if p2$2 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)] else v5$2);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$SrcDst(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$SrcDst(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$SrcDst"} true;
    v6$1 := (if p2$1 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)] else v6$1);
    v6$2 := (if p2$2 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)] else v6$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_READ_$$SrcDst(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 12} _CHECK_READ_$$SrcDst(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32), $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$SrcDst"} true;
    v7$1 := (if p2$1 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)] else v7$1);
    v7$2 := (if p2$2 then $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)] else v7$2);
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), v4$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)));
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32))] := (if p2$1 then v4$1 else $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32))]);
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32))] := (if p2$2 then v4$2 else $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32))]);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 1bv32), v5$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 1bv32), v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 1bv32)] := (if p2$1 then v5$1 else $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 1bv32)]);
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 1bv32)] := (if p2$2 then v5$2 else $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 1bv32)]);
    call {:sourceloc} {:sourceloc_num 15} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 2bv32), v6$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 15} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 2bv32), v6$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 2bv32)] := (if p2$1 then v6$1 else $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 2bv32)]);
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 2bv32)] := (if p2$2 then v6$2 else $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 2bv32)]);
    call {:sourceloc} {:sourceloc_num 16} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 3bv32), v7$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 16} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 16} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(p2$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 3bv32), v7$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 3bv32)] := (if p2$1 then v7$1 else $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$1, 17bv32), 4bv32)), 3bv32)]);
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 3bv32)] := (if p2$2 then v7$2 else $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i.0$2, 17bv32), 4bv32)), 3bv32)]);
    $i.0$1 := (if p2$1 then BV32_ADD($i.0$1, 1bv32) else $i.0$1);
    $i.0$2 := (if p2$2 then BV32_ADD($i.0$2, 1bv32) else $i.0$2);
    p1$1 := (if p2$1 then true else p1$1);
    p1$2 := (if p2$2 then true else p1$2);
    goto $2.backedge, __partitioned_block_$2.tail_0;

  __partitioned_block_$2.tail_0:
    assume !p1$1 && !p1$2;
    goto __partitioned_block_$2.tail_1;

  __partitioned_block_$2.tail_1:
    call {:sourceloc_num 20} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v8$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32))];
    v8$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32))];
    call {:sourceloc} {:sourceloc_num 22} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 22} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 22} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v9$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)];
    v9$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)];
    v10$1 := BV16_SEXT32(v9$1 ++ v8$1);
    v10$2 := BV16_SEXT32(v9$2 ++ v8$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 23} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v11$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)];
    v11$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)];
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v12$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)];
    v12$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)];
    v13$1 := BV16_SEXT32(v12$1 ++ v11$1);
    v13$2 := BV16_SEXT32(v12$2 ++ v11$2);
    call {:sourceloc} {:sourceloc_num 25} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 25} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 25} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v14$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)];
    v14$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)];
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v15$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)];
    v15$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)];
    v16$1 := BV16_SEXT32(v15$1 ++ v14$1);
    v16$2 := BV16_SEXT32(v15$2 ++ v14$2);
    call {:sourceloc} {:sourceloc_num 27} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 27} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 27} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v17$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)];
    v17$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)];
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v18$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)];
    v18$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)];
    v19$1 := BV16_SEXT32(v18$1 ++ v17$1);
    v19$2 := BV16_SEXT32(v18$2 ++ v17$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v20$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)];
    v20$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)];
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v21$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)];
    v21$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)];
    v22$1 := BV16_SEXT32(v21$1 ++ v20$1);
    v22$2 := BV16_SEXT32(v21$2 ++ v20$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v23$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)];
    v23$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)];
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v24$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)];
    v24$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)];
    v25$1 := BV16_SEXT32(v24$1 ++ v23$1);
    v25$2 := BV16_SEXT32(v24$2 ++ v23$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v26$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)];
    v26$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)];
    call {:sourceloc} {:sourceloc_num 34} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 34} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 34} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v27$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)];
    v27$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)];
    v28$1 := BV16_SEXT32(v27$1 ++ v26$1);
    v28$2 := BV16_SEXT32(v27$2 ++ v26$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v29$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)];
    v29$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)];
    call {:sourceloc} {:sourceloc_num 36} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 36} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 36} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v30$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)];
    v30$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)];
    v31$1 := BV16_SEXT32(v30$1 ++ v29$1);
    v31$2 := BV16_SEXT32(v30$2 ++ v29$2);
    v32$1 := BV32_ADD(v31$1, v10$1);
    v32$2 := BV32_ADD(v31$2, v10$2);
    v33$1 := BV32_ADD(v28$1, v13$1);
    v33$2 := BV32_ADD(v28$2, v13$2);
    v34$1 := BV32_ADD(v25$1, v16$1);
    v34$2 := BV32_ADD(v25$2, v16$2);
    v35$1 := BV32_ADD(v22$1, v19$1);
    v35$2 := BV32_ADD(v22$2, v19$2);
    v36$1 := BV32_SUB(v16$1, v25$1);
    v36$2 := BV32_SUB(v16$2, v25$2);
    v37$1 := BV32_SUB(v13$1, v28$1);
    v37$2 := BV32_SUB(v13$2, v28$2);
    v38$1 := BV32_ADD(v35$1, v32$1);
    v38$2 := BV32_ADD(v35$2, v32$2);
    v39$1 := BV32_ADD(v34$1, v33$1);
    v39$2 := BV32_ADD(v34$2, v33$2);
    v40$1 := BV32_SUB(v33$1, v34$1);
    v40$2 := BV32_SUB(v33$2, v34$2);
    v41$1 := BV32_SUB(v32$1, v35$1);
    v41$2 := BV32_SUB(v32$2, v35$2);
    v42$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v37$1, v36$1), 23170bv32), 4096bv32), 13bv32);
    v42$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v37$2, v36$2), 23170bv32), 4096bv32), 13bv32);
    v43$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v37$1, v36$1), 23170bv32), 4096bv32), 13bv32);
    v43$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v37$2, v36$2), 23170bv32), 4096bv32), 13bv32);
    v44$1 := BV32_SHL(BV32_SUB(v19$1, v22$1), 2bv32);
    v44$2 := BV32_SHL(BV32_SUB(v19$2, v22$2), 2bv32);
    v45$1 := BV32_SHL(BV32_SUB(v10$1, v31$1), 2bv32);
    v45$2 := BV32_SHL(BV32_SUB(v10$2, v31$2), 2bv32);
    v46$1 := BV32_ADD(v44$1, v43$1);
    v46$2 := BV32_ADD(v44$2, v43$2);
    v47$1 := BV32_SUB(v44$1, v43$1);
    v47$2 := BV32_SUB(v44$2, v43$2);
    v48$1 := BV32_SUB(v45$1, v42$1);
    v48$2 := BV32_SUB(v45$2, v42$2);
    v49$1 := BV32_ADD(v45$1, v42$1);
    v49$2 := BV32_ADD(v45$2, v42$2);
    v50$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v38$1, v39$1), 23170bv32), 32768bv32), 16bv32)[16:0];
    v50$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v38$2, v39$2), 23170bv32), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 37} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), v50$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 37} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), v50$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32))] := v50$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32))] := v50$2[8:0];
    call {:sourceloc} {:sourceloc_num 38} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32), v50$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 38} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 38} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32), v50$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)] := v50$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 1bv32)] := v50$2[16:8];
    v51$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v41$1, 30274bv32), BV32_MUL(v40$1, 12540bv32)), 32768bv32), 16bv32)[16:0];
    v51$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v41$2, 30274bv32), BV32_MUL(v40$2, 12540bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 39} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32), v51$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 39} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 39} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32), v51$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)] := v51$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 136bv32)] := v51$2[8:0];
    call {:sourceloc} {:sourceloc_num 40} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32), v51$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 40} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 40} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32), v51$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)] := v51$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 137bv32)] := v51$2[16:8];
    v52$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v38$1, v39$1), 23170bv32), 32768bv32), 16bv32)[16:0];
    v52$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v38$2, v39$2), 23170bv32), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 41} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32), v52$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 41} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 41} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32), v52$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)] := v52$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 272bv32)] := v52$2[8:0];
    call {:sourceloc} {:sourceloc_num 42} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32), v52$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 42} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 42} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32), v52$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)] := v52$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 273bv32)] := v52$2[16:8];
    v53$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v41$1, 12540bv32), BV32_MUL(v40$1, 30274bv32)), 32768bv32), 16bv32)[16:0];
    v53$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v41$2, 12540bv32), BV32_MUL(v40$2, 30274bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32), v53$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32), v53$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)] := v53$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 408bv32)] := v53$2[8:0];
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32), v53$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32), v53$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)] := v53$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 409bv32)] := v53$2[16:8];
    v54$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v49$1, 8035bv32), BV32_MUL(v46$1, 1598bv32)), 32768bv32), 16bv32)[16:0];
    v54$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v49$2, 8035bv32), BV32_MUL(v46$2, 1598bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 45} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32), v54$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 45} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 45} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32), v54$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)] := v54$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 68bv32)] := v54$2[8:0];
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32), v54$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32), v54$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)] := v54$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 69bv32)] := v54$2[16:8];
    v55$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v48$1, 6811bv32), BV32_MUL(v47$1, 4551bv32)), 32768bv32), 16bv32)[16:0];
    v55$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v48$2, 6811bv32), BV32_MUL(v47$2, 4551bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32), v55$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32), v55$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)] := v55$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 204bv32)] := v55$2[8:0];
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32), v55$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32), v55$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)] := v55$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 205bv32)] := v55$2[16:8];
    v56$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v48$1, 4551bv32), BV32_MUL(v47$1, 6811bv32)), 32768bv32), 16bv32)[16:0];
    v56$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v48$2, 4551bv32), BV32_MUL(v47$2, 6811bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32), v56$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32), v56$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)] := v56$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 340bv32)] := v56$2[8:0];
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32), v56$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32), v56$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)] := v56$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 341bv32)] := v56$2[16:8];
    v57$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v49$1, 1598bv32), BV32_MUL(v46$1, 8035bv32)), 32768bv32), 16bv32)[16:0];
    v57$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v49$2, 1598bv32), BV32_MUL(v46$2, 8035bv32)), 32768bv32), 16bv32)[16:0];
    call {:sourceloc} {:sourceloc_num 51} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32), v57$1[8:0], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 51} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 51} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32), v57$2[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)] := v57$1[8:0];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 476bv32)] := v57$2[8:0];
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32), v57$1[16:8], $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32), v57$2[16:8]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$1, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$1, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$1, 1bv32), BV32_AND(BV32_ASHR(v0$1, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)] := v57$1[16:8];
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v1$2, 34bv32), 2bv32), BV32_MUL(BV32_OR(BV32_AND(v0$2, 4294967264bv32), BV32_AND(BV32_OR(BV32_SHL(v0$2, 1bv32), BV32_AND(BV32_ASHR(v0$2, 4bv32), 1bv32)), 31bv32)), 2bv32)), 477bv32)] := v57$2[16:8];
    goto __partitioned_block_$2.tail_2;

  __partitioned_block_$2.tail_2:
    call {:sourceloc_num 53} $bugle_barrier_duplicated_1(1bv1, 1bv1);
    call {:sourceloc} {:sourceloc_num 54} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32))]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 54} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v58$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32))];
    v58$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32))];
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v59$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32)];
    v59$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32)];
    call {:sourceloc} {:sourceloc_num 56} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 56} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v60$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32)];
    v60$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32)];
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v61$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32)];
    v61$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32)];
    $$sh0.i$0bv32$1 := v58$1;
    $$sh0.i$0bv32$2 := v58$2;
    $$sh0.i$1bv32$1 := v59$1;
    $$sh0.i$1bv32$2 := v59$2;
    $$sh0.i$2bv32$1 := v60$1;
    $$sh0.i$2bv32$2 := v60$2;
    $$sh0.i$3bv32$1 := v61$1;
    $$sh0.i$3bv32$2 := v61$2;
    call {:sourceloc} {:sourceloc_num 62} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 62} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v62$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32)];
    v62$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32)];
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v63$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32)];
    v63$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32)];
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v64$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32)];
    v64$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32)];
    call {:sourceloc} {:sourceloc_num 65} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 65} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v65$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32)];
    v65$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32)];
    $$sh1.i$0bv32$1 := v62$1;
    $$sh1.i$0bv32$2 := v62$2;
    $$sh1.i$1bv32$1 := v63$1;
    $$sh1.i$1bv32$2 := v63$2;
    $$sh1.i$2bv32$1 := v64$1;
    $$sh1.i$2bv32$2 := v64$2;
    $$sh1.i$3bv32$1 := v65$1;
    $$sh1.i$3bv32$2 := v65$2;
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v66$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32)];
    v66$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32)];
    call {:sourceloc} {:sourceloc_num 71} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 71} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v67$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32)];
    v67$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32)];
    call {:sourceloc} {:sourceloc_num 72} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 72} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v68$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32)];
    v68$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32)];
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v69$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32)];
    v69$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32)];
    $$sh2.i$0bv32$1 := v66$1;
    $$sh2.i$0bv32$2 := v66$2;
    $$sh2.i$1bv32$1 := v67$1;
    $$sh2.i$1bv32$2 := v67$2;
    $$sh2.i$2bv32$1 := v68$1;
    $$sh2.i$2bv32$2 := v68$2;
    $$sh2.i$3bv32$1 := v69$1;
    $$sh2.i$3bv32$2 := v69$2;
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v70$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32)];
    v70$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32)];
    call {:sourceloc} {:sourceloc_num 79} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 79} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v71$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32)];
    v71$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32)];
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v72$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32)];
    v72$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32)];
    call {:sourceloc} {:sourceloc_num 81} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 81} _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32), $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    v73$1 := $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32)];
    v73$2 := $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32)];
    $$sh3.i$0bv32$1 := v70$1;
    $$sh3.i$0bv32$2 := v70$2;
    $$sh3.i$1bv32$1 := v71$1;
    $$sh3.i$1bv32$2 := v71$2;
    $$sh3.i$2bv32$1 := v72$1;
    $$sh3.i$2bv32$2 := v72$2;
    $$sh3.i$3bv32$1 := v73$1;
    $$sh3.i$3bv32$2 := v73$2;
    v74$1 := $$sh0.i$0bv32$1;
    v74$2 := $$sh0.i$0bv32$2;
    v75$1 := $$sh0.i$1bv32$1;
    v75$2 := $$sh0.i$1bv32$2;
    v76$1 := BV16_SEXT32(v75$1 ++ v74$1);
    v76$2 := BV16_SEXT32(v75$2 ++ v74$2);
    v77$1 := $$sh0.i$2bv32$1;
    v77$2 := $$sh0.i$2bv32$2;
    v78$1 := $$sh0.i$3bv32$1;
    v78$2 := $$sh0.i$3bv32$2;
    v79$1 := BV16_SEXT32(v78$1 ++ v77$1);
    v79$2 := BV16_SEXT32(v78$2 ++ v77$2);
    v80$1 := $$sh1.i$0bv32$1;
    v80$2 := $$sh1.i$0bv32$2;
    v81$1 := $$sh1.i$1bv32$1;
    v81$2 := $$sh1.i$1bv32$2;
    v82$1 := BV16_SEXT32(v81$1 ++ v80$1);
    v82$2 := BV16_SEXT32(v81$2 ++ v80$2);
    v83$1 := $$sh1.i$2bv32$1;
    v83$2 := $$sh1.i$2bv32$2;
    v84$1 := $$sh1.i$3bv32$1;
    v84$2 := $$sh1.i$3bv32$2;
    v85$1 := BV16_SEXT32(v84$1 ++ v83$1);
    v85$2 := BV16_SEXT32(v84$2 ++ v83$2);
    v86$1 := $$sh2.i$0bv32$1;
    v86$2 := $$sh2.i$0bv32$2;
    v87$1 := $$sh2.i$1bv32$1;
    v87$2 := $$sh2.i$1bv32$2;
    v88$1 := BV16_SEXT32(v87$1 ++ v86$1);
    v88$2 := BV16_SEXT32(v87$2 ++ v86$2);
    v89$1 := $$sh2.i$2bv32$1;
    v89$2 := $$sh2.i$2bv32$2;
    v90$1 := $$sh2.i$3bv32$1;
    v90$2 := $$sh2.i$3bv32$2;
    v91$1 := BV16_SEXT32(v90$1 ++ v89$1);
    v91$2 := BV16_SEXT32(v90$2 ++ v89$2);
    v92$1 := $$sh3.i$0bv32$1;
    v92$2 := $$sh3.i$0bv32$2;
    v93$1 := $$sh3.i$1bv32$1;
    v93$2 := $$sh3.i$1bv32$2;
    v94$1 := BV16_SEXT32(v93$1 ++ v92$1);
    v94$2 := BV16_SEXT32(v93$2 ++ v92$2);
    v95$1 := $$sh3.i$2bv32$1;
    v95$2 := $$sh3.i$2bv32$2;
    v96$1 := $$sh3.i$3bv32$1;
    v96$2 := $$sh3.i$3bv32$2;
    v97$1 := BV16_SEXT32(v96$1 ++ v95$1);
    v97$2 := BV16_SEXT32(v96$2 ++ v95$2);
    v98$1 := BV32_ADD(v97$1, v76$1);
    v98$2 := BV32_ADD(v97$2, v76$2);
    v99$1 := BV32_ADD(v94$1, v79$1);
    v99$2 := BV32_ADD(v94$2, v79$2);
    v100$1 := BV32_ADD(v91$1, v82$1);
    v100$2 := BV32_ADD(v91$2, v82$2);
    v101$1 := BV32_ADD(v88$1, v85$1);
    v101$2 := BV32_ADD(v88$2, v85$2);
    v102$1 := BV32_SUB(v82$1, v91$1);
    v102$2 := BV32_SUB(v82$2, v91$2);
    v103$1 := BV32_SUB(v79$1, v94$1);
    v103$2 := BV32_SUB(v79$2, v94$2);
    v104$1 := BV32_ADD(v101$1, v98$1);
    v104$2 := BV32_ADD(v101$2, v98$2);
    v105$1 := BV32_ADD(v100$1, v99$1);
    v105$2 := BV32_ADD(v100$2, v99$2);
    v106$1 := BV32_SUB(v99$1, v100$1);
    v106$2 := BV32_SUB(v99$2, v100$2);
    v107$1 := BV32_SUB(v98$1, v101$1);
    v107$2 := BV32_SUB(v98$2, v101$2);
    v108$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v104$1, v105$1), 23170bv32), 32768bv32), 16bv32)[16:0];
    v108$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v104$2, v105$2), 23170bv32), 32768bv32), 16bv32)[16:0];
    $$sh0.i$0bv32$1 := v108$1[8:0];
    $$sh0.i$0bv32$2 := v108$2[8:0];
    $$sh0.i$1bv32$1 := v108$1[16:8];
    $$sh0.i$1bv32$2 := v108$2[16:8];
    v109$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v104$1, v105$1), 23170bv32), 32768bv32), 16bv32)[16:0];
    v109$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v104$2, v105$2), 23170bv32), 32768bv32), 16bv32)[16:0];
    $$sh2.i$0bv32$1 := v109$1[8:0];
    $$sh2.i$0bv32$2 := v109$2[8:0];
    $$sh2.i$1bv32$1 := v109$1[16:8];
    $$sh2.i$1bv32$2 := v109$2[16:8];
    v110$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v107$1, 30274bv32), BV32_MUL(v106$1, 12540bv32)), 32768bv32), 16bv32)[16:0];
    v110$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v107$2, 30274bv32), BV32_MUL(v106$2, 12540bv32)), 32768bv32), 16bv32)[16:0];
    $$sh1.i$0bv32$1 := v110$1[8:0];
    $$sh1.i$0bv32$2 := v110$2[8:0];
    $$sh1.i$1bv32$1 := v110$1[16:8];
    $$sh1.i$1bv32$2 := v110$2[16:8];
    v111$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v107$1, 12540bv32), BV32_MUL(v106$1, 30274bv32)), 32768bv32), 16bv32)[16:0];
    v111$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v107$2, 12540bv32), BV32_MUL(v106$2, 30274bv32)), 32768bv32), 16bv32)[16:0];
    $$sh3.i$0bv32$1 := v111$1[8:0];
    $$sh3.i$0bv32$2 := v111$2[8:0];
    $$sh3.i$1bv32$1 := v111$1[16:8];
    $$sh3.i$1bv32$2 := v111$2[16:8];
    v112$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v103$1, v102$1), 23170bv32), 4096bv32), 13bv32);
    v112$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_ADD(v103$2, v102$2), 23170bv32), 4096bv32), 13bv32);
    v113$1 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v103$1, v102$1), 23170bv32), 4096bv32), 13bv32);
    v113$2 := BV32_ASHR(BV32_ADD(BV32_MUL(BV32_SUB(v103$2, v102$2), 23170bv32), 4096bv32), 13bv32);
    v114$1 := BV32_SHL(BV32_SUB(v85$1, v88$1), 2bv32);
    v114$2 := BV32_SHL(BV32_SUB(v85$2, v88$2), 2bv32);
    v115$1 := BV32_SHL(BV32_SUB(v76$1, v97$1), 2bv32);
    v115$2 := BV32_SHL(BV32_SUB(v76$2, v97$2), 2bv32);
    v116$1 := BV32_ADD(v114$1, v113$1);
    v116$2 := BV32_ADD(v114$2, v113$2);
    v117$1 := BV32_SUB(v114$1, v113$1);
    v117$2 := BV32_SUB(v114$2, v113$2);
    v118$1 := BV32_SUB(v115$1, v112$1);
    v118$2 := BV32_SUB(v115$2, v112$2);
    v119$1 := BV32_ADD(v115$1, v112$1);
    v119$2 := BV32_ADD(v115$2, v112$2);
    v120$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v119$1, 8035bv32), BV32_MUL(v116$1, 1598bv32)), 32768bv32), 16bv32)[16:0];
    v120$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v119$2, 8035bv32), BV32_MUL(v116$2, 1598bv32)), 32768bv32), 16bv32)[16:0];
    $$sh0.i$2bv32$1 := v120$1[8:0];
    $$sh0.i$2bv32$2 := v120$2[8:0];
    $$sh0.i$3bv32$1 := v120$1[16:8];
    $$sh0.i$3bv32$2 := v120$2[16:8];
    v121$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v119$1, 1598bv32), BV32_MUL(v116$1, 8035bv32)), 32768bv32), 16bv32)[16:0];
    v121$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v119$2, 1598bv32), BV32_MUL(v116$2, 8035bv32)), 32768bv32), 16bv32)[16:0];
    $$sh3.i$2bv32$1 := v121$1[8:0];
    $$sh3.i$2bv32$2 := v121$2[8:0];
    $$sh3.i$3bv32$1 := v121$1[16:8];
    $$sh3.i$3bv32$2 := v121$2[16:8];
    v122$1 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v118$1, 4551bv32), BV32_MUL(v117$1, 6811bv32)), 32768bv32), 16bv32)[16:0];
    v122$2 := BV32_ASHR(BV32_ADD(BV32_ADD(BV32_MUL(v118$2, 4551bv32), BV32_MUL(v117$2, 6811bv32)), 32768bv32), 16bv32)[16:0];
    $$sh2.i$2bv32$1 := v122$1[8:0];
    $$sh2.i$2bv32$2 := v122$2[8:0];
    $$sh2.i$3bv32$1 := v122$1[16:8];
    $$sh2.i$3bv32$2 := v122$2[16:8];
    v123$1 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v118$1, 6811bv32), BV32_MUL(v117$1, 4551bv32)), 32768bv32), 16bv32)[16:0];
    v123$2 := BV32_ASHR(BV32_ADD(BV32_SUB(BV32_MUL(v118$2, 6811bv32), BV32_MUL(v117$2, 4551bv32)), 32768bv32), 16bv32)[16:0];
    $$sh1.i$2bv32$1 := v123$1[8:0];
    $$sh1.i$2bv32$2 := v123$2[8:0];
    $$sh1.i$3bv32$1 := v123$1[16:8];
    $$sh1.i$3bv32$2 := v123$2[16:8];
    v124$1 := $$sh0.i$0bv32$1;
    v124$2 := $$sh0.i$0bv32$2;
    v125$1 := $$sh0.i$1bv32$1;
    v125$2 := $$sh0.i$1bv32$2;
    v126$1 := $$sh0.i$2bv32$1;
    v126$2 := $$sh0.i$2bv32$2;
    v127$1 := $$sh0.i$3bv32$1;
    v127$2 := $$sh0.i$3bv32$2;
    call {:sourceloc} {:sourceloc_num 122} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), v124$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)));
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 122} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 122} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), v124$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32))] := v124$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32))] := v124$2;
    call {:sourceloc} {:sourceloc_num 123} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32), v125$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 123} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 123} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32), v125$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 1bv32)] := v125$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 1bv32)] := v125$2;
    call {:sourceloc} {:sourceloc_num 124} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32), v126$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 124} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 124} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32), v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 2bv32)] := v126$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 2bv32)] := v126$2;
    call {:sourceloc} {:sourceloc_num 125} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32), v127$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 125} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 125} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32), v127$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 3bv32)] := v127$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 3bv32)] := v127$2;
    v128$1 := $$sh1.i$0bv32$1;
    v128$2 := $$sh1.i$0bv32$2;
    v129$1 := $$sh1.i$1bv32$1;
    v129$2 := $$sh1.i$1bv32$2;
    v130$1 := $$sh1.i$2bv32$1;
    v130$2 := $$sh1.i$2bv32$2;
    v131$1 := $$sh1.i$3bv32$1;
    v131$2 := $$sh1.i$3bv32$2;
    call {:sourceloc} {:sourceloc_num 130} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32), v128$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 130} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 130} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32), v128$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 4bv32)] := v128$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 4bv32)] := v128$2;
    call {:sourceloc} {:sourceloc_num 131} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32), v129$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32));
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 131} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 131} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32), v129$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 5bv32)] := v129$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 5bv32)] := v129$2;
    call {:sourceloc} {:sourceloc_num 132} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32), v130$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32));
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 132} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 132} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32), v130$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 6bv32)] := v130$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 6bv32)] := v130$2;
    call {:sourceloc} {:sourceloc_num 133} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32), v131$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32));
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 133} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 133} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32), v131$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 7bv32)] := v131$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 7bv32)] := v131$2;
    v132$1 := $$sh2.i$0bv32$1;
    v132$2 := $$sh2.i$0bv32$2;
    v133$1 := $$sh2.i$1bv32$1;
    v133$2 := $$sh2.i$1bv32$2;
    v134$1 := $$sh2.i$2bv32$1;
    v134$2 := $$sh2.i$2bv32$2;
    v135$1 := $$sh2.i$3bv32$1;
    v135$2 := $$sh2.i$3bv32$2;
    call {:sourceloc} {:sourceloc_num 138} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32), v132$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32));
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 138} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 138} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32), v132$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 8bv32)] := v132$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 8bv32)] := v132$2;
    call {:sourceloc} {:sourceloc_num 139} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32), v133$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32));
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 139} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 139} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32), v133$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 9bv32)] := v133$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 9bv32)] := v133$2;
    call {:sourceloc} {:sourceloc_num 140} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32), v134$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32));
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 140} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 140} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32), v134$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 10bv32)] := v134$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 10bv32)] := v134$2;
    call {:sourceloc} {:sourceloc_num 141} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32), v135$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32));
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 141} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 141} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32), v135$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 11bv32)] := v135$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 11bv32)] := v135$2;
    v136$1 := $$sh3.i$0bv32$1;
    v136$2 := $$sh3.i$0bv32$2;
    v137$1 := $$sh3.i$1bv32$1;
    v137$2 := $$sh3.i$1bv32$2;
    v138$1 := $$sh3.i$2bv32$1;
    v138$2 := $$sh3.i$2bv32$2;
    v139$1 := $$sh3.i$3bv32$1;
    v139$2 := $$sh3.i$3bv32$2;
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32), v136$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32));
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32), v136$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 12bv32)] := v136$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 12bv32)] := v136$2;
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32), v137$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32), v137$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 13bv32)] := v137$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 13bv32)] := v137$2;
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32), v138$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32));
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32), v138$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 14bv32)] := v138$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 14bv32)] := v138$2;
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32), v139$1, $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32));
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(true, BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32), v139$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block"} true;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$1, 34bv32), 2bv32), BV32_MUL(v1$1, 2bv32)), 15bv32)] := v139$1;
    $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(v0$2, 34bv32), 2bv32), BV32_MUL(v1$2, 2bv32)), 15bv32)] := v139$2;
    goto __partitioned_block_$2.tail_3;

  __partitioned_block_$2.tail_3:
    call {:sourceloc_num 150} $bugle_barrier_duplicated_2(1bv1, 1bv1);
    v140$1 := BV32_SLT(v0$1, 16bv32);
    v140$2 := BV32_SLT(v0$2, 16bv32);
    p4$1 := (if v140$1 then v140$1 else p4$1);
    p4$2 := (if v140$2 then v140$2 else p4$2);
    $i1.0$1 := (if p4$1 then 0bv32 else $i1.0$1);
    $i1.0$2 := (if p4$2 then 0bv32 else $i1.0$2);
    p5$1 := (if p4$1 then true else p5$1);
    p5$2 := (if p4$2 then true else p5$2);
    _WRITE_HAS_OCCURRED_$$SrcDst$ghost$$8 := _WRITE_HAS_OCCURRED_$$SrcDst;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b23 ==> !p4$1 ==> _WRITE_HAS_OCCURRED_$$SrcDst$ghost$$8 == _WRITE_HAS_OCCURRED_$$SrcDst;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b22 ==> _WRITE_HAS_OCCURRED_$$SrcDst ==> BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32))) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 1bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 2bv32)) || BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(BV32_MUL(1bv32, 4bv32), 1bv32), BV32_ADD(BV32_ADD(BV32_MUL(0bv32, 4bv32), BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), BV32_MUL(local_id_z$1, 8bv32)), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 2bv32))), 2bv32)), 3bv32));
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p5"} {:dominator_predicate "p4"} true;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b8 ==> _WRITE_HAS_OCCURRED_$$SrcDst ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b7 ==> _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32) && BV32_SLT($i1.0$1, 8bv32) ==> p5$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2), 16bv32) && BV32_SLT($i1.0$2, 8bv32) ==> p5$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p5$1 ==> _b5 ==> p5$1 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$1, 8bv32), local_id_x$1), 16bv32);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p5$2 ==> _b5 ==> p5$2 ==> BV32_SLT(BV32_ADD(BV32_MUL(local_id_y$2, 8bv32), local_id_x$2), 16bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b4 ==> BV32_UGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b4 ==> BV32_UGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b3 ==> BV32_ULE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b3 ==> BV32_ULE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b2 ==> BV32_SGE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b2 ==> BV32_SGE($i1.0$2, 0bv32);
    assert {:tag "loopBound"} {:thread 1} p5$1 ==> _b1 ==> BV32_SLE($i1.0$1, 0bv32);
    assert {:tag "loopBound"} {:thread 2} p5$2 ==> _b1 ==> BV32_SLE($i1.0$2, 0bv32);
    assert {:tag "guardNonNeg"} {:thread 1} p5$1 ==> _b0 ==> BV32_SLE(0bv32, $i1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p5$2 ==> _b0 ==> BV32_SLE(0bv32, $i1.0$2);
    assert {:block_sourceloc} {:sourceloc_num 152} p5$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 153} {:thread 1} (if _WRITE_HAS_OCCURRED_$$SrcDst ==> BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32)), 4bv32), BV32_SDIV($ImgStride, 2bv32)) == 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 154} {:thread 1} (if _WRITE_HAS_OCCURRED_$$SrcDst ==> BV32_ULT(BV32_UDIV(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32)), 4bv32), BV32_SDIV($ImgStride, 2bv32)), 8bv32) then 1bv1 else 0bv1) != 0bv1;
    v141$1 := (if p5$1 then BV32_SLT($i1.0$1, 8bv32) else v141$1);
    v141$2 := (if p5$2 then BV32_SLT($i1.0$2, 8bv32) else v141$2);
    p6$1 := false;
    p6$2 := false;
    p6$1 := (if p5$1 && v141$1 then v141$1 else p6$1);
    p6$2 := (if p5$2 && v141$2 then v141$2 else p6$2);
    p5$1 := (if p5$1 && !v141$1 then v141$1 else p5$1);
    p5$2 := (if p5$2 && !v141$2 then v141$2 else p5$2);
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 156} true;
    v142$1 := (if p6$1 then $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, 17bv32), 4bv32))] else v142$1);
    v142$2 := (if p6$2 then $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, 17bv32), 4bv32))] else v142$2);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 157} true;
    v143$1 := (if p6$1 then $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, 17bv32), 4bv32)), 1bv32)] else v143$1);
    v143$2 := (if p6$2 then $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, 17bv32), 4bv32)), 1bv32)] else v143$2);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 158} true;
    v144$1 := (if p6$1 then $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, 17bv32), 4bv32)), 2bv32)] else v144$1);
    v144$2 := (if p6$2 then $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, 17bv32), 4bv32)), 2bv32)] else v144$2);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 159} true;
    v145$1 := (if p6$1 then $$_ZZ18CUDAkernelShortDCTPsiE5block[1bv1][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$1, 34bv32), BV32_MUL(v0$1, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, 17bv32), 4bv32)), 3bv32)] else v145$1);
    v145$2 := (if p6$2 then $$_ZZ18CUDAkernelShortDCTPsiE5block[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v1$2, 34bv32), BV32_MUL(v0$2, 2bv32)), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, 17bv32), 4bv32)), 3bv32)] else v145$2);
    call {:sourceloc} {:sourceloc_num 160} _LOG_WRITE_$$SrcDst(p6$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), v142$1, $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)));
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 160} _CHECK_WRITE_$$SrcDst(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), v142$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$SrcDst"} true;
    $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32))] := (if p6$1 then v142$1 else $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32))]);
    $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32))] := (if p6$2 then v142$2 else $$SrcDst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32))]);
    call {:sourceloc} {:sourceloc_num 161} _LOG_WRITE_$$SrcDst(p6$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32), v143$1, $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 161} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 161} _CHECK_WRITE_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32), v143$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$SrcDst"} true;
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)] := (if p6$1 then v143$1 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)]);
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)] := (if p6$2 then v143$2 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 1bv32)]);
    call {:sourceloc} {:sourceloc_num 162} _LOG_WRITE_$$SrcDst(p6$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32), v144$1, $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 162} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 162} _CHECK_WRITE_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32), v144$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$SrcDst"} true;
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)] := (if p6$1 then v144$1 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)]);
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)] := (if p6$2 then v144$2 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 2bv32)]);
    call {:sourceloc} {:sourceloc_num 163} _LOG_WRITE_$$SrcDst(p6$1, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32), v145$1, $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 163} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 163} _CHECK_WRITE_$$SrcDst(p6$2, BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32), v145$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$SrcDst"} true;
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)] := (if p6$1 then v145$1 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$1, 32bv32), v1$1), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$1, 32bv32), BV32_MUL(v0$1, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$1, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)]);
    $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)] := (if p6$2 then v145$2 else $$SrcDst[BV32_ADD(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(group_id_y$2, 32bv32), v1$2), $ImgStride), BV32_ADD(BV32_MUL(group_id_x$2, 32bv32), BV32_MUL(v0$2, 2bv32))), 2bv32), BV32_MUL(BV32_MUL($i1.0$2, BV32_SDIV($ImgStride, 2bv32)), 4bv32)), 3bv32)]);
    $i1.0$1 := (if p6$1 then BV32_ADD($i1.0$1, 1bv32) else $i1.0$1);
    $i1.0$2 := (if p6$2 then BV32_ADD($i1.0$2, 1bv32) else $i1.0$2);
    p5$1 := (if p6$1 then true else p5$1);
    p5$2 := (if p6$2 then true else p5$2);
    goto $8.backedge, $8.tail;

  $8.tail:
    assume !p5$1 && !p5$2;
    return;

  $8.backedge:
    assume {:backedge} p5$1 || p5$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $8;

  $2.backedge:
    assume {:backedge} p1$1 || p1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $2;
}



axiom (if group_size_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 4bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 4bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 16bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ18CUDAkernelShortDCTPsiE5block, $$SrcDst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ18CUDAkernelShortDCTPsiE5block, $$SrcDst, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$_ZZ18CUDAkernelShortDCTPsiE5block, $$SrcDst, _TRACKING;



var $$sh0.i$0bv32$1: bv8;

var $$sh0.i$0bv32$2: bv8;

var $$sh0.i$1bv32$1: bv8;

var $$sh0.i$1bv32$2: bv8;

var $$sh0.i$2bv32$1: bv8;

var $$sh0.i$2bv32$2: bv8;

var $$sh0.i$3bv32$1: bv8;

var $$sh0.i$3bv32$2: bv8;

var $$sh1.i$0bv32$1: bv8;

var $$sh1.i$0bv32$2: bv8;

var $$sh1.i$1bv32$1: bv8;

var $$sh1.i$1bv32$2: bv8;

var $$sh1.i$2bv32$1: bv8;

var $$sh1.i$2bv32$2: bv8;

var $$sh1.i$3bv32$1: bv8;

var $$sh1.i$3bv32$2: bv8;

var $$sh2.i$0bv32$1: bv8;

var $$sh2.i$0bv32$2: bv8;

var $$sh2.i$1bv32$1: bv8;

var $$sh2.i$1bv32$2: bv8;

var $$sh2.i$2bv32$1: bv8;

var $$sh2.i$2bv32$2: bv8;

var $$sh2.i$3bv32$1: bv8;

var $$sh2.i$3bv32$2: bv8;

var $$sh3.i$0bv32$1: bv8;

var $$sh3.i$0bv32$2: bv8;

var $$sh3.i$1bv32$1: bv8;

var $$sh3.i$1bv32$2: bv8;

var $$sh3.i$2bv32$1: bv8;

var $$sh3.i$2bv32$2: bv8;

var $$sh3.i$3bv32$1: bv8;

var $$sh3.i$3bv32$2: bv8;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

const {:existential true} _b2: bool;

function {:bvbuiltin "bvule"} BV32_ULE(bv32, bv32) : bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

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

const _WATCHED_VALUE_$$SrcDst: bv8;

procedure {:inline 1} _LOG_READ_$$SrcDst(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$SrcDst;



implementation {:inline 1} _LOG_READ_$$SrcDst(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then true else _READ_HAS_OCCURRED_$$SrcDst);
    return;
}



procedure _CHECK_READ_$$SrcDst(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$SrcDst);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$SrcDst: bool;

procedure {:inline 1} _LOG_WRITE_$$SrcDst(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$SrcDst, _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:inline 1} _LOG_WRITE_$$SrcDst(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then true else _WRITE_HAS_OCCURRED_$$SrcDst);
    _WRITE_READ_BENIGN_FLAG_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$SrcDst);
    return;
}



procedure _CHECK_WRITE_$$SrcDst(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst != _value);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$SrcDst != _value);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$SrcDst(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$SrcDst;



implementation {:inline 1} _LOG_ATOMIC_$$SrcDst(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$SrcDst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$SrcDst);
    return;
}



procedure _CHECK_ATOMIC_$$SrcDst(_P: bool, _offset: bv32);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);
  requires {:source_name "SrcDst"} {:array "$$SrcDst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$SrcDst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$SrcDst(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$SrcDst := (if _P && _WRITE_HAS_OCCURRED_$$SrcDst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$SrcDst);
    return;
}



const _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block: bv8;

procedure {:inline 1} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;



implementation {:inline 1} _LOG_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block == _value then true else _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block);
    return;
}



procedure _CHECK_READ_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block, _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block;



implementation {:inline 1} _LOG_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block);
    return;
}



procedure _CHECK_WRITE_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ18CUDAkernelShortDCTPsiE5block != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "block"} {:array "$$_ZZ18CUDAkernelShortDCTPsiE5block"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ18CUDAkernelShortDCTPsiE5block);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$SrcDst;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$SrcDst;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$SrcDst;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$SrcDst;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$SrcDst;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$SrcDst;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon6;

  anon6:
    havoc _TRACKING;
    return;

  anon9_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$SrcDst;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$_ZZ18CUDAkernelShortDCTPsiE5block;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;
