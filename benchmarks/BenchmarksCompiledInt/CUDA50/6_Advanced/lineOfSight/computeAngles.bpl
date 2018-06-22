type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "angles"} {:global} $$angles: [int]int;

axiom {:array_info "$$angles"} {:global} {:elem_width 32} {:source_name "angles"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$angles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$angles: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$angles: bool;

axiom {:array_info "$$0"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i1"} {:elem_width 32} {:source_name "a.i.i1"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i2"} {:elem_width 32} {:source_name "b.i.i2"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$ray.i3"} {:elem_width 8} {:source_name "ray.i3"} {:source_elem_width 224} {:source_dimensions "1"} true;

axiom {:array_info "$$location.i"} {:elem_width 32} {:source_name "location.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$dir.i"} {:elem_width 32} {:source_name "dir.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i1.i"} {:elem_width 32} {:source_name "b.i1.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$a.i.i"} {:elem_width 32} {:source_name "a.i.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$b.i.i"} {:elem_width 32} {:source_name "b.i.i"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$ray.i"} {:elem_width 8} {:source_name "ray.i"} {:source_elem_width 224} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 8} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$ray"} {:elem_width 8} {:source_name "ray"} {:source_elem_width 224} {:source_dimensions "1"} true;

axiom {:array_info "$$location"} {:elem_width 32} {:source_name "location"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 8} {:source_name ""} {:source_elem_width 224} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 8} {:source_name ""} {:source_elem_width 224} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 32} {:source_name ""} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$g_HeightFieldTex"} {:global} {:elem_width 8} {:source_name "g_HeightFieldTex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_HeightFieldTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_HeightFieldTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex: bool;

const _WATCHED_OFFSET: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

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

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "computeAngles_kernel"} {:kernel} $_Z20computeAngles_kernel3RayPf($ray.coerce0: int, $ray.coerce1: int, $ray.coerce2: int, $ray.coerce3: int);
  requires !_READ_HAS_OCCURRED_$$angles && !_WRITE_HAS_OCCURRED_$$angles && !_ATOMIC_HAS_OCCURRED_$$angles;
  requires !_READ_HAS_OCCURRED_$$g_HeightFieldTex && !_WRITE_HAS_OCCURRED_$$g_HeightFieldTex && !_ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex;
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
  modifies _WRITE_HAS_OCCURRED_$$angles, _WRITE_READ_BENIGN_FLAG_$$angles, _WRITE_READ_BENIGN_FLAG_$$angles;



implementation {:source_name "computeAngles_kernel"} {:kernel} $_Z20computeAngles_kernel3RayPf($ray.coerce0: int, $ray.coerce1: int, $ray.coerce2: int, $ray.coerce3: int)
{
  var v93$1: int;
  var v93$2: int;
  var v94$1: int;
  var v94$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
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
  var v5$1: bool;
  var v5$2: bool;
  var v58$1: int;
  var v58$2: int;
  var v59$1: int;
  var v59$2: int;
  var v60$1: int;
  var v60$2: int;
  var v61$1: int;
  var v61$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v222$1: int;
  var v222$2: int;
  var v223$1: int;
  var v223$2: int;
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
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v40$1: int;
  var v40$2: int;
  var v41$1: int;
  var v41$2: int;
  var v42$1: int;
  var v42$2: int;
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
  var v62$1: int;
  var v62$2: int;
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
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v63$1: int;
  var v63$2: int;
  var v64$1: int;
  var v64$2: int;
  var v65$1: int;
  var v65$2: int;
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
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v14$1: int;
  var v14$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v22$1: int;
  var v22$2: int;
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
  var v231$1: int;
  var v231$2: int;
  var v232$1: int;
  var v232$2: int;
  var v233$1: int;
  var v233$2: int;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    $$ray$0$1 := BV_EXTRACT($ray.coerce0, 8, 0);
    $$ray$0$2 := BV_EXTRACT($ray.coerce0, 8, 0);
    $$ray$1$1 := BV_EXTRACT($ray.coerce0, 16, 8);
    $$ray$1$2 := BV_EXTRACT($ray.coerce0, 16, 8);
    $$ray$2$1 := BV_EXTRACT($ray.coerce0, 24, 16);
    $$ray$2$2 := BV_EXTRACT($ray.coerce0, 24, 16);
    $$ray$3$1 := BV_EXTRACT($ray.coerce0, 32, 24);
    $$ray$3$2 := BV_EXTRACT($ray.coerce0, 32, 24);
    $$ray$4$1 := BV_EXTRACT($ray.coerce0, 40, 32);
    $$ray$4$2 := BV_EXTRACT($ray.coerce0, 40, 32);
    $$ray$5$1 := BV_EXTRACT($ray.coerce0, 48, 40);
    $$ray$5$2 := BV_EXTRACT($ray.coerce0, 48, 40);
    $$ray$6$1 := BV_EXTRACT($ray.coerce0, 56, 48);
    $$ray$6$2 := BV_EXTRACT($ray.coerce0, 56, 48);
    $$ray$7$1 := BV_EXTRACT($ray.coerce0, 64, 56);
    $$ray$7$2 := BV_EXTRACT($ray.coerce0, 64, 56);
    $$ray$8$1 := BV_EXTRACT($ray.coerce0, 72, 64);
    $$ray$8$2 := BV_EXTRACT($ray.coerce0, 72, 64);
    $$ray$9$1 := BV_EXTRACT($ray.coerce0, 80, 72);
    $$ray$9$2 := BV_EXTRACT($ray.coerce0, 80, 72);
    $$ray$10$1 := BV_EXTRACT($ray.coerce0, 88, 80);
    $$ray$10$2 := BV_EXTRACT($ray.coerce0, 88, 80);
    $$ray$11$1 := BV_EXTRACT($ray.coerce0, 96, 88);
    $$ray$11$2 := BV_EXTRACT($ray.coerce0, 96, 88);
    $$ray$12$1 := BV_EXTRACT($ray.coerce1, 8, 0);
    $$ray$12$2 := BV_EXTRACT($ray.coerce1, 8, 0);
    $$ray$13$1 := BV_EXTRACT($ray.coerce1, 16, 8);
    $$ray$13$2 := BV_EXTRACT($ray.coerce1, 16, 8);
    $$ray$14$1 := BV_EXTRACT($ray.coerce1, 24, 16);
    $$ray$14$2 := BV_EXTRACT($ray.coerce1, 24, 16);
    $$ray$15$1 := BV_EXTRACT($ray.coerce1, 32, 24);
    $$ray$15$2 := BV_EXTRACT($ray.coerce1, 32, 24);
    $$ray$16$1 := BV_EXTRACT($ray.coerce1, 40, 32);
    $$ray$16$2 := BV_EXTRACT($ray.coerce1, 40, 32);
    $$ray$17$1 := BV_EXTRACT($ray.coerce1, 48, 40);
    $$ray$17$2 := BV_EXTRACT($ray.coerce1, 48, 40);
    $$ray$18$1 := BV_EXTRACT($ray.coerce1, 56, 48);
    $$ray$18$2 := BV_EXTRACT($ray.coerce1, 56, 48);
    $$ray$19$1 := BV_EXTRACT($ray.coerce1, 64, 56);
    $$ray$19$2 := BV_EXTRACT($ray.coerce1, 64, 56);
    $$ray$20$1 := BV_EXTRACT($ray.coerce2, 8, 0);
    $$ray$20$2 := BV_EXTRACT($ray.coerce2, 8, 0);
    $$ray$21$1 := BV_EXTRACT($ray.coerce2, 16, 8);
    $$ray$21$2 := BV_EXTRACT($ray.coerce2, 16, 8);
    $$ray$22$1 := BV_EXTRACT($ray.coerce2, 24, 16);
    $$ray$22$2 := BV_EXTRACT($ray.coerce2, 24, 16);
    $$ray$23$1 := BV_EXTRACT($ray.coerce2, 32, 24);
    $$ray$23$2 := BV_EXTRACT($ray.coerce2, 32, 24);
    $$ray$24$1 := BV_EXTRACT($ray.coerce3, 8, 0);
    $$ray$24$2 := BV_EXTRACT($ray.coerce3, 8, 0);
    $$ray$25$1 := BV_EXTRACT($ray.coerce3, 16, 8);
    $$ray$25$2 := BV_EXTRACT($ray.coerce3, 16, 8);
    $$ray$26$1 := BV_EXTRACT($ray.coerce3, 24, 16);
    $$ray$26$2 := BV_EXTRACT($ray.coerce3, 24, 16);
    $$ray$27$1 := BV_EXTRACT($ray.coerce3, 32, 24);
    $$ray$27$2 := BV_EXTRACT($ray.coerce3, 32, 24);
    v0$1 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$1), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_size_x, group_id_x$2), local_id_x$2);
    v1$1 := $$ray$20$1;
    v1$2 := $$ray$20$2;
    v2$1 := $$ray$21$1;
    v2$2 := $$ray$21$2;
    v3$1 := $$ray$22$1;
    v3$2 := $$ray$22$2;
    v4$1 := $$ray$23$1;
    v4$2 := $$ray$23$2;
    v5$1 := BV32_ULT(v0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v4$1, v3$1), v2$1), v1$1));
    v5$2 := BV32_ULT(v0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v4$2, v3$2), v2$2), v1$2));
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p0$1 := (if v5$1 then v5$1 else p0$1);
    p0$2 := (if v5$2 then v5$2 else p0$2);
    v6$1 := (if p0$1 then $$ray$0$1 else v6$1);
    v6$2 := (if p0$2 then $$ray$0$2 else v6$2);
    $$15$0$1 := (if p0$1 then v6$1 else $$15$0$1);
    $$15$0$2 := (if p0$2 then v6$2 else $$15$0$2);
    v7$1 := (if p0$1 then $$ray$1$1 else v7$1);
    v7$2 := (if p0$2 then $$ray$1$2 else v7$2);
    $$15$1$1 := (if p0$1 then v7$1 else $$15$1$1);
    $$15$1$2 := (if p0$2 then v7$2 else $$15$1$2);
    v8$1 := (if p0$1 then $$ray$2$1 else v8$1);
    v8$2 := (if p0$2 then $$ray$2$2 else v8$2);
    $$15$2$1 := (if p0$1 then v8$1 else $$15$2$1);
    $$15$2$2 := (if p0$2 then v8$2 else $$15$2$2);
    v9$1 := (if p0$1 then $$ray$3$1 else v9$1);
    v9$2 := (if p0$2 then $$ray$3$2 else v9$2);
    $$15$3$1 := (if p0$1 then v9$1 else $$15$3$1);
    $$15$3$2 := (if p0$2 then v9$2 else $$15$3$2);
    v10$1 := (if p0$1 then $$ray$4$1 else v10$1);
    v10$2 := (if p0$2 then $$ray$4$2 else v10$2);
    $$15$4$1 := (if p0$1 then v10$1 else $$15$4$1);
    $$15$4$2 := (if p0$2 then v10$2 else $$15$4$2);
    v11$1 := (if p0$1 then $$ray$5$1 else v11$1);
    v11$2 := (if p0$2 then $$ray$5$2 else v11$2);
    $$15$5$1 := (if p0$1 then v11$1 else $$15$5$1);
    $$15$5$2 := (if p0$2 then v11$2 else $$15$5$2);
    v12$1 := (if p0$1 then $$ray$6$1 else v12$1);
    v12$2 := (if p0$2 then $$ray$6$2 else v12$2);
    $$15$6$1 := (if p0$1 then v12$1 else $$15$6$1);
    $$15$6$2 := (if p0$2 then v12$2 else $$15$6$2);
    v13$1 := (if p0$1 then $$ray$7$1 else v13$1);
    v13$2 := (if p0$2 then $$ray$7$2 else v13$2);
    $$15$7$1 := (if p0$1 then v13$1 else $$15$7$1);
    $$15$7$2 := (if p0$2 then v13$2 else $$15$7$2);
    v14$1 := (if p0$1 then $$ray$8$1 else v14$1);
    v14$2 := (if p0$2 then $$ray$8$2 else v14$2);
    $$15$8$1 := (if p0$1 then v14$1 else $$15$8$1);
    $$15$8$2 := (if p0$2 then v14$2 else $$15$8$2);
    v15$1 := (if p0$1 then $$ray$9$1 else v15$1);
    v15$2 := (if p0$2 then $$ray$9$2 else v15$2);
    $$15$9$1 := (if p0$1 then v15$1 else $$15$9$1);
    $$15$9$2 := (if p0$2 then v15$2 else $$15$9$2);
    v16$1 := (if p0$1 then $$ray$10$1 else v16$1);
    v16$2 := (if p0$2 then $$ray$10$2 else v16$2);
    $$15$10$1 := (if p0$1 then v16$1 else $$15$10$1);
    $$15$10$2 := (if p0$2 then v16$2 else $$15$10$2);
    v17$1 := (if p0$1 then $$ray$11$1 else v17$1);
    v17$2 := (if p0$2 then $$ray$11$2 else v17$2);
    $$15$11$1 := (if p0$1 then v17$1 else $$15$11$1);
    $$15$11$2 := (if p0$2 then v17$2 else $$15$11$2);
    v18$1 := (if p0$1 then $$ray$12$1 else v18$1);
    v18$2 := (if p0$2 then $$ray$12$2 else v18$2);
    $$15$12$1 := (if p0$1 then v18$1 else $$15$12$1);
    $$15$12$2 := (if p0$2 then v18$2 else $$15$12$2);
    v19$1 := (if p0$1 then $$ray$13$1 else v19$1);
    v19$2 := (if p0$2 then $$ray$13$2 else v19$2);
    $$15$13$1 := (if p0$1 then v19$1 else $$15$13$1);
    $$15$13$2 := (if p0$2 then v19$2 else $$15$13$2);
    v20$1 := (if p0$1 then $$ray$14$1 else v20$1);
    v20$2 := (if p0$2 then $$ray$14$2 else v20$2);
    $$15$14$1 := (if p0$1 then v20$1 else $$15$14$1);
    $$15$14$2 := (if p0$2 then v20$2 else $$15$14$2);
    v21$1 := (if p0$1 then $$ray$15$1 else v21$1);
    v21$2 := (if p0$2 then $$ray$15$2 else v21$2);
    $$15$15$1 := (if p0$1 then v21$1 else $$15$15$1);
    $$15$15$2 := (if p0$2 then v21$2 else $$15$15$2);
    v22$1 := (if p0$1 then $$ray$16$1 else v22$1);
    v22$2 := (if p0$2 then $$ray$16$2 else v22$2);
    $$15$16$1 := (if p0$1 then v22$1 else $$15$16$1);
    $$15$16$2 := (if p0$2 then v22$2 else $$15$16$2);
    v23$1 := (if p0$1 then $$ray$17$1 else v23$1);
    v23$2 := (if p0$2 then $$ray$17$2 else v23$2);
    $$15$17$1 := (if p0$1 then v23$1 else $$15$17$1);
    $$15$17$2 := (if p0$2 then v23$2 else $$15$17$2);
    v24$1 := (if p0$1 then $$ray$18$1 else v24$1);
    v24$2 := (if p0$2 then $$ray$18$2 else v24$2);
    $$15$18$1 := (if p0$1 then v24$1 else $$15$18$1);
    $$15$18$2 := (if p0$2 then v24$2 else $$15$18$2);
    v25$1 := (if p0$1 then $$ray$19$1 else v25$1);
    v25$2 := (if p0$2 then $$ray$19$2 else v25$2);
    $$15$19$1 := (if p0$1 then v25$1 else $$15$19$1);
    $$15$19$2 := (if p0$2 then v25$2 else $$15$19$2);
    v26$1 := (if p0$1 then $$ray$20$1 else v26$1);
    v26$2 := (if p0$2 then $$ray$20$2 else v26$2);
    $$15$20$1 := (if p0$1 then v26$1 else $$15$20$1);
    $$15$20$2 := (if p0$2 then v26$2 else $$15$20$2);
    v27$1 := (if p0$1 then $$ray$21$1 else v27$1);
    v27$2 := (if p0$2 then $$ray$21$2 else v27$2);
    $$15$21$1 := (if p0$1 then v27$1 else $$15$21$1);
    $$15$21$2 := (if p0$2 then v27$2 else $$15$21$2);
    v28$1 := (if p0$1 then $$ray$22$1 else v28$1);
    v28$2 := (if p0$2 then $$ray$22$2 else v28$2);
    $$15$22$1 := (if p0$1 then v28$1 else $$15$22$1);
    $$15$22$2 := (if p0$2 then v28$2 else $$15$22$2);
    v29$1 := (if p0$1 then $$ray$23$1 else v29$1);
    v29$2 := (if p0$2 then $$ray$23$2 else v29$2);
    $$15$23$1 := (if p0$1 then v29$1 else $$15$23$1);
    $$15$23$2 := (if p0$2 then v29$2 else $$15$23$2);
    v30$1 := (if p0$1 then $$ray$24$1 else v30$1);
    v30$2 := (if p0$2 then $$ray$24$2 else v30$2);
    $$15$24$1 := (if p0$1 then v30$1 else $$15$24$1);
    $$15$24$2 := (if p0$2 then v30$2 else $$15$24$2);
    v31$1 := (if p0$1 then $$ray$25$1 else v31$1);
    v31$2 := (if p0$2 then $$ray$25$2 else v31$2);
    $$15$25$1 := (if p0$1 then v31$1 else $$15$25$1);
    $$15$25$2 := (if p0$2 then v31$2 else $$15$25$2);
    v32$1 := (if p0$1 then $$ray$26$1 else v32$1);
    v32$2 := (if p0$2 then $$ray$26$2 else v32$2);
    $$15$26$1 := (if p0$1 then v32$1 else $$15$26$1);
    $$15$26$2 := (if p0$2 then v32$2 else $$15$26$2);
    v33$1 := (if p0$1 then $$ray$27$1 else v33$1);
    v33$2 := (if p0$2 then $$ray$27$2 else v33$2);
    $$15$27$1 := (if p0$1 then v33$1 else $$15$27$1);
    $$15$27$2 := (if p0$2 then v33$2 else $$15$27$2);
    v34$1 := (if p0$1 then $$15$0$1 else v34$1);
    v34$2 := (if p0$2 then $$15$0$2 else v34$2);
    v35$1 := (if p0$1 then $$15$1$1 else v35$1);
    v35$2 := (if p0$2 then $$15$1$2 else v35$2);
    v36$1 := (if p0$1 then $$15$2$1 else v36$1);
    v36$2 := (if p0$2 then $$15$2$2 else v36$2);
    v37$1 := (if p0$1 then $$15$3$1 else v37$1);
    v37$2 := (if p0$2 then $$15$3$2 else v37$2);
    v38$1 := (if p0$1 then $$15$4$1 else v38$1);
    v38$2 := (if p0$2 then $$15$4$2 else v38$2);
    v39$1 := (if p0$1 then $$15$5$1 else v39$1);
    v39$2 := (if p0$2 then $$15$5$2 else v39$2);
    v40$1 := (if p0$1 then $$15$6$1 else v40$1);
    v40$2 := (if p0$2 then $$15$6$2 else v40$2);
    v41$1 := (if p0$1 then $$15$7$1 else v41$1);
    v41$2 := (if p0$2 then $$15$7$2 else v41$2);
    v42$1 := (if p0$1 then $$15$8$1 else v42$1);
    v42$2 := (if p0$2 then $$15$8$2 else v42$2);
    v43$1 := (if p0$1 then $$15$9$1 else v43$1);
    v43$2 := (if p0$2 then $$15$9$2 else v43$2);
    v44$1 := (if p0$1 then $$15$10$1 else v44$1);
    v44$2 := (if p0$2 then $$15$10$2 else v44$2);
    v45$1 := (if p0$1 then $$15$11$1 else v45$1);
    v45$2 := (if p0$2 then $$15$11$2 else v45$2);
    v46$1 := (if p0$1 then $$15$12$1 else v46$1);
    v46$2 := (if p0$2 then $$15$12$2 else v46$2);
    v47$1 := (if p0$1 then $$15$13$1 else v47$1);
    v47$2 := (if p0$2 then $$15$13$2 else v47$2);
    v48$1 := (if p0$1 then $$15$14$1 else v48$1);
    v48$2 := (if p0$2 then $$15$14$2 else v48$2);
    v49$1 := (if p0$1 then $$15$15$1 else v49$1);
    v49$2 := (if p0$2 then $$15$15$2 else v49$2);
    v50$1 := (if p0$1 then $$15$16$1 else v50$1);
    v50$2 := (if p0$2 then $$15$16$2 else v50$2);
    v51$1 := (if p0$1 then $$15$17$1 else v51$1);
    v51$2 := (if p0$2 then $$15$17$2 else v51$2);
    v52$1 := (if p0$1 then $$15$18$1 else v52$1);
    v52$2 := (if p0$2 then $$15$18$2 else v52$2);
    v53$1 := (if p0$1 then $$15$19$1 else v53$1);
    v53$2 := (if p0$2 then $$15$19$2 else v53$2);
    v54$1 := (if p0$1 then $$15$20$1 else v54$1);
    v54$2 := (if p0$2 then $$15$20$2 else v54$2);
    v55$1 := (if p0$1 then $$15$21$1 else v55$1);
    v55$2 := (if p0$2 then $$15$21$2 else v55$2);
    v56$1 := (if p0$1 then $$15$22$1 else v56$1);
    v56$2 := (if p0$2 then $$15$22$2 else v56$2);
    v57$1 := (if p0$1 then $$15$23$1 else v57$1);
    v57$2 := (if p0$2 then $$15$23$2 else v57$2);
    v58$1 := (if p0$1 then $$15$24$1 else v58$1);
    v58$2 := (if p0$2 then $$15$24$2 else v58$2);
    v59$1 := (if p0$1 then $$15$25$1 else v59$1);
    v59$2 := (if p0$2 then $$15$25$2 else v59$2);
    v60$1 := (if p0$1 then $$15$26$1 else v60$1);
    v60$2 := (if p0$2 then $$15$26$2 else v60$2);
    v61$1 := (if p0$1 then $$15$27$1 else v61$1);
    v61$2 := (if p0$2 then $$15$27$2 else v61$2);
    $$ray.i$0$1 := (if p0$1 then v34$1 else $$ray.i$0$1);
    $$ray.i$0$2 := (if p0$2 then v34$2 else $$ray.i$0$2);
    $$ray.i$1$1 := (if p0$1 then v35$1 else $$ray.i$1$1);
    $$ray.i$1$2 := (if p0$2 then v35$2 else $$ray.i$1$2);
    $$ray.i$2$1 := (if p0$1 then v36$1 else $$ray.i$2$1);
    $$ray.i$2$2 := (if p0$2 then v36$2 else $$ray.i$2$2);
    $$ray.i$3$1 := (if p0$1 then v37$1 else $$ray.i$3$1);
    $$ray.i$3$2 := (if p0$2 then v37$2 else $$ray.i$3$2);
    $$ray.i$4$1 := (if p0$1 then v38$1 else $$ray.i$4$1);
    $$ray.i$4$2 := (if p0$2 then v38$2 else $$ray.i$4$2);
    $$ray.i$5$1 := (if p0$1 then v39$1 else $$ray.i$5$1);
    $$ray.i$5$2 := (if p0$2 then v39$2 else $$ray.i$5$2);
    $$ray.i$6$1 := (if p0$1 then v40$1 else $$ray.i$6$1);
    $$ray.i$6$2 := (if p0$2 then v40$2 else $$ray.i$6$2);
    $$ray.i$7$1 := (if p0$1 then v41$1 else $$ray.i$7$1);
    $$ray.i$7$2 := (if p0$2 then v41$2 else $$ray.i$7$2);
    $$ray.i$8$1 := (if p0$1 then v42$1 else $$ray.i$8$1);
    $$ray.i$8$2 := (if p0$2 then v42$2 else $$ray.i$8$2);
    $$ray.i$9$1 := (if p0$1 then v43$1 else $$ray.i$9$1);
    $$ray.i$9$2 := (if p0$2 then v43$2 else $$ray.i$9$2);
    $$ray.i$10$1 := (if p0$1 then v44$1 else $$ray.i$10$1);
    $$ray.i$10$2 := (if p0$2 then v44$2 else $$ray.i$10$2);
    $$ray.i$11$1 := (if p0$1 then v45$1 else $$ray.i$11$1);
    $$ray.i$11$2 := (if p0$2 then v45$2 else $$ray.i$11$2);
    $$ray.i$12$1 := (if p0$1 then v46$1 else $$ray.i$12$1);
    $$ray.i$12$2 := (if p0$2 then v46$2 else $$ray.i$12$2);
    $$ray.i$13$1 := (if p0$1 then v47$1 else $$ray.i$13$1);
    $$ray.i$13$2 := (if p0$2 then v47$2 else $$ray.i$13$2);
    $$ray.i$14$1 := (if p0$1 then v48$1 else $$ray.i$14$1);
    $$ray.i$14$2 := (if p0$2 then v48$2 else $$ray.i$14$2);
    $$ray.i$15$1 := (if p0$1 then v49$1 else $$ray.i$15$1);
    $$ray.i$15$2 := (if p0$2 then v49$2 else $$ray.i$15$2);
    $$ray.i$16$1 := (if p0$1 then v50$1 else $$ray.i$16$1);
    $$ray.i$16$2 := (if p0$2 then v50$2 else $$ray.i$16$2);
    $$ray.i$17$1 := (if p0$1 then v51$1 else $$ray.i$17$1);
    $$ray.i$17$2 := (if p0$2 then v51$2 else $$ray.i$17$2);
    $$ray.i$18$1 := (if p0$1 then v52$1 else $$ray.i$18$1);
    $$ray.i$18$2 := (if p0$2 then v52$2 else $$ray.i$18$2);
    $$ray.i$19$1 := (if p0$1 then v53$1 else $$ray.i$19$1);
    $$ray.i$19$2 := (if p0$2 then v53$2 else $$ray.i$19$2);
    $$ray.i$20$1 := (if p0$1 then v54$1 else $$ray.i$20$1);
    $$ray.i$20$2 := (if p0$2 then v54$2 else $$ray.i$20$2);
    $$ray.i$21$1 := (if p0$1 then v55$1 else $$ray.i$21$1);
    $$ray.i$21$2 := (if p0$2 then v55$2 else $$ray.i$21$2);
    $$ray.i$22$1 := (if p0$1 then v56$1 else $$ray.i$22$1);
    $$ray.i$22$2 := (if p0$2 then v56$2 else $$ray.i$22$2);
    $$ray.i$23$1 := (if p0$1 then v57$1 else $$ray.i$23$1);
    $$ray.i$23$2 := (if p0$2 then v57$2 else $$ray.i$23$2);
    $$ray.i$24$1 := (if p0$1 then v58$1 else $$ray.i$24$1);
    $$ray.i$24$2 := (if p0$2 then v58$2 else $$ray.i$24$2);
    $$ray.i$25$1 := (if p0$1 then v59$1 else $$ray.i$25$1);
    $$ray.i$25$2 := (if p0$2 then v59$2 else $$ray.i$25$2);
    $$ray.i$26$1 := (if p0$1 then v60$1 else $$ray.i$26$1);
    $$ray.i$26$2 := (if p0$2 then v60$2 else $$ray.i$26$2);
    $$ray.i$27$1 := (if p0$1 then v61$1 else $$ray.i$27$1);
    $$ray.i$27$2 := (if p0$2 then v61$2 else $$ray.i$27$2);
    v62$1 := (if p0$1 then $$ray.i$24$1 else v62$1);
    v62$2 := (if p0$2 then $$ray.i$24$2 else v62$2);
    v63$1 := (if p0$1 then $$ray.i$25$1 else v63$1);
    v63$2 := (if p0$2 then $$ray.i$25$2 else v63$2);
    v64$1 := (if p0$1 then $$ray.i$26$1 else v64$1);
    v64$2 := (if p0$2 then $$ray.i$26$2 else v64$2);
    v65$1 := (if p0$1 then $$ray.i$27$1 else v65$1);
    v65$2 := (if p0$2 then $$ray.i$27$2 else v65$2);
    v66$1 := (if p0$1 then FMUL32(SI32_TO_FP32(BV32_ADD(v0$1, 1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v65$1, v64$1), v63$1), v62$1)) else v66$1);
    v66$2 := (if p0$2 then FMUL32(SI32_TO_FP32(BV32_ADD(v0$2, 1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(v65$2, v64$2), v63$2), v62$2)) else v66$2);
    v67$1 := (if p0$1 then $$ray.i$0$1 else v67$1);
    v67$2 := (if p0$2 then $$ray.i$0$2 else v67$2);
    v68$1 := (if p0$1 then $$ray.i$1$1 else v68$1);
    v68$2 := (if p0$2 then $$ray.i$1$2 else v68$2);
    v69$1 := (if p0$1 then $$ray.i$2$1 else v69$1);
    v69$2 := (if p0$2 then $$ray.i$2$2 else v69$2);
    v70$1 := (if p0$1 then $$ray.i$3$1 else v70$1);
    v70$2 := (if p0$2 then $$ray.i$3$2 else v70$2);
    v71$1 := (if p0$1 then $$ray.i$4$1 else v71$1);
    v71$2 := (if p0$2 then $$ray.i$4$2 else v71$2);
    v72$1 := (if p0$1 then $$ray.i$5$1 else v72$1);
    v72$2 := (if p0$2 then $$ray.i$5$2 else v72$2);
    v73$1 := (if p0$1 then $$ray.i$6$1 else v73$1);
    v73$2 := (if p0$2 then $$ray.i$6$2 else v73$2);
    v74$1 := (if p0$1 then $$ray.i$7$1 else v74$1);
    v74$2 := (if p0$2 then $$ray.i$7$2 else v74$2);
    $$10$0$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v70$1, v69$1), v68$1), v67$1) else $$10$0$1);
    $$10$0$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v70$2, v69$2), v68$2), v67$2) else $$10$0$2);
    $$10$1$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v74$1, v73$1), v72$1), v71$1) else $$10$1$1);
    $$10$1$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v74$2, v73$2), v72$2), v71$2) else $$10$1$2);
    v75$1 := (if p0$1 then $$10$0$1 else v75$1);
    v75$2 := (if p0$2 then $$10$0$2 else v75$2);
    v76$1 := (if p0$1 then $$10$1$1 else v76$1);
    v76$2 := (if p0$2 then $$10$1$2 else v76$2);
    $$12$0$1 := (if p0$1 then v75$1 else $$12$0$1);
    $$12$0$2 := (if p0$2 then v75$2 else $$12$0$2);
    $$12$1$1 := (if p0$1 then v76$1 else $$12$1$1);
    $$12$1$2 := (if p0$2 then v76$2 else $$12$1$2);
    v77$1 := (if p0$1 then $$ray.i$12$1 else v77$1);
    v77$2 := (if p0$2 then $$ray.i$12$2 else v77$2);
    $$14$0$1 := (if p0$1 then v77$1 else $$14$0$1);
    $$14$0$2 := (if p0$2 then v77$2 else $$14$0$2);
    v78$1 := (if p0$1 then $$ray.i$13$1 else v78$1);
    v78$2 := (if p0$2 then $$ray.i$13$2 else v78$2);
    $$14$1$1 := (if p0$1 then v78$1 else $$14$1$1);
    $$14$1$2 := (if p0$2 then v78$2 else $$14$1$2);
    v79$1 := (if p0$1 then $$ray.i$14$1 else v79$1);
    v79$2 := (if p0$2 then $$ray.i$14$2 else v79$2);
    $$14$2$1 := (if p0$1 then v79$1 else $$14$2$1);
    $$14$2$2 := (if p0$2 then v79$2 else $$14$2$2);
    v80$1 := (if p0$1 then $$ray.i$15$1 else v80$1);
    v80$2 := (if p0$2 then $$ray.i$15$2 else v80$2);
    $$14$3$1 := (if p0$1 then v80$1 else $$14$3$1);
    $$14$3$2 := (if p0$2 then v80$2 else $$14$3$2);
    v81$1 := (if p0$1 then $$ray.i$16$1 else v81$1);
    v81$2 := (if p0$2 then $$ray.i$16$2 else v81$2);
    $$14$4$1 := (if p0$1 then v81$1 else $$14$4$1);
    $$14$4$2 := (if p0$2 then v81$2 else $$14$4$2);
    v82$1 := (if p0$1 then $$ray.i$17$1 else v82$1);
    v82$2 := (if p0$2 then $$ray.i$17$2 else v82$2);
    $$14$5$1 := (if p0$1 then v82$1 else $$14$5$1);
    $$14$5$2 := (if p0$2 then v82$2 else $$14$5$2);
    v83$1 := (if p0$1 then $$ray.i$18$1 else v83$1);
    v83$2 := (if p0$2 then $$ray.i$18$2 else v83$2);
    $$14$6$1 := (if p0$1 then v83$1 else $$14$6$1);
    $$14$6$2 := (if p0$2 then v83$2 else $$14$6$2);
    v84$1 := (if p0$1 then $$ray.i$19$1 else v84$1);
    v84$2 := (if p0$2 then $$ray.i$19$2 else v84$2);
    $$14$7$1 := (if p0$1 then v84$1 else $$14$7$1);
    $$14$7$2 := (if p0$2 then v84$2 else $$14$7$2);
    v85$1 := (if p0$1 then $$14$0$1 else v85$1);
    v85$2 := (if p0$2 then $$14$0$2 else v85$2);
    v86$1 := (if p0$1 then $$14$1$1 else v86$1);
    v86$2 := (if p0$2 then $$14$1$2 else v86$2);
    v87$1 := (if p0$1 then $$14$2$1 else v87$1);
    v87$2 := (if p0$2 then $$14$2$2 else v87$2);
    v88$1 := (if p0$1 then $$14$3$1 else v88$1);
    v88$2 := (if p0$2 then $$14$3$2 else v88$2);
    v89$1 := (if p0$1 then $$14$4$1 else v89$1);
    v89$2 := (if p0$2 then $$14$4$2 else v89$2);
    v90$1 := (if p0$1 then $$14$5$1 else v90$1);
    v90$2 := (if p0$2 then $$14$5$2 else v90$2);
    v91$1 := (if p0$1 then $$14$6$1 else v91$1);
    v91$2 := (if p0$2 then $$14$6$2 else v91$2);
    v92$1 := (if p0$1 then $$14$7$1 else v92$1);
    v92$2 := (if p0$2 then $$14$7$2 else v92$2);
    $$b.i1.i$0$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v88$1, v87$1), v86$1), v85$1) else $$b.i1.i$0$1);
    $$b.i1.i$0$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v88$2, v87$2), v86$2), v85$2) else $$b.i1.i$0$2);
    $$b.i1.i$1$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v92$1, v91$1), v90$1), v89$1) else $$b.i1.i$1$1);
    $$b.i1.i$1$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v92$2, v91$2), v90$2), v89$2) else $$b.i1.i$1$2);
    v93$1 := (if p0$1 then $$b.i1.i$0$1 else v93$1);
    v93$2 := (if p0$2 then $$b.i1.i$0$2 else v93$2);
    v94$1 := (if p0$1 then $$b.i1.i$1$1 else v94$1);
    v94$2 := (if p0$2 then $$b.i1.i$1$2 else v94$2);
    $$6$0$1 := (if p0$1 then FMUL32(v66$1, v93$1) else $$6$0$1);
    $$6$0$2 := (if p0$2 then FMUL32(v66$2, v93$2) else $$6$0$2);
    $$6$1$1 := (if p0$1 then FMUL32(v66$1, v94$1) else $$6$1$1);
    $$6$1$2 := (if p0$2 then FMUL32(v66$2, v94$2) else $$6$1$2);
    v95$1 := (if p0$1 then $$6$0$1 else v95$1);
    v95$2 := (if p0$2 then $$6$0$2 else v95$2);
    v96$1 := (if p0$1 then $$6$1$1 else v96$1);
    v96$2 := (if p0$2 then $$6$1$2 else v96$2);
    $$7$0$1 := (if p0$1 then v95$1 else $$7$0$1);
    $$7$0$2 := (if p0$2 then v95$2 else $$7$0$2);
    $$7$1$1 := (if p0$1 then v96$1 else $$7$1$1);
    $$7$1$2 := (if p0$2 then v96$2 else $$7$1$2);
    v97$1 := (if p0$1 then $$7$0$1 else v97$1);
    v97$2 := (if p0$2 then $$7$0$2 else v97$2);
    v98$1 := (if p0$1 then $$7$1$1 else v98$1);
    v98$2 := (if p0$2 then $$7$1$2 else v98$2);
    $$13$0$1 := (if p0$1 then v97$1 else $$13$0$1);
    $$13$0$2 := (if p0$2 then v97$2 else $$13$0$2);
    $$13$1$1 := (if p0$1 then v98$1 else $$13$1$1);
    $$13$1$2 := (if p0$2 then v98$2 else $$13$1$2);
    v99$1 := (if p0$1 then $$12$0$1 else v99$1);
    v99$2 := (if p0$2 then $$12$0$2 else v99$2);
    v100$1 := (if p0$1 then $$12$1$1 else v100$1);
    v100$2 := (if p0$2 then $$12$1$2 else v100$2);
    v101$1 := (if p0$1 then $$13$0$1 else v101$1);
    v101$2 := (if p0$2 then $$13$0$2 else v101$2);
    v102$1 := (if p0$1 then $$13$1$1 else v102$1);
    v102$2 := (if p0$2 then $$13$1$2 else v102$2);
    $$a.i.i$0$1 := (if p0$1 then v99$1 else $$a.i.i$0$1);
    $$a.i.i$0$2 := (if p0$2 then v99$2 else $$a.i.i$0$2);
    $$a.i.i$1$1 := (if p0$1 then v100$1 else $$a.i.i$1$1);
    $$a.i.i$1$2 := (if p0$2 then v100$2 else $$a.i.i$1$2);
    $$b.i.i$0$1 := (if p0$1 then v101$1 else $$b.i.i$0$1);
    $$b.i.i$0$2 := (if p0$2 then v101$2 else $$b.i.i$0$2);
    $$b.i.i$1$1 := (if p0$1 then v102$1 else $$b.i.i$1$1);
    $$b.i.i$1$2 := (if p0$2 then v102$2 else $$b.i.i$1$2);
    v103$1 := (if p0$1 then $$a.i.i$0$1 else v103$1);
    v103$2 := (if p0$2 then $$a.i.i$0$2 else v103$2);
    v104$1 := (if p0$1 then $$b.i.i$0$1 else v104$1);
    v104$2 := (if p0$2 then $$b.i.i$0$2 else v104$2);
    v105$1 := (if p0$1 then $$a.i.i$1$1 else v105$1);
    v105$2 := (if p0$2 then $$a.i.i$1$2 else v105$2);
    v106$1 := (if p0$1 then $$b.i.i$1$1 else v106$1);
    v106$2 := (if p0$2 then $$b.i.i$1$2 else v106$2);
    $$8$0$1 := (if p0$1 then FADD32(v103$1, v104$1) else $$8$0$1);
    $$8$0$2 := (if p0$2 then FADD32(v103$2, v104$2) else $$8$0$2);
    $$8$1$1 := (if p0$1 then FADD32(v105$1, v106$1) else $$8$1$1);
    $$8$1$2 := (if p0$2 then FADD32(v105$2, v106$2) else $$8$1$2);
    v107$1 := (if p0$1 then $$8$0$1 else v107$1);
    v107$2 := (if p0$2 then $$8$0$2 else v107$2);
    v108$1 := (if p0$1 then $$8$1$1 else v108$1);
    v108$2 := (if p0$2 then $$8$1$2 else v108$2);
    $$9$0$1 := (if p0$1 then v107$1 else $$9$0$1);
    $$9$0$2 := (if p0$2 then v107$2 else $$9$0$2);
    $$9$1$1 := (if p0$1 then v108$1 else $$9$1$1);
    $$9$1$2 := (if p0$2 then v108$2 else $$9$1$2);
    v109$1 := (if p0$1 then $$9$0$1 else v109$1);
    v109$2 := (if p0$2 then $$9$0$2 else v109$2);
    v110$1 := (if p0$1 then $$9$1$1 else v110$1);
    v110$2 := (if p0$2 then $$9$1$2 else v110$2);
    $$11$0$1 := (if p0$1 then v109$1 else $$11$0$1);
    $$11$0$2 := (if p0$2 then v109$2 else $$11$0$2);
    $$11$1$1 := (if p0$1 then v110$1 else $$11$1$1);
    $$11$1$2 := (if p0$2 then v110$2 else $$11$1$2);
    v111$1 := (if p0$1 then $$11$0$1 else v111$1);
    v111$2 := (if p0$2 then $$11$0$2 else v111$2);
    v112$1 := (if p0$1 then $$11$1$1 else v112$1);
    v112$2 := (if p0$2 then $$11$1$2 else v112$2);
    $$location$0$1 := (if p0$1 then v111$1 else $$location$0$1);
    $$location$0$2 := (if p0$2 then v111$2 else $$location$0$2);
    $$location$1$1 := (if p0$1 then v112$1 else $$location$1$1);
    $$location$1$2 := (if p0$2 then v112$2 else $$location$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v113$1 := (if p0$1 then _HAVOC_int$1 else v113$1);
    v113$2 := (if p0$2 then _HAVOC_int$2 else v113$2);
    $$16$0$1 := (if p0$1 then v113$1 else $$16$0$1);
    $$16$0$2 := (if p0$2 then v113$2 else $$16$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v114$1 := (if p0$1 then _HAVOC_int$1 else v114$1);
    v114$2 := (if p0$2 then _HAVOC_int$2 else v114$2);
    $$16$1$1 := (if p0$1 then v114$1 else $$16$1$1);
    $$16$1$2 := (if p0$2 then v114$2 else $$16$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v115$1 := (if p0$1 then _HAVOC_int$1 else v115$1);
    v115$2 := (if p0$2 then _HAVOC_int$2 else v115$2);
    $$16$2$1 := (if p0$1 then v115$1 else $$16$2$1);
    $$16$2$2 := (if p0$2 then v115$2 else $$16$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v116$1 := (if p0$1 then _HAVOC_int$1 else v116$1);
    v116$2 := (if p0$2 then _HAVOC_int$2 else v116$2);
    $$16$3$1 := (if p0$1 then v116$1 else $$16$3$1);
    $$16$3$2 := (if p0$2 then v116$2 else $$16$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p0$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p0$2 then _HAVOC_int$2 else v117$2);
    $$16$4$1 := (if p0$1 then v117$1 else $$16$4$1);
    $$16$4$2 := (if p0$2 then v117$2 else $$16$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p0$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p0$2 then _HAVOC_int$2 else v118$2);
    $$16$5$1 := (if p0$1 then v118$1 else $$16$5$1);
    $$16$5$2 := (if p0$2 then v118$2 else $$16$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p0$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p0$2 then _HAVOC_int$2 else v119$2);
    $$16$6$1 := (if p0$1 then v119$1 else $$16$6$1);
    $$16$6$2 := (if p0$2 then v119$2 else $$16$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p0$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p0$2 then _HAVOC_int$2 else v120$2);
    $$16$7$1 := (if p0$1 then v120$1 else $$16$7$1);
    $$16$7$2 := (if p0$2 then v120$2 else $$16$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v121$1 := (if p0$1 then _HAVOC_int$1 else v121$1);
    v121$2 := (if p0$2 then _HAVOC_int$2 else v121$2);
    $$16$8$1 := (if p0$1 then v121$1 else $$16$8$1);
    $$16$8$2 := (if p0$2 then v121$2 else $$16$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v122$1 := (if p0$1 then _HAVOC_int$1 else v122$1);
    v122$2 := (if p0$2 then _HAVOC_int$2 else v122$2);
    $$16$9$1 := (if p0$1 then v122$1 else $$16$9$1);
    $$16$9$2 := (if p0$2 then v122$2 else $$16$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v123$1 := (if p0$1 then _HAVOC_int$1 else v123$1);
    v123$2 := (if p0$2 then _HAVOC_int$2 else v123$2);
    $$16$10$1 := (if p0$1 then v123$1 else $$16$10$1);
    $$16$10$2 := (if p0$2 then v123$2 else $$16$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p0$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p0$2 then _HAVOC_int$2 else v124$2);
    $$16$11$1 := (if p0$1 then v124$1 else $$16$11$1);
    $$16$11$2 := (if p0$2 then v124$2 else $$16$11$2);
    v125$1 := (if p0$1 then $$location$0$1 else v125$1);
    v125$2 := (if p0$2 then $$location$0$2 else v125$2);
    v126$1 := (if p0$1 then $$location$1$1 else v126$1);
    v126$2 := (if p0$2 then $$location$1$2 else v126$2);
    v127$1 := (if p0$1 then $$16$0$1 else v127$1);
    v127$2 := (if p0$2 then $$16$0$2 else v127$2);
    v128$1 := (if p0$1 then $$16$1$1 else v128$1);
    v128$2 := (if p0$2 then $$16$1$2 else v128$2);
    v129$1 := (if p0$1 then $$16$2$1 else v129$1);
    v129$2 := (if p0$2 then $$16$2$2 else v129$2);
    v130$1 := (if p0$1 then $$16$3$1 else v130$1);
    v130$2 := (if p0$2 then $$16$3$2 else v130$2);
    v131$1 := (if p0$1 then $$16$4$1 else v131$1);
    v131$2 := (if p0$2 then $$16$4$2 else v131$2);
    v132$1 := (if p0$1 then $$16$5$1 else v132$1);
    v132$2 := (if p0$2 then $$16$5$2 else v132$2);
    v133$1 := (if p0$1 then $$16$6$1 else v133$1);
    v133$2 := (if p0$2 then $$16$6$2 else v133$2);
    v134$1 := (if p0$1 then $$16$7$1 else v134$1);
    v134$2 := (if p0$2 then $$16$7$2 else v134$2);
    v135$1 := (if p0$1 then $$16$8$1 else v135$1);
    v135$2 := (if p0$2 then $$16$8$2 else v135$2);
    v136$1 := (if p0$1 then $$16$9$1 else v136$1);
    v136$2 := (if p0$2 then $$16$9$2 else v136$2);
    v137$1 := (if p0$1 then $$16$10$1 else v137$1);
    v137$2 := (if p0$2 then $$16$10$2 else v137$2);
    v138$1 := (if p0$1 then $$16$11$1 else v138$1);
    v138$2 := (if p0$2 then $$16$11$2 else v138$2);
    call {:sourceloc_num 266} v139$1, v139$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v130$1, v129$1), v128$1), v127$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v134$1, v133$1), v132$1), v131$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v138$1, v137$1), v136$1), v135$1), v125$1, v126$1, p0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v130$2, v129$2), v128$2), v127$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v134$2, v133$2), v132$2), v131$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v138$2, v137$2), v136$2), v135$2), v125$2, v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    v140$1 := (if p0$1 then $$ray$0$1 else v140$1);
    v140$2 := (if p0$2 then $$ray$0$2 else v140$2);
    $$17$0$1 := (if p0$1 then v140$1 else $$17$0$1);
    $$17$0$2 := (if p0$2 then v140$2 else $$17$0$2);
    v141$1 := (if p0$1 then $$ray$1$1 else v141$1);
    v141$2 := (if p0$2 then $$ray$1$2 else v141$2);
    $$17$1$1 := (if p0$1 then v141$1 else $$17$1$1);
    $$17$1$2 := (if p0$2 then v141$2 else $$17$1$2);
    v142$1 := (if p0$1 then $$ray$2$1 else v142$1);
    v142$2 := (if p0$2 then $$ray$2$2 else v142$2);
    $$17$2$1 := (if p0$1 then v142$1 else $$17$2$1);
    $$17$2$2 := (if p0$2 then v142$2 else $$17$2$2);
    v143$1 := (if p0$1 then $$ray$3$1 else v143$1);
    v143$2 := (if p0$2 then $$ray$3$2 else v143$2);
    $$17$3$1 := (if p0$1 then v143$1 else $$17$3$1);
    $$17$3$2 := (if p0$2 then v143$2 else $$17$3$2);
    v144$1 := (if p0$1 then $$ray$4$1 else v144$1);
    v144$2 := (if p0$2 then $$ray$4$2 else v144$2);
    $$17$4$1 := (if p0$1 then v144$1 else $$17$4$1);
    $$17$4$2 := (if p0$2 then v144$2 else $$17$4$2);
    v145$1 := (if p0$1 then $$ray$5$1 else v145$1);
    v145$2 := (if p0$2 then $$ray$5$2 else v145$2);
    $$17$5$1 := (if p0$1 then v145$1 else $$17$5$1);
    $$17$5$2 := (if p0$2 then v145$2 else $$17$5$2);
    v146$1 := (if p0$1 then $$ray$6$1 else v146$1);
    v146$2 := (if p0$2 then $$ray$6$2 else v146$2);
    $$17$6$1 := (if p0$1 then v146$1 else $$17$6$1);
    $$17$6$2 := (if p0$2 then v146$2 else $$17$6$2);
    v147$1 := (if p0$1 then $$ray$7$1 else v147$1);
    v147$2 := (if p0$2 then $$ray$7$2 else v147$2);
    $$17$7$1 := (if p0$1 then v147$1 else $$17$7$1);
    $$17$7$2 := (if p0$2 then v147$2 else $$17$7$2);
    v148$1 := (if p0$1 then $$ray$8$1 else v148$1);
    v148$2 := (if p0$2 then $$ray$8$2 else v148$2);
    $$17$8$1 := (if p0$1 then v148$1 else $$17$8$1);
    $$17$8$2 := (if p0$2 then v148$2 else $$17$8$2);
    v149$1 := (if p0$1 then $$ray$9$1 else v149$1);
    v149$2 := (if p0$2 then $$ray$9$2 else v149$2);
    $$17$9$1 := (if p0$1 then v149$1 else $$17$9$1);
    $$17$9$2 := (if p0$2 then v149$2 else $$17$9$2);
    v150$1 := (if p0$1 then $$ray$10$1 else v150$1);
    v150$2 := (if p0$2 then $$ray$10$2 else v150$2);
    $$17$10$1 := (if p0$1 then v150$1 else $$17$10$1);
    $$17$10$2 := (if p0$2 then v150$2 else $$17$10$2);
    v151$1 := (if p0$1 then $$ray$11$1 else v151$1);
    v151$2 := (if p0$2 then $$ray$11$2 else v151$2);
    $$17$11$1 := (if p0$1 then v151$1 else $$17$11$1);
    $$17$11$2 := (if p0$2 then v151$2 else $$17$11$2);
    v152$1 := (if p0$1 then $$ray$12$1 else v152$1);
    v152$2 := (if p0$2 then $$ray$12$2 else v152$2);
    $$17$12$1 := (if p0$1 then v152$1 else $$17$12$1);
    $$17$12$2 := (if p0$2 then v152$2 else $$17$12$2);
    v153$1 := (if p0$1 then $$ray$13$1 else v153$1);
    v153$2 := (if p0$2 then $$ray$13$2 else v153$2);
    $$17$13$1 := (if p0$1 then v153$1 else $$17$13$1);
    $$17$13$2 := (if p0$2 then v153$2 else $$17$13$2);
    v154$1 := (if p0$1 then $$ray$14$1 else v154$1);
    v154$2 := (if p0$2 then $$ray$14$2 else v154$2);
    $$17$14$1 := (if p0$1 then v154$1 else $$17$14$1);
    $$17$14$2 := (if p0$2 then v154$2 else $$17$14$2);
    v155$1 := (if p0$1 then $$ray$15$1 else v155$1);
    v155$2 := (if p0$2 then $$ray$15$2 else v155$2);
    $$17$15$1 := (if p0$1 then v155$1 else $$17$15$1);
    $$17$15$2 := (if p0$2 then v155$2 else $$17$15$2);
    v156$1 := (if p0$1 then $$ray$16$1 else v156$1);
    v156$2 := (if p0$2 then $$ray$16$2 else v156$2);
    $$17$16$1 := (if p0$1 then v156$1 else $$17$16$1);
    $$17$16$2 := (if p0$2 then v156$2 else $$17$16$2);
    v157$1 := (if p0$1 then $$ray$17$1 else v157$1);
    v157$2 := (if p0$2 then $$ray$17$2 else v157$2);
    $$17$17$1 := (if p0$1 then v157$1 else $$17$17$1);
    $$17$17$2 := (if p0$2 then v157$2 else $$17$17$2);
    v158$1 := (if p0$1 then $$ray$18$1 else v158$1);
    v158$2 := (if p0$2 then $$ray$18$2 else v158$2);
    $$17$18$1 := (if p0$1 then v158$1 else $$17$18$1);
    $$17$18$2 := (if p0$2 then v158$2 else $$17$18$2);
    v159$1 := (if p0$1 then $$ray$19$1 else v159$1);
    v159$2 := (if p0$2 then $$ray$19$2 else v159$2);
    $$17$19$1 := (if p0$1 then v159$1 else $$17$19$1);
    $$17$19$2 := (if p0$2 then v159$2 else $$17$19$2);
    v160$1 := (if p0$1 then $$ray$20$1 else v160$1);
    v160$2 := (if p0$2 then $$ray$20$2 else v160$2);
    $$17$20$1 := (if p0$1 then v160$1 else $$17$20$1);
    $$17$20$2 := (if p0$2 then v160$2 else $$17$20$2);
    v161$1 := (if p0$1 then $$ray$21$1 else v161$1);
    v161$2 := (if p0$2 then $$ray$21$2 else v161$2);
    $$17$21$1 := (if p0$1 then v161$1 else $$17$21$1);
    $$17$21$2 := (if p0$2 then v161$2 else $$17$21$2);
    v162$1 := (if p0$1 then $$ray$22$1 else v162$1);
    v162$2 := (if p0$2 then $$ray$22$2 else v162$2);
    $$17$22$1 := (if p0$1 then v162$1 else $$17$22$1);
    $$17$22$2 := (if p0$2 then v162$2 else $$17$22$2);
    v163$1 := (if p0$1 then $$ray$23$1 else v163$1);
    v163$2 := (if p0$2 then $$ray$23$2 else v163$2);
    $$17$23$1 := (if p0$1 then v163$1 else $$17$23$1);
    $$17$23$2 := (if p0$2 then v163$2 else $$17$23$2);
    v164$1 := (if p0$1 then $$ray$24$1 else v164$1);
    v164$2 := (if p0$2 then $$ray$24$2 else v164$2);
    $$17$24$1 := (if p0$1 then v164$1 else $$17$24$1);
    $$17$24$2 := (if p0$2 then v164$2 else $$17$24$2);
    v165$1 := (if p0$1 then $$ray$25$1 else v165$1);
    v165$2 := (if p0$2 then $$ray$25$2 else v165$2);
    $$17$25$1 := (if p0$1 then v165$1 else $$17$25$1);
    $$17$25$2 := (if p0$2 then v165$2 else $$17$25$2);
    v166$1 := (if p0$1 then $$ray$26$1 else v166$1);
    v166$2 := (if p0$2 then $$ray$26$2 else v166$2);
    $$17$26$1 := (if p0$1 then v166$1 else $$17$26$1);
    $$17$26$2 := (if p0$2 then v166$2 else $$17$26$2);
    v167$1 := (if p0$1 then $$ray$27$1 else v167$1);
    v167$2 := (if p0$2 then $$ray$27$2 else v167$2);
    $$17$27$1 := (if p0$1 then v167$1 else $$17$27$1);
    $$17$27$2 := (if p0$2 then v167$2 else $$17$27$2);
    v168$1 := (if p0$1 then $$location$0$1 else v168$1);
    v168$2 := (if p0$2 then $$location$0$2 else v168$2);
    $$18$0$1 := (if p0$1 then v168$1 else $$18$0$1);
    $$18$0$2 := (if p0$2 then v168$2 else $$18$0$2);
    v169$1 := (if p0$1 then $$location$1$1 else v169$1);
    v169$2 := (if p0$2 then $$location$1$2 else v169$2);
    $$18$1$1 := (if p0$1 then v169$1 else $$18$1$1);
    $$18$1$2 := (if p0$2 then v169$2 else $$18$1$2);
    v170$1 := (if p0$1 then $$17$0$1 else v170$1);
    v170$2 := (if p0$2 then $$17$0$2 else v170$2);
    v171$1 := (if p0$1 then $$17$1$1 else v171$1);
    v171$2 := (if p0$2 then $$17$1$2 else v171$2);
    v172$1 := (if p0$1 then $$17$2$1 else v172$1);
    v172$2 := (if p0$2 then $$17$2$2 else v172$2);
    v173$1 := (if p0$1 then $$17$3$1 else v173$1);
    v173$2 := (if p0$2 then $$17$3$2 else v173$2);
    v174$1 := (if p0$1 then $$17$4$1 else v174$1);
    v174$2 := (if p0$2 then $$17$4$2 else v174$2);
    v175$1 := (if p0$1 then $$17$5$1 else v175$1);
    v175$2 := (if p0$2 then $$17$5$2 else v175$2);
    v176$1 := (if p0$1 then $$17$6$1 else v176$1);
    v176$2 := (if p0$2 then $$17$6$2 else v176$2);
    v177$1 := (if p0$1 then $$17$7$1 else v177$1);
    v177$2 := (if p0$2 then $$17$7$2 else v177$2);
    v178$1 := (if p0$1 then $$17$8$1 else v178$1);
    v178$2 := (if p0$2 then $$17$8$2 else v178$2);
    v179$1 := (if p0$1 then $$17$9$1 else v179$1);
    v179$2 := (if p0$2 then $$17$9$2 else v179$2);
    v180$1 := (if p0$1 then $$17$10$1 else v180$1);
    v180$2 := (if p0$2 then $$17$10$2 else v180$2);
    v181$1 := (if p0$1 then $$17$11$1 else v181$1);
    v181$2 := (if p0$2 then $$17$11$2 else v181$2);
    v182$1 := (if p0$1 then $$17$12$1 else v182$1);
    v182$2 := (if p0$2 then $$17$12$2 else v182$2);
    v183$1 := (if p0$1 then $$17$13$1 else v183$1);
    v183$2 := (if p0$2 then $$17$13$2 else v183$2);
    v184$1 := (if p0$1 then $$17$14$1 else v184$1);
    v184$2 := (if p0$2 then $$17$14$2 else v184$2);
    v185$1 := (if p0$1 then $$17$15$1 else v185$1);
    v185$2 := (if p0$2 then $$17$15$2 else v185$2);
    v186$1 := (if p0$1 then $$17$16$1 else v186$1);
    v186$2 := (if p0$2 then $$17$16$2 else v186$2);
    v187$1 := (if p0$1 then $$17$17$1 else v187$1);
    v187$2 := (if p0$2 then $$17$17$2 else v187$2);
    v188$1 := (if p0$1 then $$17$18$1 else v188$1);
    v188$2 := (if p0$2 then $$17$18$2 else v188$2);
    v189$1 := (if p0$1 then $$17$19$1 else v189$1);
    v189$2 := (if p0$2 then $$17$19$2 else v189$2);
    v190$1 := (if p0$1 then $$17$20$1 else v190$1);
    v190$2 := (if p0$2 then $$17$20$2 else v190$2);
    v191$1 := (if p0$1 then $$17$21$1 else v191$1);
    v191$2 := (if p0$2 then $$17$21$2 else v191$2);
    v192$1 := (if p0$1 then $$17$22$1 else v192$1);
    v192$2 := (if p0$2 then $$17$22$2 else v192$2);
    v193$1 := (if p0$1 then $$17$23$1 else v193$1);
    v193$2 := (if p0$2 then $$17$23$2 else v193$2);
    v194$1 := (if p0$1 then $$17$24$1 else v194$1);
    v194$2 := (if p0$2 then $$17$24$2 else v194$2);
    v195$1 := (if p0$1 then $$17$25$1 else v195$1);
    v195$2 := (if p0$2 then $$17$25$2 else v195$2);
    v196$1 := (if p0$1 then $$17$26$1 else v196$1);
    v196$2 := (if p0$2 then $$17$26$2 else v196$2);
    v197$1 := (if p0$1 then $$17$27$1 else v197$1);
    v197$2 := (if p0$2 then $$17$27$2 else v197$2);
    v198$1 := (if p0$1 then $$18$0$1 else v198$1);
    v198$2 := (if p0$2 then $$18$0$2 else v198$2);
    v199$1 := (if p0$1 then $$18$1$1 else v199$1);
    v199$2 := (if p0$2 then $$18$1$2 else v199$2);
    $$ray.i3$0$1 := (if p0$1 then v170$1 else $$ray.i3$0$1);
    $$ray.i3$0$2 := (if p0$2 then v170$2 else $$ray.i3$0$2);
    $$ray.i3$1$1 := (if p0$1 then v171$1 else $$ray.i3$1$1);
    $$ray.i3$1$2 := (if p0$2 then v171$2 else $$ray.i3$1$2);
    $$ray.i3$2$1 := (if p0$1 then v172$1 else $$ray.i3$2$1);
    $$ray.i3$2$2 := (if p0$2 then v172$2 else $$ray.i3$2$2);
    $$ray.i3$3$1 := (if p0$1 then v173$1 else $$ray.i3$3$1);
    $$ray.i3$3$2 := (if p0$2 then v173$2 else $$ray.i3$3$2);
    $$ray.i3$4$1 := (if p0$1 then v174$1 else $$ray.i3$4$1);
    $$ray.i3$4$2 := (if p0$2 then v174$2 else $$ray.i3$4$2);
    $$ray.i3$5$1 := (if p0$1 then v175$1 else $$ray.i3$5$1);
    $$ray.i3$5$2 := (if p0$2 then v175$2 else $$ray.i3$5$2);
    $$ray.i3$6$1 := (if p0$1 then v176$1 else $$ray.i3$6$1);
    $$ray.i3$6$2 := (if p0$2 then v176$2 else $$ray.i3$6$2);
    $$ray.i3$7$1 := (if p0$1 then v177$1 else $$ray.i3$7$1);
    $$ray.i3$7$2 := (if p0$2 then v177$2 else $$ray.i3$7$2);
    $$ray.i3$8$1 := (if p0$1 then v178$1 else $$ray.i3$8$1);
    $$ray.i3$8$2 := (if p0$2 then v178$2 else $$ray.i3$8$2);
    $$ray.i3$9$1 := (if p0$1 then v179$1 else $$ray.i3$9$1);
    $$ray.i3$9$2 := (if p0$2 then v179$2 else $$ray.i3$9$2);
    $$ray.i3$10$1 := (if p0$1 then v180$1 else $$ray.i3$10$1);
    $$ray.i3$10$2 := (if p0$2 then v180$2 else $$ray.i3$10$2);
    $$ray.i3$11$1 := (if p0$1 then v181$1 else $$ray.i3$11$1);
    $$ray.i3$11$2 := (if p0$2 then v181$2 else $$ray.i3$11$2);
    $$ray.i3$12$1 := (if p0$1 then v182$1 else $$ray.i3$12$1);
    $$ray.i3$12$2 := (if p0$2 then v182$2 else $$ray.i3$12$2);
    $$ray.i3$13$1 := (if p0$1 then v183$1 else $$ray.i3$13$1);
    $$ray.i3$13$2 := (if p0$2 then v183$2 else $$ray.i3$13$2);
    $$ray.i3$14$1 := (if p0$1 then v184$1 else $$ray.i3$14$1);
    $$ray.i3$14$2 := (if p0$2 then v184$2 else $$ray.i3$14$2);
    $$ray.i3$15$1 := (if p0$1 then v185$1 else $$ray.i3$15$1);
    $$ray.i3$15$2 := (if p0$2 then v185$2 else $$ray.i3$15$2);
    $$ray.i3$16$1 := (if p0$1 then v186$1 else $$ray.i3$16$1);
    $$ray.i3$16$2 := (if p0$2 then v186$2 else $$ray.i3$16$2);
    $$ray.i3$17$1 := (if p0$1 then v187$1 else $$ray.i3$17$1);
    $$ray.i3$17$2 := (if p0$2 then v187$2 else $$ray.i3$17$2);
    $$ray.i3$18$1 := (if p0$1 then v188$1 else $$ray.i3$18$1);
    $$ray.i3$18$2 := (if p0$2 then v188$2 else $$ray.i3$18$2);
    $$ray.i3$19$1 := (if p0$1 then v189$1 else $$ray.i3$19$1);
    $$ray.i3$19$2 := (if p0$2 then v189$2 else $$ray.i3$19$2);
    $$ray.i3$20$1 := (if p0$1 then v190$1 else $$ray.i3$20$1);
    $$ray.i3$20$2 := (if p0$2 then v190$2 else $$ray.i3$20$2);
    $$ray.i3$21$1 := (if p0$1 then v191$1 else $$ray.i3$21$1);
    $$ray.i3$21$2 := (if p0$2 then v191$2 else $$ray.i3$21$2);
    $$ray.i3$22$1 := (if p0$1 then v192$1 else $$ray.i3$22$1);
    $$ray.i3$22$2 := (if p0$2 then v192$2 else $$ray.i3$22$2);
    $$ray.i3$23$1 := (if p0$1 then v193$1 else $$ray.i3$23$1);
    $$ray.i3$23$2 := (if p0$2 then v193$2 else $$ray.i3$23$2);
    $$ray.i3$24$1 := (if p0$1 then v194$1 else $$ray.i3$24$1);
    $$ray.i3$24$2 := (if p0$2 then v194$2 else $$ray.i3$24$2);
    $$ray.i3$25$1 := (if p0$1 then v195$1 else $$ray.i3$25$1);
    $$ray.i3$25$2 := (if p0$2 then v195$2 else $$ray.i3$25$2);
    $$ray.i3$26$1 := (if p0$1 then v196$1 else $$ray.i3$26$1);
    $$ray.i3$26$2 := (if p0$2 then v196$2 else $$ray.i3$26$2);
    $$ray.i3$27$1 := (if p0$1 then v197$1 else $$ray.i3$27$1);
    $$ray.i3$27$2 := (if p0$2 then v197$2 else $$ray.i3$27$2);
    $$location.i$0$1 := (if p0$1 then v198$1 else $$location.i$0$1);
    $$location.i$0$2 := (if p0$2 then v198$2 else $$location.i$0$2);
    $$location.i$1$1 := (if p0$1 then v199$1 else $$location.i$1$1);
    $$location.i$1$2 := (if p0$2 then v199$2 else $$location.i$1$2);
    v200$1 := (if p0$1 then $$location.i$0$1 else v200$1);
    v200$2 := (if p0$2 then $$location.i$0$2 else v200$2);
    $$3$0$1 := (if p0$1 then v200$1 else $$3$0$1);
    $$3$0$2 := (if p0$2 then v200$2 else $$3$0$2);
    v201$1 := (if p0$1 then $$location.i$1$1 else v201$1);
    v201$2 := (if p0$2 then $$location.i$1$2 else v201$2);
    $$3$1$1 := (if p0$1 then v201$1 else $$3$1$1);
    $$3$1$2 := (if p0$2 then v201$2 else $$3$1$2);
    v202$1 := (if p0$1 then $$ray.i3$0$1 else v202$1);
    v202$2 := (if p0$2 then $$ray.i3$0$2 else v202$2);
    v203$1 := (if p0$1 then $$ray.i3$1$1 else v203$1);
    v203$2 := (if p0$2 then $$ray.i3$1$2 else v203$2);
    v204$1 := (if p0$1 then $$ray.i3$2$1 else v204$1);
    v204$2 := (if p0$2 then $$ray.i3$2$2 else v204$2);
    v205$1 := (if p0$1 then $$ray.i3$3$1 else v205$1);
    v205$2 := (if p0$2 then $$ray.i3$3$2 else v205$2);
    v206$1 := (if p0$1 then $$ray.i3$4$1 else v206$1);
    v206$2 := (if p0$2 then $$ray.i3$4$2 else v206$2);
    v207$1 := (if p0$1 then $$ray.i3$5$1 else v207$1);
    v207$2 := (if p0$2 then $$ray.i3$5$2 else v207$2);
    v208$1 := (if p0$1 then $$ray.i3$6$1 else v208$1);
    v208$2 := (if p0$2 then $$ray.i3$6$2 else v208$2);
    v209$1 := (if p0$1 then $$ray.i3$7$1 else v209$1);
    v209$2 := (if p0$2 then $$ray.i3$7$2 else v209$2);
    $$2$0$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v205$1, v204$1), v203$1), v202$1) else $$2$0$1);
    $$2$0$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v205$2, v204$2), v203$2), v202$2) else $$2$0$2);
    $$2$1$1 := (if p0$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v209$1, v208$1), v207$1), v206$1) else $$2$1$1);
    $$2$1$2 := (if p0$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v209$2, v208$2), v207$2), v206$2) else $$2$1$2);
    v210$1 := (if p0$1 then $$2$0$1 else v210$1);
    v210$2 := (if p0$2 then $$2$0$2 else v210$2);
    v211$1 := (if p0$1 then $$2$1$1 else v211$1);
    v211$2 := (if p0$2 then $$2$1$2 else v211$2);
    $$4$0$1 := (if p0$1 then v210$1 else $$4$0$1);
    $$4$0$2 := (if p0$2 then v210$2 else $$4$0$2);
    $$4$1$1 := (if p0$1 then v211$1 else $$4$1$1);
    $$4$1$2 := (if p0$2 then v211$2 else $$4$1$2);
    v212$1 := (if p0$1 then $$3$0$1 else v212$1);
    v212$2 := (if p0$2 then $$3$0$2 else v212$2);
    v213$1 := (if p0$1 then $$3$1$1 else v213$1);
    v213$2 := (if p0$2 then $$3$1$2 else v213$2);
    v214$1 := (if p0$1 then $$4$0$1 else v214$1);
    v214$2 := (if p0$2 then $$4$0$2 else v214$2);
    v215$1 := (if p0$1 then $$4$1$1 else v215$1);
    v215$2 := (if p0$2 then $$4$1$2 else v215$2);
    $$a.i.i1$0$1 := (if p0$1 then v212$1 else $$a.i.i1$0$1);
    $$a.i.i1$0$2 := (if p0$2 then v212$2 else $$a.i.i1$0$2);
    $$a.i.i1$1$1 := (if p0$1 then v213$1 else $$a.i.i1$1$1);
    $$a.i.i1$1$2 := (if p0$2 then v213$2 else $$a.i.i1$1$2);
    $$b.i.i2$0$1 := (if p0$1 then v214$1 else $$b.i.i2$0$1);
    $$b.i.i2$0$2 := (if p0$2 then v214$2 else $$b.i.i2$0$2);
    $$b.i.i2$1$1 := (if p0$1 then v215$1 else $$b.i.i2$1$1);
    $$b.i.i2$1$2 := (if p0$2 then v215$2 else $$b.i.i2$1$2);
    v216$1 := (if p0$1 then $$a.i.i1$0$1 else v216$1);
    v216$2 := (if p0$2 then $$a.i.i1$0$2 else v216$2);
    v217$1 := (if p0$1 then $$b.i.i2$0$1 else v217$1);
    v217$2 := (if p0$2 then $$b.i.i2$0$2 else v217$2);
    v218$1 := (if p0$1 then $$a.i.i1$1$1 else v218$1);
    v218$2 := (if p0$2 then $$a.i.i1$1$2 else v218$2);
    v219$1 := (if p0$1 then $$b.i.i2$1$1 else v219$1);
    v219$2 := (if p0$2 then $$b.i.i2$1$2 else v219$2);
    $$0$0$1 := (if p0$1 then FSUB32(v216$1, v217$1) else $$0$0$1);
    $$0$0$2 := (if p0$2 then FSUB32(v216$2, v217$2) else $$0$0$2);
    $$0$1$1 := (if p0$1 then FSUB32(v218$1, v219$1) else $$0$1$1);
    $$0$1$2 := (if p0$2 then FSUB32(v218$2, v219$2) else $$0$1$2);
    v220$1 := (if p0$1 then $$0$0$1 else v220$1);
    v220$2 := (if p0$2 then $$0$0$2 else v220$2);
    v221$1 := (if p0$1 then $$0$1$1 else v221$1);
    v221$2 := (if p0$2 then $$0$1$2 else v221$2);
    $$1$0$1 := (if p0$1 then v220$1 else $$1$0$1);
    $$1$0$2 := (if p0$2 then v220$2 else $$1$0$2);
    $$1$1$1 := (if p0$1 then v221$1 else $$1$1$1);
    $$1$1$2 := (if p0$2 then v221$2 else $$1$1$2);
    v222$1 := (if p0$1 then $$1$0$1 else v222$1);
    v222$2 := (if p0$2 then $$1$0$2 else v222$2);
    v223$1 := (if p0$1 then $$1$1$1 else v223$1);
    v223$2 := (if p0$2 then $$1$1$2 else v223$2);
    $$dir.i$0$1 := (if p0$1 then v222$1 else $$dir.i$0$1);
    $$dir.i$0$2 := (if p0$2 then v222$2 else $$dir.i$0$2);
    $$dir.i$1$1 := (if p0$1 then v223$1 else $$dir.i$1$1);
    $$dir.i$1$2 := (if p0$2 then v223$2 else $$dir.i$1$2);
    v224$1 := (if p0$1 then $$ray.i3$8$1 else v224$1);
    v224$2 := (if p0$2 then $$ray.i3$8$2 else v224$2);
    v225$1 := (if p0$1 then $$ray.i3$9$1 else v225$1);
    v225$2 := (if p0$2 then $$ray.i3$9$2 else v225$2);
    v226$1 := (if p0$1 then $$ray.i3$10$1 else v226$1);
    v226$2 := (if p0$2 then $$ray.i3$10$2 else v226$2);
    v227$1 := (if p0$1 then $$ray.i3$11$1 else v227$1);
    v227$2 := (if p0$2 then $$ray.i3$11$2 else v227$2);
    v228$1 := (if p0$1 then $$dir.i$0$1 else v228$1);
    v228$2 := (if p0$2 then $$dir.i$0$2 else v228$2);
    $$5$0$1 := (if p0$1 then v228$1 else $$5$0$1);
    $$5$0$2 := (if p0$2 then v228$2 else $$5$0$2);
    v229$1 := (if p0$1 then $$dir.i$1$1 else v229$1);
    v229$2 := (if p0$2 then $$dir.i$1$2 else v229$2);
    $$5$1$1 := (if p0$1 then v229$1 else $$5$1$1);
    $$5$1$2 := (if p0$2 then v229$2 else $$5$1$2);
    v230$1 := (if p0$1 then $$5$0$1 else v230$1);
    v230$2 := (if p0$2 then $$5$0$2 else v230$2);
    v231$1 := (if p0$1 then $$5$1$1 else v231$1);
    v231$2 := (if p0$2 then $$5$1$2 else v231$2);
    call {:sourceloc_num 437} v232$1, v232$2 := $_Z6length6float2(p0$1, v230$1, v231$1, p0$2, v230$2, v231$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z6length6float2"} true;
    call {:sourceloc_num 438} v233$1, v233$2 := $atanf(p0$1, FDIV32(FSUB32(v139$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v227$1, v226$1), v225$1), v224$1)), v232$1), p0$2, FDIV32(FSUB32(v139$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v227$2, v226$2), v225$2), v224$2)), v232$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$atanf"} true;
    call {:sourceloc} {:sourceloc_num 439} _LOG_WRITE_$$angles(p0$1, v0$1, v233$1, $$angles[v0$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$angles(p0$2, v0$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 439} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 439} _CHECK_WRITE_$$angles(p0$2, v0$2, v233$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$angles"} true;
    $$angles[v0$1] := (if p0$1 then v233$1 else $$angles[v0$1]);
    $$angles[v0$2] := (if p0$2 then v233$2 else $$angles[v0$2]);
    return;
}



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "atanf"} $atanf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z6length6float2"} $_Z6length6float2(_P$1: bool, $0$1: int, $1$1: int, _P$2: bool, $0$2: int, $1$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 40 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$1$0$1: int;

var $$1$0$2: int;

var $$1$1$1: int;

var $$1$1$2: int;

var $$a.i.i1$0$1: int;

var $$a.i.i1$0$2: int;

var $$a.i.i1$1$1: int;

var $$a.i.i1$1$2: int;

var $$b.i.i2$0$1: int;

var $$b.i.i2$0$2: int;

var $$b.i.i2$1$1: int;

var $$b.i.i2$1$2: int;

var $$2$0$1: int;

var $$2$0$2: int;

var $$2$1$1: int;

var $$2$1$2: int;

var $$ray.i3$0$1: int;

var $$ray.i3$0$2: int;

var $$ray.i3$1$1: int;

var $$ray.i3$1$2: int;

var $$ray.i3$2$1: int;

var $$ray.i3$2$2: int;

var $$ray.i3$3$1: int;

var $$ray.i3$3$2: int;

var $$ray.i3$4$1: int;

var $$ray.i3$4$2: int;

var $$ray.i3$5$1: int;

var $$ray.i3$5$2: int;

var $$ray.i3$6$1: int;

var $$ray.i3$6$2: int;

var $$ray.i3$7$1: int;

var $$ray.i3$7$2: int;

var $$ray.i3$8$1: int;

var $$ray.i3$8$2: int;

var $$ray.i3$9$1: int;

var $$ray.i3$9$2: int;

var $$ray.i3$10$1: int;

var $$ray.i3$10$2: int;

var $$ray.i3$11$1: int;

var $$ray.i3$11$2: int;

var $$ray.i3$12$1: int;

var $$ray.i3$12$2: int;

var $$ray.i3$13$1: int;

var $$ray.i3$13$2: int;

var $$ray.i3$14$1: int;

var $$ray.i3$14$2: int;

var $$ray.i3$15$1: int;

var $$ray.i3$15$2: int;

var $$ray.i3$16$1: int;

var $$ray.i3$16$2: int;

var $$ray.i3$17$1: int;

var $$ray.i3$17$2: int;

var $$ray.i3$18$1: int;

var $$ray.i3$18$2: int;

var $$ray.i3$19$1: int;

var $$ray.i3$19$2: int;

var $$ray.i3$20$1: int;

var $$ray.i3$20$2: int;

var $$ray.i3$21$1: int;

var $$ray.i3$21$2: int;

var $$ray.i3$22$1: int;

var $$ray.i3$22$2: int;

var $$ray.i3$23$1: int;

var $$ray.i3$23$2: int;

var $$ray.i3$24$1: int;

var $$ray.i3$24$2: int;

var $$ray.i3$25$1: int;

var $$ray.i3$25$2: int;

var $$ray.i3$26$1: int;

var $$ray.i3$26$2: int;

var $$ray.i3$27$1: int;

var $$ray.i3$27$2: int;

var $$location.i$0$1: int;

var $$location.i$0$2: int;

var $$location.i$1$1: int;

var $$location.i$1$2: int;

var $$dir.i$0$1: int;

var $$dir.i$0$2: int;

var $$dir.i$1$1: int;

var $$dir.i$1$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$5$0$1: int;

var $$5$0$2: int;

var $$5$1$1: int;

var $$5$1$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$b.i1.i$0$1: int;

var $$b.i1.i$0$2: int;

var $$b.i1.i$1$1: int;

var $$b.i1.i$1$2: int;

var $$8$0$1: int;

var $$8$0$2: int;

var $$8$1$1: int;

var $$8$1$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$a.i.i$0$1: int;

var $$a.i.i$0$2: int;

var $$a.i.i$1$1: int;

var $$a.i.i$1$2: int;

var $$b.i.i$0$1: int;

var $$b.i.i$0$2: int;

var $$b.i.i$1$1: int;

var $$b.i.i$1$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$11$0$1: int;

var $$11$0$2: int;

var $$11$1$1: int;

var $$11$1$2: int;

var $$ray.i$0$1: int;

var $$ray.i$0$2: int;

var $$ray.i$1$1: int;

var $$ray.i$1$2: int;

var $$ray.i$2$1: int;

var $$ray.i$2$2: int;

var $$ray.i$3$1: int;

var $$ray.i$3$2: int;

var $$ray.i$4$1: int;

var $$ray.i$4$2: int;

var $$ray.i$5$1: int;

var $$ray.i$5$2: int;

var $$ray.i$6$1: int;

var $$ray.i$6$2: int;

var $$ray.i$7$1: int;

var $$ray.i$7$2: int;

var $$ray.i$8$1: int;

var $$ray.i$8$2: int;

var $$ray.i$9$1: int;

var $$ray.i$9$2: int;

var $$ray.i$10$1: int;

var $$ray.i$10$2: int;

var $$ray.i$11$1: int;

var $$ray.i$11$2: int;

var $$ray.i$12$1: int;

var $$ray.i$12$2: int;

var $$ray.i$13$1: int;

var $$ray.i$13$2: int;

var $$ray.i$14$1: int;

var $$ray.i$14$2: int;

var $$ray.i$15$1: int;

var $$ray.i$15$2: int;

var $$ray.i$16$1: int;

var $$ray.i$16$2: int;

var $$ray.i$17$1: int;

var $$ray.i$17$2: int;

var $$ray.i$18$1: int;

var $$ray.i$18$2: int;

var $$ray.i$19$1: int;

var $$ray.i$19$2: int;

var $$ray.i$20$1: int;

var $$ray.i$20$2: int;

var $$ray.i$21$1: int;

var $$ray.i$21$2: int;

var $$ray.i$22$1: int;

var $$ray.i$22$2: int;

var $$ray.i$23$1: int;

var $$ray.i$23$2: int;

var $$ray.i$24$1: int;

var $$ray.i$24$2: int;

var $$ray.i$25$1: int;

var $$ray.i$25$2: int;

var $$ray.i$26$1: int;

var $$ray.i$26$2: int;

var $$ray.i$27$1: int;

var $$ray.i$27$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

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

var $$ray$0$1: int;

var $$ray$0$2: int;

var $$ray$1$1: int;

var $$ray$1$2: int;

var $$ray$2$1: int;

var $$ray$2$2: int;

var $$ray$3$1: int;

var $$ray$3$2: int;

var $$ray$4$1: int;

var $$ray$4$2: int;

var $$ray$5$1: int;

var $$ray$5$2: int;

var $$ray$6$1: int;

var $$ray$6$2: int;

var $$ray$7$1: int;

var $$ray$7$2: int;

var $$ray$8$1: int;

var $$ray$8$2: int;

var $$ray$9$1: int;

var $$ray$9$2: int;

var $$ray$10$1: int;

var $$ray$10$2: int;

var $$ray$11$1: int;

var $$ray$11$2: int;

var $$ray$12$1: int;

var $$ray$12$2: int;

var $$ray$13$1: int;

var $$ray$13$2: int;

var $$ray$14$1: int;

var $$ray$14$2: int;

var $$ray$15$1: int;

var $$ray$15$2: int;

var $$ray$16$1: int;

var $$ray$16$2: int;

var $$ray$17$1: int;

var $$ray$17$2: int;

var $$ray$18$1: int;

var $$ray$18$2: int;

var $$ray$19$1: int;

var $$ray$19$2: int;

var $$ray$20$1: int;

var $$ray$20$2: int;

var $$ray$21$1: int;

var $$ray$21$2: int;

var $$ray$22$1: int;

var $$ray$22$2: int;

var $$ray$23$1: int;

var $$ray$23$2: int;

var $$ray$24$1: int;

var $$ray$24$2: int;

var $$ray$25$1: int;

var $$ray$25$2: int;

var $$ray$26$1: int;

var $$ray$26$2: int;

var $$ray$27$1: int;

var $$ray$27$2: int;

var $$location$0$1: int;

var $$location$0$2: int;

var $$location$1$1: int;

var $$location$1$2: int;

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

var $$15$12$1: int;

var $$15$12$2: int;

var $$15$13$1: int;

var $$15$13$2: int;

var $$15$14$1: int;

var $$15$14$2: int;

var $$15$15$1: int;

var $$15$15$2: int;

var $$15$16$1: int;

var $$15$16$2: int;

var $$15$17$1: int;

var $$15$17$2: int;

var $$15$18$1: int;

var $$15$18$2: int;

var $$15$19$1: int;

var $$15$19$2: int;

var $$15$20$1: int;

var $$15$20$2: int;

var $$15$21$1: int;

var $$15$21$2: int;

var $$15$22$1: int;

var $$15$22$2: int;

var $$15$23$1: int;

var $$15$23$2: int;

var $$15$24$1: int;

var $$15$24$2: int;

var $$15$25$1: int;

var $$15$25$2: int;

var $$15$26$1: int;

var $$15$26$2: int;

var $$15$27$1: int;

var $$15$27$2: int;

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

var $$17$12$1: int;

var $$17$12$2: int;

var $$17$13$1: int;

var $$17$13$2: int;

var $$17$14$1: int;

var $$17$14$2: int;

var $$17$15$1: int;

var $$17$15$2: int;

var $$17$16$1: int;

var $$17$16$2: int;

var $$17$17$1: int;

var $$17$17$2: int;

var $$17$18$1: int;

var $$17$18$2: int;

var $$17$19$1: int;

var $$17$19$2: int;

var $$17$20$1: int;

var $$17$20$2: int;

var $$17$21$1: int;

var $$17$21$2: int;

var $$17$22$1: int;

var $$17$22$2: int;

var $$17$23$1: int;

var $$17$23$2: int;

var $$17$24$1: int;

var $$17$24$2: int;

var $$17$25$1: int;

var $$17$25$2: int;

var $$17$26$1: int;

var $$17$26$2: int;

var $$17$27$1: int;

var $$17$27$2: int;

var $$18$0$1: int;

var $$18$0$2: int;

var $$18$1$1: int;

var $$18$1$2: int;

const _WATCHED_VALUE_$$angles: int;

procedure {:inline 1} _LOG_READ_$$angles(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$angles;



implementation {:inline 1} _LOG_READ_$$angles(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then true else _READ_HAS_OCCURRED_$$angles);
    return;
}



procedure _CHECK_READ_$$angles(_P: bool, _offset: int, _value: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$angles);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$angles: bool;

procedure {:inline 1} _LOG_WRITE_$$angles(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$angles, _WRITE_READ_BENIGN_FLAG_$$angles;



implementation {:inline 1} _LOG_WRITE_$$angles(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then true else _WRITE_HAS_OCCURRED_$$angles);
    _WRITE_READ_BENIGN_FLAG_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$angles);
    return;
}



procedure _CHECK_WRITE_$$angles(_P: bool, _offset: int, _value: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles != _value);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$angles != _value);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$angles(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$angles;



implementation {:inline 1} _LOG_ATOMIC_$$angles(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$angles := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$angles);
    return;
}



procedure _CHECK_ATOMIC_$$angles(_P: bool, _offset: int);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);
  requires {:source_name "angles"} {:array "$$angles"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$angles(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$angles;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$angles(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$angles := (if _P && _WRITE_HAS_OCCURRED_$$angles && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$angles);
    return;
}



const _WATCHED_VALUE_$$g_HeightFieldTex: int;

procedure {:inline 1} _LOG_READ_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_HeightFieldTex;



implementation {:inline 1} _LOG_READ_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_HeightFieldTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_HeightFieldTex == _value then true else _READ_HAS_OCCURRED_$$g_HeightFieldTex);
    return;
}



procedure _CHECK_READ_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex: bool;

procedure {:inline 1} _LOG_WRITE_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_HeightFieldTex, _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex;



implementation {:inline 1} _LOG_WRITE_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_HeightFieldTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_HeightFieldTex == _value then true else _WRITE_HAS_OCCURRED_$$g_HeightFieldTex);
    _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_HeightFieldTex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex);
    return;
}



procedure _CHECK_WRITE_$$g_HeightFieldTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_HeightFieldTex != _value);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_HeightFieldTex != _value);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_HeightFieldTex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex;



implementation {:inline 1} _LOG_ATOMIC_$$g_HeightFieldTex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_HeightFieldTex);
    return;
}



procedure _CHECK_ATOMIC_$$g_HeightFieldTex(_P: bool, _offset: int);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_HeightFieldTex"} {:array "$$g_HeightFieldTex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex := (if _P && _WRITE_HAS_OCCURRED_$$g_HeightFieldTex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_HeightFieldTex);
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
