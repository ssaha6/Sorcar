type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$RKF"} {:global} {:elem_width 32} {:source_name "RKF"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RKF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RKF: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RKF: bool;

axiom {:array_info "$$RKR"} {:global} {:elem_width 32} {:source_name "RKR"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$RKR: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$RKR: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$RKR: bool;

var {:source_name "WDOT"} {:global} $$WDOT: [int]int;

axiom {:array_info "$$WDOT"} {:global} {:elem_width 32} {:source_name "WDOT"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$WDOT: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$WDOT: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$WDOT: bool;

axiom {:array_info "$$molwt"} {:global} {:elem_width 32} {:source_name "molwt"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$molwt: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$molwt: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$molwt: bool;

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

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "rdwdot10_kernel"} {:kernel} $rdwdot10_kernel($rateconv: int);
  requires !_READ_HAS_OCCURRED_$$RKF && !_WRITE_HAS_OCCURRED_$$RKF && !_ATOMIC_HAS_OCCURRED_$$RKF;
  requires !_READ_HAS_OCCURRED_$$RKR && !_WRITE_HAS_OCCURRED_$$RKR && !_ATOMIC_HAS_OCCURRED_$$RKR;
  requires !_READ_HAS_OCCURRED_$$WDOT && !_WRITE_HAS_OCCURRED_$$WDOT && !_ATOMIC_HAS_OCCURRED_$$WDOT;
  requires !_READ_HAS_OCCURRED_$$molwt && !_WRITE_HAS_OCCURRED_$$molwt && !_ATOMIC_HAS_OCCURRED_$$molwt;
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
  modifies _WRITE_HAS_OCCURRED_$$WDOT, _WRITE_READ_BENIGN_FLAG_$$WDOT, _WRITE_READ_BENIGN_FLAG_$$WDOT;



implementation {:source_name "rdwdot10_kernel"} {:kernel} $rdwdot10_kernel($rateconv: int)
{
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
  var v28$1: int;
  var v28$2: int;
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
  var v57$1: int;
  var v57$2: int;
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
  var v114$1: int;
  var v114$2: int;
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
  var v227$1: int;
  var v227$2: int;
  var v228$1: int;
  var v228$2: int;
  var v229$1: int;
  var v229$2: int;
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
  var v200$1: int;
  var v200$2: int;
  var v201$1: int;
  var v201$2: int;
  var v202$1: int;
  var v202$2: int;
  var v203$1: int;
  var v203$2: int;
  var v204$1: int;
  var v204$2: int;
  var v205$1: int;
  var v205$2: int;
  var v206$1: int;
  var v206$2: int;
  var v207$1: int;
  var v207$2: int;
  var v208$1: int;
  var v208$2: int;
  var v209$1: int;
  var v209$2: int;
  var v210$1: int;
  var v210$2: int;
  var v211$1: int;
  var v211$2: int;
  var v212$1: int;
  var v212$2: int;
  var v213$1: int;
  var v213$2: int;
  var v214$1: int;
  var v214$2: int;
  var v215$1: int;
  var v215$2: int;
  var v216$1: int;
  var v216$2: int;
  var v217$1: int;
  var v217$2: int;
  var v218$1: int;
  var v218$2: int;
  var v219$1: int;
  var v219$2: int;
  var v220$1: int;
  var v220$2: int;
  var v221$1: int;
  var v221$2: int;
  var v222$1: int;
  var v222$2: int;
  var v223$1: int;
  var v223$2: int;
  var v224$1: int;
  var v224$2: int;
  var v225$1: int;
  var v225$2: int;
  var v226$1: int;
  var v226$2: int;
  var v230$1: int;
  var v230$2: int;
  var v231$1: int;
  var v231$2: int;
  var v232$1: int;
  var v232$2: int;
  var v233$1: int;
  var v233$2: int;
  var v234$1: int;
  var v234$2: int;
  var v235$1: int;
  var v235$2: int;
  var v236$1: int;
  var v236$2: int;
  var v237$1: int;
  var v237$2: int;
  var v238$1: int;
  var v238$2: int;
  var v239$1: int;
  var v239$2: int;
  var v240$1: int;
  var v240$2: int;
  var v241$1: int;
  var v241$2: int;
  var v242$1: int;
  var v242$2: int;
  var v243$1: int;
  var v243$2: int;
  var v244$1: int;
  var v244$2: int;
  var v245$1: int;
  var v245$2: int;
  var v246$1: int;
  var v246$2: int;
  var v247$1: int;
  var v247$2: int;
  var v248$1: int;
  var v248$2: int;
  var v249$1: int;
  var v249$2: int;
  var v250$1: int;
  var v250$2: int;
  var v251$1: int;
  var v251$2: int;
  var v252$1: int;
  var v252$2: int;
  var v253$1: int;
  var v253$2: int;
  var v254$1: int;
  var v254$2: int;
  var v255$1: int;
  var v255$2: int;
  var v256$1: int;
  var v256$2: int;
  var v257$1: int;
  var v257$2: int;
  var v258$1: int;
  var v258$2: int;
  var v259$1: int;
  var v259$2: int;
  var v260$1: int;
  var v260$2: int;
  var v261$1: int;
  var v261$2: int;
  var v262$1: int;
  var v262$2: int;
  var v263$1: int;
  var v263$2: int;
  var v264$1: int;
  var v264$2: int;
  var v265$1: int;
  var v265$2: int;
  var v266$1: int;
  var v266$2: int;
  var v267$1: int;
  var v267$2: int;


  $0:
    havoc v0$1, v0$2;
    havoc v1$1, v1$2;
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    havoc v8$1, v8$2;
    havoc v9$1, v9$2;
    havoc v10$1, v10$2;
    havoc v11$1, v11$2;
    havoc v12$1, v12$2;
    havoc v13$1, v13$2;
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    havoc v18$1, v18$2;
    havoc v19$1, v19$2;
    havoc v20$1, v20$2;
    havoc v21$1, v21$2;
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    havoc v25$1, v25$2;
    havoc v26$1, v26$2;
    havoc v27$1, v27$2;
    havoc v28$1, v28$2;
    havoc v29$1, v29$2;
    havoc v30$1, v30$2;
    havoc v31$1, v31$2;
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    havoc v35$1, v35$2;
    havoc v36$1, v36$2;
    havoc v37$1, v37$2;
    havoc v38$1, v38$2;
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
    havoc v55$1, v55$2;
    havoc v56$1, v56$2;
    havoc v57$1, v57$2;
    havoc v58$1, v58$2;
    havoc v59$1, v59$2;
    havoc v60$1, v60$2;
    havoc v61$1, v61$2;
    havoc v62$1, v62$2;
    havoc v63$1, v63$2;
    havoc v64$1, v64$2;
    havoc v65$1, v65$2;
    havoc v66$1, v66$2;
    havoc v67$1, v67$2;
    havoc v68$1, v68$2;
    havoc v69$1, v69$2;
    havoc v70$1, v70$2;
    havoc v71$1, v71$2;
    havoc v72$1, v72$2;
    havoc v73$1, v73$2;
    havoc v74$1, v74$2;
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$WDOT(true, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1), FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, FSUB32(v24$1, v25$1)), FSUB32(v26$1, v27$1)), FADD32(FADD32(FADD32(FSUB32(v16$1, v17$1), FSUB32(v18$1, v19$1)), FSUB32(v20$1, v21$1)), FSUB32(v22$1, v23$1))), FSUB32(v28$1, v29$1)), FSUB32(v30$1, v31$1)), FSUB32(v32$1, v33$1)), FSUB32(v34$1, v35$1)), FSUB32(v36$1, v37$1)), FSUB32(v38$1, v39$1)), FSUB32(v40$1, v41$1)), FSUB32(v42$1, v43$1)), FSUB32(v44$1, v45$1)), FSUB32(v46$1, v47$1)), FSUB32(v48$1, v49$1)), FSUB32(v50$1, v51$1)), FSUB32(v52$1, v53$1)), FSUB32(v54$1, v55$1)), FSUB32(v56$1, v57$1)), FSUB32(v58$1, v59$1)), FSUB32(v60$1, v61$1)), FSUB32(v62$1, v63$1)), FSUB32(v64$1, v65$1)), FSUB32(v66$1, v67$1)), FSUB32(v68$1, v69$1)), FSUB32(v70$1, v71$1)), FSUB32(v72$1, v73$1)), $rateconv), v74$1), $$WDOT[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$WDOT(true, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2), FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, FSUB32(v24$2, v25$2)), FSUB32(v26$2, v27$2)), FADD32(FADD32(FADD32(FSUB32(v16$2, v17$2), FSUB32(v18$2, v19$2)), FSUB32(v20$2, v21$2)), FSUB32(v22$2, v23$2))), FSUB32(v28$2, v29$2)), FSUB32(v30$2, v31$2)), FSUB32(v32$2, v33$2)), FSUB32(v34$2, v35$2)), FSUB32(v36$2, v37$2)), FSUB32(v38$2, v39$2)), FSUB32(v40$2, v41$2)), FSUB32(v42$2, v43$2)), FSUB32(v44$2, v45$2)), FSUB32(v46$2, v47$2)), FSUB32(v48$2, v49$2)), FSUB32(v50$2, v51$2)), FSUB32(v52$2, v53$2)), FSUB32(v54$2, v55$2)), FSUB32(v56$2, v57$2)), FSUB32(v58$2, v59$2)), FSUB32(v60$2, v61$2)), FSUB32(v62$2, v63$2)), FSUB32(v64$2, v65$2)), FSUB32(v66$2, v67$2)), FSUB32(v68$2, v69$2)), FSUB32(v70$2, v71$2)), FSUB32(v72$2, v73$2)), $rateconv), v74$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$WDOT"} true;
    $$WDOT[BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)] := FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, FSUB32(v24$1, v25$1)), FSUB32(v26$1, v27$1)), FADD32(FADD32(FADD32(FSUB32(v16$1, v17$1), FSUB32(v18$1, v19$1)), FSUB32(v20$1, v21$1)), FSUB32(v22$1, v23$1))), FSUB32(v28$1, v29$1)), FSUB32(v30$1, v31$1)), FSUB32(v32$1, v33$1)), FSUB32(v34$1, v35$1)), FSUB32(v36$1, v37$1)), FSUB32(v38$1, v39$1)), FSUB32(v40$1, v41$1)), FSUB32(v42$1, v43$1)), FSUB32(v44$1, v45$1)), FSUB32(v46$1, v47$1)), FSUB32(v48$1, v49$1)), FSUB32(v50$1, v51$1)), FSUB32(v52$1, v53$1)), FSUB32(v54$1, v55$1)), FSUB32(v56$1, v57$1)), FSUB32(v58$1, v59$1)), FSUB32(v60$1, v61$1)), FSUB32(v62$1, v63$1)), FSUB32(v64$1, v65$1)), FSUB32(v66$1, v67$1)), FSUB32(v68$1, v69$1)), FSUB32(v70$1, v71$1)), FSUB32(v72$1, v73$1)), $rateconv), v74$1);
    $$WDOT[BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)] := FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, FSUB32(v24$2, v25$2)), FSUB32(v26$2, v27$2)), FADD32(FADD32(FADD32(FSUB32(v16$2, v17$2), FSUB32(v18$2, v19$2)), FSUB32(v20$2, v21$2)), FSUB32(v22$2, v23$2))), FSUB32(v28$2, v29$2)), FSUB32(v30$2, v31$2)), FSUB32(v32$2, v33$2)), FSUB32(v34$2, v35$2)), FSUB32(v36$2, v37$2)), FSUB32(v38$2, v39$2)), FSUB32(v40$2, v41$2)), FSUB32(v42$2, v43$2)), FSUB32(v44$2, v45$2)), FSUB32(v46$2, v47$2)), FSUB32(v48$2, v49$2)), FSUB32(v50$2, v51$2)), FSUB32(v52$2, v53$2)), FSUB32(v54$2, v55$2)), FSUB32(v56$2, v57$2)), FSUB32(v58$2, v59$2)), FSUB32(v60$2, v61$2)), FSUB32(v62$2, v63$2)), FSUB32(v64$2, v65$2)), FSUB32(v66$2, v67$2)), FSUB32(v68$2, v69$2)), FSUB32(v70$2, v71$2)), FSUB32(v72$2, v73$2)), $rateconv), v74$2);
    havoc v75$1, v75$2;
    havoc v76$1, v76$2;
    havoc v77$1, v77$2;
    havoc v78$1, v78$2;
    havoc v79$1, v79$2;
    havoc v80$1, v80$2;
    havoc v81$1, v81$2;
    havoc v82$1, v82$2;
    havoc v83$1, v83$2;
    havoc v84$1, v84$2;
    havoc v85$1, v85$2;
    havoc v86$1, v86$2;
    havoc v87$1, v87$2;
    havoc v88$1, v88$2;
    havoc v89$1, v89$2;
    havoc v90$1, v90$2;
    havoc v91$1, v91$2;
    havoc v92$1, v92$2;
    havoc v93$1, v93$2;
    havoc v94$1, v94$2;
    havoc v95$1, v95$2;
    havoc v96$1, v96$2;
    havoc v97$1, v97$2;
    havoc v98$1, v98$2;
    havoc v99$1, v99$2;
    havoc v100$1, v100$2;
    havoc v101$1, v101$2;
    havoc v102$1, v102$2;
    havoc v103$1, v103$2;
    havoc v104$1, v104$2;
    havoc v105$1, v105$2;
    havoc v106$1, v106$2;
    havoc v107$1, v107$2;
    havoc v108$1, v108$2;
    havoc v109$1, v109$2;
    havoc v110$1, v110$2;
    havoc v111$1, v111$2;
    havoc v112$1, v112$2;
    havoc v113$1, v113$2;
    havoc v114$1, v114$2;
    havoc v115$1, v115$2;
    havoc v116$1, v116$2;
    havoc v117$1, v117$2;
    havoc v118$1, v118$2;
    havoc v119$1, v119$2;
    havoc v120$1, v120$2;
    havoc v121$1, v121$2;
    havoc v122$1, v122$2;
    havoc v123$1, v123$2;
    havoc v124$1, v124$2;
    havoc v125$1, v125$2;
    havoc v126$1, v126$2;
    havoc v127$1, v127$2;
    havoc v128$1, v128$2;
    havoc v129$1, v129$2;
    havoc v130$1, v130$2;
    havoc v131$1, v131$2;
    havoc v132$1, v132$2;
    havoc v133$1, v133$2;
    havoc v134$1, v134$2;
    havoc v135$1, v135$2;
    havoc v136$1, v136$2;
    havoc v137$1, v137$2;
    havoc v138$1, v138$2;
    havoc v139$1, v139$2;
    havoc v140$1, v140$2;
    havoc v141$1, v141$2;
    havoc v142$1, v142$2;
    havoc v143$1, v143$2;
    havoc v144$1, v144$2;
    havoc v145$1, v145$2;
    havoc v146$1, v146$2;
    havoc v147$1, v147$2;
    havoc v148$1, v148$2;
    havoc v149$1, v149$2;
    havoc v150$1, v150$2;
    havoc v151$1, v151$2;
    havoc v152$1, v152$2;
    havoc v153$1, v153$2;
    havoc v154$1, v154$2;
    havoc v155$1, v155$2;
    havoc v156$1, v156$2;
    havoc v157$1, v157$2;
    havoc v158$1, v158$2;
    havoc v159$1, v159$2;
    havoc v160$1, v160$2;
    havoc v161$1, v161$2;
    call {:sourceloc} {:sourceloc_num 164} _LOG_WRITE_$$WDOT(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(v75$1, v76$1), FSUB32(v77$1, v78$1)), FSUB32(v79$1, v80$1)), FSUB32(v81$1, v82$1)), FSUB32(v83$1, v84$1)), FSUB32(v85$1, v86$1)), FSUB32(v87$1, v88$1)), FSUB32(v89$1, v90$1)), FSUB32(v91$1, v92$1)), FSUB32(v93$1, v94$1)), FSUB32(v95$1, v96$1)), FSUB32(v97$1, v98$1)), FSUB32(v99$1, v100$1)), FSUB32(v101$1, v102$1)), FSUB32(v103$1, v104$1)), FSUB32(v105$1, v106$1)), FSUB32(v107$1, v108$1)), FSUB32(v109$1, v110$1)), FSUB32(v111$1, v112$1)), FSUB32(v113$1, v114$1)), FSUB32(v115$1, v116$1)), FSUB32(v117$1, v118$1)), FSUB32(v119$1, v120$1)), FSUB32(v121$1, v122$1)), FSUB32(v123$1, v124$1)), FSUB32(v125$1, v126$1)), FSUB32(v127$1, v128$1)), FSUB32(v129$1, v130$1)), FSUB32(v131$1, v132$1)), FSUB32(v133$1, v134$1)), FSUB32(v135$1, v136$1)), FSUB32(v137$1, v138$1)), FSUB32(v139$1, v140$1)), FSUB32(v141$1, v142$1)), FSUB32(v143$1, v144$1)), FSUB32(v145$1, v146$1)), FSUB32(v147$1, v148$1)), FSUB32(v149$1, v150$1)), FSUB32(v151$1, v152$1)), FSUB32(v153$1, v154$1)), FSUB32(v155$1, v156$1)), FSUB32(v157$1, v158$1)), FSUB32(v159$1, v160$1)), $rateconv), v161$1), $$WDOT[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 164} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 164} _CHECK_WRITE_$$WDOT(true, BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(v75$2, v76$2), FSUB32(v77$2, v78$2)), FSUB32(v79$2, v80$2)), FSUB32(v81$2, v82$2)), FSUB32(v83$2, v84$2)), FSUB32(v85$2, v86$2)), FSUB32(v87$2, v88$2)), FSUB32(v89$2, v90$2)), FSUB32(v91$2, v92$2)), FSUB32(v93$2, v94$2)), FSUB32(v95$2, v96$2)), FSUB32(v97$2, v98$2)), FSUB32(v99$2, v100$2)), FSUB32(v101$2, v102$2)), FSUB32(v103$2, v104$2)), FSUB32(v105$2, v106$2)), FSUB32(v107$2, v108$2)), FSUB32(v109$2, v110$2)), FSUB32(v111$2, v112$2)), FSUB32(v113$2, v114$2)), FSUB32(v115$2, v116$2)), FSUB32(v117$2, v118$2)), FSUB32(v119$2, v120$2)), FSUB32(v121$2, v122$2)), FSUB32(v123$2, v124$2)), FSUB32(v125$2, v126$2)), FSUB32(v127$2, v128$2)), FSUB32(v129$2, v130$2)), FSUB32(v131$2, v132$2)), FSUB32(v133$2, v134$2)), FSUB32(v135$2, v136$2)), FSUB32(v137$2, v138$2)), FSUB32(v139$2, v140$2)), FSUB32(v141$2, v142$2)), FSUB32(v143$2, v144$2)), FSUB32(v145$2, v146$2)), FSUB32(v147$2, v148$2)), FSUB32(v149$2, v150$2)), FSUB32(v151$2, v152$2)), FSUB32(v153$2, v154$2)), FSUB32(v155$2, v156$2)), FSUB32(v157$2, v158$2)), FSUB32(v159$2, v160$2)), $rateconv), v161$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$WDOT"} true;
    $$WDOT[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(v75$1, v76$1), FSUB32(v77$1, v78$1)), FSUB32(v79$1, v80$1)), FSUB32(v81$1, v82$1)), FSUB32(v83$1, v84$1)), FSUB32(v85$1, v86$1)), FSUB32(v87$1, v88$1)), FSUB32(v89$1, v90$1)), FSUB32(v91$1, v92$1)), FSUB32(v93$1, v94$1)), FSUB32(v95$1, v96$1)), FSUB32(v97$1, v98$1)), FSUB32(v99$1, v100$1)), FSUB32(v101$1, v102$1)), FSUB32(v103$1, v104$1)), FSUB32(v105$1, v106$1)), FSUB32(v107$1, v108$1)), FSUB32(v109$1, v110$1)), FSUB32(v111$1, v112$1)), FSUB32(v113$1, v114$1)), FSUB32(v115$1, v116$1)), FSUB32(v117$1, v118$1)), FSUB32(v119$1, v120$1)), FSUB32(v121$1, v122$1)), FSUB32(v123$1, v124$1)), FSUB32(v125$1, v126$1)), FSUB32(v127$1, v128$1)), FSUB32(v129$1, v130$1)), FSUB32(v131$1, v132$1)), FSUB32(v133$1, v134$1)), FSUB32(v135$1, v136$1)), FSUB32(v137$1, v138$1)), FSUB32(v139$1, v140$1)), FSUB32(v141$1, v142$1)), FSUB32(v143$1, v144$1)), FSUB32(v145$1, v146$1)), FSUB32(v147$1, v148$1)), FSUB32(v149$1, v150$1)), FSUB32(v151$1, v152$1)), FSUB32(v153$1, v154$1)), FSUB32(v155$1, v156$1)), FSUB32(v157$1, v158$1)), FSUB32(v159$1, v160$1)), $rateconv), v161$1);
    $$WDOT[BV32_ADD(27648, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(v75$2, v76$2), FSUB32(v77$2, v78$2)), FSUB32(v79$2, v80$2)), FSUB32(v81$2, v82$2)), FSUB32(v83$2, v84$2)), FSUB32(v85$2, v86$2)), FSUB32(v87$2, v88$2)), FSUB32(v89$2, v90$2)), FSUB32(v91$2, v92$2)), FSUB32(v93$2, v94$2)), FSUB32(v95$2, v96$2)), FSUB32(v97$2, v98$2)), FSUB32(v99$2, v100$2)), FSUB32(v101$2, v102$2)), FSUB32(v103$2, v104$2)), FSUB32(v105$2, v106$2)), FSUB32(v107$2, v108$2)), FSUB32(v109$2, v110$2)), FSUB32(v111$2, v112$2)), FSUB32(v113$2, v114$2)), FSUB32(v115$2, v116$2)), FSUB32(v117$2, v118$2)), FSUB32(v119$2, v120$2)), FSUB32(v121$2, v122$2)), FSUB32(v123$2, v124$2)), FSUB32(v125$2, v126$2)), FSUB32(v127$2, v128$2)), FSUB32(v129$2, v130$2)), FSUB32(v131$2, v132$2)), FSUB32(v133$2, v134$2)), FSUB32(v135$2, v136$2)), FSUB32(v137$2, v138$2)), FSUB32(v139$2, v140$2)), FSUB32(v141$2, v142$2)), FSUB32(v143$2, v144$2)), FSUB32(v145$2, v146$2)), FSUB32(v147$2, v148$2)), FSUB32(v149$2, v150$2)), FSUB32(v151$2, v152$2)), FSUB32(v153$2, v154$2)), FSUB32(v155$2, v156$2)), FSUB32(v157$2, v158$2)), FSUB32(v159$2, v160$2)), $rateconv), v161$2);
    havoc v162$1, v162$2;
    havoc v163$1, v163$2;
    havoc v164$1, v164$2;
    havoc v165$1, v165$2;
    havoc v166$1, v166$2;
    havoc v167$1, v167$2;
    havoc v168$1, v168$2;
    havoc v169$1, v169$2;
    havoc v170$1, v170$2;
    havoc v171$1, v171$2;
    havoc v172$1, v172$2;
    havoc v173$1, v173$2;
    havoc v174$1, v174$2;
    havoc v175$1, v175$2;
    havoc v176$1, v176$2;
    havoc v177$1, v177$2;
    havoc v178$1, v178$2;
    havoc v179$1, v179$2;
    havoc v180$1, v180$2;
    havoc v181$1, v181$2;
    havoc v182$1, v182$2;
    havoc v183$1, v183$2;
    havoc v184$1, v184$2;
    havoc v185$1, v185$2;
    havoc v186$1, v186$2;
    havoc v187$1, v187$2;
    havoc v188$1, v188$2;
    havoc v189$1, v189$2;
    havoc v190$1, v190$2;
    havoc v191$1, v191$2;
    havoc v192$1, v192$2;
    havoc v193$1, v193$2;
    havoc v194$1, v194$2;
    havoc v195$1, v195$2;
    havoc v196$1, v196$2;
    havoc v197$1, v197$2;
    havoc v198$1, v198$2;
    havoc v199$1, v199$2;
    havoc v200$1, v200$2;
    havoc v201$1, v201$2;
    havoc v202$1, v202$2;
    havoc v203$1, v203$2;
    havoc v204$1, v204$2;
    havoc v205$1, v205$2;
    havoc v206$1, v206$2;
    havoc v207$1, v207$2;
    havoc v208$1, v208$2;
    havoc v209$1, v209$2;
    havoc v210$1, v210$2;
    havoc v211$1, v211$2;
    havoc v212$1, v212$2;
    havoc v213$1, v213$2;
    havoc v214$1, v214$2;
    havoc v215$1, v215$2;
    havoc v216$1, v216$2;
    havoc v217$1, v217$2;
    havoc v218$1, v218$2;
    havoc v219$1, v219$2;
    havoc v220$1, v220$2;
    call {:sourceloc} {:sourceloc_num 224} _LOG_WRITE_$$WDOT(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FSUB32(FADD32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(-2147483648, FSUB32(v162$1, v163$1)), FSUB32(v164$1, v165$1)), FADD32(FADD32(FADD32(FSUB32(v0$1, v1$1), FSUB32(v2$1, v3$1)), FSUB32(v4$1, v5$1)), FSUB32(v6$1, v7$1))), FSUB32(v166$1, v167$1)), FSUB32(v168$1, v169$1)), FSUB32(v170$1, v171$1)), FADD32(FSUB32(v8$1, v9$1), FSUB32(v10$1, v11$1))), FSUB32(v172$1, v173$1)), FSUB32(v174$1, v175$1)), FSUB32(v176$1, v177$1)), FSUB32(v178$1, v179$1)), FSUB32(v180$1, v181$1)), FSUB32(v182$1, v183$1)), FSUB32(v184$1, v185$1)), FSUB32(v186$1, v187$1)), FSUB32(v188$1, v189$1)), FSUB32(v190$1, v191$1)), FSUB32(v192$1, v193$1)), FSUB32(v194$1, v195$1)), FSUB32(v196$1, v197$1)), FSUB32(v198$1, v199$1)), FSUB32(v200$1, v201$1)), FSUB32(v202$1, v203$1)), FSUB32(v204$1, v205$1)), FSUB32(v206$1, v207$1)), FSUB32(v208$1, v209$1)), FSUB32(v210$1, v211$1)), FSUB32(v212$1, v213$1)), FSUB32(v214$1, v215$1)), FSUB32(v216$1, v217$1)), FSUB32(v218$1, v219$1)), $rateconv), v220$1), $$WDOT[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 224} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 224} _CHECK_WRITE_$$WDOT(true, BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FSUB32(FADD32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(-2147483648, FSUB32(v162$2, v163$2)), FSUB32(v164$2, v165$2)), FADD32(FADD32(FADD32(FSUB32(v0$2, v1$2), FSUB32(v2$2, v3$2)), FSUB32(v4$2, v5$2)), FSUB32(v6$2, v7$2))), FSUB32(v166$2, v167$2)), FSUB32(v168$2, v169$2)), FSUB32(v170$2, v171$2)), FADD32(FSUB32(v8$2, v9$2), FSUB32(v10$2, v11$2))), FSUB32(v172$2, v173$2)), FSUB32(v174$2, v175$2)), FSUB32(v176$2, v177$2)), FSUB32(v178$2, v179$2)), FSUB32(v180$2, v181$2)), FSUB32(v182$2, v183$2)), FSUB32(v184$2, v185$2)), FSUB32(v186$2, v187$2)), FSUB32(v188$2, v189$2)), FSUB32(v190$2, v191$2)), FSUB32(v192$2, v193$2)), FSUB32(v194$2, v195$2)), FSUB32(v196$2, v197$2)), FSUB32(v198$2, v199$2)), FSUB32(v200$2, v201$2)), FSUB32(v202$2, v203$2)), FSUB32(v204$2, v205$2)), FSUB32(v206$2, v207$2)), FSUB32(v208$2, v209$2)), FSUB32(v210$2, v211$2)), FSUB32(v212$2, v213$2)), FSUB32(v214$2, v215$2)), FSUB32(v216$2, v217$2)), FSUB32(v218$2, v219$2)), $rateconv), v220$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$WDOT"} true;
    $$WDOT[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FSUB32(FADD32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(-2147483648, FSUB32(v162$1, v163$1)), FSUB32(v164$1, v165$1)), FADD32(FADD32(FADD32(FSUB32(v0$1, v1$1), FSUB32(v2$1, v3$1)), FSUB32(v4$1, v5$1)), FSUB32(v6$1, v7$1))), FSUB32(v166$1, v167$1)), FSUB32(v168$1, v169$1)), FSUB32(v170$1, v171$1)), FADD32(FSUB32(v8$1, v9$1), FSUB32(v10$1, v11$1))), FSUB32(v172$1, v173$1)), FSUB32(v174$1, v175$1)), FSUB32(v176$1, v177$1)), FSUB32(v178$1, v179$1)), FSUB32(v180$1, v181$1)), FSUB32(v182$1, v183$1)), FSUB32(v184$1, v185$1)), FSUB32(v186$1, v187$1)), FSUB32(v188$1, v189$1)), FSUB32(v190$1, v191$1)), FSUB32(v192$1, v193$1)), FSUB32(v194$1, v195$1)), FSUB32(v196$1, v197$1)), FSUB32(v198$1, v199$1)), FSUB32(v200$1, v201$1)), FSUB32(v202$1, v203$1)), FSUB32(v204$1, v205$1)), FSUB32(v206$1, v207$1)), FSUB32(v208$1, v209$1)), FSUB32(v210$1, v211$1)), FSUB32(v212$1, v213$1)), FSUB32(v214$1, v215$1)), FSUB32(v216$1, v217$1)), FSUB32(v218$1, v219$1)), $rateconv), v220$1);
    $$WDOT[BV32_ADD(41472, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FSUB32(FADD32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FSUB32(-2147483648, FSUB32(v162$2, v163$2)), FSUB32(v164$2, v165$2)), FADD32(FADD32(FADD32(FSUB32(v0$2, v1$2), FSUB32(v2$2, v3$2)), FSUB32(v4$2, v5$2)), FSUB32(v6$2, v7$2))), FSUB32(v166$2, v167$2)), FSUB32(v168$2, v169$2)), FSUB32(v170$2, v171$2)), FADD32(FSUB32(v8$2, v9$2), FSUB32(v10$2, v11$2))), FSUB32(v172$2, v173$2)), FSUB32(v174$2, v175$2)), FSUB32(v176$2, v177$2)), FSUB32(v178$2, v179$2)), FSUB32(v180$2, v181$2)), FSUB32(v182$2, v183$2)), FSUB32(v184$2, v185$2)), FSUB32(v186$2, v187$2)), FSUB32(v188$2, v189$2)), FSUB32(v190$2, v191$2)), FSUB32(v192$2, v193$2)), FSUB32(v194$2, v195$2)), FSUB32(v196$2, v197$2)), FSUB32(v198$2, v199$2)), FSUB32(v200$2, v201$2)), FSUB32(v202$2, v203$2)), FSUB32(v204$2, v205$2)), FSUB32(v206$2, v207$2)), FSUB32(v208$2, v209$2)), FSUB32(v210$2, v211$2)), FSUB32(v212$2, v213$2)), FSUB32(v214$2, v215$2)), FSUB32(v216$2, v217$2)), FSUB32(v218$2, v219$2)), $rateconv), v220$2);
    havoc v221$1, v221$2;
    havoc v222$1, v222$2;
    havoc v223$1, v223$2;
    havoc v224$1, v224$2;
    havoc v225$1, v225$2;
    havoc v226$1, v226$2;
    havoc v227$1, v227$2;
    havoc v228$1, v228$2;
    havoc v229$1, v229$2;
    havoc v230$1, v230$2;
    havoc v231$1, v231$2;
    havoc v232$1, v232$2;
    havoc v233$1, v233$2;
    havoc v234$1, v234$2;
    havoc v235$1, v235$2;
    havoc v236$1, v236$2;
    havoc v237$1, v237$2;
    havoc v238$1, v238$2;
    havoc v239$1, v239$2;
    havoc v240$1, v240$2;
    havoc v241$1, v241$2;
    havoc v242$1, v242$2;
    havoc v243$1, v243$2;
    havoc v244$1, v244$2;
    havoc v245$1, v245$2;
    havoc v246$1, v246$2;
    havoc v247$1, v247$2;
    havoc v248$1, v248$2;
    havoc v249$1, v249$2;
    havoc v250$1, v250$2;
    havoc v251$1, v251$2;
    havoc v252$1, v252$2;
    havoc v253$1, v253$2;
    havoc v254$1, v254$2;
    havoc v255$1, v255$2;
    havoc v256$1, v256$2;
    havoc v257$1, v257$2;
    havoc v258$1, v258$2;
    havoc v259$1, v259$2;
    havoc v260$1, v260$2;
    havoc v261$1, v261$2;
    havoc v262$1, v262$2;
    havoc v263$1, v263$2;
    havoc v264$1, v264$2;
    havoc v265$1, v265$2;
    havoc v266$1, v266$2;
    havoc v267$1, v267$2;
    call {:sourceloc} {:sourceloc_num 272} _LOG_WRITE_$$WDOT(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1)), FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(v221$1, v222$1), FSUB32(v223$1, v224$1)), FSUB32(v225$1, v226$1)), FSUB32(v227$1, v228$1)), FSUB32(v229$1, v230$1)), FSUB32(v231$1, v232$1)), FADD32(FSUB32(v12$1, v13$1), FSUB32(v14$1, v15$1))), FSUB32(v233$1, v234$1)), FSUB32(v235$1, v236$1)), FSUB32(v237$1, v238$1)), FSUB32(v239$1, v240$1)), FSUB32(v241$1, v242$1)), FSUB32(v243$1, v244$1)), FSUB32(v245$1, v246$1)), FSUB32(v247$1, v248$1)), FSUB32(v249$1, v250$1)), FSUB32(v251$1, v252$1)), FSUB32(v253$1, v254$1)), FSUB32(v255$1, v256$1)), FSUB32(v257$1, v258$1)), FSUB32(v259$1, v260$1)), FSUB32(v261$1, v262$1)), FSUB32(v263$1, v264$1)), FSUB32(v265$1, v266$1)), $rateconv), v267$1), $$WDOT[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 272} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 272} _CHECK_WRITE_$$WDOT(true, BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2)), FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(v221$2, v222$2), FSUB32(v223$2, v224$2)), FSUB32(v225$2, v226$2)), FSUB32(v227$2, v228$2)), FSUB32(v229$2, v230$2)), FSUB32(v231$2, v232$2)), FADD32(FSUB32(v12$2, v13$2), FSUB32(v14$2, v15$2))), FSUB32(v233$2, v234$2)), FSUB32(v235$2, v236$2)), FSUB32(v237$2, v238$2)), FSUB32(v239$2, v240$2)), FSUB32(v241$2, v242$2)), FSUB32(v243$2, v244$2)), FSUB32(v245$2, v246$2)), FSUB32(v247$2, v248$2)), FSUB32(v249$2, v250$2)), FSUB32(v251$2, v252$2)), FSUB32(v253$2, v254$2)), FSUB32(v255$2, v256$2)), FSUB32(v257$2, v258$2)), FSUB32(v259$2, v260$2)), FSUB32(v261$2, v262$2)), FSUB32(v263$2, v264$2)), FSUB32(v265$2, v266$2)), $rateconv), v267$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$WDOT"} true;
    $$WDOT[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1))] := FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(v221$1, v222$1), FSUB32(v223$1, v224$1)), FSUB32(v225$1, v226$1)), FSUB32(v227$1, v228$1)), FSUB32(v229$1, v230$1)), FSUB32(v231$1, v232$1)), FADD32(FSUB32(v12$1, v13$1), FSUB32(v14$1, v15$1))), FSUB32(v233$1, v234$1)), FSUB32(v235$1, v236$1)), FSUB32(v237$1, v238$1)), FSUB32(v239$1, v240$1)), FSUB32(v241$1, v242$1)), FSUB32(v243$1, v244$1)), FSUB32(v245$1, v246$1)), FSUB32(v247$1, v248$1)), FSUB32(v249$1, v250$1)), FSUB32(v251$1, v252$1)), FSUB32(v253$1, v254$1)), FSUB32(v255$1, v256$1)), FSUB32(v257$1, v258$1)), FSUB32(v259$1, v260$1)), FSUB32(v261$1, v262$1)), FSUB32(v263$1, v264$1)), FSUB32(v265$1, v266$1)), $rateconv), v267$1);
    $$WDOT[BV32_ADD(69120, BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2))] := FMUL32(FMUL32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(FSUB32(v221$2, v222$2), FSUB32(v223$2, v224$2)), FSUB32(v225$2, v226$2)), FSUB32(v227$2, v228$2)), FSUB32(v229$2, v230$2)), FSUB32(v231$2, v232$2)), FADD32(FSUB32(v12$2, v13$2), FSUB32(v14$2, v15$2))), FSUB32(v233$2, v234$2)), FSUB32(v235$2, v236$2)), FSUB32(v237$2, v238$2)), FSUB32(v239$2, v240$2)), FSUB32(v241$2, v242$2)), FSUB32(v243$2, v244$2)), FSUB32(v245$2, v246$2)), FSUB32(v247$2, v248$2)), FSUB32(v249$2, v250$2)), FSUB32(v251$2, v252$2)), FSUB32(v253$2, v254$2)), FSUB32(v255$2, v256$2)), FSUB32(v257$2, v258$2)), FSUB32(v259$2, v260$2)), FSUB32(v261$2, v262$2)), FSUB32(v263$2, v264$2)), FSUB32(v265$2, v266$2)), $rateconv), v267$2);
    return;
}



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

const _WATCHED_VALUE_$$RKF: int;

procedure {:inline 1} _LOG_READ_$$RKF(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RKF;



implementation {:inline 1} _LOG_READ_$$RKF(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RKF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKF == _value then true else _READ_HAS_OCCURRED_$$RKF);
    return;
}



procedure _CHECK_READ_$$RKF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RKF);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RKF: bool;

procedure {:inline 1} _LOG_WRITE_$$RKF(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RKF, _WRITE_READ_BENIGN_FLAG_$$RKF;



implementation {:inline 1} _LOG_WRITE_$$RKF(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RKF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKF == _value then true else _WRITE_HAS_OCCURRED_$$RKF);
    _WRITE_READ_BENIGN_FLAG_$$RKF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKF == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RKF);
    return;
}



procedure _CHECK_WRITE_$$RKF(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKF != _value);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKF != _value);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RKF(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RKF;



implementation {:inline 1} _LOG_ATOMIC_$$RKF(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RKF := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RKF);
    return;
}



procedure _CHECK_ATOMIC_$$RKF(_P: bool, _offset: int);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset);
  requires {:source_name "RKF"} {:array "$$RKF"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKF(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RKF;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKF(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RKF := (if _P && _WRITE_HAS_OCCURRED_$$RKF && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RKF);
    return;
}



const _WATCHED_VALUE_$$RKR: int;

procedure {:inline 1} _LOG_READ_$$RKR(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$RKR;



implementation {:inline 1} _LOG_READ_$$RKR(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$RKR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKR == _value then true else _READ_HAS_OCCURRED_$$RKR);
    return;
}



procedure _CHECK_READ_$$RKR(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$RKR);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$RKR: bool;

procedure {:inline 1} _LOG_WRITE_$$RKR(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$RKR, _WRITE_READ_BENIGN_FLAG_$$RKR;



implementation {:inline 1} _LOG_WRITE_$$RKR(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$RKR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKR == _value then true else _WRITE_HAS_OCCURRED_$$RKR);
    _WRITE_READ_BENIGN_FLAG_$$RKR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKR == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$RKR);
    return;
}



procedure _CHECK_WRITE_$$RKR(_P: bool, _offset: int, _value: int);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKR != _value);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$RKR != _value);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$RKR(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$RKR;



implementation {:inline 1} _LOG_ATOMIC_$$RKR(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$RKR := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$RKR);
    return;
}



procedure _CHECK_ATOMIC_$$RKR(_P: bool, _offset: int);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset);
  requires {:source_name "RKR"} {:array "$$RKR"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKR(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$RKR;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$RKR(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$RKR := (if _P && _WRITE_HAS_OCCURRED_$$RKR && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$RKR);
    return;
}



const _WATCHED_VALUE_$$WDOT: int;

procedure {:inline 1} _LOG_READ_$$WDOT(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$WDOT;



implementation {:inline 1} _LOG_READ_$$WDOT(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$WDOT := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$WDOT == _value then true else _READ_HAS_OCCURRED_$$WDOT);
    return;
}



procedure _CHECK_READ_$$WDOT(_P: bool, _offset: int, _value: int);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$WDOT);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$WDOT: bool;

procedure {:inline 1} _LOG_WRITE_$$WDOT(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$WDOT, _WRITE_READ_BENIGN_FLAG_$$WDOT;



implementation {:inline 1} _LOG_WRITE_$$WDOT(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$WDOT := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$WDOT == _value then true else _WRITE_HAS_OCCURRED_$$WDOT);
    _WRITE_READ_BENIGN_FLAG_$$WDOT := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$WDOT == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$WDOT);
    return;
}



procedure _CHECK_WRITE_$$WDOT(_P: bool, _offset: int, _value: int);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$WDOT != _value);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$WDOT != _value);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$WDOT(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$WDOT;



implementation {:inline 1} _LOG_ATOMIC_$$WDOT(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$WDOT := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$WDOT);
    return;
}



procedure _CHECK_ATOMIC_$$WDOT(_P: bool, _offset: int);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset);
  requires {:source_name "WDOT"} {:array "$$WDOT"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$WDOT;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$WDOT(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$WDOT := (if _P && _WRITE_HAS_OCCURRED_$$WDOT && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$WDOT);
    return;
}



const _WATCHED_VALUE_$$molwt: int;

procedure {:inline 1} _LOG_READ_$$molwt(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$molwt;



implementation {:inline 1} _LOG_READ_$$molwt(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$molwt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$molwt == _value then true else _READ_HAS_OCCURRED_$$molwt);
    return;
}



procedure _CHECK_READ_$$molwt(_P: bool, _offset: int, _value: int);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$molwt);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$molwt: bool;

procedure {:inline 1} _LOG_WRITE_$$molwt(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$molwt, _WRITE_READ_BENIGN_FLAG_$$molwt;



implementation {:inline 1} _LOG_WRITE_$$molwt(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$molwt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$molwt == _value then true else _WRITE_HAS_OCCURRED_$$molwt);
    _WRITE_READ_BENIGN_FLAG_$$molwt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$molwt == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$molwt);
    return;
}



procedure _CHECK_WRITE_$$molwt(_P: bool, _offset: int, _value: int);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$molwt != _value);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$molwt != _value);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$molwt(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$molwt;



implementation {:inline 1} _LOG_ATOMIC_$$molwt(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$molwt := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$molwt);
    return;
}



procedure _CHECK_ATOMIC_$$molwt(_P: bool, _offset: int);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset);
  requires {:source_name "molwt"} {:array "$$molwt"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$molwt(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$molwt;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$molwt(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$molwt := (if _P && _WRITE_HAS_OCCURRED_$$molwt && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$molwt);
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
