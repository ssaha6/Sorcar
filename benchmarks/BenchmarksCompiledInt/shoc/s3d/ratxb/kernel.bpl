type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$T"} {:global} {:elem_width 32} {:source_name "T"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$T: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$T: bool;

axiom {:array_info "$$C"} {:global} {:elem_width 32} {:source_name "C"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$C: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$C: bool;

var {:source_name "RF"} {:global} $$RF: [int]int;

axiom {:array_info "$$RF"} {:global} {:elem_width 32} {:source_name "RF"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RF: bool;

var {:source_name "RB"} {:global} $$RB: [int]int;

axiom {:array_info "$$RB"} {:global} {:elem_width 32} {:source_name "RB"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RB: bool;

axiom {:array_info "$$RKLOW"} {:global} {:elem_width 32} {:source_name "RKLOW"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RKLOW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RKLOW: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RKLOW: bool;

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

function FADD32(int, int) : int;

function FADD64(int, int) : int;

function FDIV32(int, int) : int;

function FDIV64(int, int) : int;

function FEXP32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FSUB32(int, int) : int;

function FSUB64(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

procedure {:source_name "ratxb_kernel"} {:kernel} $ratxb_kernel($TCONV: int);
  requires !_READ_HAS_OCCURRED_$$T && !_WRITE_HAS_OCCURRED_$$T && !_ATOMIC_HAS_OCCURRED_$$T;
  requires !_READ_HAS_OCCURRED_$$C && !_WRITE_HAS_OCCURRED_$$C && !_ATOMIC_HAS_OCCURRED_$$C;
  requires !_READ_HAS_OCCURRED_$$RF && !_WRITE_HAS_OCCURRED_$$RF && !_ATOMIC_HAS_OCCURRED_$$RF;
  requires !_READ_HAS_OCCURRED_$$RB && !_WRITE_HAS_OCCURRED_$$RB && !_ATOMIC_HAS_OCCURRED_$$RB;
  requires !_READ_HAS_OCCURRED_$$RKLOW && !_WRITE_HAS_OCCURRED_$$RKLOW && !_ATOMIC_HAS_OCCURRED_$$RKLOW;
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
  modifies _READ_HAS_OCCURRED_$$RF, _WRITE_HAS_OCCURRED_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF, _READ_HAS_OCCURRED_$$RB, _WRITE_HAS_OCCURRED_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:source_name "ratxb_kernel"} {:kernel} $ratxb_kernel($TCONV: int)
{
  var $CTOT.0$1: int;
  var $CTOT.0$2: int;
  var $k.0: int;
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
  var v104$1: int;
  var v104$2: int;
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
  var v116$1: int;
  var v116$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v120$1: int;
  var v120$2: int;
  var v121$1: int;
  var v121$2: int;
  var v122$1: int;
  var v122$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
  var v125$1: int;
  var v125$2: int;
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
  var v134$1: int;
  var v134$2: int;
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
  var v154$1: int;
  var v154$2: int;
  var v155$1: int;
  var v155$2: int;
  var v156$1: int;
  var v156$2: int;
  var v157$1: int;
  var v157$2: int;
  var v158$1: int;
  var v158$2: int;
  var v159$1: int;
  var v159$2: int;
  var v160$1: int;
  var v160$2: int;
  var v161$1: int;
  var v161$2: int;
  var v162$1: int;
  var v162$2: int;
  var v163$1: int;
  var v163$2: int;
  var v164$1: int;
  var v164$2: int;
  var v165$1: int;
  var v165$2: int;
  var v166$1: int;
  var v166$2: int;
  var v167$1: int;
  var v167$2: int;
  var v168$1: int;
  var v168$2: int;
  var v169$1: int;
  var v169$2: int;
  var v170$1: int;
  var v170$2: int;
  var v171$1: int;
  var v171$2: int;
  var v172$1: int;
  var v172$2: int;
  var v173$1: int;
  var v173$2: int;
  var v174$1: int;
  var v174$2: int;
  var v175$1: int;
  var v175$2: int;
  var v176$1: int;
  var v176$2: int;
  var v177$1: int;
  var v177$2: int;
  var v178$1: int;
  var v178$2: int;
  var v179$1: int;
  var v179$2: int;
  var v180$1: int;
  var v180$2: int;
  var v181$1: int;
  var v181$2: int;
  var v182$1: int;
  var v182$2: int;
  var v183$1: int;
  var v183$2: int;
  var v184$1: int;
  var v184$2: int;
  var v185$1: int;
  var v185$2: int;
  var v186$1: int;
  var v186$2: int;
  var v187$1: int;
  var v187$2: int;
  var v188$1: int;
  var v188$2: int;
  var v189$1: int;
  var v189$2: int;
  var v190$1: int;
  var v190$2: int;
  var v191$1: int;
  var v191$2: int;
  var v192$1: int;
  var v192$2: int;
  var v193$1: int;
  var v193$2: int;
  var v194$1: int;
  var v194$2: int;
  var v195$1: int;
  var v195$2: int;
  var v196$1: int;
  var v196$2: int;
  var v197$1: int;
  var v197$2: int;
  var v198$1: int;
  var v198$2: int;
  var v199$1: int;
  var v199$2: int;


  $0:
    havoc v0$1, v0$2;
    v1$1 := FMUL32(v0$1, $TCONV);
    v1$2 := FMUL32(v0$2, $TCONV);
    $CTOT.0$1, $k.0 := 0, 1;
    $CTOT.0$2 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 2} true;
    v2 := BV32_ULE($k.0, 22);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    v11$1 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v10$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v9$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v8$1)), FP32_CONV64(FSUB32(FADD32(FSUB32(FSUB32($CTOT.0$1, v4$1), v5$1), v6$1), v7$1))))));
    v11$2 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v10$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v9$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v8$2)), FP32_CONV64(FSUB32(FADD32(FSUB32(FSUB32($CTOT.0$2, v4$2), v5$2), v6$2), v7$2))))));
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    v18$1 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v17$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v16$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v15$1)), FP32_CONV64(FADD32(FADD32(FMUL32(1076468122, v13$1), FADD32(FMUL32(-1098236559, v12$1), $CTOT.0$1)), v14$1))))));
    v18$2 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v17$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v16$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v15$2)), FP32_CONV64(FADD32(FADD32(FMUL32(1076468122, v13$2), FADD32(FMUL32(-1098236559, v12$2), $CTOT.0$2)), v14$2))))));
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    havoc v25$1, v25$2;
    havoc v26$1, v26$2;
    v27$1 := FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v20$1)), FP32_CONV64(FADD32($CTOT.0$1, v19$1))), FP32_CONV64(v21$1)), FMUL64(4602678819172646912, FP32_CONV64(v22$1))), FP32_CONV64(v23$1)), FMUL64(4611686018427387904, FP32_CONV64(v24$1))), FMUL64(4611686018427387904, FP32_CONV64(v25$1))), FMUL64(4611686018427387904, FP32_CONV64(v26$1))));
    v27$2 := FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v20$2)), FP32_CONV64(FADD32($CTOT.0$2, v19$2))), FP32_CONV64(v21$2)), FMUL64(4602678819172646912, FP32_CONV64(v22$2))), FP32_CONV64(v23$2)), FMUL64(4611686018427387904, FP32_CONV64(v24$2))), FMUL64(4611686018427387904, FP32_CONV64(v25$2))), FMUL64(4611686018427387904, FP32_CONV64(v26$2))));
    havoc v28$1, v28$2;
    havoc v29$1, v29$2;
    havoc v30$1, v30$2;
    havoc v31$1, v31$2;
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    havoc v35$1, v35$2;
    v36$1 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v35$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v34$1)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v33$1)), FP32_CONV64(FADD32(FADD32(FADD32(FADD32(FMUL32(1097229926, v29$1), FADD32(FMUL32(1068708659, v28$1), $CTOT.0$1)), v30$1), FMUL32(1061158912, v31$1)), FMUL32(1076258406, v32$1)))))));
    v36$2 := FP64_CONV32(FADD64(FMUL64(4611686018427387904, FP32_CONV64(v35$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v34$2)), FADD64(FMUL64(4611686018427387904, FP32_CONV64(v33$2)), FP32_CONV64(FADD32(FADD32(FADD32(FADD32(FMUL32(1097229926, v29$2), FADD32(FMUL32(1068708659, v28$2), $CTOT.0$2)), v30$2), FMUL32(1061158912, v31$2)), FMUL32(1076258406, v32$2)))))));
    havoc v37$1, v37$2;
    havoc v38$1, v38$2;
    havoc v39$1, v39$2;
    havoc v40$1, v40$2;
    havoc v41$1, v41$2;
    havoc v42$1, v42$2;
    havoc v43$1, v43$2;
    havoc v44$1, v44$2;
    v45$1 := FP64_CONV32(FADD64(FADD64(FSUB64(FADD64(FMUL64(4602678819172646912, FP32_CONV64(v41$1)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v40$1)), FP32_CONV64(FSUB32(FSUB32(FSUB32($CTOT.0$1, v37$1), v38$1), FMUL32(1048576000, v39$1))))), FP32_CONV64(v42$1)), FMUL64(4611686018427387904, FP32_CONV64(v43$1))), FMUL64(4611686018427387904, FP32_CONV64(v44$1))));
    v45$2 := FP64_CONV32(FADD64(FADD64(FSUB64(FADD64(FMUL64(4602678819172646912, FP32_CONV64(v41$2)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v40$2)), FP32_CONV64(FSUB32(FSUB32(FSUB32($CTOT.0$2, v37$2), v38$2), FMUL32(1048576000, v39$2))))), FP32_CONV64(v42$2)), FMUL64(4611686018427387904, FP32_CONV64(v43$2))), FMUL64(4611686018427387904, FP32_CONV64(v44$2))));
    havoc v46$1, v46$2;
    havoc v47$1, v47$2;
    havoc v48$1, v48$2;
    havoc v49$1, v49$2;
    havoc v50$1, v50$2;
    havoc v51$1, v51$2;
    havoc v52$1, v52$2;
    havoc v53$1, v53$2;
    havoc v54$1, v54$2;
    v55$1 := FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v48$1)), FADD64(FMUL64(4617315517961601024, FP32_CONV64(v47$1)), FP32_CONV64(FADD32($CTOT.0$1, v46$1)))), FP32_CONV64(v49$1)), FMUL64(4602678819172646912, FP32_CONV64(v50$1))), FP32_CONV64(FMUL32(1075838976, v51$1))), FMUL64(4611686018427387904, FP32_CONV64(v52$1))), FMUL64(4611686018427387904, FP32_CONV64(v53$1))), FMUL64(4611686018427387904, FP32_CONV64(v54$1))));
    v55$2 := FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v48$2)), FADD64(FMUL64(4617315517961601024, FP32_CONV64(v47$2)), FP32_CONV64(FADD32($CTOT.0$2, v46$2)))), FP32_CONV64(v49$2)), FMUL64(4602678819172646912, FP32_CONV64(v50$2))), FP32_CONV64(FMUL32(1075838976, v51$2))), FMUL64(4611686018427387904, FP32_CONV64(v52$2))), FMUL64(4611686018427387904, FP32_CONV64(v53$2))), FMUL64(4611686018427387904, FP32_CONV64(v54$2))));
    havoc v56$1, v56$2;
    havoc v57$1, v57$2;
    havoc v58$1, v58$2;
    havoc v59$1, v59$2;
    havoc v60$1, v60$2;
    havoc v61$1, v61$2;
    call {:sourceloc} {:sourceloc_num 59} _LOG_READ_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 59} _CHECK_READ_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v62$1 := $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v62$2 := $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v63$1, v63$2;
    havoc v64$1, v64$2;
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v62$1, v11$1), v63$1), v64$1), $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$RF(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v62$2, v11$2), v63$2), v64$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v62$1, v11$1), v63$1), v64$1);
    $$RF[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v62$2, v11$2), v63$2), v64$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_READ_$$RB(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 63} _CHECK_READ_$$RB(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v65$1 := $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v65$2 := $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v66$1, v66$2;
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$RB(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v65$1, v11$1), v66$1), $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$RB(true, BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v65$2, v11$2), v66$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v65$1, v11$1), v66$1);
    $$RB[BV32_ADD(55296, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v65$2, v11$2), v66$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_READ_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 66} _CHECK_READ_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v67$1 := $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v67$2 := $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v68$1, v68$2;
    havoc v69$1, v69$2;
    call {:sourceloc} {:sourceloc_num 69} _LOG_WRITE_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v67$1, v18$1), v68$1), v69$1), $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 69} _CHECK_WRITE_$$RF(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v67$2, v18$2), v68$2), v69$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v67$1, v18$1), v68$1), v69$1);
    $$RF[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v67$2, v18$2), v68$2), v69$2);
    call {:sourceloc} {:sourceloc_num 70} _LOG_READ_$$RB(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 70} _CHECK_READ_$$RB(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v70$1 := $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v70$2 := $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v71$1, v71$2;
    call {:sourceloc} {:sourceloc_num 72} _LOG_WRITE_$$RB(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v70$1, v18$1), v71$1), $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 72} _CHECK_WRITE_$$RB(true, BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v70$2, v18$2), v71$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v70$1, v18$1), v71$1);
    $$RB[BV32_ADD(110592, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v70$2, v18$2), v71$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v72$1 := $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v72$2 := $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v73$1, v73$2;
    havoc v74$1, v74$2;
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v72$1, v27$1), v73$1), v74$1), $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$RF(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v72$2, v27$2), v73$2), v74$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v72$1, v27$1), v73$1), v74$1);
    $$RF[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v72$2, v27$2), v73$2), v74$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$RB(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$RB(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v75$1 := $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v75$2 := $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v76$1, v76$2;
    call {:sourceloc} {:sourceloc_num 79} _LOG_WRITE_$$RB(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v75$1, v27$1), v76$1), $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 79} _CHECK_WRITE_$$RB(true, BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v75$2, v27$2), v76$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v75$1, v27$1), v76$1);
    $$RB[BV32_ADD(124416, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v75$2, v27$2), v76$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v77$1 := $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v77$2 := $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v78$1, v78$2;
    havoc v79$1, v79$2;
    call {:sourceloc} {:sourceloc_num 83} _LOG_WRITE_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v77$1, v36$1), v78$1), v79$1), $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 83} _CHECK_WRITE_$$RF(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v77$2, v36$2), v78$2), v79$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v77$1, v36$1), v78$1), v79$1);
    $$RF[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v77$2, v36$2), v78$2), v79$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$RB(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$RB(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v80$1 := $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v80$2 := $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v81$1, v81$2;
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$RB(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v80$1, v36$1), v81$1), $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$RB(true, BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v80$2, v36$2), v81$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v80$1, v36$1), v81$1);
    $$RB[BV32_ADD(138240, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v80$2, v36$2), v81$2);
    call {:sourceloc} {:sourceloc_num 87} _LOG_READ_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 87} _CHECK_READ_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v82$1 := $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v82$2 := $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v83$1, v83$2;
    havoc v84$1, v84$2;
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v82$1, v45$1), v83$1), v84$1), $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$RF(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v82$2, v45$2), v83$2), v84$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v82$1, v45$1), v83$1), v84$1);
    $$RF[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v82$2, v45$2), v83$2), v84$2);
    call {:sourceloc} {:sourceloc_num 91} _LOG_READ_$$RB(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 91} _CHECK_READ_$$RB(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v85$1 := $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v85$2 := $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v86$1, v86$2;
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$RB(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v85$1, v45$1), v86$1), $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$RB(true, BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v85$2, v45$2), v86$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v85$1, v45$1), v86$1);
    $$RB[BV32_ADD(152064, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v85$2, v45$2), v86$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v87$1 := $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v87$2 := $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v88$1, v88$2;
    havoc v89$1, v89$2;
    call {:sourceloc} {:sourceloc_num 97} _LOG_WRITE_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v87$1, v55$1), v88$1), v89$1), $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 97} _CHECK_WRITE_$$RF(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v87$2, v55$2), v88$2), v89$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v87$1, v55$1), v88$1), v89$1);
    $$RF[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v87$2, v55$2), v88$2), v89$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$RB(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$RB(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v90$1 := $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v90$2 := $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v91$1, v91$2;
    call {:sourceloc} {:sourceloc_num 100} _LOG_WRITE_$$RB(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v90$1, v55$1), v91$1), $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 100} _CHECK_WRITE_$$RB(true, BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v90$2, v55$2), v91$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v90$1, v55$1), v91$1);
    $$RB[BV32_ADD(387072, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v90$2, v55$2), v91$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_READ_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 101} _CHECK_READ_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v92$1 := $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v92$2 := $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v92$1, v27$1), $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$RF(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v92$2, v27$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v92$1, v27$1);
    $$RF[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v92$2, v27$2);
    call {:sourceloc} {:sourceloc_num 103} _LOG_READ_$$RB(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 103} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 103} _CHECK_READ_$$RB(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v93$1 := $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v93$2 := $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v94$1, v94$2;
    havoc v95$1, v95$2;
    call {:sourceloc} {:sourceloc_num 106} _LOG_WRITE_$$RB(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v93$1, v27$1), v94$1), v95$1), $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 106} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 106} _CHECK_WRITE_$$RB(true, BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v93$2, v27$2), v94$2), v95$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v93$1, v27$1), v94$1), v95$1);
    $$RB[BV32_ADD(622080, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v93$2, v27$2), v94$2), v95$2);
    call {:sourceloc} {:sourceloc_num 107} _LOG_READ_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 107} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 107} _CHECK_READ_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v96$1 := $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v96$2 := $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v97$1, v97$2;
    havoc v98$1, v98$2;
    call {:sourceloc} {:sourceloc_num 110} _LOG_WRITE_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FMUL32(v96$1, $CTOT.0$1), v97$1), v98$1), $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 110} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 110} _CHECK_WRITE_$$RF(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FMUL32(v96$2, $CTOT.0$2), v97$2), v98$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FMUL32(v96$1, $CTOT.0$1), v97$1), v98$1);
    $$RF[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FMUL32(v96$2, $CTOT.0$2), v97$2), v98$2);
    call {:sourceloc} {:sourceloc_num 111} _LOG_READ_$$RB(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 111} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 111} _CHECK_READ_$$RB(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v99$1 := $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v99$2 := $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    havoc v100$1, v100$2;
    call {:sourceloc} {:sourceloc_num 113} _LOG_WRITE_$$RB(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(v99$1, $CTOT.0$1), v100$1), $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 113} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 113} _CHECK_WRITE_$$RB(true, BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(v99$2, $CTOT.0$2), v100$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(v99$1, $CTOT.0$1), v100$1);
    $$RB[BV32_ADD(1658880, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(v99$2, $CTOT.0$2), v100$2);
    havoc v101$1, v101$2;
    call {:sourceloc} {:sourceloc_num 115} _LOG_READ_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 115} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 115} _CHECK_READ_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v102$1 := $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v102$2 := $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v103$1 := FMUL32(v101$1, FMUL32(v27$1, FDIV32(1065353216, v102$1)));
    v103$2 := FMUL32(v101$2, FMUL32(v27$2, FDIV32(1065353216, v102$2)));
    call {:sourceloc_num 116} v104$1, v104$2 := $__log10_float((if FLT32(v103$1, 8388608) then 8388608 else v103$1), (if FLT32(v103$2, 8388608) then 8388608 else v103$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v105$1 := FADD32(FADD32(FMUL32(1059699294, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 974754284), 1069066811))), FMUL32(1051495236, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 967038730), 1069066811)))), FEXP32(FMUL32(FMUL32(-981395456, FDIV32(1065353216, v1$1)), 1069066811)));
    v105$2 := FADD32(FADD32(FMUL32(1059699294, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 974754284), 1069066811))), FMUL32(1051495236, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 967038730), 1069066811)))), FEXP32(FMUL32(FMUL32(-981395456, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 117} v106$1, v106$2 := $__log10_float((if FLT32(v105$1, 8388608) then 8388608 else v105$1), (if FLT32(v105$2, 8388608) then 8388608 else v105$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v107$1 := FP64_CONV32(FSUB64(FP32_CONV64(v104$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v106$1)), 4600877379321698714)));
    v107$2 := FP64_CONV32(FSUB64(FP32_CONV64(v104$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v106$2)), 4600877379321698714)));
    v108$1 := FP64_CONV32(FMUL64(FP32_CONV64(v107$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v107$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v106$1)), 4604930618986332160)))))));
    v108$2 := FP64_CONV32(FMUL64(FP32_CONV64(v107$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v107$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v106$2)), 4604930618986332160)))))));
    v109$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v106$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v108$1, v108$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v103$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v103$1))))));
    v109$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v106$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v108$2, v108$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v103$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v103$2))))));
    call {:sourceloc} {:sourceloc_num 118} _LOG_READ_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 118} _CHECK_READ_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v110$1 := $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v110$2 := $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 119} _LOG_WRITE_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v110$1, v109$1), $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 119} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 119} _CHECK_WRITE_$$RF(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v110$2, v109$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v110$1, v109$1);
    $$RF[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v110$2, v109$2);
    call {:sourceloc} {:sourceloc_num 120} _LOG_READ_$$RB(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 120} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 120} _CHECK_READ_$$RB(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v111$1 := $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v111$2 := $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 121} _LOG_WRITE_$$RB(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v111$1, v109$1), $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 121} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 121} _CHECK_WRITE_$$RB(true, BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v111$2, v109$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v111$1, v109$1);
    $$RB[BV32_ADD(1728000, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v111$2, v109$2);
    havoc v112$1, v112$2;
    call {:sourceloc} {:sourceloc_num 123} _LOG_READ_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 123} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 123} _CHECK_READ_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v113$1 := $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v113$2 := $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v114$1 := FMUL32(v112$1, FMUL32(v27$1, FDIV32(1065353216, v113$1)));
    v114$2 := FMUL32(v112$2, FMUL32(v27$2, FDIV32(1065353216, v113$2)));
    call {:sourceloc_num 124} v115$1, v115$2 := $__log10_float((if FLT32(v114$1, 8388608) then 8388608 else v114$1), (if FLT32(v114$2, 8388608) then 8388608 else v114$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v116$1 := FADD32(FADD32(FMUL32(1046428516, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 1000205063), 1069066811))), FMUL32(1061695783, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 969203955), 1069066811)))), FEXP32(FMUL32(FMUL32(-977373184, FDIV32(1065353216, v1$1)), 1069066811)));
    v116$2 := FADD32(FADD32(FMUL32(1046428516, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 1000205063), 1069066811))), FMUL32(1061695783, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 969203955), 1069066811)))), FEXP32(FMUL32(FMUL32(-977373184, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 125} v117$1, v117$2 := $__log10_float((if FLT32(v116$1, 8388608) then 8388608 else v116$1), (if FLT32(v116$2, 8388608) then 8388608 else v116$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v118$1 := FP64_CONV32(FSUB64(FP32_CONV64(v115$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v117$1)), 4600877379321698714)));
    v118$2 := FP64_CONV32(FSUB64(FP32_CONV64(v115$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v117$2)), 4600877379321698714)));
    v119$1 := FP64_CONV32(FMUL64(FP32_CONV64(v118$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v118$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v117$1)), 4604930618986332160)))))));
    v119$2 := FP64_CONV32(FMUL64(FP32_CONV64(v118$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v118$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v117$2)), 4604930618986332160)))))));
    v120$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v117$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v119$1, v119$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v114$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v114$1))))));
    v120$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v117$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v119$2, v119$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v114$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v114$2))))));
    call {:sourceloc} {:sourceloc_num 126} _LOG_READ_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 126} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 126} _CHECK_READ_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v121$1 := $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v121$2 := $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 127} _LOG_WRITE_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v121$1, v120$1), $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 127} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 127} _CHECK_WRITE_$$RF(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v121$2, v120$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v121$1, v120$1);
    $$RF[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v121$2, v120$2);
    call {:sourceloc} {:sourceloc_num 128} _LOG_READ_$$RB(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 128} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 128} _CHECK_READ_$$RB(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v122$1 := $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v122$2 := $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 129} _LOG_WRITE_$$RB(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v122$1, v120$1), $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 129} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 129} _CHECK_WRITE_$$RB(true, BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v122$2, v120$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v122$1, v120$1);
    $$RB[BV32_ADD(1810944, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v122$2, v120$2);
    havoc v123$1, v123$2;
    call {:sourceloc} {:sourceloc_num 131} _LOG_READ_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 131} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 131} _CHECK_READ_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v124$1 := $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v124$2 := $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v125$1 := FMUL32(v123$1, FMUL32(v27$1, FDIV32(1065353216, v124$1)));
    v125$2 := FMUL32(v123$2, FMUL32(v27$2, FDIV32(1065353216, v124$2)));
    call {:sourceloc_num 132} v126$1, v126$2 := $__log10_float((if FLT32(v125$1, 8388608) then 8388608 else v125$1), (if FLT32(v125$2, 8388608) then 8388608 else v125$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v127$1 := FADD32(FADD32(FMUL32(1062417203, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 977504980), 1069066811))), FMUL32(1043542835, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 931909477), 1069066811)))), FEXP32(FMUL32(FMUL32(-971083981, FDIV32(1065353216, v1$1)), 1069066811)));
    v127$2 := FADD32(FADD32(FMUL32(1062417203, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 977504980), 1069066811))), FMUL32(1043542835, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 931909477), 1069066811)))), FEXP32(FMUL32(FMUL32(-971083981, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 133} v128$1, v128$2 := $__log10_float((if FLT32(v127$1, 8388608) then 8388608 else v127$1), (if FLT32(v127$2, 8388608) then 8388608 else v127$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v129$1 := FP64_CONV32(FSUB64(FP32_CONV64(v126$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v128$1)), 4600877379321698714)));
    v129$2 := FP64_CONV32(FSUB64(FP32_CONV64(v126$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v128$2)), 4600877379321698714)));
    v130$1 := FP64_CONV32(FMUL64(FP32_CONV64(v129$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v129$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v128$1)), 4604930618986332160)))))));
    v130$2 := FP64_CONV32(FMUL64(FP32_CONV64(v129$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v129$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v128$2)), 4604930618986332160)))))));
    v131$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v128$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v130$1, v130$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v125$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v125$1))))));
    v131$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v128$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v130$2, v130$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v125$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v125$2))))));
    call {:sourceloc} {:sourceloc_num 134} _LOG_READ_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 134} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 134} _CHECK_READ_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v132$1 := $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v132$2 := $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 135} _LOG_WRITE_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v132$1, v131$1), $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 135} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 135} _CHECK_WRITE_$$RF(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v132$2, v131$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v132$1, v131$1);
    $$RF[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v132$2, v131$2);
    call {:sourceloc} {:sourceloc_num 136} _LOG_READ_$$RB(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 136} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 136} _CHECK_READ_$$RB(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v133$1 := $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v133$2 := $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 137} _LOG_WRITE_$$RB(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v133$1, v131$1), $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 137} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 137} _CHECK_WRITE_$$RB(true, BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v133$2, v131$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v133$1, v131$1);
    $$RB[BV32_ADD(1990656, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v133$2, v131$2);
    havoc v134$1, v134$2;
    call {:sourceloc} {:sourceloc_num 139} _LOG_READ_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 139} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 139} _CHECK_READ_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v135$1 := $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v135$2 := $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v136$1 := FMUL32(v134$1, FMUL32(v27$1, FDIV32(1065353216, v135$1)));
    v136$2 := FMUL32(v134$2, FMUL32(v27$2, FDIV32(1065353216, v135$2)));
    call {:sourceloc_num 140} v137$1, v137$2 := $__log10_float((if FLT32(v136$1, 8388608) then 8388608 else v136$1), (if FLT32(v136$2, 8388608) then 8388608 else v136$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v138$1 := FADD32(FADD32(FMUL32(1055286886, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 954966675), 1069066811))), FMUL32(1057803469, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 963710285), 1069066811)))), FEXP32(FMUL32(FMUL32(-975020032, FDIV32(1065353216, v1$1)), 1069066811)));
    v138$2 := FADD32(FADD32(FMUL32(1055286886, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 954966675), 1069066811))), FMUL32(1057803469, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 963710285), 1069066811)))), FEXP32(FMUL32(FMUL32(-975020032, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 141} v139$1, v139$2 := $__log10_float((if FLT32(v138$1, 8388608) then 8388608 else v138$1), (if FLT32(v138$2, 8388608) then 8388608 else v138$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v140$1 := FP64_CONV32(FSUB64(FP32_CONV64(v137$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v139$1)), 4600877379321698714)));
    v140$2 := FP64_CONV32(FSUB64(FP32_CONV64(v137$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v139$2)), 4600877379321698714)));
    v141$1 := FP64_CONV32(FMUL64(FP32_CONV64(v140$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v140$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v139$1)), 4604930618986332160)))))));
    v141$2 := FP64_CONV32(FMUL64(FP32_CONV64(v140$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v140$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v139$2)), 4604930618986332160)))))));
    v142$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v139$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v141$1, v141$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v136$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v136$1))))));
    v142$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v139$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v141$2, v141$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v136$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v136$2))))));
    call {:sourceloc} {:sourceloc_num 142} _LOG_READ_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 142} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 142} _CHECK_READ_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v143$1 := $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v143$2 := $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 143} _LOG_WRITE_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v143$1, v142$1), $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 143} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 143} _CHECK_WRITE_$$RF(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v143$2, v142$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v143$1, v142$1);
    $$RF[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v143$2, v142$2);
    call {:sourceloc} {:sourceloc_num 144} _LOG_READ_$$RB(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 144} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 144} _CHECK_READ_$$RB(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v144$1 := $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v144$2 := $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 145} _LOG_WRITE_$$RB(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v144$1, v142$1), $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 145} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 145} _CHECK_WRITE_$$RB(true, BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v144$2, v142$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v144$1, v142$1);
    $$RB[BV32_ADD(2032128, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v144$2, v142$2);
    havoc v145$1, v145$2;
    call {:sourceloc} {:sourceloc_num 147} _LOG_READ_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 147} _CHECK_READ_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v146$1 := $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v146$2 := $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v147$1 := FMUL32(v145$1, FMUL32(v27$1, FDIV32(1065353216, v146$1)));
    v147$2 := FMUL32(v145$2, FMUL32(v27$2, FDIV32(1065353216, v146$2)));
    call {:sourceloc_num 148} v148$1, v148$2 := $__log10_float((if FLT32(v147$1, 8388608) then 8388608 else v147$1), (if FLT32(v147$2, 8388608) then 8388608 else v147$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v149$1 := FADD32(FADD32(FMUL32(1049096094, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 1001786209), 1069066811))), FMUL32(1060898865, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 981288827), 1069066811)))), FEXP32(FMUL32(FMUL32(-978761728, FDIV32(1065353216, v1$1)), 1069066811)));
    v149$2 := FADD32(FADD32(FMUL32(1049096094, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 1001786209), 1069066811))), FMUL32(1060898865, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 981288827), 1069066811)))), FEXP32(FMUL32(FMUL32(-978761728, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 149} v150$1, v150$2 := $__log10_float((if FLT32(v149$1, 8388608) then 8388608 else v149$1), (if FLT32(v149$2, 8388608) then 8388608 else v149$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v151$1 := FP64_CONV32(FSUB64(FP32_CONV64(v148$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v150$1)), 4600877379321698714)));
    v151$2 := FP64_CONV32(FSUB64(FP32_CONV64(v148$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v150$2)), 4600877379321698714)));
    v152$1 := FP64_CONV32(FMUL64(FP32_CONV64(v151$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v151$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v150$1)), 4604930618986332160)))))));
    v152$2 := FP64_CONV32(FMUL64(FP32_CONV64(v151$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v151$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v150$2)), 4604930618986332160)))))));
    v153$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v150$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v152$1, v152$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v147$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v147$1))))));
    v153$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v150$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v152$2, v152$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v147$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v147$2))))));
    call {:sourceloc} {:sourceloc_num 150} _LOG_READ_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 150} _CHECK_READ_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v154$1 := $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v154$2 := $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 151} _LOG_WRITE_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v154$1, v153$1), $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 151} _CHECK_WRITE_$$RF(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v154$2, v153$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v154$1, v153$1);
    $$RF[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v154$2, v153$2);
    call {:sourceloc} {:sourceloc_num 152} _LOG_READ_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 152} _CHECK_READ_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v155$1 := $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v155$2 := $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 153} _LOG_WRITE_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v155$1, v153$1), $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 153} _CHECK_WRITE_$$RB(true, BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v155$2, v153$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v155$1, v153$1);
    $$RB[BV32_ADD(2128896, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v155$2, v153$2);
    havoc v156$1, v156$2;
    call {:sourceloc} {:sourceloc_num 155} _LOG_READ_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 155} _CHECK_READ_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v157$1 := $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v157$2 := $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v158$1 := FMUL32(v156$1, FMUL32(v27$1, FDIV32(1065353216, v157$1)));
    v158$2 := FMUL32(v156$2, FMUL32(v27$2, FDIV32(1065353216, v157$2)));
    call {:sourceloc_num 156} v159$1, v159$2 := $__log10_float((if FLT32(v158$1, 8388608) then 8388608 else v158$1), (if FLT32(v158$2, 8388608) then 8388608 else v158$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v160$1 := FADD32(FADD32(FMUL32(1019893672, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 1000081857), 1069066811))), FMUL32(1064938819, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 981808136), 1069066811)))), FEXP32(FMUL32(FMUL32(-980897792, FDIV32(1065353216, v1$1)), 1069066811)));
    v160$2 := FADD32(FADD32(FMUL32(1019893672, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 1000081857), 1069066811))), FMUL32(1064938819, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 981808136), 1069066811)))), FEXP32(FMUL32(FMUL32(-980897792, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 157} v161$1, v161$2 := $__log10_float((if FLT32(v160$1, 8388608) then 8388608 else v160$1), (if FLT32(v160$2, 8388608) then 8388608 else v160$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v162$1 := FP64_CONV32(FSUB64(FP32_CONV64(v159$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v161$1)), 4600877379321698714)));
    v162$2 := FP64_CONV32(FSUB64(FP32_CONV64(v159$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v161$2)), 4600877379321698714)));
    v163$1 := FP64_CONV32(FMUL64(FP32_CONV64(v162$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v162$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v161$1)), 4604930618986332160)))))));
    v163$2 := FP64_CONV32(FMUL64(FP32_CONV64(v162$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v162$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v161$2)), 4604930618986332160)))))));
    v164$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v161$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v163$1, v163$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v158$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v158$1))))));
    v164$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v161$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v163$2, v163$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v158$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v158$2))))));
    call {:sourceloc} {:sourceloc_num 158} _LOG_READ_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 158} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 158} _CHECK_READ_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v165$1 := $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v165$2 := $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 159} _LOG_WRITE_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v165$1, v164$1), $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 159} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 159} _CHECK_WRITE_$$RF(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v165$2, v164$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v165$1, v164$1);
    $$RF[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v165$2, v164$2);
    call {:sourceloc} {:sourceloc_num 160} _LOG_READ_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 160} _CHECK_READ_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v166$1 := $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v166$2 := $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 161} _LOG_WRITE_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v166$1, v164$1), $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 161} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 161} _CHECK_WRITE_$$RB(true, BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v166$2, v164$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v166$1, v164$1);
    $$RB[BV32_ADD(2142720, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v166$2, v164$2);
    havoc v167$1, v167$2;
    call {:sourceloc} {:sourceloc_num 163} _LOG_READ_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 163} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 163} _CHECK_READ_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v168$1 := $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v168$2 := $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v169$1 := FMUL32(v167$1, FMUL32(v27$1, FDIV32(1065353216, v168$1)));
    v169$2 := FMUL32(v167$2, FMUL32(v27$2, FDIV32(1065353216, v168$2)));
    call {:sourceloc_num 164} v170$1, v170$2 := $__log10_float((if FLT32(v169$1, 8388608) then 8388608 else v169$1), (if FLT32(v169$2, 8388608) then 8388608 else v169$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v171$1 := FADD32(FADD32(FMUL32(1042388563, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 1006834287), 1069066811))), FMUL32(1062705771, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 971785647), 1069066811)))), FEXP32(FMUL32(FMUL32(-975761408, FDIV32(1065353216, v1$1)), 1069066811)));
    v171$2 := FADD32(FADD32(FMUL32(1042388563, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 1006834287), 1069066811))), FMUL32(1062705771, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 971785647), 1069066811)))), FEXP32(FMUL32(FMUL32(-975761408, FDIV32(1065353216, v1$2)), 1069066811)));
    call {:sourceloc_num 165} v172$1, v172$2 := $__log10_float((if FLT32(v171$1, 8388608) then 8388608 else v171$1), (if FLT32(v171$2, 8388608) then 8388608 else v171$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v173$1 := FP64_CONV32(FSUB64(FP32_CONV64(v170$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v172$1)), 4600877379321698714)));
    v173$2 := FP64_CONV32(FSUB64(FP32_CONV64(v170$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v172$2)), 4600877379321698714)));
    v174$1 := FP64_CONV32(FMUL64(FP32_CONV64(v173$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v173$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v172$1)), 4604930618986332160)))))));
    v174$2 := FP64_CONV32(FMUL64(FP32_CONV64(v173$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v173$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v172$2)), 4604930618986332160)))))));
    v175$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v172$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v174$1, v174$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v169$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v169$1))))));
    v175$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v172$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v174$2, v174$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v169$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v169$2))))));
    call {:sourceloc} {:sourceloc_num 166} _LOG_READ_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 166} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 166} _CHECK_READ_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v176$1 := $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v176$2 := $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 167} _LOG_WRITE_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v176$1, v175$1), $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 167} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 167} _CHECK_WRITE_$$RF(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v176$2, v175$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v176$1, v175$1);
    $$RF[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v176$2, v175$2);
    call {:sourceloc} {:sourceloc_num 168} _LOG_READ_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 168} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 168} _CHECK_READ_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v177$1 := $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v177$2 := $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 169} _LOG_WRITE_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v177$1, v175$1), $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 169} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 169} _CHECK_WRITE_$$RB(true, BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v177$2, v175$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v177$1, v175$1);
    $$RB[BV32_ADD(2336256, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v177$2, v175$2);
    havoc v178$1, v178$2;
    call {:sourceloc} {:sourceloc_num 171} _LOG_READ_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 171} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 171} _CHECK_READ_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v179$1 := $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v179$2 := $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v180$1 := FMUL32(v178$1, FMUL32(v27$1, FDIV32(1065353216, v179$1)));
    v180$2 := FMUL32(v178$2, FMUL32(v27$2, FDIV32(1065353216, v179$2)));
    call {:sourceloc_num 172} v181$1, v181$2 := $__log10_float((if FLT32(v180$1, 8388608) then 8388608 else v180$1), (if FLT32(v180$2, 8388608) then 8388608 else v180$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v182$1 := FP64_CONV32(FADD64(FADD64(FMUL64(4581421828931458171, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 980356407), 1069066811)))), FP32_CONV64(FMUL32(1065017672, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 980356407), 1069066811))))), FP32_CONV64(FEXP32(FMUL32(FMUL32(-975807488, FDIV32(1065353216, v1$1)), 1069066811)))));
    v182$2 := FP64_CONV32(FADD64(FADD64(FMUL64(4581421828931458171, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 980356407), 1069066811)))), FP32_CONV64(FMUL32(1065017672, FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 980356407), 1069066811))))), FP32_CONV64(FEXP32(FMUL32(FMUL32(-975807488, FDIV32(1065353216, v1$2)), 1069066811)))));
    call {:sourceloc_num 173} v183$1, v183$2 := $__log10_float((if FLT32(v182$1, 8388608) then 8388608 else v182$1), (if FLT32(v182$2, 8388608) then 8388608 else v182$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v184$1 := FP64_CONV32(FSUB64(FP32_CONV64(v181$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v183$1)), 4600877379321698714)));
    v184$2 := FP64_CONV32(FSUB64(FP32_CONV64(v181$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v183$2)), 4600877379321698714)));
    v185$1 := FP64_CONV32(FMUL64(FP32_CONV64(v184$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v184$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v183$1)), 4604930618986332160)))))));
    v185$2 := FP64_CONV32(FMUL64(FP32_CONV64(v184$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v184$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v183$2)), 4604930618986332160)))))));
    v186$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v183$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v185$1, v185$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v180$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v180$1))))));
    v186$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v183$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v185$2, v185$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v180$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v180$2))))));
    call {:sourceloc} {:sourceloc_num 174} _LOG_READ_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 174} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 174} _CHECK_READ_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v187$1 := $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v187$2 := $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 175} _LOG_WRITE_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v187$1, v186$1), $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 175} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 175} _CHECK_WRITE_$$RF(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v187$2, v186$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v187$1, v186$1);
    $$RF[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v187$2, v186$2);
    call {:sourceloc} {:sourceloc_num 176} _LOG_READ_$$RB(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 176} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 176} _CHECK_READ_$$RB(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v188$1 := $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v188$2 := $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 177} _LOG_WRITE_$$RB(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v188$1, v186$1), $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 177} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 177} _CHECK_WRITE_$$RB(true, BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v188$2, v186$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v188$1, v186$1);
    $$RB[BV32_ADD(2543616, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v188$2, v186$2);
    havoc v189$1, v189$2;
    call {:sourceloc} {:sourceloc_num 179} _LOG_READ_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 179} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 179} _CHECK_READ_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v190$1 := $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v190$2 := $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    v191$1 := FMUL32(v189$1, FMUL32(FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v57$1)), FP32_CONV64(FADD32($CTOT.0$1, v56$1))), FP32_CONV64(v58$1)), FMUL64(4602678819172646912, FP32_CONV64(v59$1))), FP32_CONV64(v60$1)), FMUL64(4611686018427387904, FP32_CONV64(v61$1)))), FDIV32(1065353216, v190$1)));
    v191$2 := FMUL32(v189$2, FMUL32(FP64_CONV32(FADD64(FADD64(FADD64(FADD64(FADD64(FMUL64(4617315517961601024, FP32_CONV64(v57$2)), FP32_CONV64(FADD32($CTOT.0$2, v56$2))), FP32_CONV64(v58$2)), FMUL64(4602678819172646912, FP32_CONV64(v59$2))), FP32_CONV64(v60$2)), FMUL64(4611686018427387904, FP32_CONV64(v61$2)))), FDIV32(1065353216, v190$2)));
    call {:sourceloc_num 180} v192$1, v192$2 := $__log10_float((if FLT32(v191$1, 8388608) then 8388608 else v191$1), (if FLT32(v191$2, 8388608) then 8388608 else v191$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v193$1 := FP64_CONV32(FADD64(FADD64(FMUL64(0, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 981668463), 1069066811)))), FMUL64(4607182418800017408, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$1), 977804324), 1069066811))))), FP32_CONV64(FEXP32(FMUL32(FMUL32(-952377088, FDIV32(1065353216, v1$1)), 1069066811)))));
    v193$2 := FP64_CONV32(FADD64(FADD64(FMUL64(0, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 981668463), 1069066811)))), FMUL64(4607182418800017408, FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v1$2), 977804324), 1069066811))))), FP32_CONV64(FEXP32(FMUL32(FMUL32(-952377088, FDIV32(1065353216, v1$2)), 1069066811)))));
    call {:sourceloc_num 181} v194$1, v194$2 := $__log10_float((if FLT32(v193$1, 8388608) then 8388608 else v193$1), (if FLT32(v193$2, 8388608) then 8388608 else v193$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v195$1 := FP64_CONV32(FSUB64(FP32_CONV64(v192$1), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v194$1)), 4600877379321698714)));
    v195$2 := FP64_CONV32(FSUB64(FP32_CONV64(v192$2), FADD64(FMUL64(4604210043045952881, FP32_CONV64(v194$2)), 4600877379321698714)));
    v196$1 := FP64_CONV32(FMUL64(FP32_CONV64(v195$1), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v195$1)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v194$1)), 4604930618986332160)))))));
    v196$2 := FP64_CONV32(FMUL64(FP32_CONV64(v195$2), FDIV64(4607182418800017408, FADD64(FMUL64(-4629159984981585428, FP32_CONV64(v195$2)), FP32_CONV64(FP64_CONV32(FADD64(FMUL64(-4614973646155368366, FP32_CONV64(v194$2)), 4604930618986332160)))))));
    v197$1 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v194$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v196$1, v196$1)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v191$1), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v191$1))))));
    v197$2 := FMUL32(FEXP32(FMUL32(FP64_CONV32(FMUL64(FP32_CONV64(v194$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(FMUL32(v196$2, v196$2)))))), 1079286392)), FP64_CONV32(FMUL64(FP32_CONV64(v191$2), FDIV64(4607182418800017408, FADD64(4607182418800017408, FP32_CONV64(v191$2))))));
    call {:sourceloc} {:sourceloc_num 182} _LOG_READ_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 182} _CHECK_READ_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RF"} true;
    v198$1 := $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v198$2 := $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 183} _LOG_WRITE_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v198$1, v197$1), $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 183} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 183} _CHECK_WRITE_$$RF(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v198$2, v197$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RF"} true;
    $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v198$1, v197$1);
    $$RF[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v198$2, v197$2);
    call {:sourceloc} {:sourceloc_num 184} _LOG_READ_$$RB(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 184} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 184} _CHECK_READ_$$RB(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$RB"} true;
    v199$1 := $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))];
    v199$2 := $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))];
    call {:sourceloc} {:sourceloc_num 185} _LOG_WRITE_$$RB(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(v199$1, v197$1), $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 185} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 185} _CHECK_WRITE_$$RB(true, BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(v199$2, v197$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$RB"} true;
    $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(v199$1, v197$1);
    $$RB[BV32_ADD(2612736, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(v199$2, v197$2);
    return;

  $truebb:
    assume {:partition} v2;
    havoc v3$1, v3$2;
    $CTOT.0$1, $k.0 := FADD32($CTOT.0$1, v3$1), BV32_ADD($k.0, 1);
    $CTOT.0$2 := FADD32($CTOT.0$2, v3$2);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;
}



procedure {:source_name "__log10_float"} $__log10_float($0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 128 then 1 else 0) != 0;

axiom (if num_groups_x == 108 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$T: int;

procedure {:inline 1} _LOG_READ_$$T(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$T;



implementation {:inline 1} _LOG_READ_$$T(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then true else _READ_HAS_OCCURRED_$$T);
    return;
}



procedure _CHECK_READ_$$T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$T);
  requires {:source_name "T"} {:array "$$T"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$T: bool;

procedure {:inline 1} _LOG_WRITE_$$T(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$T, _WRITE_READ_BENIGN_FLAG_$$T;



implementation {:inline 1} _LOG_WRITE_$$T(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then true else _WRITE_HAS_OCCURRED_$$T);
    _WRITE_READ_BENIGN_FLAG_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$T);
    return;
}



procedure _CHECK_WRITE_$$T(_P: bool, _offset: int, _value: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T != _value);
  requires {:source_name "T"} {:array "$$T"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$T != _value);
  requires {:source_name "T"} {:array "$$T"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$T(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$T;



implementation {:inline 1} _LOG_ATOMIC_$$T(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$T := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$T);
    return;
}



procedure _CHECK_ATOMIC_$$T(_P: bool, _offset: int);
  requires {:source_name "T"} {:array "$$T"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);
  requires {:source_name "T"} {:array "$$T"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$T(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$T;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$T(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$T := (if _P && _WRITE_HAS_OCCURRED_$$T && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$T);
    return;
}



const _WATCHED_VALUE_$$C: int;

procedure {:inline 1} _LOG_READ_$$C(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$C;



implementation {:inline 1} _LOG_READ_$$C(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then true else _READ_HAS_OCCURRED_$$C);
    return;
}



procedure _CHECK_READ_$$C(_P: bool, _offset: int, _value: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$C);
  requires {:source_name "C"} {:array "$$C"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$C: bool;

procedure {:inline 1} _LOG_WRITE_$$C(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$C, _WRITE_READ_BENIGN_FLAG_$$C;



implementation {:inline 1} _LOG_WRITE_$$C(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then true else _WRITE_HAS_OCCURRED_$$C);
    _WRITE_READ_BENIGN_FLAG_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$C);
    return;
}



procedure _CHECK_WRITE_$$C(_P: bool, _offset: int, _value: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C != _value);
  requires {:source_name "C"} {:array "$$C"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$C != _value);
  requires {:source_name "C"} {:array "$$C"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$C(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$C;



implementation {:inline 1} _LOG_ATOMIC_$$C(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$C := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$C);
    return;
}



procedure _CHECK_ATOMIC_$$C(_P: bool, _offset: int);
  requires {:source_name "C"} {:array "$$C"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);
  requires {:source_name "C"} {:array "$$C"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$C(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$C;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$C(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$C := (if _P && _WRITE_HAS_OCCURRED_$$C && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$C);
    return;
}



const _WATCHED_VALUE_$$RF: int;

procedure {:inline 1} _LOG_READ_$$RF(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RF;



implementation {:inline 1} _LOG_READ_$$RF(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then true else _READ_HAS_OCCURRED_$$RF);
    return;
}



procedure _CHECK_READ_$$RF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RF);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RF: bool;

procedure {:inline 1} _LOG_WRITE_$$RF(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RF, _WRITE_READ_BENIGN_FLAG_$$RF;



implementation {:inline 1} _LOG_WRITE_$$RF(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then true else _WRITE_HAS_OCCURRED_$$RF);
    _WRITE_READ_BENIGN_FLAG_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RF);
    return;
}



procedure _CHECK_WRITE_$$RF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF != _value);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RF != _value);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RF(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RF;



implementation {:inline 1} _LOG_ATOMIC_$$RF(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RF);
    return;
}



procedure _CHECK_ATOMIC_$$RF(_P: bool, _offset: int);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);
  requires {:source_name "RF"} {:array "$$RF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RF(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RF := (if _P && _WRITE_HAS_OCCURRED_$$RF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RF);
    return;
}



const _WATCHED_VALUE_$$RB: int;

procedure {:inline 1} _LOG_READ_$$RB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RB;



implementation {:inline 1} _LOG_READ_$$RB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then true else _READ_HAS_OCCURRED_$$RB);
    return;
}



procedure _CHECK_READ_$$RB(_P: bool, _offset: int, _value: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RB);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RB: bool;

procedure {:inline 1} _LOG_WRITE_$$RB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RB, _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:inline 1} _LOG_WRITE_$$RB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then true else _WRITE_HAS_OCCURRED_$$RB);
    _WRITE_READ_BENIGN_FLAG_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RB);
    return;
}



procedure _CHECK_WRITE_$$RB(_P: bool, _offset: int, _value: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB != _value);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RB != _value);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RB;



implementation {:inline 1} _LOG_ATOMIC_$$RB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RB);
    return;
}



procedure _CHECK_ATOMIC_$$RB(_P: bool, _offset: int);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);
  requires {:source_name "RB"} {:array "$$RB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RB := (if _P && _WRITE_HAS_OCCURRED_$$RB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RB);
    return;
}



const _WATCHED_VALUE_$$RKLOW: int;

procedure {:inline 1} _LOG_READ_$$RKLOW(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RKLOW;



implementation {:inline 1} _LOG_READ_$$RKLOW(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then true else _READ_HAS_OCCURRED_$$RKLOW);
    return;
}



procedure _CHECK_READ_$$RKLOW(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RKLOW);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RKLOW: bool;

procedure {:inline 1} _LOG_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RKLOW, _WRITE_READ_BENIGN_FLAG_$$RKLOW;



implementation {:inline 1} _LOG_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then true else _WRITE_HAS_OCCURRED_$$RKLOW);
    _WRITE_READ_BENIGN_FLAG_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RKLOW);
    return;
}



procedure _CHECK_WRITE_$$RKLOW(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW != _value);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKLOW != _value);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RKLOW(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RKLOW;



implementation {:inline 1} _LOG_ATOMIC_$$RKLOW(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RKLOW := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RKLOW);
    return;
}



procedure _CHECK_ATOMIC_$$RKLOW(_P: bool, _offset: int);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);
  requires {:source_name "RKLOW"} {:array "$$RKLOW"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RKLOW;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKLOW(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RKLOW := (if _P && _WRITE_HAS_OCCURRED_$$RKLOW && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RKLOW);
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
