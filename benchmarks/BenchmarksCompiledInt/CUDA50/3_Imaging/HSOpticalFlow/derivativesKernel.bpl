type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "Ix"} {:global} $$Ix: [int]int;

axiom {:array_info "$$Ix"} {:global} {:elem_width 32} {:source_name "Ix"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Ix: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Ix: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Ix: bool;

var {:source_name "Iy"} {:global} $$Iy: [int]int;

axiom {:array_info "$$Iy"} {:global} {:elem_width 32} {:source_name "Iy"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Iy: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Iy: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Iy: bool;

var {:source_name "Iz"} {:global} $$Iz: [int]int;

axiom {:array_info "$$Iz"} {:global} {:elem_width 32} {:source_name "Iz"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$Iz: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$Iz: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$Iz: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$texSource"} {:global} {:elem_width 8} {:source_name "texSource"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texSource: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texSource: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texSource: bool;

axiom {:array_info "$$texTarget"} {:global} {:elem_width 8} {:source_name "texTarget"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texTarget: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texTarget: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texTarget: bool;

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

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

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

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

procedure {:source_name "ComputeDerivativesKernel"} {:kernel} $_Z24ComputeDerivativesKerneliiiPfS_S_($width: int, $height: int, $stride: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 320 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $height == 240 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $stride == 320 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$Ix && !_WRITE_HAS_OCCURRED_$$Ix && !_ATOMIC_HAS_OCCURRED_$$Ix;
  requires !_READ_HAS_OCCURRED_$$Iy && !_WRITE_HAS_OCCURRED_$$Iy && !_ATOMIC_HAS_OCCURRED_$$Iy;
  requires !_READ_HAS_OCCURRED_$$Iz && !_WRITE_HAS_OCCURRED_$$Iz && !_ATOMIC_HAS_OCCURRED_$$Iz;
  requires !_READ_HAS_OCCURRED_$$texSource && !_WRITE_HAS_OCCURRED_$$texSource && !_ATOMIC_HAS_OCCURRED_$$texSource;
  requires !_READ_HAS_OCCURRED_$$texTarget && !_WRITE_HAS_OCCURRED_$$texTarget && !_ATOMIC_HAS_OCCURRED_$$texTarget;
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
  modifies _WRITE_HAS_OCCURRED_$$Ix, _WRITE_READ_BENIGN_FLAG_$$Ix, _WRITE_READ_BENIGN_FLAG_$$Ix, _WRITE_HAS_OCCURRED_$$Iz, _WRITE_READ_BENIGN_FLAG_$$Iz, _WRITE_READ_BENIGN_FLAG_$$Iz, _WRITE_HAS_OCCURRED_$$Iy, _WRITE_READ_BENIGN_FLAG_$$Iy, _WRITE_READ_BENIGN_FLAG_$$Iy;



implementation {:source_name "ComputeDerivativesKernel"} {:kernel} $_Z24ComputeDerivativesKerneliiiPfS_S_($width: int, $height: int, $stride: int)
{
  var v284$1: int;
  var v284$2: int;
  var v285$1: int;
  var v285$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v12$1: int;
  var v12$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v20$1: int;
  var v20$2: int;
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
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
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
  var v39$1: int;
  var v39$2: int;
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
  var v71$1: int;
  var v71$2: int;
  var v72$1: int;
  var v72$2: int;
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
  var v67$1: int;
  var v67$2: int;
  var v68$1: int;
  var v68$2: int;
  var v69$1: int;
  var v69$2: int;
  var v70$1: int;
  var v70$2: int;
  var v143$1: int;
  var v143$2: int;
  var v144$1: int;
  var v144$2: int;
  var v145$1: int;
  var v145$2: int;
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
  var v142$1: int;
  var v142$2: int;
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
  var v279$1: int;
  var v279$2: int;
  var v280$1: int;
  var v280$2: int;
  var v281$1: int;
  var v281$2: int;
  var v282$1: int;
  var v282$2: int;
  var v283$1: int;
  var v283$2: int;
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
  var v227$1: int;
  var v227$2: int;
  var v228$1: int;
  var v228$2: int;
  var v229$1: int;
  var v229$2: int;
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
  var v268$1: int;
  var v268$2: int;
  var v269$1: int;
  var v269$2: int;
  var v270$1: int;
  var v270$2: int;
  var v271$1: int;
  var v271$2: int;
  var v272$1: int;
  var v272$2: int;
  var v273$1: int;
  var v273$2: int;
  var v274$1: int;
  var v274$2: int;
  var v275$1: int;
  var v275$2: int;
  var v276$1: int;
  var v276$2: int;
  var v277$1: int;
  var v277$2: int;
  var v278$1: int;
  var v278$2: int;
  var v286$1: int;
  var v286$2: int;
  var v287$1: int;
  var v287$2: int;
  var v288$1: int;
  var v288$2: int;
  var v289$1: int;
  var v289$2: int;
  var v290$1: int;
  var v290$2: int;
  var v291$1: int;
  var v291$2: int;
  var v292$1: int;
  var v292$2: int;
  var v293$1: int;
  var v293$2: int;
  var v294$1: int;
  var v294$2: int;
  var v295$1: int;
  var v295$2: int;
  var v296$1: int;
  var v296$2: int;
  var v297$1: int;
  var v297$2: int;
  var v298$1: int;
  var v298$2: int;
  var v299$1: int;
  var v299$2: int;
  var v300$1: int;
  var v300$2: int;
  var v301$1: int;
  var v301$2: int;
  var v302$1: int;
  var v302$2: int;
  var v303$1: int;
  var v303$2: int;
  var v304$1: int;
  var v304$2: int;
  var v305$1: int;
  var v305$2: int;
  var v306$1: int;
  var v306$2: int;
  var v307$1: int;
  var v307$2: int;
  var v308$1: int;
  var v308$2: int;
  var v309$1: int;
  var v309$2: int;
  var v310$1: int;
  var v310$2: int;
  var v311$1: int;
  var v311$2: int;
  var v312$1: int;
  var v312$2: int;
  var v313$1: int;
  var v313$2: int;
  var v314$1: int;
  var v314$2: int;
  var v315$1: int;
  var v315$2: int;
  var v316$1: int;
  var v316$2: int;
  var v317$1: int;
  var v317$2: int;
  var v318$1: int;
  var v318$2: int;
  var v319$1: int;
  var v319$2: int;
  var v320$1: int;
  var v320$2: int;
  var v321$1: int;
  var v321$2: int;
  var v322$1: int;
  var v322$2: int;
  var v323$1: int;
  var v323$2: int;
  var v324$1: int;
  var v324$2: int;
  var v325$1: int;
  var v325$2: int;
  var v326$1: int;
  var v326$2: int;
  var v327$1: int;
  var v327$2: int;
  var v328$1: int;
  var v328$2: int;
  var v329$1: int;
  var v329$2: int;
  var v330$1: int;
  var v330$2: int;
  var v331$1: int;
  var v331$2: int;
  var v332$1: int;
  var v332$2: int;
  var v342$1: int;
  var v342$2: int;
  var v333$1: int;
  var v333$2: int;
  var v343$1: int;
  var v343$2: int;
  var v334$1: int;
  var v334$2: int;
  var v335$1: int;
  var v335$2: int;
  var v336$1: int;
  var v336$2: int;
  var v337$1: int;
  var v337$2: int;
  var v338$1: int;
  var v338$2: int;
  var v339$1: int;
  var v339$2: int;
  var v340$1: int;
  var v340$2: int;
  var v341$1: int;
  var v341$2: int;
  var v344$1: int;
  var v344$2: int;
  var v345$1: int;
  var v345$2: int;
  var v346$1: int;
  var v346$2: int;
  var v347$1: int;
  var v347$2: int;
  var v348$1: int;
  var v348$2: int;
  var v349$1: int;
  var v349$2: int;
  var v350$1: int;
  var v350$2: int;
  var v351$1: int;
  var v351$2: int;
  var v352$1: int;
  var v352$2: int;
  var v353$1: int;
  var v353$2: int;
  var v354$1: int;
  var v354$2: int;
  var v355$1: int;
  var v355$2: int;
  var v356$1: int;
  var v356$2: int;
  var v357$1: int;
  var v357$2: int;
  var v358$1: int;
  var v358$2: int;
  var v359$1: int;
  var v359$2: int;
  var v360$1: int;
  var v360$2: int;
  var v361$1: int;
  var v361$2: int;
  var v362$1: int;
  var v362$2: int;
  var v363$1: int;
  var v363$2: int;
  var v364$1: int;
  var v364$2: int;
  var v365$1: int;
  var v365$2: int;
  var v366$1: int;
  var v366$2: int;
  var v367$1: int;
  var v367$2: int;
  var v368$1: int;
  var v368$2: int;
  var v369$1: int;
  var v369$2: int;
  var v370$1: int;
  var v370$2: int;
  var v371$1: int;
  var v371$2: int;
  var v372$1: int;
  var v372$2: int;
  var v373$1: int;
  var v373$2: int;
  var v374$1: int;
  var v374$2: int;
  var v375$1: int;
  var v375$2: int;
  var v376$1: int;
  var v376$2: int;
  var v377$1: int;
  var v377$2: int;
  var v378$1: int;
  var v378$2: int;
  var v379$1: int;
  var v379$2: int;
  var v380$1: int;
  var v380$2: int;
  var v381$1: int;
  var v381$2: int;
  var v382$1: int;
  var v382$2: int;
  var v383$1: int;
  var v383$2: int;
  var v384$1: int;
  var v384$2: int;
  var v385$1: int;
  var v385$2: int;
  var v386$1: int;
  var v386$2: int;
  var v387$1: int;
  var v387$2: int;
  var v388$1: int;
  var v388$2: int;
  var v389$1: int;
  var v389$2: int;
  var v390$1: int;
  var v390$2: int;
  var v391$1: int;
  var v391$2: int;
  var v392$1: int;
  var v392$2: int;
  var v393$1: int;
  var v393$2: int;
  var v394$1: int;
  var v394$2: int;
  var v395$1: int;
  var v395$2: int;
  var v396$1: int;
  var v396$2: int;
  var v397$1: int;
  var v397$2: int;
  var v398$1: int;
  var v398$2: int;
  var v399$1: int;
  var v399$2: int;
  var v400$1: int;
  var v400$2: int;
  var v401$1: int;
  var v401$2: int;
  var v402$1: int;
  var v402$2: int;
  var v403$1: int;
  var v403$2: int;
  var v404$1: int;
  var v404$2: int;
  var v405$1: int;
  var v405$2: int;
  var v406$1: int;
  var v406$2: int;
  var v407$1: int;
  var v407$2: int;
  var v408$1: int;
  var v408$2: int;
  var v409$1: int;
  var v409$2: int;
  var v410$1: int;
  var v410$2: int;
  var v411$1: int;
  var v411$2: int;
  var v412$1: int;
  var v412$2: int;
  var v413$1: int;
  var v413$2: int;
  var v414$1: int;
  var v414$2: int;
  var v415$1: int;
  var v415$2: int;
  var v416$1: int;
  var v416$2: int;
  var v417$1: int;
  var v417$2: int;
  var v418$1: int;
  var v418$2: int;
  var v419$1: int;
  var v419$2: int;
  var v420$1: int;
  var v420$2: int;
  var v421$1: int;
  var v421$2: int;
  var v422$1: int;
  var v422$2: int;
  var v423$1: int;
  var v423$2: int;
  var v424$1: int;
  var v424$2: int;
  var v425$1: int;
  var v425$2: int;
  var v426$1: int;
  var v426$2: int;
  var v427$1: int;
  var v427$2: int;
  var v428$1: int;
  var v428$2: int;
  var v429$1: int;
  var v429$2: int;
  var v430$1: int;
  var v430$2: int;
  var v431$1: int;
  var v431$2: int;
  var v432$1: int;
  var v432$2: int;
  var v433$1: int;
  var v433$2: int;
  var v434$1: int;
  var v434$2: int;
  var v435$1: int;
  var v435$2: int;
  var v436$1: int;
  var v436$2: int;
  var v437$1: int;
  var v437$2: int;
  var v438$1: int;
  var v438$2: int;
  var v439$1: int;
  var v439$2: int;
  var v440$1: int;
  var v440$2: int;
  var v441$1: int;
  var v441$2: int;
  var v442$1: int;
  var v442$2: int;
  var v443$1: int;
  var v443$2: int;
  var v444$1: int;
  var v444$2: int;
  var v445$1: int;
  var v445$2: int;
  var v446$1: int;
  var v446$2: int;
  var v447$1: int;
  var v447$2: int;
  var v448$1: int;
  var v448$2: int;
  var v449$1: int;
  var v449$2: int;
  var v450$1: int;
  var v450$2: int;
  var v451$1: int;
  var v451$2: int;
  var v452$1: int;
  var v452$2: int;
  var v453$1: int;
  var v453$2: int;
  var v454$1: int;
  var v454$2: int;
  var v455$1: int;
  var v455$2: int;
  var v456$1: int;
  var v456$2: int;
  var v457$1: int;
  var v457$2: int;
  var v458$1: int;
  var v458$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(local_id_x$1, BV32_MUL(group_id_x$1, group_size_x));
    v0$2 := BV32_ADD(local_id_x$2, BV32_MUL(group_id_x$2, group_size_x));
    v1$1 := BV32_ADD(local_id_y$1, BV32_MUL(group_id_y$1, group_size_y));
    v1$2 := BV32_ADD(local_id_y$2, BV32_MUL(group_id_y$2, group_size_y));
    v2$1 := BV32_ADD(v0$1, BV32_MUL(v1$1, $stride));
    v2$2 := BV32_ADD(v0$2, BV32_MUL(v1$2, $stride));
    v3$1 := BV32_SGE(v0$1, $width);
    v3$2 := BV32_SGE(v0$2, $width);
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
    p3$1 := (if v3$1 then v3$1 else p3$1);
    p3$2 := (if v3$2 then v3$2 else p3$2);
    p1$1 := (if !v3$1 then !v3$1 else p1$1);
    p1$2 := (if !v3$2 then !v3$2 else p1$2);
    p3$1 := (if p0$1 then true else p3$1);
    p3$2 := (if p0$2 then true else p3$2);
    v4$1 := (if p1$1 then BV32_SGE(v1$1, $height) else v4$1);
    v4$2 := (if p1$2 then BV32_SGE(v1$2, $height) else v4$2);
    p3$1 := (if p1$1 && v4$1 then v4$1 else p3$1);
    p3$2 := (if p1$2 && v4$2 then v4$2 else p3$2);
    p4$1 := (if p1$1 && !v4$1 then !v4$1 else p4$1);
    p4$2 := (if p1$2 && !v4$2 then !v4$2 else p4$2);
    p3$1 := (if p2$1 then true else p3$1);
    p3$2 := (if p2$2 then true else p3$2);
    v5$1 := (if p4$1 then FDIV32(1065353216, SI32_TO_FP32($width)) else v5$1);
    v5$2 := (if p4$2 then FDIV32(1065353216, SI32_TO_FP32($width)) else v5$2);
    v6$1 := (if p4$1 then FDIV32(1065353216, SI32_TO_FP32($height)) else v6$1);
    v6$2 := (if p4$2 then FDIV32(1065353216, SI32_TO_FP32($height)) else v6$2);
    v7$1 := (if p4$1 then FMUL32(FADD32(SI32_TO_FP32(v0$1), 1056964608), v5$1) else v7$1);
    v7$2 := (if p4$2 then FMUL32(FADD32(SI32_TO_FP32(v0$2), 1056964608), v5$2) else v7$2);
    v8$1 := (if p4$1 then FMUL32(FADD32(SI32_TO_FP32(v1$1), 1056964608), v6$1) else v8$1);
    v8$2 := (if p4$2 then FMUL32(FADD32(SI32_TO_FP32(v1$2), 1056964608), v6$2) else v8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p4$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p4$2 then _HAVOC_int$2 else v9$2);
    $$0$0$1 := (if p4$1 then v9$1 else $$0$0$1);
    $$0$0$2 := (if p4$2 then v9$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p4$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p4$2 then _HAVOC_int$2 else v10$2);
    $$0$1$1 := (if p4$1 then v10$1 else $$0$1$1);
    $$0$1$2 := (if p4$2 then v10$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p4$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p4$2 then _HAVOC_int$2 else v11$2);
    $$0$2$1 := (if p4$1 then v11$1 else $$0$2$1);
    $$0$2$2 := (if p4$2 then v11$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p4$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p4$2 then _HAVOC_int$2 else v12$2);
    $$0$3$1 := (if p4$1 then v12$1 else $$0$3$1);
    $$0$3$2 := (if p4$2 then v12$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p4$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p4$2 then _HAVOC_int$2 else v13$2);
    $$0$4$1 := (if p4$1 then v13$1 else $$0$4$1);
    $$0$4$2 := (if p4$2 then v13$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p4$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p4$2 then _HAVOC_int$2 else v14$2);
    $$0$5$1 := (if p4$1 then v14$1 else $$0$5$1);
    $$0$5$2 := (if p4$2 then v14$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p4$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p4$2 then _HAVOC_int$2 else v15$2);
    $$0$6$1 := (if p4$1 then v15$1 else $$0$6$1);
    $$0$6$2 := (if p4$2 then v15$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v16$1 := (if p4$1 then _HAVOC_int$1 else v16$1);
    v16$2 := (if p4$2 then _HAVOC_int$2 else v16$2);
    $$0$7$1 := (if p4$1 then v16$1 else $$0$7$1);
    $$0$7$2 := (if p4$2 then v16$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p4$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p4$2 then _HAVOC_int$2 else v17$2);
    $$0$8$1 := (if p4$1 then v17$1 else $$0$8$1);
    $$0$8$2 := (if p4$2 then v17$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p4$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p4$2 then _HAVOC_int$2 else v18$2);
    $$0$9$1 := (if p4$1 then v18$1 else $$0$9$1);
    $$0$9$2 := (if p4$2 then v18$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p4$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p4$2 then _HAVOC_int$2 else v19$2);
    $$0$10$1 := (if p4$1 then v19$1 else $$0$10$1);
    $$0$10$2 := (if p4$2 then v19$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p4$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p4$2 then _HAVOC_int$2 else v20$2);
    $$0$11$1 := (if p4$1 then v20$1 else $$0$11$1);
    $$0$11$2 := (if p4$2 then v20$2 else $$0$11$2);
    v21$1 := (if p4$1 then $$0$0$1 else v21$1);
    v21$2 := (if p4$2 then $$0$0$2 else v21$2);
    v22$1 := (if p4$1 then $$0$1$1 else v22$1);
    v22$2 := (if p4$2 then $$0$1$2 else v22$2);
    v23$1 := (if p4$1 then $$0$2$1 else v23$1);
    v23$2 := (if p4$2 then $$0$2$2 else v23$2);
    v24$1 := (if p4$1 then $$0$3$1 else v24$1);
    v24$2 := (if p4$2 then $$0$3$2 else v24$2);
    v25$1 := (if p4$1 then $$0$4$1 else v25$1);
    v25$2 := (if p4$2 then $$0$4$2 else v25$2);
    v26$1 := (if p4$1 then $$0$5$1 else v26$1);
    v26$2 := (if p4$2 then $$0$5$2 else v26$2);
    v27$1 := (if p4$1 then $$0$6$1 else v27$1);
    v27$2 := (if p4$2 then $$0$6$2 else v27$2);
    v28$1 := (if p4$1 then $$0$7$1 else v28$1);
    v28$2 := (if p4$2 then $$0$7$2 else v28$2);
    v29$1 := (if p4$1 then $$0$8$1 else v29$1);
    v29$2 := (if p4$2 then $$0$8$2 else v29$2);
    v30$1 := (if p4$1 then $$0$9$1 else v30$1);
    v30$2 := (if p4$2 then $$0$9$2 else v30$2);
    v31$1 := (if p4$1 then $$0$10$1 else v31$1);
    v31$2 := (if p4$2 then $$0$10$2 else v31$2);
    v32$1 := (if p4$1 then $$0$11$1 else v32$1);
    v32$2 := (if p4$2 then $$0$11$2 else v32$2);
    call {:sourceloc_num 43} v33$1, v33$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$1, v23$1), v22$1), v21$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v28$1, v27$1), v26$1), v25$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v32$1, v31$1), v30$1), v29$1), FSUB32(v7$1, FMUL32(1073741824, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$2, v23$2), v22$2), v21$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v28$2, v27$2), v26$2), v25$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v32$2, v31$2), v30$2), v29$2), FSUB32(v7$2, FMUL32(1073741824, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p4$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p4$2 then _HAVOC_int$2 else v34$2);
    $$1$0$1 := (if p4$1 then v34$1 else $$1$0$1);
    $$1$0$2 := (if p4$2 then v34$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p4$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p4$2 then _HAVOC_int$2 else v35$2);
    $$1$1$1 := (if p4$1 then v35$1 else $$1$1$1);
    $$1$1$2 := (if p4$2 then v35$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p4$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p4$2 then _HAVOC_int$2 else v36$2);
    $$1$2$1 := (if p4$1 then v36$1 else $$1$2$1);
    $$1$2$2 := (if p4$2 then v36$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p4$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p4$2 then _HAVOC_int$2 else v37$2);
    $$1$3$1 := (if p4$1 then v37$1 else $$1$3$1);
    $$1$3$2 := (if p4$2 then v37$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v38$1 := (if p4$1 then _HAVOC_int$1 else v38$1);
    v38$2 := (if p4$2 then _HAVOC_int$2 else v38$2);
    $$1$4$1 := (if p4$1 then v38$1 else $$1$4$1);
    $$1$4$2 := (if p4$2 then v38$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v39$1 := (if p4$1 then _HAVOC_int$1 else v39$1);
    v39$2 := (if p4$2 then _HAVOC_int$2 else v39$2);
    $$1$5$1 := (if p4$1 then v39$1 else $$1$5$1);
    $$1$5$2 := (if p4$2 then v39$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v40$1 := (if p4$1 then _HAVOC_int$1 else v40$1);
    v40$2 := (if p4$2 then _HAVOC_int$2 else v40$2);
    $$1$6$1 := (if p4$1 then v40$1 else $$1$6$1);
    $$1$6$2 := (if p4$2 then v40$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v41$1 := (if p4$1 then _HAVOC_int$1 else v41$1);
    v41$2 := (if p4$2 then _HAVOC_int$2 else v41$2);
    $$1$7$1 := (if p4$1 then v41$1 else $$1$7$1);
    $$1$7$2 := (if p4$2 then v41$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v42$1 := (if p4$1 then _HAVOC_int$1 else v42$1);
    v42$2 := (if p4$2 then _HAVOC_int$2 else v42$2);
    $$1$8$1 := (if p4$1 then v42$1 else $$1$8$1);
    $$1$8$2 := (if p4$2 then v42$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v43$1 := (if p4$1 then _HAVOC_int$1 else v43$1);
    v43$2 := (if p4$2 then _HAVOC_int$2 else v43$2);
    $$1$9$1 := (if p4$1 then v43$1 else $$1$9$1);
    $$1$9$2 := (if p4$2 then v43$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v44$1 := (if p4$1 then _HAVOC_int$1 else v44$1);
    v44$2 := (if p4$2 then _HAVOC_int$2 else v44$2);
    $$1$10$1 := (if p4$1 then v44$1 else $$1$10$1);
    $$1$10$2 := (if p4$2 then v44$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v45$1 := (if p4$1 then _HAVOC_int$1 else v45$1);
    v45$2 := (if p4$2 then _HAVOC_int$2 else v45$2);
    $$1$11$1 := (if p4$1 then v45$1 else $$1$11$1);
    $$1$11$2 := (if p4$2 then v45$2 else $$1$11$2);
    v46$1 := (if p4$1 then $$1$0$1 else v46$1);
    v46$2 := (if p4$2 then $$1$0$2 else v46$2);
    v47$1 := (if p4$1 then $$1$1$1 else v47$1);
    v47$2 := (if p4$2 then $$1$1$2 else v47$2);
    v48$1 := (if p4$1 then $$1$2$1 else v48$1);
    v48$2 := (if p4$2 then $$1$2$2 else v48$2);
    v49$1 := (if p4$1 then $$1$3$1 else v49$1);
    v49$2 := (if p4$2 then $$1$3$2 else v49$2);
    v50$1 := (if p4$1 then $$1$4$1 else v50$1);
    v50$2 := (if p4$2 then $$1$4$2 else v50$2);
    v51$1 := (if p4$1 then $$1$5$1 else v51$1);
    v51$2 := (if p4$2 then $$1$5$2 else v51$2);
    v52$1 := (if p4$1 then $$1$6$1 else v52$1);
    v52$2 := (if p4$2 then $$1$6$2 else v52$2);
    v53$1 := (if p4$1 then $$1$7$1 else v53$1);
    v53$2 := (if p4$2 then $$1$7$2 else v53$2);
    v54$1 := (if p4$1 then $$1$8$1 else v54$1);
    v54$2 := (if p4$2 then $$1$8$2 else v54$2);
    v55$1 := (if p4$1 then $$1$9$1 else v55$1);
    v55$2 := (if p4$2 then $$1$9$2 else v55$2);
    v56$1 := (if p4$1 then $$1$10$1 else v56$1);
    v56$2 := (if p4$2 then $$1$10$2 else v56$2);
    v57$1 := (if p4$1 then $$1$11$1 else v57$1);
    v57$2 := (if p4$2 then $$1$11$2 else v57$2);
    call {:sourceloc_num 80} v58$1, v58$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v49$1, v48$1), v47$1), v46$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v53$1, v52$1), v51$1), v50$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v57$1, v56$1), v55$1), v54$1), FSUB32(v7$1, FMUL32(1065353216, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v49$2, v48$2), v47$2), v46$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v53$2, v52$2), v51$2), v50$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v57$2, v56$2), v55$2), v54$2), FSUB32(v7$2, FMUL32(1065353216, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p4$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p4$2 then _HAVOC_int$2 else v59$2);
    $$2$0$1 := (if p4$1 then v59$1 else $$2$0$1);
    $$2$0$2 := (if p4$2 then v59$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v60$1 := (if p4$1 then _HAVOC_int$1 else v60$1);
    v60$2 := (if p4$2 then _HAVOC_int$2 else v60$2);
    $$2$1$1 := (if p4$1 then v60$1 else $$2$1$1);
    $$2$1$2 := (if p4$2 then v60$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v61$1 := (if p4$1 then _HAVOC_int$1 else v61$1);
    v61$2 := (if p4$2 then _HAVOC_int$2 else v61$2);
    $$2$2$1 := (if p4$1 then v61$1 else $$2$2$1);
    $$2$2$2 := (if p4$2 then v61$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v62$1 := (if p4$1 then _HAVOC_int$1 else v62$1);
    v62$2 := (if p4$2 then _HAVOC_int$2 else v62$2);
    $$2$3$1 := (if p4$1 then v62$1 else $$2$3$1);
    $$2$3$2 := (if p4$2 then v62$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v63$1 := (if p4$1 then _HAVOC_int$1 else v63$1);
    v63$2 := (if p4$2 then _HAVOC_int$2 else v63$2);
    $$2$4$1 := (if p4$1 then v63$1 else $$2$4$1);
    $$2$4$2 := (if p4$2 then v63$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v64$1 := (if p4$1 then _HAVOC_int$1 else v64$1);
    v64$2 := (if p4$2 then _HAVOC_int$2 else v64$2);
    $$2$5$1 := (if p4$1 then v64$1 else $$2$5$1);
    $$2$5$2 := (if p4$2 then v64$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v65$1 := (if p4$1 then _HAVOC_int$1 else v65$1);
    v65$2 := (if p4$2 then _HAVOC_int$2 else v65$2);
    $$2$6$1 := (if p4$1 then v65$1 else $$2$6$1);
    $$2$6$2 := (if p4$2 then v65$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v66$1 := (if p4$1 then _HAVOC_int$1 else v66$1);
    v66$2 := (if p4$2 then _HAVOC_int$2 else v66$2);
    $$2$7$1 := (if p4$1 then v66$1 else $$2$7$1);
    $$2$7$2 := (if p4$2 then v66$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v67$1 := (if p4$1 then _HAVOC_int$1 else v67$1);
    v67$2 := (if p4$2 then _HAVOC_int$2 else v67$2);
    $$2$8$1 := (if p4$1 then v67$1 else $$2$8$1);
    $$2$8$2 := (if p4$2 then v67$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v68$1 := (if p4$1 then _HAVOC_int$1 else v68$1);
    v68$2 := (if p4$2 then _HAVOC_int$2 else v68$2);
    $$2$9$1 := (if p4$1 then v68$1 else $$2$9$1);
    $$2$9$2 := (if p4$2 then v68$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v69$1 := (if p4$1 then _HAVOC_int$1 else v69$1);
    v69$2 := (if p4$2 then _HAVOC_int$2 else v69$2);
    $$2$10$1 := (if p4$1 then v69$1 else $$2$10$1);
    $$2$10$2 := (if p4$2 then v69$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v70$1 := (if p4$1 then _HAVOC_int$1 else v70$1);
    v70$2 := (if p4$2 then _HAVOC_int$2 else v70$2);
    $$2$11$1 := (if p4$1 then v70$1 else $$2$11$1);
    $$2$11$2 := (if p4$2 then v70$2 else $$2$11$2);
    v71$1 := (if p4$1 then $$2$0$1 else v71$1);
    v71$2 := (if p4$2 then $$2$0$2 else v71$2);
    v72$1 := (if p4$1 then $$2$1$1 else v72$1);
    v72$2 := (if p4$2 then $$2$1$2 else v72$2);
    v73$1 := (if p4$1 then $$2$2$1 else v73$1);
    v73$2 := (if p4$2 then $$2$2$2 else v73$2);
    v74$1 := (if p4$1 then $$2$3$1 else v74$1);
    v74$2 := (if p4$2 then $$2$3$2 else v74$2);
    v75$1 := (if p4$1 then $$2$4$1 else v75$1);
    v75$2 := (if p4$2 then $$2$4$2 else v75$2);
    v76$1 := (if p4$1 then $$2$5$1 else v76$1);
    v76$2 := (if p4$2 then $$2$5$2 else v76$2);
    v77$1 := (if p4$1 then $$2$6$1 else v77$1);
    v77$2 := (if p4$2 then $$2$6$2 else v77$2);
    v78$1 := (if p4$1 then $$2$7$1 else v78$1);
    v78$2 := (if p4$2 then $$2$7$2 else v78$2);
    v79$1 := (if p4$1 then $$2$8$1 else v79$1);
    v79$2 := (if p4$2 then $$2$8$2 else v79$2);
    v80$1 := (if p4$1 then $$2$9$1 else v80$1);
    v80$2 := (if p4$2 then $$2$9$2 else v80$2);
    v81$1 := (if p4$1 then $$2$10$1 else v81$1);
    v81$2 := (if p4$2 then $$2$10$2 else v81$2);
    v82$1 := (if p4$1 then $$2$11$1 else v82$1);
    v82$2 := (if p4$2 then $$2$11$2 else v82$2);
    call {:sourceloc_num 117} v83$1, v83$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v74$1, v73$1), v72$1), v71$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v78$1, v77$1), v76$1), v75$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$1, v81$1), v80$1), v79$1), FADD32(v7$1, FMUL32(1065353216, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v74$2, v73$2), v72$2), v71$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v78$2, v77$2), v76$2), v75$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v82$2, v81$2), v80$2), v79$2), FADD32(v7$2, FMUL32(1065353216, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v84$1 := (if p4$1 then _HAVOC_int$1 else v84$1);
    v84$2 := (if p4$2 then _HAVOC_int$2 else v84$2);
    $$3$0$1 := (if p4$1 then v84$1 else $$3$0$1);
    $$3$0$2 := (if p4$2 then v84$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v85$1 := (if p4$1 then _HAVOC_int$1 else v85$1);
    v85$2 := (if p4$2 then _HAVOC_int$2 else v85$2);
    $$3$1$1 := (if p4$1 then v85$1 else $$3$1$1);
    $$3$1$2 := (if p4$2 then v85$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v86$1 := (if p4$1 then _HAVOC_int$1 else v86$1);
    v86$2 := (if p4$2 then _HAVOC_int$2 else v86$2);
    $$3$2$1 := (if p4$1 then v86$1 else $$3$2$1);
    $$3$2$2 := (if p4$2 then v86$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v87$1 := (if p4$1 then _HAVOC_int$1 else v87$1);
    v87$2 := (if p4$2 then _HAVOC_int$2 else v87$2);
    $$3$3$1 := (if p4$1 then v87$1 else $$3$3$1);
    $$3$3$2 := (if p4$2 then v87$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v88$1 := (if p4$1 then _HAVOC_int$1 else v88$1);
    v88$2 := (if p4$2 then _HAVOC_int$2 else v88$2);
    $$3$4$1 := (if p4$1 then v88$1 else $$3$4$1);
    $$3$4$2 := (if p4$2 then v88$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v89$1 := (if p4$1 then _HAVOC_int$1 else v89$1);
    v89$2 := (if p4$2 then _HAVOC_int$2 else v89$2);
    $$3$5$1 := (if p4$1 then v89$1 else $$3$5$1);
    $$3$5$2 := (if p4$2 then v89$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v90$1 := (if p4$1 then _HAVOC_int$1 else v90$1);
    v90$2 := (if p4$2 then _HAVOC_int$2 else v90$2);
    $$3$6$1 := (if p4$1 then v90$1 else $$3$6$1);
    $$3$6$2 := (if p4$2 then v90$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v91$1 := (if p4$1 then _HAVOC_int$1 else v91$1);
    v91$2 := (if p4$2 then _HAVOC_int$2 else v91$2);
    $$3$7$1 := (if p4$1 then v91$1 else $$3$7$1);
    $$3$7$2 := (if p4$2 then v91$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v92$1 := (if p4$1 then _HAVOC_int$1 else v92$1);
    v92$2 := (if p4$2 then _HAVOC_int$2 else v92$2);
    $$3$8$1 := (if p4$1 then v92$1 else $$3$8$1);
    $$3$8$2 := (if p4$2 then v92$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v93$1 := (if p4$1 then _HAVOC_int$1 else v93$1);
    v93$2 := (if p4$2 then _HAVOC_int$2 else v93$2);
    $$3$9$1 := (if p4$1 then v93$1 else $$3$9$1);
    $$3$9$2 := (if p4$2 then v93$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v94$1 := (if p4$1 then _HAVOC_int$1 else v94$1);
    v94$2 := (if p4$2 then _HAVOC_int$2 else v94$2);
    $$3$10$1 := (if p4$1 then v94$1 else $$3$10$1);
    $$3$10$2 := (if p4$2 then v94$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v95$1 := (if p4$1 then _HAVOC_int$1 else v95$1);
    v95$2 := (if p4$2 then _HAVOC_int$2 else v95$2);
    $$3$11$1 := (if p4$1 then v95$1 else $$3$11$1);
    $$3$11$2 := (if p4$2 then v95$2 else $$3$11$2);
    v96$1 := (if p4$1 then $$3$0$1 else v96$1);
    v96$2 := (if p4$2 then $$3$0$2 else v96$2);
    v97$1 := (if p4$1 then $$3$1$1 else v97$1);
    v97$2 := (if p4$2 then $$3$1$2 else v97$2);
    v98$1 := (if p4$1 then $$3$2$1 else v98$1);
    v98$2 := (if p4$2 then $$3$2$2 else v98$2);
    v99$1 := (if p4$1 then $$3$3$1 else v99$1);
    v99$2 := (if p4$2 then $$3$3$2 else v99$2);
    v100$1 := (if p4$1 then $$3$4$1 else v100$1);
    v100$2 := (if p4$2 then $$3$4$2 else v100$2);
    v101$1 := (if p4$1 then $$3$5$1 else v101$1);
    v101$2 := (if p4$2 then $$3$5$2 else v101$2);
    v102$1 := (if p4$1 then $$3$6$1 else v102$1);
    v102$2 := (if p4$2 then $$3$6$2 else v102$2);
    v103$1 := (if p4$1 then $$3$7$1 else v103$1);
    v103$2 := (if p4$2 then $$3$7$2 else v103$2);
    v104$1 := (if p4$1 then $$3$8$1 else v104$1);
    v104$2 := (if p4$2 then $$3$8$2 else v104$2);
    v105$1 := (if p4$1 then $$3$9$1 else v105$1);
    v105$2 := (if p4$2 then $$3$9$2 else v105$2);
    v106$1 := (if p4$1 then $$3$10$1 else v106$1);
    v106$2 := (if p4$2 then $$3$10$2 else v106$2);
    v107$1 := (if p4$1 then $$3$11$1 else v107$1);
    v107$2 := (if p4$2 then $$3$11$2 else v107$2);
    call {:sourceloc_num 154} v108$1, v108$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v99$1, v98$1), v97$1), v96$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v103$1, v102$1), v101$1), v100$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$1, v106$1), v105$1), v104$1), FADD32(v7$1, FMUL32(1073741824, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v99$2, v98$2), v97$2), v96$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v103$2, v102$2), v101$2), v100$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$2, v106$2), v105$2), v104$2), FADD32(v7$2, FMUL32(1073741824, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v109$1 := (if p4$1 then _HAVOC_int$1 else v109$1);
    v109$2 := (if p4$2 then _HAVOC_int$2 else v109$2);
    $$4$0$1 := (if p4$1 then v109$1 else $$4$0$1);
    $$4$0$2 := (if p4$2 then v109$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v110$1 := (if p4$1 then _HAVOC_int$1 else v110$1);
    v110$2 := (if p4$2 then _HAVOC_int$2 else v110$2);
    $$4$1$1 := (if p4$1 then v110$1 else $$4$1$1);
    $$4$1$2 := (if p4$2 then v110$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v111$1 := (if p4$1 then _HAVOC_int$1 else v111$1);
    v111$2 := (if p4$2 then _HAVOC_int$2 else v111$2);
    $$4$2$1 := (if p4$1 then v111$1 else $$4$2$1);
    $$4$2$2 := (if p4$2 then v111$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v112$1 := (if p4$1 then _HAVOC_int$1 else v112$1);
    v112$2 := (if p4$2 then _HAVOC_int$2 else v112$2);
    $$4$3$1 := (if p4$1 then v112$1 else $$4$3$1);
    $$4$3$2 := (if p4$2 then v112$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v113$1 := (if p4$1 then _HAVOC_int$1 else v113$1);
    v113$2 := (if p4$2 then _HAVOC_int$2 else v113$2);
    $$4$4$1 := (if p4$1 then v113$1 else $$4$4$1);
    $$4$4$2 := (if p4$2 then v113$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v114$1 := (if p4$1 then _HAVOC_int$1 else v114$1);
    v114$2 := (if p4$2 then _HAVOC_int$2 else v114$2);
    $$4$5$1 := (if p4$1 then v114$1 else $$4$5$1);
    $$4$5$2 := (if p4$2 then v114$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v115$1 := (if p4$1 then _HAVOC_int$1 else v115$1);
    v115$2 := (if p4$2 then _HAVOC_int$2 else v115$2);
    $$4$6$1 := (if p4$1 then v115$1 else $$4$6$1);
    $$4$6$2 := (if p4$2 then v115$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v116$1 := (if p4$1 then _HAVOC_int$1 else v116$1);
    v116$2 := (if p4$2 then _HAVOC_int$2 else v116$2);
    $$4$7$1 := (if p4$1 then v116$1 else $$4$7$1);
    $$4$7$2 := (if p4$2 then v116$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p4$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p4$2 then _HAVOC_int$2 else v117$2);
    $$4$8$1 := (if p4$1 then v117$1 else $$4$8$1);
    $$4$8$2 := (if p4$2 then v117$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p4$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p4$2 then _HAVOC_int$2 else v118$2);
    $$4$9$1 := (if p4$1 then v118$1 else $$4$9$1);
    $$4$9$2 := (if p4$2 then v118$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p4$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p4$2 then _HAVOC_int$2 else v119$2);
    $$4$10$1 := (if p4$1 then v119$1 else $$4$10$1);
    $$4$10$2 := (if p4$2 then v119$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p4$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p4$2 then _HAVOC_int$2 else v120$2);
    $$4$11$1 := (if p4$1 then v120$1 else $$4$11$1);
    $$4$11$2 := (if p4$2 then v120$2 else $$4$11$2);
    v121$1 := (if p4$1 then $$4$0$1 else v121$1);
    v121$2 := (if p4$2 then $$4$0$2 else v121$2);
    v122$1 := (if p4$1 then $$4$1$1 else v122$1);
    v122$2 := (if p4$2 then $$4$1$2 else v122$2);
    v123$1 := (if p4$1 then $$4$2$1 else v123$1);
    v123$2 := (if p4$2 then $$4$2$2 else v123$2);
    v124$1 := (if p4$1 then $$4$3$1 else v124$1);
    v124$2 := (if p4$2 then $$4$3$2 else v124$2);
    v125$1 := (if p4$1 then $$4$4$1 else v125$1);
    v125$2 := (if p4$2 then $$4$4$2 else v125$2);
    v126$1 := (if p4$1 then $$4$5$1 else v126$1);
    v126$2 := (if p4$2 then $$4$5$2 else v126$2);
    v127$1 := (if p4$1 then $$4$6$1 else v127$1);
    v127$2 := (if p4$2 then $$4$6$2 else v127$2);
    v128$1 := (if p4$1 then $$4$7$1 else v128$1);
    v128$2 := (if p4$2 then $$4$7$2 else v128$2);
    v129$1 := (if p4$1 then $$4$8$1 else v129$1);
    v129$2 := (if p4$2 then $$4$8$2 else v129$2);
    v130$1 := (if p4$1 then $$4$9$1 else v130$1);
    v130$2 := (if p4$2 then $$4$9$2 else v130$2);
    v131$1 := (if p4$1 then $$4$10$1 else v131$1);
    v131$2 := (if p4$2 then $$4$10$2 else v131$2);
    v132$1 := (if p4$1 then $$4$11$1 else v132$1);
    v132$2 := (if p4$2 then $$4$11$2 else v132$2);
    call {:sourceloc_num 191} v133$1, v133$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v124$1, v123$1), v122$1), v121$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v128$1, v127$1), v126$1), v125$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v132$1, v131$1), v130$1), v129$1), FSUB32(v7$1, FMUL32(1073741824, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v124$2, v123$2), v122$2), v121$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v128$2, v127$2), v126$2), v125$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v132$2, v131$2), v130$2), v129$2), FSUB32(v7$2, FMUL32(1073741824, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v134$1 := (if p4$1 then _HAVOC_int$1 else v134$1);
    v134$2 := (if p4$2 then _HAVOC_int$2 else v134$2);
    $$5$0$1 := (if p4$1 then v134$1 else $$5$0$1);
    $$5$0$2 := (if p4$2 then v134$2 else $$5$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v135$1 := (if p4$1 then _HAVOC_int$1 else v135$1);
    v135$2 := (if p4$2 then _HAVOC_int$2 else v135$2);
    $$5$1$1 := (if p4$1 then v135$1 else $$5$1$1);
    $$5$1$2 := (if p4$2 then v135$2 else $$5$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v136$1 := (if p4$1 then _HAVOC_int$1 else v136$1);
    v136$2 := (if p4$2 then _HAVOC_int$2 else v136$2);
    $$5$2$1 := (if p4$1 then v136$1 else $$5$2$1);
    $$5$2$2 := (if p4$2 then v136$2 else $$5$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v137$1 := (if p4$1 then _HAVOC_int$1 else v137$1);
    v137$2 := (if p4$2 then _HAVOC_int$2 else v137$2);
    $$5$3$1 := (if p4$1 then v137$1 else $$5$3$1);
    $$5$3$2 := (if p4$2 then v137$2 else $$5$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v138$1 := (if p4$1 then _HAVOC_int$1 else v138$1);
    v138$2 := (if p4$2 then _HAVOC_int$2 else v138$2);
    $$5$4$1 := (if p4$1 then v138$1 else $$5$4$1);
    $$5$4$2 := (if p4$2 then v138$2 else $$5$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v139$1 := (if p4$1 then _HAVOC_int$1 else v139$1);
    v139$2 := (if p4$2 then _HAVOC_int$2 else v139$2);
    $$5$5$1 := (if p4$1 then v139$1 else $$5$5$1);
    $$5$5$2 := (if p4$2 then v139$2 else $$5$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v140$1 := (if p4$1 then _HAVOC_int$1 else v140$1);
    v140$2 := (if p4$2 then _HAVOC_int$2 else v140$2);
    $$5$6$1 := (if p4$1 then v140$1 else $$5$6$1);
    $$5$6$2 := (if p4$2 then v140$2 else $$5$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v141$1 := (if p4$1 then _HAVOC_int$1 else v141$1);
    v141$2 := (if p4$2 then _HAVOC_int$2 else v141$2);
    $$5$7$1 := (if p4$1 then v141$1 else $$5$7$1);
    $$5$7$2 := (if p4$2 then v141$2 else $$5$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v142$1 := (if p4$1 then _HAVOC_int$1 else v142$1);
    v142$2 := (if p4$2 then _HAVOC_int$2 else v142$2);
    $$5$8$1 := (if p4$1 then v142$1 else $$5$8$1);
    $$5$8$2 := (if p4$2 then v142$2 else $$5$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v143$1 := (if p4$1 then _HAVOC_int$1 else v143$1);
    v143$2 := (if p4$2 then _HAVOC_int$2 else v143$2);
    $$5$9$1 := (if p4$1 then v143$1 else $$5$9$1);
    $$5$9$2 := (if p4$2 then v143$2 else $$5$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v144$1 := (if p4$1 then _HAVOC_int$1 else v144$1);
    v144$2 := (if p4$2 then _HAVOC_int$2 else v144$2);
    $$5$10$1 := (if p4$1 then v144$1 else $$5$10$1);
    $$5$10$2 := (if p4$2 then v144$2 else $$5$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v145$1 := (if p4$1 then _HAVOC_int$1 else v145$1);
    v145$2 := (if p4$2 then _HAVOC_int$2 else v145$2);
    $$5$11$1 := (if p4$1 then v145$1 else $$5$11$1);
    $$5$11$2 := (if p4$2 then v145$2 else $$5$11$2);
    v146$1 := (if p4$1 then $$5$0$1 else v146$1);
    v146$2 := (if p4$2 then $$5$0$2 else v146$2);
    v147$1 := (if p4$1 then $$5$1$1 else v147$1);
    v147$2 := (if p4$2 then $$5$1$2 else v147$2);
    v148$1 := (if p4$1 then $$5$2$1 else v148$1);
    v148$2 := (if p4$2 then $$5$2$2 else v148$2);
    v149$1 := (if p4$1 then $$5$3$1 else v149$1);
    v149$2 := (if p4$2 then $$5$3$2 else v149$2);
    v150$1 := (if p4$1 then $$5$4$1 else v150$1);
    v150$2 := (if p4$2 then $$5$4$2 else v150$2);
    v151$1 := (if p4$1 then $$5$5$1 else v151$1);
    v151$2 := (if p4$2 then $$5$5$2 else v151$2);
    v152$1 := (if p4$1 then $$5$6$1 else v152$1);
    v152$2 := (if p4$2 then $$5$6$2 else v152$2);
    v153$1 := (if p4$1 then $$5$7$1 else v153$1);
    v153$2 := (if p4$2 then $$5$7$2 else v153$2);
    v154$1 := (if p4$1 then $$5$8$1 else v154$1);
    v154$2 := (if p4$2 then $$5$8$2 else v154$2);
    v155$1 := (if p4$1 then $$5$9$1 else v155$1);
    v155$2 := (if p4$2 then $$5$9$2 else v155$2);
    v156$1 := (if p4$1 then $$5$10$1 else v156$1);
    v156$2 := (if p4$2 then $$5$10$2 else v156$2);
    v157$1 := (if p4$1 then $$5$11$1 else v157$1);
    v157$2 := (if p4$2 then $$5$11$2 else v157$2);
    call {:sourceloc_num 228} v158$1, v158$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v149$1, v148$1), v147$1), v146$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v153$1, v152$1), v151$1), v150$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v157$1, v156$1), v155$1), v154$1), FSUB32(v7$1, FMUL32(1065353216, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v149$2, v148$2), v147$2), v146$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v153$2, v152$2), v151$2), v150$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v157$2, v156$2), v155$2), v154$2), FSUB32(v7$2, FMUL32(1065353216, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v159$1 := (if p4$1 then _HAVOC_int$1 else v159$1);
    v159$2 := (if p4$2 then _HAVOC_int$2 else v159$2);
    $$6$0$1 := (if p4$1 then v159$1 else $$6$0$1);
    $$6$0$2 := (if p4$2 then v159$2 else $$6$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v160$1 := (if p4$1 then _HAVOC_int$1 else v160$1);
    v160$2 := (if p4$2 then _HAVOC_int$2 else v160$2);
    $$6$1$1 := (if p4$1 then v160$1 else $$6$1$1);
    $$6$1$2 := (if p4$2 then v160$2 else $$6$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v161$1 := (if p4$1 then _HAVOC_int$1 else v161$1);
    v161$2 := (if p4$2 then _HAVOC_int$2 else v161$2);
    $$6$2$1 := (if p4$1 then v161$1 else $$6$2$1);
    $$6$2$2 := (if p4$2 then v161$2 else $$6$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v162$1 := (if p4$1 then _HAVOC_int$1 else v162$1);
    v162$2 := (if p4$2 then _HAVOC_int$2 else v162$2);
    $$6$3$1 := (if p4$1 then v162$1 else $$6$3$1);
    $$6$3$2 := (if p4$2 then v162$2 else $$6$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v163$1 := (if p4$1 then _HAVOC_int$1 else v163$1);
    v163$2 := (if p4$2 then _HAVOC_int$2 else v163$2);
    $$6$4$1 := (if p4$1 then v163$1 else $$6$4$1);
    $$6$4$2 := (if p4$2 then v163$2 else $$6$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v164$1 := (if p4$1 then _HAVOC_int$1 else v164$1);
    v164$2 := (if p4$2 then _HAVOC_int$2 else v164$2);
    $$6$5$1 := (if p4$1 then v164$1 else $$6$5$1);
    $$6$5$2 := (if p4$2 then v164$2 else $$6$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v165$1 := (if p4$1 then _HAVOC_int$1 else v165$1);
    v165$2 := (if p4$2 then _HAVOC_int$2 else v165$2);
    $$6$6$1 := (if p4$1 then v165$1 else $$6$6$1);
    $$6$6$2 := (if p4$2 then v165$2 else $$6$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v166$1 := (if p4$1 then _HAVOC_int$1 else v166$1);
    v166$2 := (if p4$2 then _HAVOC_int$2 else v166$2);
    $$6$7$1 := (if p4$1 then v166$1 else $$6$7$1);
    $$6$7$2 := (if p4$2 then v166$2 else $$6$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v167$1 := (if p4$1 then _HAVOC_int$1 else v167$1);
    v167$2 := (if p4$2 then _HAVOC_int$2 else v167$2);
    $$6$8$1 := (if p4$1 then v167$1 else $$6$8$1);
    $$6$8$2 := (if p4$2 then v167$2 else $$6$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v168$1 := (if p4$1 then _HAVOC_int$1 else v168$1);
    v168$2 := (if p4$2 then _HAVOC_int$2 else v168$2);
    $$6$9$1 := (if p4$1 then v168$1 else $$6$9$1);
    $$6$9$2 := (if p4$2 then v168$2 else $$6$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v169$1 := (if p4$1 then _HAVOC_int$1 else v169$1);
    v169$2 := (if p4$2 then _HAVOC_int$2 else v169$2);
    $$6$10$1 := (if p4$1 then v169$1 else $$6$10$1);
    $$6$10$2 := (if p4$2 then v169$2 else $$6$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v170$1 := (if p4$1 then _HAVOC_int$1 else v170$1);
    v170$2 := (if p4$2 then _HAVOC_int$2 else v170$2);
    $$6$11$1 := (if p4$1 then v170$1 else $$6$11$1);
    $$6$11$2 := (if p4$2 then v170$2 else $$6$11$2);
    v171$1 := (if p4$1 then $$6$0$1 else v171$1);
    v171$2 := (if p4$2 then $$6$0$2 else v171$2);
    v172$1 := (if p4$1 then $$6$1$1 else v172$1);
    v172$2 := (if p4$2 then $$6$1$2 else v172$2);
    v173$1 := (if p4$1 then $$6$2$1 else v173$1);
    v173$2 := (if p4$2 then $$6$2$2 else v173$2);
    v174$1 := (if p4$1 then $$6$3$1 else v174$1);
    v174$2 := (if p4$2 then $$6$3$2 else v174$2);
    v175$1 := (if p4$1 then $$6$4$1 else v175$1);
    v175$2 := (if p4$2 then $$6$4$2 else v175$2);
    v176$1 := (if p4$1 then $$6$5$1 else v176$1);
    v176$2 := (if p4$2 then $$6$5$2 else v176$2);
    v177$1 := (if p4$1 then $$6$6$1 else v177$1);
    v177$2 := (if p4$2 then $$6$6$2 else v177$2);
    v178$1 := (if p4$1 then $$6$7$1 else v178$1);
    v178$2 := (if p4$2 then $$6$7$2 else v178$2);
    v179$1 := (if p4$1 then $$6$8$1 else v179$1);
    v179$2 := (if p4$2 then $$6$8$2 else v179$2);
    v180$1 := (if p4$1 then $$6$9$1 else v180$1);
    v180$2 := (if p4$2 then $$6$9$2 else v180$2);
    v181$1 := (if p4$1 then $$6$10$1 else v181$1);
    v181$2 := (if p4$2 then $$6$10$2 else v181$2);
    v182$1 := (if p4$1 then $$6$11$1 else v182$1);
    v182$2 := (if p4$2 then $$6$11$2 else v182$2);
    call {:sourceloc_num 265} v183$1, v183$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v174$1, v173$1), v172$1), v171$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v178$1, v177$1), v176$1), v175$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v182$1, v181$1), v180$1), v179$1), FADD32(v7$1, FMUL32(1065353216, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v174$2, v173$2), v172$2), v171$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v178$2, v177$2), v176$2), v175$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v182$2, v181$2), v180$2), v179$2), FADD32(v7$2, FMUL32(1065353216, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v184$1 := (if p4$1 then _HAVOC_int$1 else v184$1);
    v184$2 := (if p4$2 then _HAVOC_int$2 else v184$2);
    $$7$0$1 := (if p4$1 then v184$1 else $$7$0$1);
    $$7$0$2 := (if p4$2 then v184$2 else $$7$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v185$1 := (if p4$1 then _HAVOC_int$1 else v185$1);
    v185$2 := (if p4$2 then _HAVOC_int$2 else v185$2);
    $$7$1$1 := (if p4$1 then v185$1 else $$7$1$1);
    $$7$1$2 := (if p4$2 then v185$2 else $$7$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v186$1 := (if p4$1 then _HAVOC_int$1 else v186$1);
    v186$2 := (if p4$2 then _HAVOC_int$2 else v186$2);
    $$7$2$1 := (if p4$1 then v186$1 else $$7$2$1);
    $$7$2$2 := (if p4$2 then v186$2 else $$7$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v187$1 := (if p4$1 then _HAVOC_int$1 else v187$1);
    v187$2 := (if p4$2 then _HAVOC_int$2 else v187$2);
    $$7$3$1 := (if p4$1 then v187$1 else $$7$3$1);
    $$7$3$2 := (if p4$2 then v187$2 else $$7$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v188$1 := (if p4$1 then _HAVOC_int$1 else v188$1);
    v188$2 := (if p4$2 then _HAVOC_int$2 else v188$2);
    $$7$4$1 := (if p4$1 then v188$1 else $$7$4$1);
    $$7$4$2 := (if p4$2 then v188$2 else $$7$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v189$1 := (if p4$1 then _HAVOC_int$1 else v189$1);
    v189$2 := (if p4$2 then _HAVOC_int$2 else v189$2);
    $$7$5$1 := (if p4$1 then v189$1 else $$7$5$1);
    $$7$5$2 := (if p4$2 then v189$2 else $$7$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v190$1 := (if p4$1 then _HAVOC_int$1 else v190$1);
    v190$2 := (if p4$2 then _HAVOC_int$2 else v190$2);
    $$7$6$1 := (if p4$1 then v190$1 else $$7$6$1);
    $$7$6$2 := (if p4$2 then v190$2 else $$7$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v191$1 := (if p4$1 then _HAVOC_int$1 else v191$1);
    v191$2 := (if p4$2 then _HAVOC_int$2 else v191$2);
    $$7$7$1 := (if p4$1 then v191$1 else $$7$7$1);
    $$7$7$2 := (if p4$2 then v191$2 else $$7$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v192$1 := (if p4$1 then _HAVOC_int$1 else v192$1);
    v192$2 := (if p4$2 then _HAVOC_int$2 else v192$2);
    $$7$8$1 := (if p4$1 then v192$1 else $$7$8$1);
    $$7$8$2 := (if p4$2 then v192$2 else $$7$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v193$1 := (if p4$1 then _HAVOC_int$1 else v193$1);
    v193$2 := (if p4$2 then _HAVOC_int$2 else v193$2);
    $$7$9$1 := (if p4$1 then v193$1 else $$7$9$1);
    $$7$9$2 := (if p4$2 then v193$2 else $$7$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v194$1 := (if p4$1 then _HAVOC_int$1 else v194$1);
    v194$2 := (if p4$2 then _HAVOC_int$2 else v194$2);
    $$7$10$1 := (if p4$1 then v194$1 else $$7$10$1);
    $$7$10$2 := (if p4$2 then v194$2 else $$7$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v195$1 := (if p4$1 then _HAVOC_int$1 else v195$1);
    v195$2 := (if p4$2 then _HAVOC_int$2 else v195$2);
    $$7$11$1 := (if p4$1 then v195$1 else $$7$11$1);
    $$7$11$2 := (if p4$2 then v195$2 else $$7$11$2);
    v196$1 := (if p4$1 then $$7$0$1 else v196$1);
    v196$2 := (if p4$2 then $$7$0$2 else v196$2);
    v197$1 := (if p4$1 then $$7$1$1 else v197$1);
    v197$2 := (if p4$2 then $$7$1$2 else v197$2);
    v198$1 := (if p4$1 then $$7$2$1 else v198$1);
    v198$2 := (if p4$2 then $$7$2$2 else v198$2);
    v199$1 := (if p4$1 then $$7$3$1 else v199$1);
    v199$2 := (if p4$2 then $$7$3$2 else v199$2);
    v200$1 := (if p4$1 then $$7$4$1 else v200$1);
    v200$2 := (if p4$2 then $$7$4$2 else v200$2);
    v201$1 := (if p4$1 then $$7$5$1 else v201$1);
    v201$2 := (if p4$2 then $$7$5$2 else v201$2);
    v202$1 := (if p4$1 then $$7$6$1 else v202$1);
    v202$2 := (if p4$2 then $$7$6$2 else v202$2);
    v203$1 := (if p4$1 then $$7$7$1 else v203$1);
    v203$2 := (if p4$2 then $$7$7$2 else v203$2);
    v204$1 := (if p4$1 then $$7$8$1 else v204$1);
    v204$2 := (if p4$2 then $$7$8$2 else v204$2);
    v205$1 := (if p4$1 then $$7$9$1 else v205$1);
    v205$2 := (if p4$2 then $$7$9$2 else v205$2);
    v206$1 := (if p4$1 then $$7$10$1 else v206$1);
    v206$2 := (if p4$2 then $$7$10$2 else v206$2);
    v207$1 := (if p4$1 then $$7$11$1 else v207$1);
    v207$2 := (if p4$2 then $$7$11$2 else v207$2);
    call {:sourceloc_num 302} v208$1, v208$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v199$1, v198$1), v197$1), v196$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v203$1, v202$1), v201$1), v200$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v207$1, v206$1), v205$1), v204$1), FADD32(v7$1, FMUL32(1073741824, v5$1)), v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v199$2, v198$2), v197$2), v196$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v203$2, v202$2), v201$2), v200$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v207$2, v206$2), v205$2), v204$2), FADD32(v7$2, FMUL32(1073741824, v5$2)), v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 303} _LOG_WRITE_$$Ix(p4$1, v2$1, FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v33$1, FMUL32(v58$1, 1090519040)), FMUL32(v83$1, 1090519040)), v108$1), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v133$1, FMUL32(v158$1, 1090519040)), FMUL32(v183$1, 1090519040)), v208$1), 1094713344)), 1056964608), $$Ix[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Ix(p4$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 303} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 303} _CHECK_WRITE_$$Ix(p4$2, v2$2, FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v33$2, FMUL32(v58$2, 1090519040)), FMUL32(v83$2, 1090519040)), v108$2), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v133$2, FMUL32(v158$2, 1090519040)), FMUL32(v183$2, 1090519040)), v208$2), 1094713344)), 1056964608));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Ix"} true;
    $$Ix[v2$1] := (if p4$1 then FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v33$1, FMUL32(v58$1, 1090519040)), FMUL32(v83$1, 1090519040)), v108$1), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v133$1, FMUL32(v158$1, 1090519040)), FMUL32(v183$1, 1090519040)), v208$1), 1094713344)), 1056964608) else $$Ix[v2$1]);
    $$Ix[v2$2] := (if p4$2 then FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v33$2, FMUL32(v58$2, 1090519040)), FMUL32(v83$2, 1090519040)), v108$2), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v133$2, FMUL32(v158$2, 1090519040)), FMUL32(v183$2, 1090519040)), v208$2), 1094713344)), 1056964608) else $$Ix[v2$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v209$1 := (if p4$1 then _HAVOC_int$1 else v209$1);
    v209$2 := (if p4$2 then _HAVOC_int$2 else v209$2);
    $$8$0$1 := (if p4$1 then v209$1 else $$8$0$1);
    $$8$0$2 := (if p4$2 then v209$2 else $$8$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v210$1 := (if p4$1 then _HAVOC_int$1 else v210$1);
    v210$2 := (if p4$2 then _HAVOC_int$2 else v210$2);
    $$8$1$1 := (if p4$1 then v210$1 else $$8$1$1);
    $$8$1$2 := (if p4$2 then v210$2 else $$8$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v211$1 := (if p4$1 then _HAVOC_int$1 else v211$1);
    v211$2 := (if p4$2 then _HAVOC_int$2 else v211$2);
    $$8$2$1 := (if p4$1 then v211$1 else $$8$2$1);
    $$8$2$2 := (if p4$2 then v211$2 else $$8$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v212$1 := (if p4$1 then _HAVOC_int$1 else v212$1);
    v212$2 := (if p4$2 then _HAVOC_int$2 else v212$2);
    $$8$3$1 := (if p4$1 then v212$1 else $$8$3$1);
    $$8$3$2 := (if p4$2 then v212$2 else $$8$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v213$1 := (if p4$1 then _HAVOC_int$1 else v213$1);
    v213$2 := (if p4$2 then _HAVOC_int$2 else v213$2);
    $$8$4$1 := (if p4$1 then v213$1 else $$8$4$1);
    $$8$4$2 := (if p4$2 then v213$2 else $$8$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v214$1 := (if p4$1 then _HAVOC_int$1 else v214$1);
    v214$2 := (if p4$2 then _HAVOC_int$2 else v214$2);
    $$8$5$1 := (if p4$1 then v214$1 else $$8$5$1);
    $$8$5$2 := (if p4$2 then v214$2 else $$8$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v215$1 := (if p4$1 then _HAVOC_int$1 else v215$1);
    v215$2 := (if p4$2 then _HAVOC_int$2 else v215$2);
    $$8$6$1 := (if p4$1 then v215$1 else $$8$6$1);
    $$8$6$2 := (if p4$2 then v215$2 else $$8$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v216$1 := (if p4$1 then _HAVOC_int$1 else v216$1);
    v216$2 := (if p4$2 then _HAVOC_int$2 else v216$2);
    $$8$7$1 := (if p4$1 then v216$1 else $$8$7$1);
    $$8$7$2 := (if p4$2 then v216$2 else $$8$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v217$1 := (if p4$1 then _HAVOC_int$1 else v217$1);
    v217$2 := (if p4$2 then _HAVOC_int$2 else v217$2);
    $$8$8$1 := (if p4$1 then v217$1 else $$8$8$1);
    $$8$8$2 := (if p4$2 then v217$2 else $$8$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v218$1 := (if p4$1 then _HAVOC_int$1 else v218$1);
    v218$2 := (if p4$2 then _HAVOC_int$2 else v218$2);
    $$8$9$1 := (if p4$1 then v218$1 else $$8$9$1);
    $$8$9$2 := (if p4$2 then v218$2 else $$8$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v219$1 := (if p4$1 then _HAVOC_int$1 else v219$1);
    v219$2 := (if p4$2 then _HAVOC_int$2 else v219$2);
    $$8$10$1 := (if p4$1 then v219$1 else $$8$10$1);
    $$8$10$2 := (if p4$2 then v219$2 else $$8$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v220$1 := (if p4$1 then _HAVOC_int$1 else v220$1);
    v220$2 := (if p4$2 then _HAVOC_int$2 else v220$2);
    $$8$11$1 := (if p4$1 then v220$1 else $$8$11$1);
    $$8$11$2 := (if p4$2 then v220$2 else $$8$11$2);
    v221$1 := (if p4$1 then $$8$0$1 else v221$1);
    v221$2 := (if p4$2 then $$8$0$2 else v221$2);
    v222$1 := (if p4$1 then $$8$1$1 else v222$1);
    v222$2 := (if p4$2 then $$8$1$2 else v222$2);
    v223$1 := (if p4$1 then $$8$2$1 else v223$1);
    v223$2 := (if p4$2 then $$8$2$2 else v223$2);
    v224$1 := (if p4$1 then $$8$3$1 else v224$1);
    v224$2 := (if p4$2 then $$8$3$2 else v224$2);
    v225$1 := (if p4$1 then $$8$4$1 else v225$1);
    v225$2 := (if p4$2 then $$8$4$2 else v225$2);
    v226$1 := (if p4$1 then $$8$5$1 else v226$1);
    v226$2 := (if p4$2 then $$8$5$2 else v226$2);
    v227$1 := (if p4$1 then $$8$6$1 else v227$1);
    v227$2 := (if p4$2 then $$8$6$2 else v227$2);
    v228$1 := (if p4$1 then $$8$7$1 else v228$1);
    v228$2 := (if p4$2 then $$8$7$2 else v228$2);
    v229$1 := (if p4$1 then $$8$8$1 else v229$1);
    v229$2 := (if p4$2 then $$8$8$2 else v229$2);
    v230$1 := (if p4$1 then $$8$9$1 else v230$1);
    v230$2 := (if p4$2 then $$8$9$2 else v230$2);
    v231$1 := (if p4$1 then $$8$10$1 else v231$1);
    v231$2 := (if p4$2 then $$8$10$2 else v231$2);
    v232$1 := (if p4$1 then $$8$11$1 else v232$1);
    v232$2 := (if p4$2 then $$8$11$2 else v232$2);
    call {:sourceloc_num 340} v233$1, v233$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v224$1, v223$1), v222$1), v221$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v228$1, v227$1), v226$1), v225$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v232$1, v231$1), v230$1), v229$1), v7$1, v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v224$2, v223$2), v222$2), v221$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v228$2, v227$2), v226$2), v225$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v232$2, v231$2), v230$2), v229$2), v7$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v234$1 := (if p4$1 then _HAVOC_int$1 else v234$1);
    v234$2 := (if p4$2 then _HAVOC_int$2 else v234$2);
    $$9$0$1 := (if p4$1 then v234$1 else $$9$0$1);
    $$9$0$2 := (if p4$2 then v234$2 else $$9$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v235$1 := (if p4$1 then _HAVOC_int$1 else v235$1);
    v235$2 := (if p4$2 then _HAVOC_int$2 else v235$2);
    $$9$1$1 := (if p4$1 then v235$1 else $$9$1$1);
    $$9$1$2 := (if p4$2 then v235$2 else $$9$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v236$1 := (if p4$1 then _HAVOC_int$1 else v236$1);
    v236$2 := (if p4$2 then _HAVOC_int$2 else v236$2);
    $$9$2$1 := (if p4$1 then v236$1 else $$9$2$1);
    $$9$2$2 := (if p4$2 then v236$2 else $$9$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v237$1 := (if p4$1 then _HAVOC_int$1 else v237$1);
    v237$2 := (if p4$2 then _HAVOC_int$2 else v237$2);
    $$9$3$1 := (if p4$1 then v237$1 else $$9$3$1);
    $$9$3$2 := (if p4$2 then v237$2 else $$9$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v238$1 := (if p4$1 then _HAVOC_int$1 else v238$1);
    v238$2 := (if p4$2 then _HAVOC_int$2 else v238$2);
    $$9$4$1 := (if p4$1 then v238$1 else $$9$4$1);
    $$9$4$2 := (if p4$2 then v238$2 else $$9$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v239$1 := (if p4$1 then _HAVOC_int$1 else v239$1);
    v239$2 := (if p4$2 then _HAVOC_int$2 else v239$2);
    $$9$5$1 := (if p4$1 then v239$1 else $$9$5$1);
    $$9$5$2 := (if p4$2 then v239$2 else $$9$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v240$1 := (if p4$1 then _HAVOC_int$1 else v240$1);
    v240$2 := (if p4$2 then _HAVOC_int$2 else v240$2);
    $$9$6$1 := (if p4$1 then v240$1 else $$9$6$1);
    $$9$6$2 := (if p4$2 then v240$2 else $$9$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v241$1 := (if p4$1 then _HAVOC_int$1 else v241$1);
    v241$2 := (if p4$2 then _HAVOC_int$2 else v241$2);
    $$9$7$1 := (if p4$1 then v241$1 else $$9$7$1);
    $$9$7$2 := (if p4$2 then v241$2 else $$9$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v242$1 := (if p4$1 then _HAVOC_int$1 else v242$1);
    v242$2 := (if p4$2 then _HAVOC_int$2 else v242$2);
    $$9$8$1 := (if p4$1 then v242$1 else $$9$8$1);
    $$9$8$2 := (if p4$2 then v242$2 else $$9$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v243$1 := (if p4$1 then _HAVOC_int$1 else v243$1);
    v243$2 := (if p4$2 then _HAVOC_int$2 else v243$2);
    $$9$9$1 := (if p4$1 then v243$1 else $$9$9$1);
    $$9$9$2 := (if p4$2 then v243$2 else $$9$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v244$1 := (if p4$1 then _HAVOC_int$1 else v244$1);
    v244$2 := (if p4$2 then _HAVOC_int$2 else v244$2);
    $$9$10$1 := (if p4$1 then v244$1 else $$9$10$1);
    $$9$10$2 := (if p4$2 then v244$2 else $$9$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v245$1 := (if p4$1 then _HAVOC_int$1 else v245$1);
    v245$2 := (if p4$2 then _HAVOC_int$2 else v245$2);
    $$9$11$1 := (if p4$1 then v245$1 else $$9$11$1);
    $$9$11$2 := (if p4$2 then v245$2 else $$9$11$2);
    v246$1 := (if p4$1 then $$9$0$1 else v246$1);
    v246$2 := (if p4$2 then $$9$0$2 else v246$2);
    v247$1 := (if p4$1 then $$9$1$1 else v247$1);
    v247$2 := (if p4$2 then $$9$1$2 else v247$2);
    v248$1 := (if p4$1 then $$9$2$1 else v248$1);
    v248$2 := (if p4$2 then $$9$2$2 else v248$2);
    v249$1 := (if p4$1 then $$9$3$1 else v249$1);
    v249$2 := (if p4$2 then $$9$3$2 else v249$2);
    v250$1 := (if p4$1 then $$9$4$1 else v250$1);
    v250$2 := (if p4$2 then $$9$4$2 else v250$2);
    v251$1 := (if p4$1 then $$9$5$1 else v251$1);
    v251$2 := (if p4$2 then $$9$5$2 else v251$2);
    v252$1 := (if p4$1 then $$9$6$1 else v252$1);
    v252$2 := (if p4$2 then $$9$6$2 else v252$2);
    v253$1 := (if p4$1 then $$9$7$1 else v253$1);
    v253$2 := (if p4$2 then $$9$7$2 else v253$2);
    v254$1 := (if p4$1 then $$9$8$1 else v254$1);
    v254$2 := (if p4$2 then $$9$8$2 else v254$2);
    v255$1 := (if p4$1 then $$9$9$1 else v255$1);
    v255$2 := (if p4$2 then $$9$9$2 else v255$2);
    v256$1 := (if p4$1 then $$9$10$1 else v256$1);
    v256$2 := (if p4$2 then $$9$10$2 else v256$2);
    v257$1 := (if p4$1 then $$9$11$1 else v257$1);
    v257$2 := (if p4$2 then $$9$11$2 else v257$2);
    call {:sourceloc_num 377} v258$1, v258$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v249$1, v248$1), v247$1), v246$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v253$1, v252$1), v251$1), v250$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v257$1, v256$1), v255$1), v254$1), v7$1, v8$1, p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v249$2, v248$2), v247$2), v246$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v253$2, v252$2), v251$2), v250$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v257$2, v256$2), v255$2), v254$2), v7$2, v8$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 378} _LOG_WRITE_$$Iz(p4$1, v2$1, FSUB32(v233$1, v258$1), $$Iz[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iz(p4$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 378} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 378} _CHECK_WRITE_$$Iz(p4$2, v2$2, FSUB32(v233$2, v258$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Iz"} true;
    $$Iz[v2$1] := (if p4$1 then FSUB32(v233$1, v258$1) else $$Iz[v2$1]);
    $$Iz[v2$2] := (if p4$2 then FSUB32(v233$2, v258$2) else $$Iz[v2$2]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v259$1 := (if p4$1 then _HAVOC_int$1 else v259$1);
    v259$2 := (if p4$2 then _HAVOC_int$2 else v259$2);
    $$10$0$1 := (if p4$1 then v259$1 else $$10$0$1);
    $$10$0$2 := (if p4$2 then v259$2 else $$10$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v260$1 := (if p4$1 then _HAVOC_int$1 else v260$1);
    v260$2 := (if p4$2 then _HAVOC_int$2 else v260$2);
    $$10$1$1 := (if p4$1 then v260$1 else $$10$1$1);
    $$10$1$2 := (if p4$2 then v260$2 else $$10$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v261$1 := (if p4$1 then _HAVOC_int$1 else v261$1);
    v261$2 := (if p4$2 then _HAVOC_int$2 else v261$2);
    $$10$2$1 := (if p4$1 then v261$1 else $$10$2$1);
    $$10$2$2 := (if p4$2 then v261$2 else $$10$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v262$1 := (if p4$1 then _HAVOC_int$1 else v262$1);
    v262$2 := (if p4$2 then _HAVOC_int$2 else v262$2);
    $$10$3$1 := (if p4$1 then v262$1 else $$10$3$1);
    $$10$3$2 := (if p4$2 then v262$2 else $$10$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v263$1 := (if p4$1 then _HAVOC_int$1 else v263$1);
    v263$2 := (if p4$2 then _HAVOC_int$2 else v263$2);
    $$10$4$1 := (if p4$1 then v263$1 else $$10$4$1);
    $$10$4$2 := (if p4$2 then v263$2 else $$10$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v264$1 := (if p4$1 then _HAVOC_int$1 else v264$1);
    v264$2 := (if p4$2 then _HAVOC_int$2 else v264$2);
    $$10$5$1 := (if p4$1 then v264$1 else $$10$5$1);
    $$10$5$2 := (if p4$2 then v264$2 else $$10$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v265$1 := (if p4$1 then _HAVOC_int$1 else v265$1);
    v265$2 := (if p4$2 then _HAVOC_int$2 else v265$2);
    $$10$6$1 := (if p4$1 then v265$1 else $$10$6$1);
    $$10$6$2 := (if p4$2 then v265$2 else $$10$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v266$1 := (if p4$1 then _HAVOC_int$1 else v266$1);
    v266$2 := (if p4$2 then _HAVOC_int$2 else v266$2);
    $$10$7$1 := (if p4$1 then v266$1 else $$10$7$1);
    $$10$7$2 := (if p4$2 then v266$2 else $$10$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v267$1 := (if p4$1 then _HAVOC_int$1 else v267$1);
    v267$2 := (if p4$2 then _HAVOC_int$2 else v267$2);
    $$10$8$1 := (if p4$1 then v267$1 else $$10$8$1);
    $$10$8$2 := (if p4$2 then v267$2 else $$10$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v268$1 := (if p4$1 then _HAVOC_int$1 else v268$1);
    v268$2 := (if p4$2 then _HAVOC_int$2 else v268$2);
    $$10$9$1 := (if p4$1 then v268$1 else $$10$9$1);
    $$10$9$2 := (if p4$2 then v268$2 else $$10$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v269$1 := (if p4$1 then _HAVOC_int$1 else v269$1);
    v269$2 := (if p4$2 then _HAVOC_int$2 else v269$2);
    $$10$10$1 := (if p4$1 then v269$1 else $$10$10$1);
    $$10$10$2 := (if p4$2 then v269$2 else $$10$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v270$1 := (if p4$1 then _HAVOC_int$1 else v270$1);
    v270$2 := (if p4$2 then _HAVOC_int$2 else v270$2);
    $$10$11$1 := (if p4$1 then v270$1 else $$10$11$1);
    $$10$11$2 := (if p4$2 then v270$2 else $$10$11$2);
    v271$1 := (if p4$1 then $$10$0$1 else v271$1);
    v271$2 := (if p4$2 then $$10$0$2 else v271$2);
    v272$1 := (if p4$1 then $$10$1$1 else v272$1);
    v272$2 := (if p4$2 then $$10$1$2 else v272$2);
    v273$1 := (if p4$1 then $$10$2$1 else v273$1);
    v273$2 := (if p4$2 then $$10$2$2 else v273$2);
    v274$1 := (if p4$1 then $$10$3$1 else v274$1);
    v274$2 := (if p4$2 then $$10$3$2 else v274$2);
    v275$1 := (if p4$1 then $$10$4$1 else v275$1);
    v275$2 := (if p4$2 then $$10$4$2 else v275$2);
    v276$1 := (if p4$1 then $$10$5$1 else v276$1);
    v276$2 := (if p4$2 then $$10$5$2 else v276$2);
    v277$1 := (if p4$1 then $$10$6$1 else v277$1);
    v277$2 := (if p4$2 then $$10$6$2 else v277$2);
    v278$1 := (if p4$1 then $$10$7$1 else v278$1);
    v278$2 := (if p4$2 then $$10$7$2 else v278$2);
    v279$1 := (if p4$1 then $$10$8$1 else v279$1);
    v279$2 := (if p4$2 then $$10$8$2 else v279$2);
    v280$1 := (if p4$1 then $$10$9$1 else v280$1);
    v280$2 := (if p4$2 then $$10$9$2 else v280$2);
    v281$1 := (if p4$1 then $$10$10$1 else v281$1);
    v281$2 := (if p4$2 then $$10$10$2 else v281$2);
    v282$1 := (if p4$1 then $$10$11$1 else v282$1);
    v282$2 := (if p4$2 then $$10$11$2 else v282$2);
    call {:sourceloc_num 415} v283$1, v283$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v274$1, v273$1), v272$1), v271$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v278$1, v277$1), v276$1), v275$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v282$1, v281$1), v280$1), v279$1), v7$1, FSUB32(v8$1, FMUL32(1073741824, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v274$2, v273$2), v272$2), v271$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v278$2, v277$2), v276$2), v275$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v282$2, v281$2), v280$2), v279$2), v7$2, FSUB32(v8$2, FMUL32(1073741824, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v284$1 := (if p4$1 then _HAVOC_int$1 else v284$1);
    v284$2 := (if p4$2 then _HAVOC_int$2 else v284$2);
    $$11$0$1 := (if p4$1 then v284$1 else $$11$0$1);
    $$11$0$2 := (if p4$2 then v284$2 else $$11$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v285$1 := (if p4$1 then _HAVOC_int$1 else v285$1);
    v285$2 := (if p4$2 then _HAVOC_int$2 else v285$2);
    $$11$1$1 := (if p4$1 then v285$1 else $$11$1$1);
    $$11$1$2 := (if p4$2 then v285$2 else $$11$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v286$1 := (if p4$1 then _HAVOC_int$1 else v286$1);
    v286$2 := (if p4$2 then _HAVOC_int$2 else v286$2);
    $$11$2$1 := (if p4$1 then v286$1 else $$11$2$1);
    $$11$2$2 := (if p4$2 then v286$2 else $$11$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v287$1 := (if p4$1 then _HAVOC_int$1 else v287$1);
    v287$2 := (if p4$2 then _HAVOC_int$2 else v287$2);
    $$11$3$1 := (if p4$1 then v287$1 else $$11$3$1);
    $$11$3$2 := (if p4$2 then v287$2 else $$11$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v288$1 := (if p4$1 then _HAVOC_int$1 else v288$1);
    v288$2 := (if p4$2 then _HAVOC_int$2 else v288$2);
    $$11$4$1 := (if p4$1 then v288$1 else $$11$4$1);
    $$11$4$2 := (if p4$2 then v288$2 else $$11$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v289$1 := (if p4$1 then _HAVOC_int$1 else v289$1);
    v289$2 := (if p4$2 then _HAVOC_int$2 else v289$2);
    $$11$5$1 := (if p4$1 then v289$1 else $$11$5$1);
    $$11$5$2 := (if p4$2 then v289$2 else $$11$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v290$1 := (if p4$1 then _HAVOC_int$1 else v290$1);
    v290$2 := (if p4$2 then _HAVOC_int$2 else v290$2);
    $$11$6$1 := (if p4$1 then v290$1 else $$11$6$1);
    $$11$6$2 := (if p4$2 then v290$2 else $$11$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v291$1 := (if p4$1 then _HAVOC_int$1 else v291$1);
    v291$2 := (if p4$2 then _HAVOC_int$2 else v291$2);
    $$11$7$1 := (if p4$1 then v291$1 else $$11$7$1);
    $$11$7$2 := (if p4$2 then v291$2 else $$11$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v292$1 := (if p4$1 then _HAVOC_int$1 else v292$1);
    v292$2 := (if p4$2 then _HAVOC_int$2 else v292$2);
    $$11$8$1 := (if p4$1 then v292$1 else $$11$8$1);
    $$11$8$2 := (if p4$2 then v292$2 else $$11$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v293$1 := (if p4$1 then _HAVOC_int$1 else v293$1);
    v293$2 := (if p4$2 then _HAVOC_int$2 else v293$2);
    $$11$9$1 := (if p4$1 then v293$1 else $$11$9$1);
    $$11$9$2 := (if p4$2 then v293$2 else $$11$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v294$1 := (if p4$1 then _HAVOC_int$1 else v294$1);
    v294$2 := (if p4$2 then _HAVOC_int$2 else v294$2);
    $$11$10$1 := (if p4$1 then v294$1 else $$11$10$1);
    $$11$10$2 := (if p4$2 then v294$2 else $$11$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v295$1 := (if p4$1 then _HAVOC_int$1 else v295$1);
    v295$2 := (if p4$2 then _HAVOC_int$2 else v295$2);
    $$11$11$1 := (if p4$1 then v295$1 else $$11$11$1);
    $$11$11$2 := (if p4$2 then v295$2 else $$11$11$2);
    v296$1 := (if p4$1 then $$11$0$1 else v296$1);
    v296$2 := (if p4$2 then $$11$0$2 else v296$2);
    v297$1 := (if p4$1 then $$11$1$1 else v297$1);
    v297$2 := (if p4$2 then $$11$1$2 else v297$2);
    v298$1 := (if p4$1 then $$11$2$1 else v298$1);
    v298$2 := (if p4$2 then $$11$2$2 else v298$2);
    v299$1 := (if p4$1 then $$11$3$1 else v299$1);
    v299$2 := (if p4$2 then $$11$3$2 else v299$2);
    v300$1 := (if p4$1 then $$11$4$1 else v300$1);
    v300$2 := (if p4$2 then $$11$4$2 else v300$2);
    v301$1 := (if p4$1 then $$11$5$1 else v301$1);
    v301$2 := (if p4$2 then $$11$5$2 else v301$2);
    v302$1 := (if p4$1 then $$11$6$1 else v302$1);
    v302$2 := (if p4$2 then $$11$6$2 else v302$2);
    v303$1 := (if p4$1 then $$11$7$1 else v303$1);
    v303$2 := (if p4$2 then $$11$7$2 else v303$2);
    v304$1 := (if p4$1 then $$11$8$1 else v304$1);
    v304$2 := (if p4$2 then $$11$8$2 else v304$2);
    v305$1 := (if p4$1 then $$11$9$1 else v305$1);
    v305$2 := (if p4$2 then $$11$9$2 else v305$2);
    v306$1 := (if p4$1 then $$11$10$1 else v306$1);
    v306$2 := (if p4$2 then $$11$10$2 else v306$2);
    v307$1 := (if p4$1 then $$11$11$1 else v307$1);
    v307$2 := (if p4$2 then $$11$11$2 else v307$2);
    call {:sourceloc_num 452} v308$1, v308$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v299$1, v298$1), v297$1), v296$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v303$1, v302$1), v301$1), v300$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v307$1, v306$1), v305$1), v304$1), v7$1, FSUB32(v8$1, FMUL32(1065353216, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v299$2, v298$2), v297$2), v296$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v303$2, v302$2), v301$2), v300$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v307$2, v306$2), v305$2), v304$2), v7$2, FSUB32(v8$2, FMUL32(1065353216, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v309$1 := (if p4$1 then _HAVOC_int$1 else v309$1);
    v309$2 := (if p4$2 then _HAVOC_int$2 else v309$2);
    $$12$0$1 := (if p4$1 then v309$1 else $$12$0$1);
    $$12$0$2 := (if p4$2 then v309$2 else $$12$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v310$1 := (if p4$1 then _HAVOC_int$1 else v310$1);
    v310$2 := (if p4$2 then _HAVOC_int$2 else v310$2);
    $$12$1$1 := (if p4$1 then v310$1 else $$12$1$1);
    $$12$1$2 := (if p4$2 then v310$2 else $$12$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v311$1 := (if p4$1 then _HAVOC_int$1 else v311$1);
    v311$2 := (if p4$2 then _HAVOC_int$2 else v311$2);
    $$12$2$1 := (if p4$1 then v311$1 else $$12$2$1);
    $$12$2$2 := (if p4$2 then v311$2 else $$12$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v312$1 := (if p4$1 then _HAVOC_int$1 else v312$1);
    v312$2 := (if p4$2 then _HAVOC_int$2 else v312$2);
    $$12$3$1 := (if p4$1 then v312$1 else $$12$3$1);
    $$12$3$2 := (if p4$2 then v312$2 else $$12$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v313$1 := (if p4$1 then _HAVOC_int$1 else v313$1);
    v313$2 := (if p4$2 then _HAVOC_int$2 else v313$2);
    $$12$4$1 := (if p4$1 then v313$1 else $$12$4$1);
    $$12$4$2 := (if p4$2 then v313$2 else $$12$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v314$1 := (if p4$1 then _HAVOC_int$1 else v314$1);
    v314$2 := (if p4$2 then _HAVOC_int$2 else v314$2);
    $$12$5$1 := (if p4$1 then v314$1 else $$12$5$1);
    $$12$5$2 := (if p4$2 then v314$2 else $$12$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v315$1 := (if p4$1 then _HAVOC_int$1 else v315$1);
    v315$2 := (if p4$2 then _HAVOC_int$2 else v315$2);
    $$12$6$1 := (if p4$1 then v315$1 else $$12$6$1);
    $$12$6$2 := (if p4$2 then v315$2 else $$12$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v316$1 := (if p4$1 then _HAVOC_int$1 else v316$1);
    v316$2 := (if p4$2 then _HAVOC_int$2 else v316$2);
    $$12$7$1 := (if p4$1 then v316$1 else $$12$7$1);
    $$12$7$2 := (if p4$2 then v316$2 else $$12$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v317$1 := (if p4$1 then _HAVOC_int$1 else v317$1);
    v317$2 := (if p4$2 then _HAVOC_int$2 else v317$2);
    $$12$8$1 := (if p4$1 then v317$1 else $$12$8$1);
    $$12$8$2 := (if p4$2 then v317$2 else $$12$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v318$1 := (if p4$1 then _HAVOC_int$1 else v318$1);
    v318$2 := (if p4$2 then _HAVOC_int$2 else v318$2);
    $$12$9$1 := (if p4$1 then v318$1 else $$12$9$1);
    $$12$9$2 := (if p4$2 then v318$2 else $$12$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v319$1 := (if p4$1 then _HAVOC_int$1 else v319$1);
    v319$2 := (if p4$2 then _HAVOC_int$2 else v319$2);
    $$12$10$1 := (if p4$1 then v319$1 else $$12$10$1);
    $$12$10$2 := (if p4$2 then v319$2 else $$12$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v320$1 := (if p4$1 then _HAVOC_int$1 else v320$1);
    v320$2 := (if p4$2 then _HAVOC_int$2 else v320$2);
    $$12$11$1 := (if p4$1 then v320$1 else $$12$11$1);
    $$12$11$2 := (if p4$2 then v320$2 else $$12$11$2);
    v321$1 := (if p4$1 then $$12$0$1 else v321$1);
    v321$2 := (if p4$2 then $$12$0$2 else v321$2);
    v322$1 := (if p4$1 then $$12$1$1 else v322$1);
    v322$2 := (if p4$2 then $$12$1$2 else v322$2);
    v323$1 := (if p4$1 then $$12$2$1 else v323$1);
    v323$2 := (if p4$2 then $$12$2$2 else v323$2);
    v324$1 := (if p4$1 then $$12$3$1 else v324$1);
    v324$2 := (if p4$2 then $$12$3$2 else v324$2);
    v325$1 := (if p4$1 then $$12$4$1 else v325$1);
    v325$2 := (if p4$2 then $$12$4$2 else v325$2);
    v326$1 := (if p4$1 then $$12$5$1 else v326$1);
    v326$2 := (if p4$2 then $$12$5$2 else v326$2);
    v327$1 := (if p4$1 then $$12$6$1 else v327$1);
    v327$2 := (if p4$2 then $$12$6$2 else v327$2);
    v328$1 := (if p4$1 then $$12$7$1 else v328$1);
    v328$2 := (if p4$2 then $$12$7$2 else v328$2);
    v329$1 := (if p4$1 then $$12$8$1 else v329$1);
    v329$2 := (if p4$2 then $$12$8$2 else v329$2);
    v330$1 := (if p4$1 then $$12$9$1 else v330$1);
    v330$2 := (if p4$2 then $$12$9$2 else v330$2);
    v331$1 := (if p4$1 then $$12$10$1 else v331$1);
    v331$2 := (if p4$2 then $$12$10$2 else v331$2);
    v332$1 := (if p4$1 then $$12$11$1 else v332$1);
    v332$2 := (if p4$2 then $$12$11$2 else v332$2);
    call {:sourceloc_num 489} v333$1, v333$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v324$1, v323$1), v322$1), v321$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v328$1, v327$1), v326$1), v325$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v332$1, v331$1), v330$1), v329$1), v7$1, FADD32(v8$1, FMUL32(1065353216, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v324$2, v323$2), v322$2), v321$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v328$2, v327$2), v326$2), v325$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v332$2, v331$2), v330$2), v329$2), v7$2, FADD32(v8$2, FMUL32(1065353216, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v334$1 := (if p4$1 then _HAVOC_int$1 else v334$1);
    v334$2 := (if p4$2 then _HAVOC_int$2 else v334$2);
    $$13$0$1 := (if p4$1 then v334$1 else $$13$0$1);
    $$13$0$2 := (if p4$2 then v334$2 else $$13$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v335$1 := (if p4$1 then _HAVOC_int$1 else v335$1);
    v335$2 := (if p4$2 then _HAVOC_int$2 else v335$2);
    $$13$1$1 := (if p4$1 then v335$1 else $$13$1$1);
    $$13$1$2 := (if p4$2 then v335$2 else $$13$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v336$1 := (if p4$1 then _HAVOC_int$1 else v336$1);
    v336$2 := (if p4$2 then _HAVOC_int$2 else v336$2);
    $$13$2$1 := (if p4$1 then v336$1 else $$13$2$1);
    $$13$2$2 := (if p4$2 then v336$2 else $$13$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v337$1 := (if p4$1 then _HAVOC_int$1 else v337$1);
    v337$2 := (if p4$2 then _HAVOC_int$2 else v337$2);
    $$13$3$1 := (if p4$1 then v337$1 else $$13$3$1);
    $$13$3$2 := (if p4$2 then v337$2 else $$13$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v338$1 := (if p4$1 then _HAVOC_int$1 else v338$1);
    v338$2 := (if p4$2 then _HAVOC_int$2 else v338$2);
    $$13$4$1 := (if p4$1 then v338$1 else $$13$4$1);
    $$13$4$2 := (if p4$2 then v338$2 else $$13$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v339$1 := (if p4$1 then _HAVOC_int$1 else v339$1);
    v339$2 := (if p4$2 then _HAVOC_int$2 else v339$2);
    $$13$5$1 := (if p4$1 then v339$1 else $$13$5$1);
    $$13$5$2 := (if p4$2 then v339$2 else $$13$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v340$1 := (if p4$1 then _HAVOC_int$1 else v340$1);
    v340$2 := (if p4$2 then _HAVOC_int$2 else v340$2);
    $$13$6$1 := (if p4$1 then v340$1 else $$13$6$1);
    $$13$6$2 := (if p4$2 then v340$2 else $$13$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v341$1 := (if p4$1 then _HAVOC_int$1 else v341$1);
    v341$2 := (if p4$2 then _HAVOC_int$2 else v341$2);
    $$13$7$1 := (if p4$1 then v341$1 else $$13$7$1);
    $$13$7$2 := (if p4$2 then v341$2 else $$13$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v342$1 := (if p4$1 then _HAVOC_int$1 else v342$1);
    v342$2 := (if p4$2 then _HAVOC_int$2 else v342$2);
    $$13$8$1 := (if p4$1 then v342$1 else $$13$8$1);
    $$13$8$2 := (if p4$2 then v342$2 else $$13$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v343$1 := (if p4$1 then _HAVOC_int$1 else v343$1);
    v343$2 := (if p4$2 then _HAVOC_int$2 else v343$2);
    $$13$9$1 := (if p4$1 then v343$1 else $$13$9$1);
    $$13$9$2 := (if p4$2 then v343$2 else $$13$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v344$1 := (if p4$1 then _HAVOC_int$1 else v344$1);
    v344$2 := (if p4$2 then _HAVOC_int$2 else v344$2);
    $$13$10$1 := (if p4$1 then v344$1 else $$13$10$1);
    $$13$10$2 := (if p4$2 then v344$2 else $$13$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v345$1 := (if p4$1 then _HAVOC_int$1 else v345$1);
    v345$2 := (if p4$2 then _HAVOC_int$2 else v345$2);
    $$13$11$1 := (if p4$1 then v345$1 else $$13$11$1);
    $$13$11$2 := (if p4$2 then v345$2 else $$13$11$2);
    v346$1 := (if p4$1 then $$13$0$1 else v346$1);
    v346$2 := (if p4$2 then $$13$0$2 else v346$2);
    v347$1 := (if p4$1 then $$13$1$1 else v347$1);
    v347$2 := (if p4$2 then $$13$1$2 else v347$2);
    v348$1 := (if p4$1 then $$13$2$1 else v348$1);
    v348$2 := (if p4$2 then $$13$2$2 else v348$2);
    v349$1 := (if p4$1 then $$13$3$1 else v349$1);
    v349$2 := (if p4$2 then $$13$3$2 else v349$2);
    v350$1 := (if p4$1 then $$13$4$1 else v350$1);
    v350$2 := (if p4$2 then $$13$4$2 else v350$2);
    v351$1 := (if p4$1 then $$13$5$1 else v351$1);
    v351$2 := (if p4$2 then $$13$5$2 else v351$2);
    v352$1 := (if p4$1 then $$13$6$1 else v352$1);
    v352$2 := (if p4$2 then $$13$6$2 else v352$2);
    v353$1 := (if p4$1 then $$13$7$1 else v353$1);
    v353$2 := (if p4$2 then $$13$7$2 else v353$2);
    v354$1 := (if p4$1 then $$13$8$1 else v354$1);
    v354$2 := (if p4$2 then $$13$8$2 else v354$2);
    v355$1 := (if p4$1 then $$13$9$1 else v355$1);
    v355$2 := (if p4$2 then $$13$9$2 else v355$2);
    v356$1 := (if p4$1 then $$13$10$1 else v356$1);
    v356$2 := (if p4$2 then $$13$10$2 else v356$2);
    v357$1 := (if p4$1 then $$13$11$1 else v357$1);
    v357$2 := (if p4$2 then $$13$11$2 else v357$2);
    call {:sourceloc_num 526} v358$1, v358$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v349$1, v348$1), v347$1), v346$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v353$1, v352$1), v351$1), v350$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v357$1, v356$1), v355$1), v354$1), v7$1, FADD32(v8$1, FMUL32(1073741824, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v349$2, v348$2), v347$2), v346$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v353$2, v352$2), v351$2), v350$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v357$2, v356$2), v355$2), v354$2), v7$2, FADD32(v8$2, FMUL32(1073741824, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v359$1 := (if p4$1 then _HAVOC_int$1 else v359$1);
    v359$2 := (if p4$2 then _HAVOC_int$2 else v359$2);
    $$14$0$1 := (if p4$1 then v359$1 else $$14$0$1);
    $$14$0$2 := (if p4$2 then v359$2 else $$14$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v360$1 := (if p4$1 then _HAVOC_int$1 else v360$1);
    v360$2 := (if p4$2 then _HAVOC_int$2 else v360$2);
    $$14$1$1 := (if p4$1 then v360$1 else $$14$1$1);
    $$14$1$2 := (if p4$2 then v360$2 else $$14$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v361$1 := (if p4$1 then _HAVOC_int$1 else v361$1);
    v361$2 := (if p4$2 then _HAVOC_int$2 else v361$2);
    $$14$2$1 := (if p4$1 then v361$1 else $$14$2$1);
    $$14$2$2 := (if p4$2 then v361$2 else $$14$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v362$1 := (if p4$1 then _HAVOC_int$1 else v362$1);
    v362$2 := (if p4$2 then _HAVOC_int$2 else v362$2);
    $$14$3$1 := (if p4$1 then v362$1 else $$14$3$1);
    $$14$3$2 := (if p4$2 then v362$2 else $$14$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v363$1 := (if p4$1 then _HAVOC_int$1 else v363$1);
    v363$2 := (if p4$2 then _HAVOC_int$2 else v363$2);
    $$14$4$1 := (if p4$1 then v363$1 else $$14$4$1);
    $$14$4$2 := (if p4$2 then v363$2 else $$14$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v364$1 := (if p4$1 then _HAVOC_int$1 else v364$1);
    v364$2 := (if p4$2 then _HAVOC_int$2 else v364$2);
    $$14$5$1 := (if p4$1 then v364$1 else $$14$5$1);
    $$14$5$2 := (if p4$2 then v364$2 else $$14$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v365$1 := (if p4$1 then _HAVOC_int$1 else v365$1);
    v365$2 := (if p4$2 then _HAVOC_int$2 else v365$2);
    $$14$6$1 := (if p4$1 then v365$1 else $$14$6$1);
    $$14$6$2 := (if p4$2 then v365$2 else $$14$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v366$1 := (if p4$1 then _HAVOC_int$1 else v366$1);
    v366$2 := (if p4$2 then _HAVOC_int$2 else v366$2);
    $$14$7$1 := (if p4$1 then v366$1 else $$14$7$1);
    $$14$7$2 := (if p4$2 then v366$2 else $$14$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v367$1 := (if p4$1 then _HAVOC_int$1 else v367$1);
    v367$2 := (if p4$2 then _HAVOC_int$2 else v367$2);
    $$14$8$1 := (if p4$1 then v367$1 else $$14$8$1);
    $$14$8$2 := (if p4$2 then v367$2 else $$14$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v368$1 := (if p4$1 then _HAVOC_int$1 else v368$1);
    v368$2 := (if p4$2 then _HAVOC_int$2 else v368$2);
    $$14$9$1 := (if p4$1 then v368$1 else $$14$9$1);
    $$14$9$2 := (if p4$2 then v368$2 else $$14$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v369$1 := (if p4$1 then _HAVOC_int$1 else v369$1);
    v369$2 := (if p4$2 then _HAVOC_int$2 else v369$2);
    $$14$10$1 := (if p4$1 then v369$1 else $$14$10$1);
    $$14$10$2 := (if p4$2 then v369$2 else $$14$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v370$1 := (if p4$1 then _HAVOC_int$1 else v370$1);
    v370$2 := (if p4$2 then _HAVOC_int$2 else v370$2);
    $$14$11$1 := (if p4$1 then v370$1 else $$14$11$1);
    $$14$11$2 := (if p4$2 then v370$2 else $$14$11$2);
    v371$1 := (if p4$1 then $$14$0$1 else v371$1);
    v371$2 := (if p4$2 then $$14$0$2 else v371$2);
    v372$1 := (if p4$1 then $$14$1$1 else v372$1);
    v372$2 := (if p4$2 then $$14$1$2 else v372$2);
    v373$1 := (if p4$1 then $$14$2$1 else v373$1);
    v373$2 := (if p4$2 then $$14$2$2 else v373$2);
    v374$1 := (if p4$1 then $$14$3$1 else v374$1);
    v374$2 := (if p4$2 then $$14$3$2 else v374$2);
    v375$1 := (if p4$1 then $$14$4$1 else v375$1);
    v375$2 := (if p4$2 then $$14$4$2 else v375$2);
    v376$1 := (if p4$1 then $$14$5$1 else v376$1);
    v376$2 := (if p4$2 then $$14$5$2 else v376$2);
    v377$1 := (if p4$1 then $$14$6$1 else v377$1);
    v377$2 := (if p4$2 then $$14$6$2 else v377$2);
    v378$1 := (if p4$1 then $$14$7$1 else v378$1);
    v378$2 := (if p4$2 then $$14$7$2 else v378$2);
    v379$1 := (if p4$1 then $$14$8$1 else v379$1);
    v379$2 := (if p4$2 then $$14$8$2 else v379$2);
    v380$1 := (if p4$1 then $$14$9$1 else v380$1);
    v380$2 := (if p4$2 then $$14$9$2 else v380$2);
    v381$1 := (if p4$1 then $$14$10$1 else v381$1);
    v381$2 := (if p4$2 then $$14$10$2 else v381$2);
    v382$1 := (if p4$1 then $$14$11$1 else v382$1);
    v382$2 := (if p4$2 then $$14$11$2 else v382$2);
    call {:sourceloc_num 563} v383$1, v383$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v374$1, v373$1), v372$1), v371$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v378$1, v377$1), v376$1), v375$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v382$1, v381$1), v380$1), v379$1), v7$1, FSUB32(v8$1, FMUL32(1073741824, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v374$2, v373$2), v372$2), v371$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v378$2, v377$2), v376$2), v375$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v382$2, v381$2), v380$2), v379$2), v7$2, FSUB32(v8$2, FMUL32(1073741824, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v384$1 := (if p4$1 then _HAVOC_int$1 else v384$1);
    v384$2 := (if p4$2 then _HAVOC_int$2 else v384$2);
    $$15$0$1 := (if p4$1 then v384$1 else $$15$0$1);
    $$15$0$2 := (if p4$2 then v384$2 else $$15$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v385$1 := (if p4$1 then _HAVOC_int$1 else v385$1);
    v385$2 := (if p4$2 then _HAVOC_int$2 else v385$2);
    $$15$1$1 := (if p4$1 then v385$1 else $$15$1$1);
    $$15$1$2 := (if p4$2 then v385$2 else $$15$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v386$1 := (if p4$1 then _HAVOC_int$1 else v386$1);
    v386$2 := (if p4$2 then _HAVOC_int$2 else v386$2);
    $$15$2$1 := (if p4$1 then v386$1 else $$15$2$1);
    $$15$2$2 := (if p4$2 then v386$2 else $$15$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v387$1 := (if p4$1 then _HAVOC_int$1 else v387$1);
    v387$2 := (if p4$2 then _HAVOC_int$2 else v387$2);
    $$15$3$1 := (if p4$1 then v387$1 else $$15$3$1);
    $$15$3$2 := (if p4$2 then v387$2 else $$15$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v388$1 := (if p4$1 then _HAVOC_int$1 else v388$1);
    v388$2 := (if p4$2 then _HAVOC_int$2 else v388$2);
    $$15$4$1 := (if p4$1 then v388$1 else $$15$4$1);
    $$15$4$2 := (if p4$2 then v388$2 else $$15$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v389$1 := (if p4$1 then _HAVOC_int$1 else v389$1);
    v389$2 := (if p4$2 then _HAVOC_int$2 else v389$2);
    $$15$5$1 := (if p4$1 then v389$1 else $$15$5$1);
    $$15$5$2 := (if p4$2 then v389$2 else $$15$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v390$1 := (if p4$1 then _HAVOC_int$1 else v390$1);
    v390$2 := (if p4$2 then _HAVOC_int$2 else v390$2);
    $$15$6$1 := (if p4$1 then v390$1 else $$15$6$1);
    $$15$6$2 := (if p4$2 then v390$2 else $$15$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v391$1 := (if p4$1 then _HAVOC_int$1 else v391$1);
    v391$2 := (if p4$2 then _HAVOC_int$2 else v391$2);
    $$15$7$1 := (if p4$1 then v391$1 else $$15$7$1);
    $$15$7$2 := (if p4$2 then v391$2 else $$15$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v392$1 := (if p4$1 then _HAVOC_int$1 else v392$1);
    v392$2 := (if p4$2 then _HAVOC_int$2 else v392$2);
    $$15$8$1 := (if p4$1 then v392$1 else $$15$8$1);
    $$15$8$2 := (if p4$2 then v392$2 else $$15$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v393$1 := (if p4$1 then _HAVOC_int$1 else v393$1);
    v393$2 := (if p4$2 then _HAVOC_int$2 else v393$2);
    $$15$9$1 := (if p4$1 then v393$1 else $$15$9$1);
    $$15$9$2 := (if p4$2 then v393$2 else $$15$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v394$1 := (if p4$1 then _HAVOC_int$1 else v394$1);
    v394$2 := (if p4$2 then _HAVOC_int$2 else v394$2);
    $$15$10$1 := (if p4$1 then v394$1 else $$15$10$1);
    $$15$10$2 := (if p4$2 then v394$2 else $$15$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v395$1 := (if p4$1 then _HAVOC_int$1 else v395$1);
    v395$2 := (if p4$2 then _HAVOC_int$2 else v395$2);
    $$15$11$1 := (if p4$1 then v395$1 else $$15$11$1);
    $$15$11$2 := (if p4$2 then v395$2 else $$15$11$2);
    v396$1 := (if p4$1 then $$15$0$1 else v396$1);
    v396$2 := (if p4$2 then $$15$0$2 else v396$2);
    v397$1 := (if p4$1 then $$15$1$1 else v397$1);
    v397$2 := (if p4$2 then $$15$1$2 else v397$2);
    v398$1 := (if p4$1 then $$15$2$1 else v398$1);
    v398$2 := (if p4$2 then $$15$2$2 else v398$2);
    v399$1 := (if p4$1 then $$15$3$1 else v399$1);
    v399$2 := (if p4$2 then $$15$3$2 else v399$2);
    v400$1 := (if p4$1 then $$15$4$1 else v400$1);
    v400$2 := (if p4$2 then $$15$4$2 else v400$2);
    v401$1 := (if p4$1 then $$15$5$1 else v401$1);
    v401$2 := (if p4$2 then $$15$5$2 else v401$2);
    v402$1 := (if p4$1 then $$15$6$1 else v402$1);
    v402$2 := (if p4$2 then $$15$6$2 else v402$2);
    v403$1 := (if p4$1 then $$15$7$1 else v403$1);
    v403$2 := (if p4$2 then $$15$7$2 else v403$2);
    v404$1 := (if p4$1 then $$15$8$1 else v404$1);
    v404$2 := (if p4$2 then $$15$8$2 else v404$2);
    v405$1 := (if p4$1 then $$15$9$1 else v405$1);
    v405$2 := (if p4$2 then $$15$9$2 else v405$2);
    v406$1 := (if p4$1 then $$15$10$1 else v406$1);
    v406$2 := (if p4$2 then $$15$10$2 else v406$2);
    v407$1 := (if p4$1 then $$15$11$1 else v407$1);
    v407$2 := (if p4$2 then $$15$11$2 else v407$2);
    call {:sourceloc_num 600} v408$1, v408$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v399$1, v398$1), v397$1), v396$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v403$1, v402$1), v401$1), v400$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v407$1, v406$1), v405$1), v404$1), v7$1, FSUB32(v8$1, FMUL32(1065353216, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v399$2, v398$2), v397$2), v396$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v403$2, v402$2), v401$2), v400$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v407$2, v406$2), v405$2), v404$2), v7$2, FSUB32(v8$2, FMUL32(1065353216, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v409$1 := (if p4$1 then _HAVOC_int$1 else v409$1);
    v409$2 := (if p4$2 then _HAVOC_int$2 else v409$2);
    $$16$0$1 := (if p4$1 then v409$1 else $$16$0$1);
    $$16$0$2 := (if p4$2 then v409$2 else $$16$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v410$1 := (if p4$1 then _HAVOC_int$1 else v410$1);
    v410$2 := (if p4$2 then _HAVOC_int$2 else v410$2);
    $$16$1$1 := (if p4$1 then v410$1 else $$16$1$1);
    $$16$1$2 := (if p4$2 then v410$2 else $$16$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v411$1 := (if p4$1 then _HAVOC_int$1 else v411$1);
    v411$2 := (if p4$2 then _HAVOC_int$2 else v411$2);
    $$16$2$1 := (if p4$1 then v411$1 else $$16$2$1);
    $$16$2$2 := (if p4$2 then v411$2 else $$16$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v412$1 := (if p4$1 then _HAVOC_int$1 else v412$1);
    v412$2 := (if p4$2 then _HAVOC_int$2 else v412$2);
    $$16$3$1 := (if p4$1 then v412$1 else $$16$3$1);
    $$16$3$2 := (if p4$2 then v412$2 else $$16$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v413$1 := (if p4$1 then _HAVOC_int$1 else v413$1);
    v413$2 := (if p4$2 then _HAVOC_int$2 else v413$2);
    $$16$4$1 := (if p4$1 then v413$1 else $$16$4$1);
    $$16$4$2 := (if p4$2 then v413$2 else $$16$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v414$1 := (if p4$1 then _HAVOC_int$1 else v414$1);
    v414$2 := (if p4$2 then _HAVOC_int$2 else v414$2);
    $$16$5$1 := (if p4$1 then v414$1 else $$16$5$1);
    $$16$5$2 := (if p4$2 then v414$2 else $$16$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v415$1 := (if p4$1 then _HAVOC_int$1 else v415$1);
    v415$2 := (if p4$2 then _HAVOC_int$2 else v415$2);
    $$16$6$1 := (if p4$1 then v415$1 else $$16$6$1);
    $$16$6$2 := (if p4$2 then v415$2 else $$16$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v416$1 := (if p4$1 then _HAVOC_int$1 else v416$1);
    v416$2 := (if p4$2 then _HAVOC_int$2 else v416$2);
    $$16$7$1 := (if p4$1 then v416$1 else $$16$7$1);
    $$16$7$2 := (if p4$2 then v416$2 else $$16$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v417$1 := (if p4$1 then _HAVOC_int$1 else v417$1);
    v417$2 := (if p4$2 then _HAVOC_int$2 else v417$2);
    $$16$8$1 := (if p4$1 then v417$1 else $$16$8$1);
    $$16$8$2 := (if p4$2 then v417$2 else $$16$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v418$1 := (if p4$1 then _HAVOC_int$1 else v418$1);
    v418$2 := (if p4$2 then _HAVOC_int$2 else v418$2);
    $$16$9$1 := (if p4$1 then v418$1 else $$16$9$1);
    $$16$9$2 := (if p4$2 then v418$2 else $$16$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v419$1 := (if p4$1 then _HAVOC_int$1 else v419$1);
    v419$2 := (if p4$2 then _HAVOC_int$2 else v419$2);
    $$16$10$1 := (if p4$1 then v419$1 else $$16$10$1);
    $$16$10$2 := (if p4$2 then v419$2 else $$16$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v420$1 := (if p4$1 then _HAVOC_int$1 else v420$1);
    v420$2 := (if p4$2 then _HAVOC_int$2 else v420$2);
    $$16$11$1 := (if p4$1 then v420$1 else $$16$11$1);
    $$16$11$2 := (if p4$2 then v420$2 else $$16$11$2);
    v421$1 := (if p4$1 then $$16$0$1 else v421$1);
    v421$2 := (if p4$2 then $$16$0$2 else v421$2);
    v422$1 := (if p4$1 then $$16$1$1 else v422$1);
    v422$2 := (if p4$2 then $$16$1$2 else v422$2);
    v423$1 := (if p4$1 then $$16$2$1 else v423$1);
    v423$2 := (if p4$2 then $$16$2$2 else v423$2);
    v424$1 := (if p4$1 then $$16$3$1 else v424$1);
    v424$2 := (if p4$2 then $$16$3$2 else v424$2);
    v425$1 := (if p4$1 then $$16$4$1 else v425$1);
    v425$2 := (if p4$2 then $$16$4$2 else v425$2);
    v426$1 := (if p4$1 then $$16$5$1 else v426$1);
    v426$2 := (if p4$2 then $$16$5$2 else v426$2);
    v427$1 := (if p4$1 then $$16$6$1 else v427$1);
    v427$2 := (if p4$2 then $$16$6$2 else v427$2);
    v428$1 := (if p4$1 then $$16$7$1 else v428$1);
    v428$2 := (if p4$2 then $$16$7$2 else v428$2);
    v429$1 := (if p4$1 then $$16$8$1 else v429$1);
    v429$2 := (if p4$2 then $$16$8$2 else v429$2);
    v430$1 := (if p4$1 then $$16$9$1 else v430$1);
    v430$2 := (if p4$2 then $$16$9$2 else v430$2);
    v431$1 := (if p4$1 then $$16$10$1 else v431$1);
    v431$2 := (if p4$2 then $$16$10$2 else v431$2);
    v432$1 := (if p4$1 then $$16$11$1 else v432$1);
    v432$2 := (if p4$2 then $$16$11$2 else v432$2);
    call {:sourceloc_num 637} v433$1, v433$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v424$1, v423$1), v422$1), v421$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v428$1, v427$1), v426$1), v425$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v432$1, v431$1), v430$1), v429$1), v7$1, FADD32(v8$1, FMUL32(1065353216, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v424$2, v423$2), v422$2), v421$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v428$2, v427$2), v426$2), v425$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v432$2, v431$2), v430$2), v429$2), v7$2, FADD32(v8$2, FMUL32(1065353216, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v434$1 := (if p4$1 then _HAVOC_int$1 else v434$1);
    v434$2 := (if p4$2 then _HAVOC_int$2 else v434$2);
    $$17$0$1 := (if p4$1 then v434$1 else $$17$0$1);
    $$17$0$2 := (if p4$2 then v434$2 else $$17$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v435$1 := (if p4$1 then _HAVOC_int$1 else v435$1);
    v435$2 := (if p4$2 then _HAVOC_int$2 else v435$2);
    $$17$1$1 := (if p4$1 then v435$1 else $$17$1$1);
    $$17$1$2 := (if p4$2 then v435$2 else $$17$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v436$1 := (if p4$1 then _HAVOC_int$1 else v436$1);
    v436$2 := (if p4$2 then _HAVOC_int$2 else v436$2);
    $$17$2$1 := (if p4$1 then v436$1 else $$17$2$1);
    $$17$2$2 := (if p4$2 then v436$2 else $$17$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v437$1 := (if p4$1 then _HAVOC_int$1 else v437$1);
    v437$2 := (if p4$2 then _HAVOC_int$2 else v437$2);
    $$17$3$1 := (if p4$1 then v437$1 else $$17$3$1);
    $$17$3$2 := (if p4$2 then v437$2 else $$17$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v438$1 := (if p4$1 then _HAVOC_int$1 else v438$1);
    v438$2 := (if p4$2 then _HAVOC_int$2 else v438$2);
    $$17$4$1 := (if p4$1 then v438$1 else $$17$4$1);
    $$17$4$2 := (if p4$2 then v438$2 else $$17$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v439$1 := (if p4$1 then _HAVOC_int$1 else v439$1);
    v439$2 := (if p4$2 then _HAVOC_int$2 else v439$2);
    $$17$5$1 := (if p4$1 then v439$1 else $$17$5$1);
    $$17$5$2 := (if p4$2 then v439$2 else $$17$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v440$1 := (if p4$1 then _HAVOC_int$1 else v440$1);
    v440$2 := (if p4$2 then _HAVOC_int$2 else v440$2);
    $$17$6$1 := (if p4$1 then v440$1 else $$17$6$1);
    $$17$6$2 := (if p4$2 then v440$2 else $$17$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v441$1 := (if p4$1 then _HAVOC_int$1 else v441$1);
    v441$2 := (if p4$2 then _HAVOC_int$2 else v441$2);
    $$17$7$1 := (if p4$1 then v441$1 else $$17$7$1);
    $$17$7$2 := (if p4$2 then v441$2 else $$17$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v442$1 := (if p4$1 then _HAVOC_int$1 else v442$1);
    v442$2 := (if p4$2 then _HAVOC_int$2 else v442$2);
    $$17$8$1 := (if p4$1 then v442$1 else $$17$8$1);
    $$17$8$2 := (if p4$2 then v442$2 else $$17$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v443$1 := (if p4$1 then _HAVOC_int$1 else v443$1);
    v443$2 := (if p4$2 then _HAVOC_int$2 else v443$2);
    $$17$9$1 := (if p4$1 then v443$1 else $$17$9$1);
    $$17$9$2 := (if p4$2 then v443$2 else $$17$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v444$1 := (if p4$1 then _HAVOC_int$1 else v444$1);
    v444$2 := (if p4$2 then _HAVOC_int$2 else v444$2);
    $$17$10$1 := (if p4$1 then v444$1 else $$17$10$1);
    $$17$10$2 := (if p4$2 then v444$2 else $$17$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v445$1 := (if p4$1 then _HAVOC_int$1 else v445$1);
    v445$2 := (if p4$2 then _HAVOC_int$2 else v445$2);
    $$17$11$1 := (if p4$1 then v445$1 else $$17$11$1);
    $$17$11$2 := (if p4$2 then v445$2 else $$17$11$2);
    v446$1 := (if p4$1 then $$17$0$1 else v446$1);
    v446$2 := (if p4$2 then $$17$0$2 else v446$2);
    v447$1 := (if p4$1 then $$17$1$1 else v447$1);
    v447$2 := (if p4$2 then $$17$1$2 else v447$2);
    v448$1 := (if p4$1 then $$17$2$1 else v448$1);
    v448$2 := (if p4$2 then $$17$2$2 else v448$2);
    v449$1 := (if p4$1 then $$17$3$1 else v449$1);
    v449$2 := (if p4$2 then $$17$3$2 else v449$2);
    v450$1 := (if p4$1 then $$17$4$1 else v450$1);
    v450$2 := (if p4$2 then $$17$4$2 else v450$2);
    v451$1 := (if p4$1 then $$17$5$1 else v451$1);
    v451$2 := (if p4$2 then $$17$5$2 else v451$2);
    v452$1 := (if p4$1 then $$17$6$1 else v452$1);
    v452$2 := (if p4$2 then $$17$6$2 else v452$2);
    v453$1 := (if p4$1 then $$17$7$1 else v453$1);
    v453$2 := (if p4$2 then $$17$7$2 else v453$2);
    v454$1 := (if p4$1 then $$17$8$1 else v454$1);
    v454$2 := (if p4$2 then $$17$8$2 else v454$2);
    v455$1 := (if p4$1 then $$17$9$1 else v455$1);
    v455$2 := (if p4$2 then $$17$9$2 else v455$2);
    v456$1 := (if p4$1 then $$17$10$1 else v456$1);
    v456$2 := (if p4$2 then $$17$10$2 else v456$2);
    v457$1 := (if p4$1 then $$17$11$1 else v457$1);
    v457$2 := (if p4$2 then $$17$11$2 else v457$2);
    call {:sourceloc_num 674} v458$1, v458$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p4$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v449$1, v448$1), v447$1), v446$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v453$1, v452$1), v451$1), v450$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v457$1, v456$1), v455$1), v454$1), v7$1, FADD32(v8$1, FMUL32(1073741824, v6$1)), p4$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v449$2, v448$2), v447$2), v446$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v453$2, v452$2), v451$2), v450$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v457$2, v456$2), v455$2), v454$2), v7$2, FADD32(v8$2, FMUL32(1073741824, v6$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 675} _LOG_WRITE_$$Iy(p4$1, v2$1, FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v283$1, FMUL32(v308$1, 1090519040)), FMUL32(v333$1, 1090519040)), v358$1), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v383$1, FMUL32(v408$1, 1090519040)), FMUL32(v433$1, 1090519040)), v458$1), 1094713344)), 1056964608), $$Iy[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iy(p4$2, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 675} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 675} _CHECK_WRITE_$$Iy(p4$2, v2$2, FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v283$2, FMUL32(v308$2, 1090519040)), FMUL32(v333$2, 1090519040)), v358$2), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v383$2, FMUL32(v408$2, 1090519040)), FMUL32(v433$2, 1090519040)), v458$2), 1094713344)), 1056964608));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$Iy"} true;
    $$Iy[v2$1] := (if p4$1 then FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v283$1, FMUL32(v308$1, 1090519040)), FMUL32(v333$1, 1090519040)), v358$1), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v383$1, FMUL32(v408$1, 1090519040)), FMUL32(v433$1, 1090519040)), v458$1), 1094713344)), 1056964608) else $$Iy[v2$1]);
    $$Iy[v2$2] := (if p4$2 then FMUL32(FADD32(FDIV32(FSUB32(FADD32(FSUB32(v283$2, FMUL32(v308$2, 1090519040)), FMUL32(v333$2, 1090519040)), v358$2), 1094713344), FDIV32(FSUB32(FADD32(FSUB32(v383$2, FMUL32(v408$2, 1090519040)), FMUL32(v433$2, 1090519040)), v458$2), 1094713344)), 1056964608) else $$Iy[v2$2]);
    return;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 6 then 1 else 0) != 0;

axiom (if num_groups_x == 10 then 1 else 0) != 0;

axiom (if num_groups_y == 40 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$0$4$1: int;

var $$0$4$2: int;

var $$0$5$1: int;

var $$0$5$2: int;

var $$0$6$1: int;

var $$0$6$2: int;

var $$0$7$1: int;

var $$0$7$2: int;

var $$0$8$1: int;

var $$0$8$2: int;

var $$0$9$1: int;

var $$0$9$2: int;

var $$0$10$1: int;

var $$0$10$2: int;

var $$0$11$1: int;

var $$0$11$2: int;

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

var $$2$4$1: int;

var $$2$4$2: int;

var $$2$5$1: int;

var $$2$5$2: int;

var $$2$6$1: int;

var $$2$6$2: int;

var $$2$7$1: int;

var $$2$7$2: int;

var $$2$8$1: int;

var $$2$8$2: int;

var $$2$9$1: int;

var $$2$9$2: int;

var $$2$10$1: int;

var $$2$10$2: int;

var $$2$11$1: int;

var $$2$11$2: int;

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

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$6$4$1: int;

var $$6$4$2: int;

var $$6$5$1: int;

var $$6$5$2: int;

var $$6$6$1: int;

var $$6$6$2: int;

var $$6$7$1: int;

var $$6$7$2: int;

var $$6$8$1: int;

var $$6$8$2: int;

var $$6$9$1: int;

var $$6$9$2: int;

var $$6$10$1: int;

var $$6$10$2: int;

var $$6$11$1: int;

var $$6$11$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$7$3$1: int;

var $$7$3$2: int;

var $$7$4$1: int;

var $$7$4$2: int;

var $$7$5$1: int;

var $$7$5$2: int;

var $$7$6$1: int;

var $$7$6$2: int;

var $$7$7$1: int;

var $$7$7$2: int;

var $$7$8$1: int;

var $$7$8$2: int;

var $$7$9$1: int;

var $$7$9$2: int;

var $$7$10$1: int;

var $$7$10$2: int;

var $$7$11$1: int;

var $$7$11$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$8$2$1: int;

var $$8$2$2: int;

var $$8$3$1: int;

var $$8$3$2: int;

var $$8$4$1: int;

var $$8$4$2: int;

var $$8$5$1: int;

var $$8$5$2: int;

var $$8$6$1: int;

var $$8$6$2: int;

var $$8$7$1: int;

var $$8$7$2: int;

var $$8$8$1: int;

var $$8$8$2: int;

var $$8$9$1: int;

var $$8$9$2: int;

var $$8$10$1: int;

var $$8$10$2: int;

var $$8$11$1: int;

var $$8$11$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$9$3$1: int;

var $$9$3$2: int;

var $$9$4$1: int;

var $$9$4$2: int;

var $$9$5$1: int;

var $$9$5$2: int;

var $$9$6$1: int;

var $$9$6$2: int;

var $$9$7$1: int;

var $$9$7$2: int;

var $$9$8$1: int;

var $$9$8$2: int;

var $$9$9$1: int;

var $$9$9$2: int;

var $$9$10$1: int;

var $$9$10$2: int;

var $$9$11$1: int;

var $$9$11$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$10$2$1: int;

var $$10$2$2: int;

var $$10$3$1: int;

var $$10$3$2: int;

var $$10$4$1: int;

var $$10$4$2: int;

var $$10$5$1: int;

var $$10$5$2: int;

var $$10$6$1: int;

var $$10$6$2: int;

var $$10$7$1: int;

var $$10$7$2: int;

var $$10$8$1: int;

var $$10$8$2: int;

var $$10$9$1: int;

var $$10$9$2: int;

var $$10$10$1: int;

var $$10$10$2: int;

var $$10$11$1: int;

var $$10$11$2: int;

var $$11$0$1: int;

var $$11$0$2: int;

var $$11$1$1: int;

var $$11$1$2: int;

var $$11$2$1: int;

var $$11$2$2: int;

var $$11$3$1: int;

var $$11$3$2: int;

var $$11$4$1: int;

var $$11$4$2: int;

var $$11$5$1: int;

var $$11$5$2: int;

var $$11$6$1: int;

var $$11$6$2: int;

var $$11$7$1: int;

var $$11$7$2: int;

var $$11$8$1: int;

var $$11$8$2: int;

var $$11$9$1: int;

var $$11$9$2: int;

var $$11$10$1: int;

var $$11$10$2: int;

var $$11$11$1: int;

var $$11$11$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

var $$12$3$1: int;

var $$12$3$2: int;

var $$12$4$1: int;

var $$12$4$2: int;

var $$12$5$1: int;

var $$12$5$2: int;

var $$12$6$1: int;

var $$12$6$2: int;

var $$12$7$1: int;

var $$12$7$2: int;

var $$12$8$1: int;

var $$12$8$2: int;

var $$12$9$1: int;

var $$12$9$2: int;

var $$12$10$1: int;

var $$12$10$2: int;

var $$12$11$1: int;

var $$12$11$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

var $$13$2$1: int;

var $$13$2$2: int;

var $$13$3$1: int;

var $$13$3$2: int;

var $$13$4$1: int;

var $$13$4$2: int;

var $$13$5$1: int;

var $$13$5$2: int;

var $$13$6$1: int;

var $$13$6$2: int;

var $$13$7$1: int;

var $$13$7$2: int;

var $$13$8$1: int;

var $$13$8$2: int;

var $$13$9$1: int;

var $$13$9$2: int;

var $$13$10$1: int;

var $$13$10$2: int;

var $$13$11$1: int;

var $$13$11$2: int;

var $$14$0$1: int;

var $$14$0$2: int;

var $$14$1$1: int;

var $$14$1$2: int;

var $$14$2$1: int;

var $$14$2$2: int;

var $$14$3$1: int;

var $$14$3$2: int;

var $$14$4$1: int;

var $$14$4$2: int;

var $$14$5$1: int;

var $$14$5$2: int;

var $$14$6$1: int;

var $$14$6$2: int;

var $$14$7$1: int;

var $$14$7$2: int;

var $$14$8$1: int;

var $$14$8$2: int;

var $$14$9$1: int;

var $$14$9$2: int;

var $$14$10$1: int;

var $$14$10$2: int;

var $$14$11$1: int;

var $$14$11$2: int;

var $$15$0$1: int;

var $$15$0$2: int;

var $$15$1$1: int;

var $$15$1$2: int;

var $$15$2$1: int;

var $$15$2$2: int;

var $$15$3$1: int;

var $$15$3$2: int;

var $$15$4$1: int;

var $$15$4$2: int;

var $$15$5$1: int;

var $$15$5$2: int;

var $$15$6$1: int;

var $$15$6$2: int;

var $$15$7$1: int;

var $$15$7$2: int;

var $$15$8$1: int;

var $$15$8$2: int;

var $$15$9$1: int;

var $$15$9$2: int;

var $$15$10$1: int;

var $$15$10$2: int;

var $$15$11$1: int;

var $$15$11$2: int;

var $$16$0$1: int;

var $$16$0$2: int;

var $$16$1$1: int;

var $$16$1$2: int;

var $$16$2$1: int;

var $$16$2$2: int;

var $$16$3$1: int;

var $$16$3$2: int;

var $$16$4$1: int;

var $$16$4$2: int;

var $$16$5$1: int;

var $$16$5$2: int;

var $$16$6$1: int;

var $$16$6$2: int;

var $$16$7$1: int;

var $$16$7$2: int;

var $$16$8$1: int;

var $$16$8$2: int;

var $$16$9$1: int;

var $$16$9$2: int;

var $$16$10$1: int;

var $$16$10$2: int;

var $$16$11$1: int;

var $$16$11$2: int;

var $$17$0$1: int;

var $$17$0$2: int;

var $$17$1$1: int;

var $$17$1$2: int;

var $$17$2$1: int;

var $$17$2$2: int;

var $$17$3$1: int;

var $$17$3$2: int;

var $$17$4$1: int;

var $$17$4$2: int;

var $$17$5$1: int;

var $$17$5$2: int;

var $$17$6$1: int;

var $$17$6$2: int;

var $$17$7$1: int;

var $$17$7$2: int;

var $$17$8$1: int;

var $$17$8$2: int;

var $$17$9$1: int;

var $$17$9$2: int;

var $$17$10$1: int;

var $$17$10$2: int;

var $$17$11$1: int;

var $$17$11$2: int;

const _WATCHED_VALUE_$$Ix: int;

procedure {:inline 1} _LOG_READ_$$Ix(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Ix;



implementation {:inline 1} _LOG_READ_$$Ix(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Ix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Ix == _value then true else _READ_HAS_OCCURRED_$$Ix);
    return;
}



procedure _CHECK_READ_$$Ix(_P: bool, _offset: int, _value: int);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Ix);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Ix: bool;

procedure {:inline 1} _LOG_WRITE_$$Ix(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Ix, _WRITE_READ_BENIGN_FLAG_$$Ix;



implementation {:inline 1} _LOG_WRITE_$$Ix(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Ix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Ix == _value then true else _WRITE_HAS_OCCURRED_$$Ix);
    _WRITE_READ_BENIGN_FLAG_$$Ix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Ix == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Ix);
    return;
}



procedure _CHECK_WRITE_$$Ix(_P: bool, _offset: int, _value: int);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Ix != _value);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Ix != _value);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Ix(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Ix;



implementation {:inline 1} _LOG_ATOMIC_$$Ix(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Ix := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Ix);
    return;
}



procedure _CHECK_ATOMIC_$$Ix(_P: bool, _offset: int);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset);
  requires {:source_name "Ix"} {:array "$$Ix"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Ix(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Ix;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Ix(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Ix := (if _P && _WRITE_HAS_OCCURRED_$$Ix && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Ix);
    return;
}



const _WATCHED_VALUE_$$Iy: int;

procedure {:inline 1} _LOG_READ_$$Iy(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Iy;



implementation {:inline 1} _LOG_READ_$$Iy(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Iy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iy == _value then true else _READ_HAS_OCCURRED_$$Iy);
    return;
}



procedure _CHECK_READ_$$Iy(_P: bool, _offset: int, _value: int);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Iy);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Iy: bool;

procedure {:inline 1} _LOG_WRITE_$$Iy(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Iy, _WRITE_READ_BENIGN_FLAG_$$Iy;



implementation {:inline 1} _LOG_WRITE_$$Iy(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Iy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iy == _value then true else _WRITE_HAS_OCCURRED_$$Iy);
    _WRITE_READ_BENIGN_FLAG_$$Iy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iy == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Iy);
    return;
}



procedure _CHECK_WRITE_$$Iy(_P: bool, _offset: int, _value: int);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iy != _value);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iy != _value);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Iy(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Iy;



implementation {:inline 1} _LOG_ATOMIC_$$Iy(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Iy := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Iy);
    return;
}



procedure _CHECK_ATOMIC_$$Iy(_P: bool, _offset: int);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset);
  requires {:source_name "Iy"} {:array "$$Iy"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iy(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Iy;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iy(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Iy := (if _P && _WRITE_HAS_OCCURRED_$$Iy && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Iy);
    return;
}



const _WATCHED_VALUE_$$Iz: int;

procedure {:inline 1} _LOG_READ_$$Iz(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$Iz;



implementation {:inline 1} _LOG_READ_$$Iz(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$Iz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iz == _value then true else _READ_HAS_OCCURRED_$$Iz);
    return;
}



procedure _CHECK_READ_$$Iz(_P: bool, _offset: int, _value: int);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$Iz);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$Iz: bool;

procedure {:inline 1} _LOG_WRITE_$$Iz(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$Iz, _WRITE_READ_BENIGN_FLAG_$$Iz;



implementation {:inline 1} _LOG_WRITE_$$Iz(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$Iz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iz == _value then true else _WRITE_HAS_OCCURRED_$$Iz);
    _WRITE_READ_BENIGN_FLAG_$$Iz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iz == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$Iz);
    return;
}



procedure _CHECK_WRITE_$$Iz(_P: bool, _offset: int, _value: int);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iz != _value);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$Iz != _value);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$Iz(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$Iz;



implementation {:inline 1} _LOG_ATOMIC_$$Iz(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$Iz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$Iz);
    return;
}



procedure _CHECK_ATOMIC_$$Iz(_P: bool, _offset: int);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset);
  requires {:source_name "Iz"} {:array "$$Iz"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iz(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$Iz;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$Iz(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$Iz := (if _P && _WRITE_HAS_OCCURRED_$$Iz && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$Iz);
    return;
}



const _WATCHED_VALUE_$$texSource: int;

procedure {:inline 1} _LOG_READ_$$texSource(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texSource;



implementation {:inline 1} _LOG_READ_$$texSource(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texSource := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texSource == _value then true else _READ_HAS_OCCURRED_$$texSource);
    return;
}



procedure _CHECK_READ_$$texSource(_P: bool, _offset: int, _value: int);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texSource);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texSource: bool;

procedure {:inline 1} _LOG_WRITE_$$texSource(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texSource, _WRITE_READ_BENIGN_FLAG_$$texSource;



implementation {:inline 1} _LOG_WRITE_$$texSource(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texSource := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texSource == _value then true else _WRITE_HAS_OCCURRED_$$texSource);
    _WRITE_READ_BENIGN_FLAG_$$texSource := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texSource == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texSource);
    return;
}



procedure _CHECK_WRITE_$$texSource(_P: bool, _offset: int, _value: int);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texSource != _value);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texSource != _value);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texSource(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texSource;



implementation {:inline 1} _LOG_ATOMIC_$$texSource(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texSource := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texSource);
    return;
}



procedure _CHECK_ATOMIC_$$texSource(_P: bool, _offset: int);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset);
  requires {:source_name "texSource"} {:array "$$texSource"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texSource(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texSource;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texSource(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texSource := (if _P && _WRITE_HAS_OCCURRED_$$texSource && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texSource);
    return;
}



const _WATCHED_VALUE_$$texTarget: int;

procedure {:inline 1} _LOG_READ_$$texTarget(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texTarget;



implementation {:inline 1} _LOG_READ_$$texTarget(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texTarget := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texTarget == _value then true else _READ_HAS_OCCURRED_$$texTarget);
    return;
}



procedure _CHECK_READ_$$texTarget(_P: bool, _offset: int, _value: int);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texTarget);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texTarget: bool;

procedure {:inline 1} _LOG_WRITE_$$texTarget(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texTarget, _WRITE_READ_BENIGN_FLAG_$$texTarget;



implementation {:inline 1} _LOG_WRITE_$$texTarget(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texTarget := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texTarget == _value then true else _WRITE_HAS_OCCURRED_$$texTarget);
    _WRITE_READ_BENIGN_FLAG_$$texTarget := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texTarget == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texTarget);
    return;
}



procedure _CHECK_WRITE_$$texTarget(_P: bool, _offset: int, _value: int);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texTarget != _value);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texTarget != _value);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texTarget(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texTarget;



implementation {:inline 1} _LOG_ATOMIC_$$texTarget(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texTarget := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texTarget);
    return;
}



procedure _CHECK_ATOMIC_$$texTarget(_P: bool, _offset: int);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset);
  requires {:source_name "texTarget"} {:array "$$texTarget"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texTarget(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texTarget;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texTarget(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texTarget := (if _P && _WRITE_HAS_OCCURRED_$$texTarget && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texTarget);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
