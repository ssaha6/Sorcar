type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "dst"} {:global} $$dst: [int]int;

axiom {:array_info "$$dst"} {:global} {:elem_width 32} {:source_name "dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst: bool;

axiom {:array_info "$$a.i"} {:elem_width 32} {:source_name "a.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i"} {:elem_width 32} {:source_name "b.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$clr"} {:elem_width 32} {:source_name "clr"} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$clrIJ"} {:elem_width 32} {:source_name "clrIJ"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$clr00"} {:elem_width 32} {:source_name "clr00"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$texImage"} {:global} {:elem_width 8} {:source_name "texImage"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texImage: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texImage: bool;

const _WATCHED_OFFSET: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FEQ32(int, int) : bool;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FP32_TO_SI32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "NLM"} {:kernel} $_Z3NLMPjiiff($imageW: int, $imageH: int, $Noise: int, $lerpC: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 320 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
  requires !_READ_HAS_OCCURRED_$$texImage && !_WRITE_HAS_OCCURRED_$$texImage && !_ATOMIC_HAS_OCCURRED_$$texImage;
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
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "NLM"} {:kernel} $_Z3NLMPjiiff($imageW: int, $imageH: int, $Noise: int, $lerpC: int)
{
  var $fCount.0$1: int;
  var $fCount.0$2: int;
  var $sumWeights.0$1: int;
  var $sumWeights.0$2: int;
  var $i.0$1: int;
  var $i.0$2: int;
  var $fCount.1$1: int;
  var $fCount.1$2: int;
  var $sumWeights.1$1: int;
  var $sumWeights.1$2: int;
  var $j.0$1: int;
  var $j.0$2: int;
  var $weightIJ.0$1: int;
  var $weightIJ.0$2: int;
  var $n.0$1: int;
  var $n.0$2: int;
  var $weightIJ.1$1: int;
  var $weightIJ.1$2: int;
  var $m.0$1: int;
  var $m.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
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
  var v18$1: int;
  var v18$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v25$1: int;
  var v25$2: int;
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
  var v39$1: int;
  var v39$2: int;
  var v40$1: int;
  var v40$2: int;
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
  var v38$1: int;
  var v38$2: int;
  var v35$1: int;
  var v35$2: int;
  var v36$1: int;
  var v36$2: int;
  var v37$1: int;
  var v37$2: int;
  var v66$1: int;
  var v66$2: int;
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
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
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
  var v85$1: int;
  var v85$2: int;
  var v81$1: int;
  var v81$2: int;
  var v82$1: int;
  var v82$2: int;
  var v83$1: int;
  var v83$2: int;
  var v84$1: int;
  var v84$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: int;
  var v87$2: int;
  var v88$1: int;
  var v88$2: int;
  var v89$1: int;
  var v89$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: int;
  var v92$2: int;
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v107$1: int;
  var v107$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v111$1: int;
  var v111$2: int;
  var v112$1: int;
  var v112$2: int;
  var v113$1: int;
  var v113$2: int;
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: bool;
  var v116$2: bool;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v120$1: int;
  var v120$2: int;
  var v125$1: int;
  var v125$2: int;
  var v121$1: int;
  var v121$2: int;
  var v122$1: int;
  var v122$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
  var v134$1: int;
  var v134$2: int;
  var v126$1: int;
  var v126$2: int;
  var v127$1: int;
  var v127$2: int;
  var v128$1: int;
  var v128$2: int;
  var v129$1: int;
  var v129$2: int;
  var v130$1: int;
  var v130$2: int;
  var v131$1: int;
  var v131$2: int;
  var v132$1: int;
  var v132$2: int;
  var v133$1: int;
  var v133$2: int;
  var v135$1: int;
  var v135$2: int;
  var v136$1: int;
  var v136$2: int;
  var v137$1: int;
  var v137$2: int;
  var v138$1: int;
  var v138$2: int;
  var v139$1: int;
  var v139$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: int;
  var v142$2: int;
  var v143$1: int;
  var v143$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v147$1: int;
  var v147$2: int;
  var v148$1: int;
  var v148$2: int;
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
  var v151$1: int;
  var v151$2: int;
  var v152$1: int;
  var v152$2: int;
  var v153$1: int;
  var v153$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$1), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_size_y, group_id_y$2), local_id_y$2);
    v2$1 := FADD32(SI32_TO_FP32(v0$1), 1056964608);
    v2$2 := FADD32(SI32_TO_FP32(v0$2), 1056964608);
    v3$1 := FADD32(SI32_TO_FP32(v1$1), 1056964608);
    v3$2 := FADD32(SI32_TO_FP32(v1$2), 1056964608);
    v4$1 := BV32_SLT(v0$1, $imageW);
    v4$2 := BV32_SLT(v0$2, $imageW);
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p0$1 := (if v4$1 then v4$1 else p0$1);
    p0$2 := (if v4$2 then v4$2 else p0$2);
    v5$1 := (if p0$1 then BV32_SLT(v1$1, $imageH) else v5$1);
    v5$2 := (if p0$2 then BV32_SLT(v1$2, $imageH) else v5$2);
    p1$1 := (if p0$1 && v5$1 then v5$1 else p1$1);
    p1$2 := (if p0$2 && v5$2 then v5$2 else p1$2);
    $$clr$0$1 := (if p1$1 then 0 else $$clr$0$1);
    $$clr$0$2 := (if p1$2 then 0 else $$clr$0$2);
    $$clr$1$1 := (if p1$1 then 0 else $$clr$1$1);
    $$clr$1$2 := (if p1$2 then 0 else $$clr$1$2);
    $$clr$2$1 := (if p1$1 then 0 else $$clr$2$1);
    $$clr$2$2 := (if p1$2 then 0 else $$clr$2$2);
    $fCount.0$1, $sumWeights.0$1, $i.0$1 := (if p1$1 then 0 else $fCount.0$1), (if p1$1 then 0 else $sumWeights.0$1), (if p1$1 then -1069547520 else $i.0$1);
    $fCount.0$2, $sumWeights.0$2, $i.0$2 := (if p1$2 then 0 else $fCount.0$2), (if p1$2 then 0 else $sumWeights.0$2), (if p1$2 then -1069547520 else $i.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert {:block_sourceloc} {:sourceloc_num 7} p2$1 ==> true;
    v6$1 := (if p2$1 then FEQ32($i.0$1, 1077936128) || FLT32($i.0$1, 1077936128) else v6$1);
    v6$2 := (if p2$2 then FEQ32($i.0$2, 1077936128) || FLT32($i.0$2, 1077936128) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    $fCount.1$1, $sumWeights.1$1, $j.0$1 := (if p3$1 then $fCount.0$1 else $fCount.1$1), (if p3$1 then $sumWeights.0$1 else $sumWeights.1$1), (if p3$1 then -1069547520 else $j.0$1);
    $fCount.1$2, $sumWeights.1$2, $j.0$2 := (if p3$2 then $fCount.0$2 else $fCount.1$2), (if p3$2 then $sumWeights.0$2 else $sumWeights.1$2), (if p3$2 then -1069547520 else $j.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 9} p4$1 ==> true;
    v7$1 := (if p4$1 then FEQ32($j.0$1, 1077936128) || FLT32($j.0$1, 1077936128) else v7$1);
    v7$2 := (if p4$2 then FEQ32($j.0$2, 1077936128) || FLT32($j.0$2, 1077936128) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    $weightIJ.0$1, $n.0$1 := (if p5$1 then 0 else $weightIJ.0$1), (if p5$1 then -1069547520 else $n.0$1);
    $weightIJ.0$2, $n.0$2 := (if p5$2 then 0 else $weightIJ.0$2), (if p5$2 then -1069547520 else $n.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_2"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 11} p6$1 ==> true;
    v8$1 := (if p6$1 then FEQ32($n.0$1, 1077936128) || FLT32($n.0$1, 1077936128) else v8$1);
    v8$2 := (if p6$2 then FEQ32($n.0$2, 1077936128) || FLT32($n.0$2, 1077936128) else v8$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p7$1 := (if p6$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p6$2 && v8$2 then v8$2 else p7$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    $weightIJ.1$1, $m.0$1 := (if p7$1 then $weightIJ.0$1 else $weightIJ.1$1), (if p7$1 then -1069547520 else $m.0$1);
    $weightIJ.1$2, $m.0$2 := (if p7$2 then $weightIJ.0$2 else $weightIJ.1$2), (if p7$2 then -1069547520 else $m.0$2);
    p8$1 := (if p7$1 then true else p8$1);
    p8$2 := (if p7$2 then true else p8$2);
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_3"} true;
    assume {:invGenSkippedLoop} true;
    assume {:predicate "p8"} {:dominator_predicate "p7"} true;
    assert p8$1 ==> p6$1;
    assert p8$2 ==> p6$2;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:block_sourceloc} {:sourceloc_num 13} p8$1 ==> true;
    v9$1 := (if p8$1 then FEQ32($m.0$1, 1077936128) || FLT32($m.0$1, 1077936128) else v9$1);
    v9$2 := (if p8$2 then FEQ32($m.0$2, 1077936128) || FLT32($m.0$2, 1077936128) else v9$2);
    p9$1 := false;
    p9$2 := false;
    p9$1 := (if p8$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p8$2 && v9$2 then v9$2 else p9$2);
    p8$1 := (if p8$1 && !v9$1 then v9$1 else p8$1);
    p8$2 := (if p8$2 && !v9$2 then v9$2 else p8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p9$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p9$2 then _HAVOC_int$2 else v10$2);
    $$1$0$1 := (if p9$1 then v10$1 else $$1$0$1);
    $$1$0$2 := (if p9$2 then v10$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p9$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p9$2 then _HAVOC_int$2 else v11$2);
    $$1$1$1 := (if p9$1 then v11$1 else $$1$1$1);
    $$1$1$2 := (if p9$2 then v11$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p9$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p9$2 then _HAVOC_int$2 else v12$2);
    $$1$2$1 := (if p9$1 then v12$1 else $$1$2$1);
    $$1$2$2 := (if p9$2 then v12$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p9$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p9$2 then _HAVOC_int$2 else v13$2);
    $$1$3$1 := (if p9$1 then v13$1 else $$1$3$1);
    $$1$3$2 := (if p9$2 then v13$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p9$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p9$2 then _HAVOC_int$2 else v14$2);
    $$1$4$1 := (if p9$1 then v14$1 else $$1$4$1);
    $$1$4$2 := (if p9$2 then v14$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p9$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p9$2 then _HAVOC_int$2 else v15$2);
    $$1$5$1 := (if p9$1 then v15$1 else $$1$5$1);
    $$1$5$2 := (if p9$2 then v15$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p9$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p9$2 then _HAVOC_int$2 else v16$2);
    $$1$6$1 := (if p9$1 then v16$1 else $$1$6$1);
    $$1$6$2 := (if p9$2 then v16$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p9$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p9$2 then _HAVOC_int$2 else v17$2);
    $$1$7$1 := (if p9$1 then v17$1 else $$1$7$1);
    $$1$7$2 := (if p9$2 then v17$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p9$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p9$2 then _HAVOC_int$2 else v18$2);
    $$1$8$1 := (if p9$1 then v18$1 else $$1$8$1);
    $$1$8$2 := (if p9$2 then v18$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p9$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p9$2 then _HAVOC_int$2 else v19$2);
    $$1$9$1 := (if p9$1 then v19$1 else $$1$9$1);
    $$1$9$2 := (if p9$2 then v19$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p9$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p9$2 then _HAVOC_int$2 else v20$2);
    $$1$10$1 := (if p9$1 then v20$1 else $$1$10$1);
    $$1$10$2 := (if p9$2 then v20$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p9$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p9$2 then _HAVOC_int$2 else v21$2);
    $$1$11$1 := (if p9$1 then v21$1 else $$1$11$1);
    $$1$11$2 := (if p9$2 then v21$2 else $$1$11$2);
    v22$1 := (if p9$1 then $$1$0$1 else v22$1);
    v22$2 := (if p9$2 then $$1$0$2 else v22$2);
    v23$1 := (if p9$1 then $$1$1$1 else v23$1);
    v23$2 := (if p9$2 then $$1$1$2 else v23$2);
    v24$1 := (if p9$1 then $$1$2$1 else v24$1);
    v24$2 := (if p9$2 then $$1$2$2 else v24$2);
    v25$1 := (if p9$1 then $$1$3$1 else v25$1);
    v25$2 := (if p9$2 then $$1$3$2 else v25$2);
    v26$1 := (if p9$1 then $$1$4$1 else v26$1);
    v26$2 := (if p9$2 then $$1$4$2 else v26$2);
    v27$1 := (if p9$1 then $$1$5$1 else v27$1);
    v27$2 := (if p9$2 then $$1$5$2 else v27$2);
    v28$1 := (if p9$1 then $$1$6$1 else v28$1);
    v28$2 := (if p9$2 then $$1$6$2 else v28$2);
    v29$1 := (if p9$1 then $$1$7$1 else v29$1);
    v29$2 := (if p9$2 then $$1$7$2 else v29$2);
    v30$1 := (if p9$1 then $$1$8$1 else v30$1);
    v30$2 := (if p9$2 then $$1$8$2 else v30$2);
    v31$1 := (if p9$1 then $$1$9$1 else v31$1);
    v31$2 := (if p9$2 then $$1$9$2 else v31$2);
    v32$1 := (if p9$1 then $$1$10$1 else v32$1);
    v32$2 := (if p9$2 then $$1$10$2 else v32$2);
    v33$1 := (if p9$1 then $$1$11$1 else v33$1);
    v33$2 := (if p9$2 then $$1$11$2 else v33$2);
    call {:sourceloc_num 51} v34$1, v34$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(p9$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$1, v24$1), v23$1), v22$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$1, v28$1), v27$1), v26$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$1, v32$1), v31$1), v30$1), FADD32(FADD32(v2$1, $j.0$1), $m.0$1), FADD32(FADD32(v3$1, $i.0$1), $n.0$1), p9$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v25$2, v24$2), v23$2), v22$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v29$2, v28$2), v27$2), v26$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v33$2, v32$2), v31$2), v30$2), FADD32(FADD32(v2$2, $j.0$2), $m.0$2), FADD32(FADD32(v3$2, $i.0$2), $n.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$0$0$1 := (if p9$1 then BV_EXTRACT(v34$1, 32, 0) else $$0$0$1);
    $$0$0$2 := (if p9$2 then BV_EXTRACT(v34$2, 32, 0) else $$0$0$2);
    $$0$1$1 := (if p9$1 then BV_EXTRACT(v34$1, 64, 32) else $$0$1$1);
    $$0$1$2 := (if p9$2 then BV_EXTRACT(v34$2, 64, 32) else $$0$1$2);
    $$0$2$1 := (if p9$1 then BV_EXTRACT(v34$1, 96, 64) else $$0$2$1);
    $$0$2$2 := (if p9$2 then BV_EXTRACT(v34$2, 96, 64) else $$0$2$2);
    $$0$3$1 := (if p9$1 then BV_EXTRACT(v34$1, 128, 96) else $$0$3$1);
    $$0$3$2 := (if p9$2 then BV_EXTRACT(v34$2, 128, 96) else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p9$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p9$2 then _HAVOC_int$2 else v35$2);
    $$3$0$1 := (if p9$1 then v35$1 else $$3$0$1);
    $$3$0$2 := (if p9$2 then v35$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p9$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p9$2 then _HAVOC_int$2 else v36$2);
    $$3$1$1 := (if p9$1 then v36$1 else $$3$1$1);
    $$3$1$2 := (if p9$2 then v36$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p9$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p9$2 then _HAVOC_int$2 else v37$2);
    $$3$2$1 := (if p9$1 then v37$1 else $$3$2$1);
    $$3$2$2 := (if p9$2 then v37$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p9$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p9$2 then _HAVOC_int$2 else v38$2);
    $$3$3$1 := (if p9$1 then v38$1 else $$3$3$1);
    $$3$3$2 := (if p9$2 then v38$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p9$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p9$2 then _HAVOC_int$2 else v39$2);
    $$3$4$1 := (if p9$1 then v39$1 else $$3$4$1);
    $$3$4$2 := (if p9$2 then v39$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p9$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p9$2 then _HAVOC_int$2 else v40$2);
    $$3$5$1 := (if p9$1 then v40$1 else $$3$5$1);
    $$3$5$2 := (if p9$2 then v40$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p9$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p9$2 then _HAVOC_int$2 else v41$2);
    $$3$6$1 := (if p9$1 then v41$1 else $$3$6$1);
    $$3$6$2 := (if p9$2 then v41$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p9$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p9$2 then _HAVOC_int$2 else v42$2);
    $$3$7$1 := (if p9$1 then v42$1 else $$3$7$1);
    $$3$7$2 := (if p9$2 then v42$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p9$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p9$2 then _HAVOC_int$2 else v43$2);
    $$3$8$1 := (if p9$1 then v43$1 else $$3$8$1);
    $$3$8$2 := (if p9$2 then v43$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p9$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p9$2 then _HAVOC_int$2 else v44$2);
    $$3$9$1 := (if p9$1 then v44$1 else $$3$9$1);
    $$3$9$2 := (if p9$2 then v44$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v45$1 := (if p9$1 then _HAVOC_int$1 else v45$1);
    v45$2 := (if p9$2 then _HAVOC_int$2 else v45$2);
    $$3$10$1 := (if p9$1 then v45$1 else $$3$10$1);
    $$3$10$2 := (if p9$2 then v45$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v46$1 := (if p9$1 then _HAVOC_int$1 else v46$1);
    v46$2 := (if p9$2 then _HAVOC_int$2 else v46$2);
    $$3$11$1 := (if p9$1 then v46$1 else $$3$11$1);
    $$3$11$2 := (if p9$2 then v46$2 else $$3$11$2);
    v47$1 := (if p9$1 then $$3$0$1 else v47$1);
    v47$2 := (if p9$2 then $$3$0$2 else v47$2);
    v48$1 := (if p9$1 then $$3$1$1 else v48$1);
    v48$2 := (if p9$2 then $$3$1$2 else v48$2);
    v49$1 := (if p9$1 then $$3$2$1 else v49$1);
    v49$2 := (if p9$2 then $$3$2$2 else v49$2);
    v50$1 := (if p9$1 then $$3$3$1 else v50$1);
    v50$2 := (if p9$2 then $$3$3$2 else v50$2);
    v51$1 := (if p9$1 then $$3$4$1 else v51$1);
    v51$2 := (if p9$2 then $$3$4$2 else v51$2);
    v52$1 := (if p9$1 then $$3$5$1 else v52$1);
    v52$2 := (if p9$2 then $$3$5$2 else v52$2);
    v53$1 := (if p9$1 then $$3$6$1 else v53$1);
    v53$2 := (if p9$2 then $$3$6$2 else v53$2);
    v54$1 := (if p9$1 then $$3$7$1 else v54$1);
    v54$2 := (if p9$2 then $$3$7$2 else v54$2);
    v55$1 := (if p9$1 then $$3$8$1 else v55$1);
    v55$2 := (if p9$2 then $$3$8$2 else v55$2);
    v56$1 := (if p9$1 then $$3$9$1 else v56$1);
    v56$2 := (if p9$2 then $$3$9$2 else v56$2);
    v57$1 := (if p9$1 then $$3$10$1 else v57$1);
    v57$2 := (if p9$2 then $$3$10$2 else v57$2);
    v58$1 := (if p9$1 then $$3$11$1 else v58$1);
    v58$2 := (if p9$2 then $$3$11$2 else v58$2);
    call {:sourceloc_num 92} v59$1, v59$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(p9$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v50$1, v49$1), v48$1), v47$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v54$1, v53$1), v52$1), v51$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v58$1, v57$1), v56$1), v55$1), FADD32(v2$1, $m.0$1), FADD32(v3$1, $n.0$1), p9$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v50$2, v49$2), v48$2), v47$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v54$2, v53$2), v52$2), v51$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v58$2, v57$2), v56$2), v55$2), FADD32(v2$2, $m.0$2), FADD32(v3$2, $n.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$2$0$1 := (if p9$1 then BV_EXTRACT(v59$1, 32, 0) else $$2$0$1);
    $$2$0$2 := (if p9$2 then BV_EXTRACT(v59$2, 32, 0) else $$2$0$2);
    $$2$1$1 := (if p9$1 then BV_EXTRACT(v59$1, 64, 32) else $$2$1$1);
    $$2$1$2 := (if p9$2 then BV_EXTRACT(v59$2, 64, 32) else $$2$1$2);
    $$2$2$1 := (if p9$1 then BV_EXTRACT(v59$1, 96, 64) else $$2$2$1);
    $$2$2$2 := (if p9$2 then BV_EXTRACT(v59$2, 96, 64) else $$2$2$2);
    $$2$3$1 := (if p9$1 then BV_EXTRACT(v59$1, 128, 96) else $$2$3$1);
    $$2$3$2 := (if p9$2 then BV_EXTRACT(v59$2, 128, 96) else $$2$3$2);
    v60$1 := (if p9$1 then $$0$0$1 else v60$1);
    v60$2 := (if p9$2 then $$0$0$2 else v60$2);
    v61$1 := (if p9$1 then $$0$1$1 else v61$1);
    v61$2 := (if p9$2 then $$0$1$2 else v61$2);
    v62$1 := (if p9$1 then $$0$2$1 else v62$1);
    v62$2 := (if p9$2 then $$0$2$2 else v62$2);
    v63$1 := (if p9$1 then $$0$3$1 else v63$1);
    v63$2 := (if p9$2 then $$0$3$2 else v63$2);
    v64$1 := (if p9$1 then $$2$0$1 else v64$1);
    v64$2 := (if p9$2 then $$2$0$2 else v64$2);
    v65$1 := (if p9$1 then $$2$1$1 else v65$1);
    v65$2 := (if p9$2 then $$2$1$2 else v65$2);
    v66$1 := (if p9$1 then $$2$2$1 else v66$1);
    v66$2 := (if p9$2 then $$2$2$2 else v66$2);
    v67$1 := (if p9$1 then $$2$3$1 else v67$1);
    v67$2 := (if p9$2 then $$2$3$2 else v67$2);
    $$a.i$0$1 := (if p9$1 then v60$1 else $$a.i$0$1);
    $$a.i$0$2 := (if p9$2 then v60$2 else $$a.i$0$2);
    $$a.i$1$1 := (if p9$1 then v61$1 else $$a.i$1$1);
    $$a.i$1$2 := (if p9$2 then v61$2 else $$a.i$1$2);
    $$a.i$2$1 := (if p9$1 then v62$1 else $$a.i$2$1);
    $$a.i$2$2 := (if p9$2 then v62$2 else $$a.i$2$2);
    $$a.i$3$1 := (if p9$1 then v63$1 else $$a.i$3$1);
    $$a.i$3$2 := (if p9$2 then v63$2 else $$a.i$3$2);
    $$b.i$0$1 := (if p9$1 then v64$1 else $$b.i$0$1);
    $$b.i$0$2 := (if p9$2 then v64$2 else $$b.i$0$2);
    $$b.i$1$1 := (if p9$1 then v65$1 else $$b.i$1$1);
    $$b.i$1$2 := (if p9$2 then v65$2 else $$b.i$1$2);
    $$b.i$2$1 := (if p9$1 then v66$1 else $$b.i$2$1);
    $$b.i$2$2 := (if p9$2 then v66$2 else $$b.i$2$2);
    $$b.i$3$1 := (if p9$1 then v67$1 else $$b.i$3$1);
    $$b.i$3$2 := (if p9$2 then v67$2 else $$b.i$3$2);
    v68$1 := (if p9$1 then $$b.i$0$1 else v68$1);
    v68$2 := (if p9$2 then $$b.i$0$2 else v68$2);
    v69$1 := (if p9$1 then $$a.i$0$1 else v69$1);
    v69$2 := (if p9$2 then $$a.i$0$2 else v69$2);
    v70$1 := (if p9$1 then $$b.i$0$1 else v70$1);
    v70$2 := (if p9$2 then $$b.i$0$2 else v70$2);
    v71$1 := (if p9$1 then $$a.i$0$1 else v71$1);
    v71$2 := (if p9$2 then $$a.i$0$2 else v71$2);
    v72$1 := (if p9$1 then $$b.i$1$1 else v72$1);
    v72$2 := (if p9$2 then $$b.i$1$2 else v72$2);
    v73$1 := (if p9$1 then $$a.i$1$1 else v73$1);
    v73$2 := (if p9$2 then $$a.i$1$2 else v73$2);
    v74$1 := (if p9$1 then $$b.i$1$1 else v74$1);
    v74$2 := (if p9$2 then $$b.i$1$2 else v74$2);
    v75$1 := (if p9$1 then $$a.i$1$1 else v75$1);
    v75$2 := (if p9$2 then $$a.i$1$2 else v75$2);
    v76$1 := (if p9$1 then $$b.i$2$1 else v76$1);
    v76$2 := (if p9$2 then $$b.i$2$2 else v76$2);
    v77$1 := (if p9$1 then $$a.i$2$1 else v77$1);
    v77$2 := (if p9$2 then $$a.i$2$2 else v77$2);
    v78$1 := (if p9$1 then $$b.i$2$1 else v78$1);
    v78$2 := (if p9$2 then $$b.i$2$2 else v78$2);
    v79$1 := (if p9$1 then $$a.i$2$1 else v79$1);
    v79$2 := (if p9$2 then $$a.i$2$2 else v79$2);
    $weightIJ.1$1, $m.0$1 := (if p9$1 then FADD32($weightIJ.1$1, FADD32(FADD32(FMUL32(FSUB32(v68$1, v69$1), FSUB32(v70$1, v71$1)), FMUL32(FSUB32(v72$1, v73$1), FSUB32(v74$1, v75$1))), FMUL32(FSUB32(v76$1, v77$1), FSUB32(v78$1, v79$1)))) else $weightIJ.1$1), (if p9$1 then FADD32($m.0$1, 1065353216) else $m.0$1);
    $weightIJ.1$2, $m.0$2 := (if p9$2 then FADD32($weightIJ.1$2, FADD32(FADD32(FMUL32(FSUB32(v68$2, v69$2), FSUB32(v70$2, v71$2)), FMUL32(FSUB32(v72$2, v73$2), FSUB32(v74$2, v75$2))), FMUL32(FSUB32(v76$2, v77$2), FSUB32(v78$2, v79$2)))) else $weightIJ.1$2), (if p9$2 then FADD32($m.0$2, 1065353216) else $m.0$2);
    p8$1 := (if p9$1 then true else p8$1);
    p8$2 := (if p9$2 then true else p8$2);
    goto $9.backedge, $9.tail;

  $9.tail:
    assume !p8$1 && !p8$2;
    $weightIJ.0$1, $n.0$1 := (if p7$1 then $weightIJ.1$1 else $weightIJ.0$1), (if p7$1 then FADD32($n.0$1, 1065353216) else $n.0$1);
    $weightIJ.0$2, $n.0$2 := (if p7$2 then $weightIJ.1$2 else $weightIJ.0$2), (if p7$2 then FADD32($n.0$2, 1065353216) else $n.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $7.backedge, $7.tail;

  $7.tail:
    assume !p6$1 && !p6$2;
    call {:sourceloc_num 129} v80$1, v80$2 := $__expf(p5$1, FSUB32(-2147483648, FADD32(FMUL32($weightIJ.0$1, $Noise), FMUL32(FADD32(FMUL32($i.0$1, $i.0$1), FMUL32($j.0$1, $j.0$1)), 1017589509))), p5$2, FSUB32(-2147483648, FADD32(FMUL32($weightIJ.0$2, $Noise), FMUL32(FADD32(FMUL32($i.0$2, $i.0$2), FMUL32($j.0$2, $j.0$2)), 1017589509))));
    assume {:captureState "call_return_state_0"} {:procedureName "$__expf"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v81$1 := (if p5$1 then _HAVOC_int$1 else v81$1);
    v81$2 := (if p5$2 then _HAVOC_int$2 else v81$2);
    $$4$0$1 := (if p5$1 then v81$1 else $$4$0$1);
    $$4$0$2 := (if p5$2 then v81$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v82$1 := (if p5$1 then _HAVOC_int$1 else v82$1);
    v82$2 := (if p5$2 then _HAVOC_int$2 else v82$2);
    $$4$1$1 := (if p5$1 then v82$1 else $$4$1$1);
    $$4$1$2 := (if p5$2 then v82$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v83$1 := (if p5$1 then _HAVOC_int$1 else v83$1);
    v83$2 := (if p5$2 then _HAVOC_int$2 else v83$2);
    $$4$2$1 := (if p5$1 then v83$1 else $$4$2$1);
    $$4$2$2 := (if p5$2 then v83$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v84$1 := (if p5$1 then _HAVOC_int$1 else v84$1);
    v84$2 := (if p5$2 then _HAVOC_int$2 else v84$2);
    $$4$3$1 := (if p5$1 then v84$1 else $$4$3$1);
    $$4$3$2 := (if p5$2 then v84$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v85$1 := (if p5$1 then _HAVOC_int$1 else v85$1);
    v85$2 := (if p5$2 then _HAVOC_int$2 else v85$2);
    $$4$4$1 := (if p5$1 then v85$1 else $$4$4$1);
    $$4$4$2 := (if p5$2 then v85$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v86$1 := (if p5$1 then _HAVOC_int$1 else v86$1);
    v86$2 := (if p5$2 then _HAVOC_int$2 else v86$2);
    $$4$5$1 := (if p5$1 then v86$1 else $$4$5$1);
    $$4$5$2 := (if p5$2 then v86$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v87$1 := (if p5$1 then _HAVOC_int$1 else v87$1);
    v87$2 := (if p5$2 then _HAVOC_int$2 else v87$2);
    $$4$6$1 := (if p5$1 then v87$1 else $$4$6$1);
    $$4$6$2 := (if p5$2 then v87$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v88$1 := (if p5$1 then _HAVOC_int$1 else v88$1);
    v88$2 := (if p5$2 then _HAVOC_int$2 else v88$2);
    $$4$7$1 := (if p5$1 then v88$1 else $$4$7$1);
    $$4$7$2 := (if p5$2 then v88$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v89$1 := (if p5$1 then _HAVOC_int$1 else v89$1);
    v89$2 := (if p5$2 then _HAVOC_int$2 else v89$2);
    $$4$8$1 := (if p5$1 then v89$1 else $$4$8$1);
    $$4$8$2 := (if p5$2 then v89$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v90$1 := (if p5$1 then _HAVOC_int$1 else v90$1);
    v90$2 := (if p5$2 then _HAVOC_int$2 else v90$2);
    $$4$9$1 := (if p5$1 then v90$1 else $$4$9$1);
    $$4$9$2 := (if p5$2 then v90$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v91$1 := (if p5$1 then _HAVOC_int$1 else v91$1);
    v91$2 := (if p5$2 then _HAVOC_int$2 else v91$2);
    $$4$10$1 := (if p5$1 then v91$1 else $$4$10$1);
    $$4$10$2 := (if p5$2 then v91$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v92$1 := (if p5$1 then _HAVOC_int$1 else v92$1);
    v92$2 := (if p5$2 then _HAVOC_int$2 else v92$2);
    $$4$11$1 := (if p5$1 then v92$1 else $$4$11$1);
    $$4$11$2 := (if p5$2 then v92$2 else $$4$11$2);
    v93$1 := (if p5$1 then $$4$0$1 else v93$1);
    v93$2 := (if p5$2 then $$4$0$2 else v93$2);
    v94$1 := (if p5$1 then $$4$1$1 else v94$1);
    v94$2 := (if p5$2 then $$4$1$2 else v94$2);
    v95$1 := (if p5$1 then $$4$2$1 else v95$1);
    v95$2 := (if p5$2 then $$4$2$2 else v95$2);
    v96$1 := (if p5$1 then $$4$3$1 else v96$1);
    v96$2 := (if p5$2 then $$4$3$2 else v96$2);
    v97$1 := (if p5$1 then $$4$4$1 else v97$1);
    v97$2 := (if p5$2 then $$4$4$2 else v97$2);
    v98$1 := (if p5$1 then $$4$5$1 else v98$1);
    v98$2 := (if p5$2 then $$4$5$2 else v98$2);
    v99$1 := (if p5$1 then $$4$6$1 else v99$1);
    v99$2 := (if p5$2 then $$4$6$2 else v99$2);
    v100$1 := (if p5$1 then $$4$7$1 else v100$1);
    v100$2 := (if p5$2 then $$4$7$2 else v100$2);
    v101$1 := (if p5$1 then $$4$8$1 else v101$1);
    v101$2 := (if p5$2 then $$4$8$2 else v101$2);
    v102$1 := (if p5$1 then $$4$9$1 else v102$1);
    v102$2 := (if p5$2 then $$4$9$2 else v102$2);
    v103$1 := (if p5$1 then $$4$10$1 else v103$1);
    v103$2 := (if p5$2 then $$4$10$2 else v103$2);
    v104$1 := (if p5$1 then $$4$11$1 else v104$1);
    v104$2 := (if p5$2 then $$4$11$2 else v104$2);
    call {:sourceloc_num 166} v105$1, v105$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(p5$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v96$1, v95$1), v94$1), v93$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v100$1, v99$1), v98$1), v97$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v104$1, v103$1), v102$1), v101$1), FADD32(v2$1, $j.0$1), FADD32(v3$1, $i.0$1), p5$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v96$2, v95$2), v94$2), v93$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v100$2, v99$2), v98$2), v97$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v104$2, v103$2), v102$2), v101$2), FADD32(v2$2, $j.0$2), FADD32(v3$2, $i.0$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$clrIJ$0$1 := (if p5$1 then BV_EXTRACT(v105$1, 32, 0) else $$clrIJ$0$1);
    $$clrIJ$0$2 := (if p5$2 then BV_EXTRACT(v105$2, 32, 0) else $$clrIJ$0$2);
    $$clrIJ$1$1 := (if p5$1 then BV_EXTRACT(v105$1, 64, 32) else $$clrIJ$1$1);
    $$clrIJ$1$2 := (if p5$2 then BV_EXTRACT(v105$2, 64, 32) else $$clrIJ$1$2);
    $$clrIJ$2$1 := (if p5$1 then BV_EXTRACT(v105$1, 96, 64) else $$clrIJ$2$1);
    $$clrIJ$2$2 := (if p5$2 then BV_EXTRACT(v105$2, 96, 64) else $$clrIJ$2$2);
    $$clrIJ$3$1 := (if p5$1 then BV_EXTRACT(v105$1, 128, 96) else $$clrIJ$3$1);
    $$clrIJ$3$2 := (if p5$2 then BV_EXTRACT(v105$2, 128, 96) else $$clrIJ$3$2);
    v106$1 := (if p5$1 then $$clrIJ$0$1 else v106$1);
    v106$2 := (if p5$2 then $$clrIJ$0$2 else v106$2);
    v107$1 := (if p5$1 then $$clr$0$1 else v107$1);
    v107$2 := (if p5$2 then $$clr$0$2 else v107$2);
    $$clr$0$1 := (if p5$1 then FADD32(v107$1, FMUL32(v106$1, v80$1)) else $$clr$0$1);
    $$clr$0$2 := (if p5$2 then FADD32(v107$2, FMUL32(v106$2, v80$2)) else $$clr$0$2);
    v108$1 := (if p5$1 then $$clrIJ$1$1 else v108$1);
    v108$2 := (if p5$2 then $$clrIJ$1$2 else v108$2);
    v109$1 := (if p5$1 then $$clr$1$1 else v109$1);
    v109$2 := (if p5$2 then $$clr$1$2 else v109$2);
    $$clr$1$1 := (if p5$1 then FADD32(v109$1, FMUL32(v108$1, v80$1)) else $$clr$1$1);
    $$clr$1$2 := (if p5$2 then FADD32(v109$2, FMUL32(v108$2, v80$2)) else $$clr$1$2);
    v110$1 := (if p5$1 then $$clrIJ$2$1 else v110$1);
    v110$2 := (if p5$2 then $$clrIJ$2$2 else v110$2);
    v111$1 := (if p5$1 then $$clr$2$1 else v111$1);
    v111$2 := (if p5$2 then $$clr$2$2 else v111$2);
    $$clr$2$1 := (if p5$1 then FADD32(v111$1, FMUL32(v110$1, v80$1)) else $$clr$2$1);
    $$clr$2$2 := (if p5$2 then FADD32(v111$2, FMUL32(v110$2, v80$2)) else $$clr$2$2);
    $fCount.1$1, $sumWeights.1$1, $j.0$1 := (if p5$1 then FADD32($fCount.1$1, (if FLT32(1036831949, v80$1) then 1017589509 else 0)) else $fCount.1$1), (if p5$1 then FADD32($sumWeights.1$1, v80$1) else $sumWeights.1$1), (if p5$1 then FADD32($j.0$1, 1065353216) else $j.0$1);
    $fCount.1$2, $sumWeights.1$2, $j.0$2 := (if p5$2 then FADD32($fCount.1$2, (if FLT32(1036831949, v80$2) then 1017589509 else 0)) else $fCount.1$2), (if p5$2 then FADD32($sumWeights.1$2, v80$2) else $sumWeights.1$2), (if p5$2 then FADD32($j.0$2, 1065353216) else $j.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $fCount.0$1, $sumWeights.0$1, $i.0$1 := (if p3$1 then $fCount.1$1 else $fCount.0$1), (if p3$1 then $sumWeights.1$1 else $sumWeights.0$1), (if p3$1 then FADD32($i.0$1, 1065353216) else $i.0$1);
    $fCount.0$2, $sumWeights.0$2, $i.0$2 := (if p3$2 then $fCount.1$2 else $fCount.0$2), (if p3$2 then $sumWeights.1$2 else $sumWeights.0$2), (if p3$2 then FADD32($i.0$2, 1065353216) else $i.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    v112$1 := (if p1$1 then FDIV32(1065353216, $sumWeights.0$1) else v112$1);
    v112$2 := (if p1$2 then FDIV32(1065353216, $sumWeights.0$2) else v112$2);
    v113$1 := (if p1$1 then $$clr$0$1 else v113$1);
    v113$2 := (if p1$2 then $$clr$0$2 else v113$2);
    $$clr$0$1 := (if p1$1 then FMUL32(v113$1, v112$1) else $$clr$0$1);
    $$clr$0$2 := (if p1$2 then FMUL32(v113$2, v112$2) else $$clr$0$2);
    v114$1 := (if p1$1 then $$clr$1$1 else v114$1);
    v114$2 := (if p1$2 then $$clr$1$2 else v114$2);
    $$clr$1$1 := (if p1$1 then FMUL32(v114$1, v112$1) else $$clr$1$1);
    $$clr$1$2 := (if p1$2 then FMUL32(v114$2, v112$2) else $$clr$1$2);
    v115$1 := (if p1$1 then $$clr$2$1 else v115$1);
    v115$2 := (if p1$2 then $$clr$2$2 else v115$2);
    $$clr$2$1 := (if p1$1 then FMUL32(v115$1, v112$1) else $$clr$2$1);
    $$clr$2$2 := (if p1$2 then FMUL32(v115$2, v112$2) else $$clr$2$2);
    v116$1 := (if p1$1 then FLT32(1036831949, $fCount.0$1) else v116$1);
    v116$2 := (if p1$2 then FLT32(1036831949, $fCount.0$2) else v116$2);
    p10$1 := (if p1$1 && v116$1 then v116$1 else p10$1);
    p10$2 := (if p1$2 && v116$2 then v116$2 else p10$2);
    p11$1 := (if p1$1 && !v116$1 then !v116$1 else p11$1);
    p11$2 := (if p1$2 && !v116$2 then !v116$2 else p11$2);
    $0$1 := (if p10$1 then $lerpC else $0$1);
    $0$2 := (if p10$2 then $lerpC else $0$2);
    $0$1 := (if p11$1 then FSUB32(1065353216, $lerpC) else $0$1);
    $0$2 := (if p11$2 then FSUB32(1065353216, $lerpC) else $0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p1$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p1$2 then _HAVOC_int$2 else v117$2);
    $$5$0$1 := (if p1$1 then v117$1 else $$5$0$1);
    $$5$0$2 := (if p1$2 then v117$2 else $$5$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p1$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p1$2 then _HAVOC_int$2 else v118$2);
    $$5$1$1 := (if p1$1 then v118$1 else $$5$1$1);
    $$5$1$2 := (if p1$2 then v118$2 else $$5$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p1$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p1$2 then _HAVOC_int$2 else v119$2);
    $$5$2$1 := (if p1$1 then v119$1 else $$5$2$1);
    $$5$2$2 := (if p1$2 then v119$2 else $$5$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p1$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p1$2 then _HAVOC_int$2 else v120$2);
    $$5$3$1 := (if p1$1 then v120$1 else $$5$3$1);
    $$5$3$2 := (if p1$2 then v120$2 else $$5$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v121$1 := (if p1$1 then _HAVOC_int$1 else v121$1);
    v121$2 := (if p1$2 then _HAVOC_int$2 else v121$2);
    $$5$4$1 := (if p1$1 then v121$1 else $$5$4$1);
    $$5$4$2 := (if p1$2 then v121$2 else $$5$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v122$1 := (if p1$1 then _HAVOC_int$1 else v122$1);
    v122$2 := (if p1$2 then _HAVOC_int$2 else v122$2);
    $$5$5$1 := (if p1$1 then v122$1 else $$5$5$1);
    $$5$5$2 := (if p1$2 then v122$2 else $$5$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v123$1 := (if p1$1 then _HAVOC_int$1 else v123$1);
    v123$2 := (if p1$2 then _HAVOC_int$2 else v123$2);
    $$5$6$1 := (if p1$1 then v123$1 else $$5$6$1);
    $$5$6$2 := (if p1$2 then v123$2 else $$5$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p1$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p1$2 then _HAVOC_int$2 else v124$2);
    $$5$7$1 := (if p1$1 then v124$1 else $$5$7$1);
    $$5$7$2 := (if p1$2 then v124$2 else $$5$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v125$1 := (if p1$1 then _HAVOC_int$1 else v125$1);
    v125$2 := (if p1$2 then _HAVOC_int$2 else v125$2);
    $$5$8$1 := (if p1$1 then v125$1 else $$5$8$1);
    $$5$8$2 := (if p1$2 then v125$2 else $$5$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v126$1 := (if p1$1 then _HAVOC_int$1 else v126$1);
    v126$2 := (if p1$2 then _HAVOC_int$2 else v126$2);
    $$5$9$1 := (if p1$1 then v126$1 else $$5$9$1);
    $$5$9$2 := (if p1$2 then v126$2 else $$5$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v127$1 := (if p1$1 then _HAVOC_int$1 else v127$1);
    v127$2 := (if p1$2 then _HAVOC_int$2 else v127$2);
    $$5$10$1 := (if p1$1 then v127$1 else $$5$10$1);
    $$5$10$2 := (if p1$2 then v127$2 else $$5$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v128$1 := (if p1$1 then _HAVOC_int$1 else v128$1);
    v128$2 := (if p1$2 then _HAVOC_int$2 else v128$2);
    $$5$11$1 := (if p1$1 then v128$1 else $$5$11$1);
    $$5$11$2 := (if p1$2 then v128$2 else $$5$11$2);
    v129$1 := (if p1$1 then $$5$0$1 else v129$1);
    v129$2 := (if p1$2 then $$5$0$2 else v129$2);
    v130$1 := (if p1$1 then $$5$1$1 else v130$1);
    v130$2 := (if p1$2 then $$5$1$2 else v130$2);
    v131$1 := (if p1$1 then $$5$2$1 else v131$1);
    v131$2 := (if p1$2 then $$5$2$2 else v131$2);
    v132$1 := (if p1$1 then $$5$3$1 else v132$1);
    v132$2 := (if p1$2 then $$5$3$2 else v132$2);
    v133$1 := (if p1$1 then $$5$4$1 else v133$1);
    v133$2 := (if p1$2 then $$5$4$2 else v133$2);
    v134$1 := (if p1$1 then $$5$5$1 else v134$1);
    v134$2 := (if p1$2 then $$5$5$2 else v134$2);
    v135$1 := (if p1$1 then $$5$6$1 else v135$1);
    v135$2 := (if p1$2 then $$5$6$2 else v135$2);
    v136$1 := (if p1$1 then $$5$7$1 else v136$1);
    v136$2 := (if p1$2 then $$5$7$2 else v136$2);
    v137$1 := (if p1$1 then $$5$8$1 else v137$1);
    v137$2 := (if p1$2 then $$5$8$2 else v137$2);
    v138$1 := (if p1$1 then $$5$9$1 else v138$1);
    v138$2 := (if p1$2 then $$5$9$2 else v138$2);
    v139$1 := (if p1$1 then $$5$10$1 else v139$1);
    v139$2 := (if p1$2 then $$5$10$2 else v139$2);
    v140$1 := (if p1$1 then $$5$11$1 else v140$1);
    v140$2 := (if p1$2 then $$5$11$2 else v140$2);
    call {:sourceloc_num 229} v141$1, v141$2 := $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(p1$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v132$1, v131$1), v130$1), v129$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v136$1, v135$1), v134$1), v133$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v140$1, v139$1), v138$1), v137$1), v2$1, v3$1, p1$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v132$2, v131$2), v130$2), v129$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v136$2, v135$2), v134$2), v133$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v140$2, v139$2), v138$2), v137$2), v2$2, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} true;
    $$clr00$0$1 := (if p1$1 then BV_EXTRACT(v141$1, 32, 0) else $$clr00$0$1);
    $$clr00$0$2 := (if p1$2 then BV_EXTRACT(v141$2, 32, 0) else $$clr00$0$2);
    $$clr00$1$1 := (if p1$1 then BV_EXTRACT(v141$1, 64, 32) else $$clr00$1$1);
    $$clr00$1$2 := (if p1$2 then BV_EXTRACT(v141$2, 64, 32) else $$clr00$1$2);
    $$clr00$2$1 := (if p1$1 then BV_EXTRACT(v141$1, 96, 64) else $$clr00$2$1);
    $$clr00$2$2 := (if p1$2 then BV_EXTRACT(v141$2, 96, 64) else $$clr00$2$2);
    $$clr00$3$1 := (if p1$1 then BV_EXTRACT(v141$1, 128, 96) else $$clr00$3$1);
    $$clr00$3$2 := (if p1$2 then BV_EXTRACT(v141$2, 128, 96) else $$clr00$3$2);
    v142$1 := (if p1$1 then $$clr$0$1 else v142$1);
    v142$2 := (if p1$2 then $$clr$0$2 else v142$2);
    v143$1 := (if p1$1 then $$clr00$0$1 else v143$1);
    v143$2 := (if p1$2 then $$clr00$0$2 else v143$2);
    call {:sourceloc_num 236} v144$1, v144$2 := $_Z5lerpffff(p1$1, v142$1, v143$1, $0$1, p1$2, v142$2, v143$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$0$1 := (if p1$1 then v144$1 else $$clr$0$1);
    $$clr$0$2 := (if p1$2 then v144$2 else $$clr$0$2);
    v145$1 := (if p1$1 then $$clr$1$1 else v145$1);
    v145$2 := (if p1$2 then $$clr$1$2 else v145$2);
    v146$1 := (if p1$1 then $$clr00$1$1 else v146$1);
    v146$2 := (if p1$2 then $$clr00$1$2 else v146$2);
    call {:sourceloc_num 240} v147$1, v147$2 := $_Z5lerpffff(p1$1, v145$1, v146$1, $0$1, p1$2, v145$2, v146$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$1$1 := (if p1$1 then v147$1 else $$clr$1$1);
    $$clr$1$2 := (if p1$2 then v147$2 else $$clr$1$2);
    v148$1 := (if p1$1 then $$clr$2$1 else v148$1);
    v148$2 := (if p1$2 then $$clr$2$2 else v148$2);
    v149$1 := (if p1$1 then $$clr00$2$1 else v149$1);
    v149$2 := (if p1$2 then $$clr00$2$2 else v149$2);
    call {:sourceloc_num 244} v150$1, v150$2 := $_Z5lerpffff(p1$1, v148$1, v149$1, $0$1, p1$2, v148$2, v149$2, $0$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5lerpffff"} true;
    $$clr$2$1 := (if p1$1 then v150$1 else $$clr$2$1);
    $$clr$2$2 := (if p1$2 then v150$2 else $$clr$2$2);
    v151$1 := (if p1$1 then $$clr$0$1 else v151$1);
    v151$2 := (if p1$2 then $$clr$0$2 else v151$2);
    v152$1 := (if p1$1 then $$clr$1$1 else v152$1);
    v152$2 := (if p1$2 then $$clr$1$2 else v152$2);
    v153$1 := (if p1$1 then $$clr$2$1 else v153$1);
    v153$2 := (if p1$2 then $$clr$2$2 else v153$2);
    call {:sourceloc} {:sourceloc_num 249} _LOG_WRITE_$$dst(p1$1, BV32_ADD(BV32_MUL($imageW, v1$1), v0$1), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0, 1132396544)), 24), BV32_SHL(FP32_TO_SI32(FMUL32(v153$1, 1132396544)), 16)), BV32_SHL(FP32_TO_SI32(FMUL32(v152$1, 1132396544)), 8)), FP32_TO_SI32(FMUL32(v151$1, 1132396544))), $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p1$2, BV32_ADD(BV32_MUL($imageW, v1$2), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 249} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 249} _CHECK_WRITE_$$dst(p1$2, BV32_ADD(BV32_MUL($imageW, v1$2), v0$2), BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0, 1132396544)), 24), BV32_SHL(FP32_TO_SI32(FMUL32(v153$2, 1132396544)), 16)), BV32_SHL(FP32_TO_SI32(FMUL32(v152$2, 1132396544)), 8)), FP32_TO_SI32(FMUL32(v151$2, 1132396544))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)] := (if p1$1 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0, 1132396544)), 24), BV32_SHL(FP32_TO_SI32(FMUL32(v153$1, 1132396544)), 16)), BV32_SHL(FP32_TO_SI32(FMUL32(v152$1, 1132396544)), 8)), FP32_TO_SI32(FMUL32(v151$1, 1132396544))) else $$dst[BV32_ADD(BV32_MUL($imageW, v1$1), v0$1)]);
    $$dst[BV32_ADD(BV32_MUL($imageW, v1$2), v0$2)] := (if p1$2 then BV32_OR(BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(FMUL32(0, 1132396544)), 24), BV32_SHL(FP32_TO_SI32(FMUL32(v153$2, 1132396544)), 16)), BV32_SHL(FP32_TO_SI32(FMUL32(v152$2, 1132396544)), 8)), FP32_TO_SI32(FMUL32(v151$2, 1132396544))) else $$dst[BV32_ADD(BV32_MUL($imageW, v1$2), v0$2)]);
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $7.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $7;

  $9.backedge:
    assume {:backedge} p8$1 || p8$2;
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $9;
}



procedure {:source_name "_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff"} $_Z5tex2D7textureI6uchar4Li2EL19cudaTextureReadMode1EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "__expf"} $__expf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z5lerpffff"} $_Z5lerpffff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 40 then 1 else 0) != 0;

axiom (if num_groups_y == 51 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$a.i$0$1: int;

var $$a.i$0$2: int;

var $$a.i$1$1: int;

var $$a.i$1$2: int;

var $$a.i$2$1: int;

var $$a.i$2$2: int;

var $$a.i$3$1: int;

var $$a.i$3$2: int;

var $$b.i$0$1: int;

var $$b.i$0$2: int;

var $$b.i$1$1: int;

var $$b.i$1$2: int;

var $$b.i$2$1: int;

var $$b.i$2$2: int;

var $$b.i$3$1: int;

var $$b.i$3$2: int;

var $$clr$0$1: int;

var $$clr$0$2: int;

var $$clr$1$1: int;

var $$clr$1$2: int;

var $$clr$2$1: int;

var $$clr$2$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$1$2$1: int;

var $$1$2$2: int;

var $$1$3$1: int;

var $$1$3$2: int;

var $$1$4$1: int;

var $$1$4$2: int;

var $$1$5$1: int;

var $$1$5$2: int;

var $$1$6$1: int;

var $$1$6$2: int;

var $$1$7$1: int;

var $$1$7$2: int;

var $$1$8$1: int;

var $$1$8$2: int;

var $$1$9$1: int;

var $$1$9$2: int;

var $$1$10$1: int;

var $$1$10$2: int;

var $$1$11$1: int;

var $$1$11$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$2$2$1: int;

var $$2$2$2: int;

var $$2$3$1: int;

var $$2$3$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$3$4$1: int;

var $$3$4$2: int;

var $$3$5$1: int;

var $$3$5$2: int;

var $$3$6$1: int;

var $$3$6$2: int;

var $$3$7$1: int;

var $$3$7$2: int;

var $$3$8$1: int;

var $$3$8$2: int;

var $$3$9$1: int;

var $$3$9$2: int;

var $$3$10$1: int;

var $$3$10$2: int;

var $$3$11$1: int;

var $$3$11$2: int;

var $$clrIJ$0$1: int;

var $$clrIJ$0$2: int;

var $$clrIJ$1$1: int;

var $$clrIJ$1$2: int;

var $$clrIJ$2$1: int;

var $$clrIJ$2$2: int;

var $$clrIJ$3$1: int;

var $$clrIJ$3$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$4$4$1: int;

var $$4$4$2: int;

var $$4$5$1: int;

var $$4$5$2: int;

var $$4$6$1: int;

var $$4$6$2: int;

var $$4$7$1: int;

var $$4$7$2: int;

var $$4$8$1: int;

var $$4$8$2: int;

var $$4$9$1: int;

var $$4$9$2: int;

var $$4$10$1: int;

var $$4$10$2: int;

var $$4$11$1: int;

var $$4$11$2: int;

var $$clr00$0$1: int;

var $$clr00$0$2: int;

var $$clr00$1$1: int;

var $$clr00$1$2: int;

var $$clr00$2$1: int;

var $$clr00$2$2: int;

var $$clr00$3$1: int;

var $$clr00$3$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$5$2$1: int;

var $$5$2$2: int;

var $$5$3$1: int;

var $$5$3$2: int;

var $$5$4$1: int;

var $$5$4$2: int;

var $$5$5$1: int;

var $$5$5$2: int;

var $$5$6$1: int;

var $$5$6$2: int;

var $$5$7$1: int;

var $$5$7$2: int;

var $$5$8$1: int;

var $$5$8$2: int;

var $$5$9$1: int;

var $$5$9$2: int;

var $$5$10$1: int;

var $$5$10$2: int;

var $$5$11$1: int;

var $$5$11$2: int;

const _WATCHED_VALUE_$$dst: int;

procedure {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _READ_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_READ_$$dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst: bool;

procedure {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _WRITE_HAS_OCCURRED_$$dst);
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



procedure _CHECK_WRITE_$$dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_ATOMIC_$$dst(_P: bool, _offset: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



const _WATCHED_VALUE_$$texImage: int;

procedure {:inline 1} _LOG_READ_$$texImage(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texImage;



implementation {:inline 1} _LOG_READ_$$texImage(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then true else _READ_HAS_OCCURRED_$$texImage);
    return;
}



procedure _CHECK_READ_$$texImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texImage);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texImage: bool;

procedure {:inline 1} _LOG_WRITE_$$texImage(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texImage, _WRITE_READ_BENIGN_FLAG_$$texImage;



implementation {:inline 1} _LOG_WRITE_$$texImage(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then true else _WRITE_HAS_OCCURRED_$$texImage);
    _WRITE_READ_BENIGN_FLAG_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texImage);
    return;
}



procedure _CHECK_WRITE_$$texImage(_P: bool, _offset: int, _value: int);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage != _value);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texImage != _value);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texImage(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texImage;



implementation {:inline 1} _LOG_ATOMIC_$$texImage(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texImage := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texImage);
    return;
}



procedure _CHECK_ATOMIC_$$texImage(_P: bool, _offset: int);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);
  requires {:source_name "texImage"} {:array "$$texImage"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texImage(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texImage;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texImage(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texImage := (if _P && _WRITE_HAS_OCCURRED_$$texImage && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texImage);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}
