type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_initvalu"} {:global} $$d_initvalu: [int]int;

axiom {:array_info "$$d_initvalu"} {:global} {:elem_width 32} {:source_name "d_initvalu"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_initvalu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_initvalu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_initvalu: bool;

var {:source_name "d_finavalu"} {:global} $$d_finavalu: [int]int;

axiom {:array_info "$$d_finavalu"} {:global} {:elem_width 32} {:source_name "d_finavalu"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_finavalu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_finavalu: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_finavalu: bool;

var {:source_name "d_params"} {:global} $$d_params: [int]int;

axiom {:array_info "$$d_params"} {:global} {:elem_width 32} {:source_name "d_params"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_params: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_params: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_params: bool;

var {:source_name "d_com"} {:global} $$d_com: [int]int;

axiom {:array_info "$$d_com"} {:global} {:elem_width 32} {:source_name "d_com"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_com: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_com: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_com: bool;

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

function FEQ32(int, int) : bool;

function FEXP32(int) : int;

function FEXP64(int) : int;

function FLOG32(int) : int;

function FLT32(int, int) : bool;

function FLT64(int, int) : bool;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP32_CONV64(int) : int;

function FP64_CONV32(int) : int;

function FPOW32(int, int) : int;

function FPOW64(int, int) : int;

function FSQRT64(int) : int;

function FSUB32(int, int) : int;

function FSUB64(int, int) : int;

function SI32_TO_FP32(int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

procedure {:source_name "kernel_gpu_opencl"} {:kernel} $kernel_gpu_opencl($timeinst: int);
  requires !_READ_HAS_OCCURRED_$$d_initvalu && !_WRITE_HAS_OCCURRED_$$d_initvalu && !_ATOMIC_HAS_OCCURRED_$$d_initvalu;
  requires !_READ_HAS_OCCURRED_$$d_finavalu && !_WRITE_HAS_OCCURRED_$$d_finavalu && !_ATOMIC_HAS_OCCURRED_$$d_finavalu;
  requires !_READ_HAS_OCCURRED_$$d_params && !_WRITE_HAS_OCCURRED_$$d_params && !_ATOMIC_HAS_OCCURRED_$$d_params;
  requires !_READ_HAS_OCCURRED_$$d_com && !_WRITE_HAS_OCCURRED_$$d_com && !_ATOMIC_HAS_OCCURRED_$$d_com;
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
  modifies _WRITE_HAS_OCCURRED_$$d_finavalu, _WRITE_READ_BENIGN_FLAG_$$d_finavalu, _WRITE_READ_BENIGN_FLAG_$$d_finavalu, _READ_HAS_OCCURRED_$$d_finavalu, _WRITE_HAS_OCCURRED_$$d_com, _WRITE_READ_BENIGN_FLAG_$$d_com, _WRITE_READ_BENIGN_FLAG_$$d_com;



implementation {:source_name "kernel_gpu_opencl"} {:kernel} $kernel_gpu_opencl($timeinst: int)
{
  var $ah.i.0$1: int;
  var $ah.i.0$2: int;
  var $bh.i.0$1: int;
  var $bh.i.0$2: int;
  var $aj.i.0$1: int;
  var $aj.i.0$2: int;
  var $bj.i.0$1: int;
  var $bj.i.0$2: int;
  var $I_app.i.1$1: int;
  var $I_app.i.1$2: int;
  var $I_app.i.0$1: int;
  var $I_app.i.0$2: int;
  var $V_clamp.i.0$1: int;
  var $V_clamp.i.0$2: int;
  var $Kd02.i.0$1: int;
  var $Kd02.i.0$2: int;
  var $Kd24.i.0$1: int;
  var $Kd24.i.0$2: int;
  var $Kd02.i52.0$1: int;
  var $Kd02.i52.0$2: int;
  var $Kd24.i53.0$1: int;
  var $Kd24.i53.0$2: int;
  var $Kd02.i173.0$1: int;
  var $Kd02.i173.0$2: int;
  var $Kd24.i174.0$1: int;
  var $Kd24.i174.0$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v103$1: int;
  var v103$2: int;
  var v104$1: int;
  var v104$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
  var v34$1: int;
  var v34$2: int;
  var v35$1: int;
  var v35$2: int;
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
  var v20$1: int;
  var v20$2: int;
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
  var v36$1: int;
  var v36$2: int;
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
  var v57$1: int;
  var v57$2: int;
  var v58$1: bool;
  var v58$2: bool;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: bool;
  var v3$2: bool;
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
  var v98$1: int;
  var v98$2: int;
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
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v272$1: int;
  var v272$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: bool;
  var v106$2: bool;
  var v107$1: bool;
  var v107$2: bool;
  var v108$1: bool;
  var v108$2: bool;
  var v109$1: bool;
  var v109$2: bool;
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
  var v133$1: bool;
  var v133$2: bool;
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
  var v187$1: bool;
  var v187$2: bool;
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
  var v241$1: bool;
  var v241$2: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := group_id_x$1;
    v0$2 := group_id_x$2;
    v1$1 := local_id_x$1;
    v1$2 := local_id_x$2;
    v2$1 := v0$1 == 0;
    v2$2 := v0$2 == 0;
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
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    p13$1 := (if !v2$1 then !v2$1 else p13$1);
    p13$2 := (if !v2$2 then !v2$2 else p13$2);
    v3$1 := (if p0$1 then v1$1 == 0 else v3$1);
    v3$2 := (if p0$2 then v1$2 == 0 else v3$2);
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    v4$1 := (if p1$1 then SI32_TO_FP32($timeinst) else v4$1);
    v4$2 := (if p1$2 then SI32_TO_FP32($timeinst) else v4$2);
    v5$1 := (if p1$1 then $$d_params[15] else v5$1);
    v5$2 := (if p1$2 then $$d_params[15] else v5$2);
    v6$1 := (if p1$1 then $$d_initvalu[0] else v6$1);
    v6$2 := (if p1$2 then $$d_initvalu[0] else v6$2);
    v7$1 := (if p1$1 then $$d_initvalu[1] else v7$1);
    v7$2 := (if p1$2 then $$d_initvalu[1] else v7$2);
    v8$1 := (if p1$1 then $$d_initvalu[2] else v8$1);
    v8$2 := (if p1$2 then $$d_initvalu[2] else v8$2);
    v9$1 := (if p1$1 then $$d_initvalu[3] else v9$1);
    v9$2 := (if p1$2 then $$d_initvalu[3] else v9$2);
    v10$1 := (if p1$1 then $$d_initvalu[4] else v10$1);
    v10$2 := (if p1$2 then $$d_initvalu[4] else v10$2);
    v11$1 := (if p1$1 then $$d_initvalu[5] else v11$1);
    v11$2 := (if p1$2 then $$d_initvalu[5] else v11$2);
    v12$1 := (if p1$1 then $$d_initvalu[6] else v12$1);
    v12$2 := (if p1$2 then $$d_initvalu[6] else v12$2);
    v13$1 := (if p1$1 then $$d_initvalu[7] else v13$1);
    v13$2 := (if p1$2 then $$d_initvalu[7] else v13$2);
    v14$1 := (if p1$1 then $$d_initvalu[8] else v14$1);
    v14$2 := (if p1$2 then $$d_initvalu[8] else v14$2);
    v15$1 := (if p1$1 then $$d_initvalu[9] else v15$1);
    v15$2 := (if p1$2 then $$d_initvalu[9] else v15$2);
    v16$1 := (if p1$1 then $$d_initvalu[10] else v16$1);
    v16$2 := (if p1$2 then $$d_initvalu[10] else v16$2);
    v17$1 := (if p1$1 then $$d_initvalu[11] else v17$1);
    v17$2 := (if p1$2 then $$d_initvalu[11] else v17$2);
    v18$1 := (if p1$1 then $$d_initvalu[12] else v18$1);
    v18$2 := (if p1$2 then $$d_initvalu[12] else v18$2);
    v19$1 := (if p1$1 then $$d_initvalu[13] else v19$1);
    v19$2 := (if p1$2 then $$d_initvalu[13] else v19$2);
    v20$1 := (if p1$1 then $$d_initvalu[14] else v20$1);
    v20$2 := (if p1$2 then $$d_initvalu[14] else v20$2);
    v21$1 := (if p1$1 then $$d_initvalu[15] else v21$1);
    v21$2 := (if p1$2 then $$d_initvalu[15] else v21$2);
    v22$1 := (if p1$1 then $$d_initvalu[16] else v22$1);
    v22$2 := (if p1$2 then $$d_initvalu[16] else v22$2);
    v23$1 := (if p1$1 then $$d_initvalu[17] else v23$1);
    v23$2 := (if p1$2 then $$d_initvalu[17] else v23$2);
    v24$1 := (if p1$1 then $$d_initvalu[18] else v24$1);
    v24$2 := (if p1$2 then $$d_initvalu[18] else v24$2);
    v25$1 := (if p1$1 then $$d_initvalu[19] else v25$1);
    v25$2 := (if p1$2 then $$d_initvalu[19] else v25$2);
    v26$1 := (if p1$1 then $$d_initvalu[20] else v26$1);
    v26$2 := (if p1$2 then $$d_initvalu[20] else v26$2);
    v27$1 := (if p1$1 then $$d_initvalu[22] else v27$1);
    v27$2 := (if p1$2 then $$d_initvalu[22] else v27$2);
    v28$1 := (if p1$1 then $$d_initvalu[23] else v28$1);
    v28$2 := (if p1$2 then $$d_initvalu[23] else v28$2);
    v29$1 := (if p1$1 then $$d_initvalu[24] else v29$1);
    v29$2 := (if p1$2 then $$d_initvalu[24] else v29$2);
    v30$1 := (if p1$1 then $$d_initvalu[25] else v30$1);
    v30$2 := (if p1$2 then $$d_initvalu[25] else v30$2);
    v31$1 := (if p1$1 then $$d_initvalu[26] else v31$1);
    v31$2 := (if p1$2 then $$d_initvalu[26] else v31$2);
    v32$1 := (if p1$1 then $$d_initvalu[27] else v32$1);
    v32$2 := (if p1$2 then $$d_initvalu[27] else v32$2);
    v33$1 := (if p1$1 then $$d_initvalu[28] else v33$1);
    v33$2 := (if p1$2 then $$d_initvalu[28] else v33$2);
    v34$1 := (if p1$1 then $$d_initvalu[29] else v34$1);
    v34$2 := (if p1$2 then $$d_initvalu[29] else v34$2);
    v35$1 := (if p1$1 then $$d_initvalu[30] else v35$1);
    v35$2 := (if p1$2 then $$d_initvalu[30] else v35$2);
    v36$1 := (if p1$1 then $$d_initvalu[31] else v36$1);
    v36$2 := (if p1$2 then $$d_initvalu[31] else v36$2);
    v37$1 := (if p1$1 then $$d_initvalu[32] else v37$1);
    v37$2 := (if p1$2 then $$d_initvalu[32] else v37$2);
    v38$1 := (if p1$1 then $$d_initvalu[33] else v38$1);
    v38$2 := (if p1$2 then $$d_initvalu[33] else v38$2);
    v39$1 := (if p1$1 then $$d_initvalu[34] else v39$1);
    v39$2 := (if p1$2 then $$d_initvalu[34] else v39$2);
    v40$1 := (if p1$1 then $$d_initvalu[35] else v40$1);
    v40$2 := (if p1$2 then $$d_initvalu[35] else v40$2);
    v41$1 := (if p1$1 then $$d_initvalu[36] else v41$1);
    v41$2 := (if p1$2 then $$d_initvalu[36] else v41$2);
    v42$1 := (if p1$1 then $$d_initvalu[37] else v42$1);
    v42$2 := (if p1$2 then $$d_initvalu[37] else v42$2);
    v43$1 := (if p1$1 then $$d_initvalu[38] else v43$1);
    v43$2 := (if p1$2 then $$d_initvalu[38] else v43$2);
    v44$1 := (if p1$1 then $$d_initvalu[39] else v44$1);
    v44$2 := (if p1$2 then $$d_initvalu[39] else v44$2);
    v45$1 := (if p1$1 then FDIV32(FDIV32(1203532416, 1174530048), 1134231552) else v45$1);
    v45$2 := (if p1$2 then FDIV32(FDIV32(1203532416, 1174530048), 1134231552) else v45$2);
    v46$1 := (if p1$1 then FDIV32(FSUB32(1134231552, 1134231552), 1092616192) else v46$1);
    v46$2 := (if p1$2 then FDIV32(FSUB32(1134231552, 1134231552), 1092616192) else v46$2);
    v47$1 := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(1078530041, FPOW32(1092878336, 1073741824)), 1120403456)), 4382569440205035030)) else v47$1);
    v47$2 := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(1078530041, FPOW32(1092878336, 1073741824)), 1120403456)), 4382569440205035030)) else v47$2);
    v48$1 := (if p1$1 then FP64_CONV32(FMUL64(4604029899060858061, FP32_CONV64(v47$1))) else v48$1);
    v48$2 := (if p1$2 then FP64_CONV32(FMUL64(4604029899060858061, FP32_CONV64(v47$2))) else v48$2);
    v49$1 := (if p1$1 then FP64_CONV32(FMUL64(4585204852618449388, FP32_CONV64(v47$1))) else v49$1);
    v49$2 := (if p1$2 then FP64_CONV32(FMUL64(4585204852618449388, FP32_CONV64(v47$2))) else v49$2);
    v50$1 := (if p1$1 then FP64_CONV32(FMUL64(4581421828931458171, FP32_CONV64(v47$1))) else v50$1);
    v50$2 := (if p1$2 then FP64_CONV32(FMUL64(4581421828931458171, FP32_CONV64(v47$2))) else v50$2);
    v51$1 := (if p1$1 then FP64_CONV32(FMUL64(4558110620799436181, FP32_CONV64(v47$1))) else v51$1);
    v51$2 := (if p1$2 then FP64_CONV32(FMUL64(4558110620799436181, FP32_CONV64(v47$2))) else v51$2);
    v52$1 := (if p1$1 then FSUB32(1065353216, 1038174126) else v52$1);
    v52$2 := (if p1$2 then FSUB32(1065353216, 1038174126) else v52$2);
    v53$1 := (if p1$1 then FSUB32(1065353216, 1063675494) else v53$1);
    v53$2 := (if p1$2 then FSUB32(1065353216, 1063675494) else v53$2);
    v54$1 := (if p1$1 then FMUL32(FDIV32(1065353216, v45$1), FMUL32(FLOG32(FDIV32(1124859904, v36$1)), 1060205080)) else v54$1);
    v54$2 := (if p1$2 then FMUL32(FDIV32(1065353216, v45$2), FMUL32(FLOG32(FDIV32(1124859904, v36$2)), 1060205080)) else v54$2);
    v55$1 := (if p1$1 then FMUL32(FDIV32(1065353216, v45$1), FMUL32(FLOG32(FDIV32(1124859904, v37$1)), 1060205080)) else v55$1);
    v55$2 := (if p1$2 then FMUL32(FDIV32(1065353216, v45$2), FMUL32(FLOG32(FDIV32(1124859904, v37$2)), 1060205080)) else v55$2);
    v56$1 := (if p1$1 then FMUL32(FDIV32(1065353216, v45$1), FMUL32(FLOG32(FDIV32(1085066445, v39$1)), 1060205080)) else v56$1);
    v56$2 := (if p1$2 then FMUL32(FDIV32(1065353216, v45$2), FMUL32(FLOG32(FDIV32(1085066445, v39$2)), 1060205080)) else v56$2);
    v57$1 := (if p1$1 then FMUL32(FDIV32(1065353216, v45$1), FMUL32(FLOG32(FDIV32(1097859072, 1125515264)), 1060205080)) else v57$1);
    v57$2 := (if p1$2 then FMUL32(FDIV32(1065353216, v45$2), FMUL32(FLOG32(FDIV32(1097859072, 1125515264)), 1060205080)) else v57$2);
    v58$1 := (if p1$1 then FEQ32(v43$1, -1038090240) || FLT32(-1038090240, v43$1) else v58$1);
    v58$2 := (if p1$2 then FEQ32(v43$2, -1038090240) || FLT32(-1038090240, v43$2) else v58$2);
    p2$1 := (if p1$1 && v58$1 then v58$1 else p2$1);
    p2$2 := (if p1$2 && v58$2 then v58$2 else p2$2);
    p3$1 := (if p1$1 && !v58$1 then !v58$1 else p3$1);
    p3$2 := (if p1$2 && !v58$2 then !v58$2 else p3$2);
    $ah.i.0$1, $bh.i.0$1, $aj.i.0$1, $bj.i.0$1 := (if p2$1 then 0 else $ah.i.0$1), (if p2$1 then FP64_CONV32(FDIV64(4607182418800017408, FMUL64(4593851763903000740, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$1), 4622190664558229586)), 4622438362537734963), 4609176140021203710)))))) else $bh.i.0$1), (if p2$1 then 0 else $aj.i.0$1), (if p2$1 then FP64_CONV32(FDIV64(FMUL64(4599075939470750515, FEXP64(FMUL64(FMUL64(-4714983929870649988, FP32_CONV64(v43$1)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FP32_CONV64(FADD32(v43$1, 1107296256))), 4609176140021203710))))) else $bj.i.0$1);
    $ah.i.0$2, $bh.i.0$2, $aj.i.0$2, $bj.i.0$2 := (if p2$2 then 0 else $ah.i.0$2), (if p2$2 then FP64_CONV32(FDIV64(4607182418800017408, FMUL64(4593851763903000740, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$2), 4622190664558229586)), 4622438362537734963), 4609176140021203710)))))) else $bh.i.0$2), (if p2$2 then 0 else $aj.i.0$2), (if p2$2 then FP64_CONV32(FDIV64(FMUL64(4599075939470750515, FEXP64(FMUL64(FMUL64(-4714983929870649988, FP32_CONV64(v43$2)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FP32_CONV64(FADD32(v43$2, 1107296256))), 4609176140021203710))))) else $bj.i.0$2);
    $ah.i.0$1, $bh.i.0$1, $aj.i.0$1, $bj.i.0$1 := (if p3$1 then FP64_CONV32(FMUL64(4594031907888095560, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(1117782016, v43$1)), -4604029899060858061), 4609176140021203710)))) else $ah.i.0$1), (if p3$1 then FP64_CONV32(FADD64(FMUL64(4615198826136736891, FEXP64(FMUL64(FMUL64(4590356970592161235, FP32_CONV64(v43$1)), 4609176140021203710))), FMUL64(4689069371912355840, FEXP64(FMUL64(FMUL64(4599976659396224614, FP32_CONV64(v43$1)), 4609176140021203710))))) else $bh.i.0$1), (if p3$1 then FP64_CONV32(FDIV64(FMUL64(FADD64(FMUL64(-4539898629371985920, FEXP64(FMUL64(FMUL64(4597973458281970218, FP32_CONV64(v43$1)), 4609176140021203710))), FSUB64(-9223372036854775808, FMUL64(4540251543875054831, FEXP64(FMUL64(FMUL64(-4636883117910570545, FP32_CONV64(v43$1)), 4609176140021203710))))), FADD64(FP32_CONV64(v43$1), 4630513879619563684)), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(4599274097854354817, FADD64(FP32_CONV64(v43$1), 4635275732538066207)), 4609176140021203710))))) else $aj.i.0$1), (if p3$1 then FP64_CONV32(FDIV64(FMUL64(4593397801060561794, FEXP64(FMUL64(FMUL64(-4646154047959490353, FP32_CONV64(v43$1)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629239248335027149, FADD64(FP32_CONV64(v43$1), 4630846020092082258)), 4609176140021203710))))) else $bj.i.0$1);
    $ah.i.0$2, $bh.i.0$2, $aj.i.0$2, $bj.i.0$2 := (if p3$2 then FP64_CONV32(FMUL64(4594031907888095560, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(1117782016, v43$2)), -4604029899060858061), 4609176140021203710)))) else $ah.i.0$2), (if p3$2 then FP64_CONV32(FADD64(FMUL64(4615198826136736891, FEXP64(FMUL64(FMUL64(4590356970592161235, FP32_CONV64(v43$2)), 4609176140021203710))), FMUL64(4689069371912355840, FEXP64(FMUL64(FMUL64(4599976659396224614, FP32_CONV64(v43$2)), 4609176140021203710))))) else $bh.i.0$2), (if p3$2 then FP64_CONV32(FDIV64(FMUL64(FADD64(FMUL64(-4539898629371985920, FEXP64(FMUL64(FMUL64(4597973458281970218, FP32_CONV64(v43$2)), 4609176140021203710))), FSUB64(-9223372036854775808, FMUL64(4540251543875054831, FEXP64(FMUL64(FMUL64(-4636883117910570545, FP32_CONV64(v43$2)), 4609176140021203710))))), FADD64(FP32_CONV64(v43$2), 4630513879619563684)), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(4599274097854354817, FADD64(FP32_CONV64(v43$2), 4635275732538066207)), 4609176140021203710))))) else $aj.i.0$2), (if p3$2 then FP64_CONV32(FDIV64(FMUL64(4593397801060561794, FEXP64(FMUL64(FMUL64(-4646154047959490353, FP32_CONV64(v43$2)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629239248335027149, FADD64(FP32_CONV64(v43$2), 4630846020092082258)), 4609176140021203710))))) else $bj.i.0$2);
    call {:sourceloc} {:sourceloc_num 46} _LOG_WRITE_$$d_finavalu(p1$1, 0, FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(4599436227440940155, FADD64(FP32_CONV64(v43$1), 4631829775135686001)), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FADD64(FP32_CONV64(v43$1), 4631829775135686001)), 4609176140021203710))))), FSUB32(1065353216, v6$1)), FSUB32(-2147483648, FMUL32(FP64_CONV32(FMUL64(4590429028186199163, FP32_CONV64(FEXP32(FMUL32(FDIV32(FSUB32(-2147483648, v43$1), 1093664768), 1069066811))))), v6$1))), $$d_finavalu[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_48"} {:captureState "check_state_48"} {:sourceloc} {:sourceloc_num 46} true;
    call {:check_id "check_state_48"} {:sourceloc} {:sourceloc_num 46} _CHECK_WRITE_$$d_finavalu(p1$2, 0, FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(4599436227440940155, FADD64(FP32_CONV64(v43$2), 4631829775135686001)), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FADD64(FP32_CONV64(v43$2), 4631829775135686001)), 4609176140021203710))))), FSUB32(1065353216, v6$2)), FSUB32(-2147483648, FMUL32(FP64_CONV32(FMUL64(4590429028186199163, FP32_CONV64(FEXP32(FMUL32(FDIV32(FSUB32(-2147483648, v43$2), 1093664768), 1069066811))))), v6$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[0] := (if p1$1 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(4599436227440940155, FADD64(FP32_CONV64(v43$1), 4631829775135686001)), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FADD64(FP32_CONV64(v43$1), 4631829775135686001)), 4609176140021203710))))), FSUB32(1065353216, v6$1)), FSUB32(-2147483648, FMUL32(FP64_CONV32(FMUL64(4590429028186199163, FP32_CONV64(FEXP32(FMUL32(FDIV32(FSUB32(-2147483648, v43$1), 1093664768), 1069066811))))), v6$1))) else $$d_finavalu[0]);
    $$d_finavalu[0] := (if p1$2 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(4599436227440940155, FADD64(FP32_CONV64(v43$2), 4631829775135686001)), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4631501856787818086, FADD64(FP32_CONV64(v43$2), 4631829775135686001)), 4609176140021203710))))), FSUB32(1065353216, v6$2)), FSUB32(-2147483648, FMUL32(FP64_CONV32(FMUL64(4590429028186199163, FP32_CONV64(FEXP32(FMUL32(FDIV32(FSUB32(-2147483648, v43$2), 1093664768), 1069066811))))), v6$2))) else $$d_finavalu[0]);
    call {:sourceloc} {:sourceloc_num 47} _LOG_WRITE_$$d_finavalu(p1$1, 1, FADD32(FMUL32($ah.i.0$1, FSUB32(1065353216, v7$1)), FSUB32(-2147483648, FMUL32($bh.i.0$1, v7$1))), $$d_finavalu[1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 1);
    assume {:do_not_predicate} {:check_id "check_state_49"} {:captureState "check_state_49"} {:sourceloc} {:sourceloc_num 47} true;
    call {:check_id "check_state_49"} {:sourceloc} {:sourceloc_num 47} _CHECK_WRITE_$$d_finavalu(p1$2, 1, FADD32(FMUL32($ah.i.0$2, FSUB32(1065353216, v7$2)), FSUB32(-2147483648, FMUL32($bh.i.0$2, v7$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[1] := (if p1$1 then FADD32(FMUL32($ah.i.0$1, FSUB32(1065353216, v7$1)), FSUB32(-2147483648, FMUL32($bh.i.0$1, v7$1))) else $$d_finavalu[1]);
    $$d_finavalu[1] := (if p1$2 then FADD32(FMUL32($ah.i.0$2, FSUB32(1065353216, v7$2)), FSUB32(-2147483648, FMUL32($bh.i.0$2, v7$2))) else $$d_finavalu[1]);
    call {:sourceloc} {:sourceloc_num 48} _LOG_WRITE_$$d_finavalu(p1$1, 2, FADD32(FMUL32($aj.i.0$1, FSUB32(1065353216, v8$1)), FSUB32(-2147483648, FMUL32($bj.i.0$1, v8$1))), $$d_finavalu[2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 2);
    assume {:do_not_predicate} {:check_id "check_state_50"} {:captureState "check_state_50"} {:sourceloc} {:sourceloc_num 48} true;
    call {:check_id "check_state_50"} {:sourceloc} {:sourceloc_num 48} _CHECK_WRITE_$$d_finavalu(p1$2, 2, FADD32(FMUL32($aj.i.0$2, FSUB32(1065353216, v8$2)), FSUB32(-2147483648, FMUL32($bj.i.0$2, v8$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[2] := (if p1$1 then FADD32(FMUL32($aj.i.0$1, FSUB32(1065353216, v8$1)), FSUB32(-2147483648, FMUL32($bj.i.0$1, v8$1))) else $$d_finavalu[2]);
    $$d_finavalu[2] := (if p1$2 then FADD32(FMUL32($aj.i.0$2, FSUB32(1065353216, v8$2)), FSUB32(-2147483648, FMUL32($bj.i.0$2, v8$2))) else $$d_finavalu[2]);
    v59$1 := (if p1$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(FMUL64(4585421025400563171, FP32_CONV64(FP64_CONV32(FDIV64(FSUB64(FEXP64(FMUL64(FDIV64(FP32_CONV64(1124859904), 4634436233420026675), 4609176140021203710)), 4607182418800017408), 4619567317775286272)))), FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v43$1), v45$1), 1069066811)))), FADD64(FMUL64(4593635591120886956, FEXP64(FMUL64(FMUL64(FMUL64(-4631501856787818086, FP32_CONV64(v43$1)), FP32_CONV64(v45$1)), 4609176140021203710))), 4607182418800017408)))) else v59$1);
    v59$2 := (if p1$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(FMUL64(4585421025400563171, FP32_CONV64(FP64_CONV32(FDIV64(FSUB64(FEXP64(FMUL64(FDIV64(FP32_CONV64(1124859904), 4634436233420026675), 4609176140021203710)), 4607182418800017408), 4619567317775286272)))), FP32_CONV64(FEXP32(FMUL32(FMUL32(FSUB32(-2147483648, v43$2), v45$2), 1069066811)))), FADD64(FMUL64(4593635591120886956, FEXP64(FMUL64(FMUL64(FMUL64(-4631501856787818086, FP32_CONV64(v43$2)), FP32_CONV64(v45$2)), 4609176140021203710))), 4607182418800017408)))) else v59$2);
    v60$1 := (if p1$1 then FDIV32(FDIV32(FMUL32(FMUL32(FMUL32(1038174126, 1072963277), v59$1), 1085066445), FADD32(1065353216, FPOW32(FDIV32(1093664768, v36$1), 1082130432))), FADD32(1085066445, 1069547520)) else v60$1);
    v60$2 := (if p1$2 then FDIV32(FDIV32(FMUL32(FMUL32(FMUL32(1038174126, 1072963277), v59$2), 1085066445), FADD32(1065353216, FPOW32(FDIV32(1093664768, v36$2), 1082130432))), FADD32(1085066445, 1069547520)) else v60$2);
    v61$1 := (if p1$1 then FDIV32(FDIV32(FMUL32(FMUL32(FMUL32(v52$1, 1072963277), v59$1), 1085066445), FADD32(1065353216, FPOW32(FDIV32(1093664768, v37$1), 1082130432))), FADD32(1085066445, 1069547520)) else v61$1);
    v61$2 := (if p1$2 then FDIV32(FDIV32(FMUL32(FMUL32(FMUL32(v52$2, 1072963277), v59$2), 1085066445), FADD32(1065353216, FPOW32(FDIV32(1093664768, v37$2), 1082130432))), FADD32(1085066445, 1069547520)) else v61$2);
    call {:sourceloc} {:sourceloc_num 49} _LOG_WRITE_$$d_finavalu(p1$1, 11, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FSUB32(-2147483648, FADD32(v43$1, 1112014848))), 4620130267728707584), 4609176140021203710))))), v17$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4564006949604371747, FP32_CONV64(FADD32(v43$1, 1088421888))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629844532124945744, FP32_CONV64(FADD32(v43$1, 1088421888))), 4609176140021203710)))), FDIV64(FMUL64(4558765480214052869, FP32_CONV64(FADD32(v43$1, 1092616192))), FSUB64(FEXP64(FMUL64(FMUL64(4594392195858285199, FP32_CONV64(FADD32(v43$1, 1092616192))), 4609176140021203710)), 4607182418800017408)))))), $$d_finavalu[11]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 11);
    assume {:do_not_predicate} {:check_id "check_state_51"} {:captureState "check_state_51"} {:sourceloc} {:sourceloc_num 49} true;
    call {:check_id "check_state_51"} {:sourceloc} {:sourceloc_num 49} _CHECK_WRITE_$$d_finavalu(p1$2, 11, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FSUB32(-2147483648, FADD32(v43$2, 1112014848))), 4620130267728707584), 4609176140021203710))))), v17$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4564006949604371747, FP32_CONV64(FADD32(v43$2, 1088421888))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629844532124945744, FP32_CONV64(FADD32(v43$2, 1088421888))), 4609176140021203710)))), FDIV64(FMUL64(4558765480214052869, FP32_CONV64(FADD32(v43$2, 1092616192))), FSUB64(FEXP64(FMUL64(FMUL64(4594392195858285199, FP32_CONV64(FADD32(v43$2, 1092616192))), 4609176140021203710)), 4607182418800017408)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[11] := (if p1$1 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FSUB32(-2147483648, FADD32(v43$1, 1112014848))), 4620130267728707584), 4609176140021203710))))), v17$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4564006949604371747, FP32_CONV64(FADD32(v43$1, 1088421888))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629844532124945744, FP32_CONV64(FADD32(v43$1, 1088421888))), 4609176140021203710)))), FDIV64(FMUL64(4558765480214052869, FP32_CONV64(FADD32(v43$1, 1092616192))), FSUB64(FEXP64(FMUL64(FMUL64(4594392195858285199, FP32_CONV64(FADD32(v43$1, 1092616192))), 4609176140021203710)), 4607182418800017408)))))) else $$d_finavalu[11]);
    $$d_finavalu[11] := (if p1$2 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FSUB32(-2147483648, FADD32(v43$2, 1112014848))), 4620130267728707584), 4609176140021203710))))), v17$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4564006949604371747, FP32_CONV64(FADD32(v43$2, 1088421888))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4629844532124945744, FP32_CONV64(FADD32(v43$2, 1088421888))), 4609176140021203710)))), FDIV64(FMUL64(4558765480214052869, FP32_CONV64(FADD32(v43$2, 1092616192))), FSUB64(FEXP64(FMUL64(FMUL64(4594392195858285199, FP32_CONV64(FADD32(v43$2, 1092616192))), 4609176140021203710)), 4607182418800017408)))))) else $$d_finavalu[11]);
    call {:sourceloc_num 50} v62$1, v62$2 := $__log10_float(p1$1, v40$1, p1$2, v40$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    call {:sourceloc_num 51} v63$1, v63$2 := $__log10_float(p1$1, v41$1, p1$2, v41$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$__log10_float"} true;
    v64$1 := (if p1$1 then FMUL32(FDIV32(1065353216, v45$1), FMUL32(FLOG32(FDIV32(FADD32(FMUL32(1016473804, 1124859904), 1085066445), FADD32(FMUL32(1016473804, v38$1), v39$1))), 1060205080)) else v64$1);
    v64$2 := (if p1$2 then FMUL32(FDIV32(1065353216, v45$2), FMUL32(FLOG32(FDIV32(FADD32(FMUL32(1016473804, 1124859904), 1085066445), FADD32(FMUL32(1016473804, v38$2), v39$2))), 1060205080)) else v64$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$d_finavalu(p1$1, 12, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FSUB64(FP32_CONV64(v43$1), 4609434218613702656)), 4625393849793196851), 4609176140021203710))))), v18$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4544933707985058835, FP32_CONV64(FADD32(v43$1, 1106247680))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4628871754605433717, FP32_CONV64(FADD32(v43$1, 1106247680))), 4609176140021203710)))), FDIV64(FMUL64(4548965070964142367, FP32_CONV64(FADD32(v43$1, 1106247680))), FSUB64(FEXP64(FMUL64(FMUL64(4589614777373570577, FP32_CONV64(FADD32(v43$1, 1106247680))), 4609176140021203710)), 4607182418800017408)))))), $$d_finavalu[12]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 12);
    assume {:do_not_predicate} {:check_id "check_state_52"} {:captureState "check_state_52"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_52"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$d_finavalu(p1$2, 12, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FSUB64(FP32_CONV64(v43$2), 4609434218613702656)), 4625393849793196851), 4609176140021203710))))), v18$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4544933707985058835, FP32_CONV64(FADD32(v43$2, 1106247680))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4628871754605433717, FP32_CONV64(FADD32(v43$2, 1106247680))), 4609176140021203710)))), FDIV64(FMUL64(4548965070964142367, FP32_CONV64(FADD32(v43$2, 1106247680))), FSUB64(FEXP64(FMUL64(FMUL64(4589614777373570577, FP32_CONV64(FADD32(v43$2, 1106247680))), 4609176140021203710)), 4607182418800017408)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[12] := (if p1$1 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FSUB64(FP32_CONV64(v43$1), 4609434218613702656)), 4625393849793196851), 4609176140021203710))))), v18$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4544933707985058835, FP32_CONV64(FADD32(v43$1, 1106247680))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4628871754605433717, FP32_CONV64(FADD32(v43$1, 1106247680))), 4609176140021203710)))), FDIV64(FMUL64(4548965070964142367, FP32_CONV64(FADD32(v43$1, 1106247680))), FSUB64(FEXP64(FMUL64(FMUL64(4589614777373570577, FP32_CONV64(FADD32(v43$1, 1106247680))), 4609176140021203710)), 4607182418800017408)))))) else $$d_finavalu[12]);
    $$d_finavalu[12] := (if p1$2 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FSUB64(FP32_CONV64(v43$2), 4609434218613702656)), 4625393849793196851), 4609176140021203710))))), v18$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FDIV64(FMUL64(4544933707985058835, FP32_CONV64(FADD32(v43$2, 1106247680))), FSUB64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4628871754605433717, FP32_CONV64(FADD32(v43$2, 1106247680))), 4609176140021203710)))), FDIV64(FMUL64(4548965070964142367, FP32_CONV64(FADD32(v43$2, 1106247680))), FSUB64(FEXP64(FMUL64(FMUL64(4589614777373570577, FP32_CONV64(FADD32(v43$2, 1106247680))), 4609176140021203710)), 4607182418800017408)))))) else $$d_finavalu[12]);
    v65$1 := (if p1$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FSUB64(4620116756929825473, FDIV64(FP32_CONV64(v43$1), 4618418899870306796)), 4609176140021203710))))) else v65$1);
    v65$2 := (if p1$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FSUB64(4620116756929825473, FDIV64(FP32_CONV64(v43$2), 4618418899870306796)), 4609176140021203710))))) else v65$2);
    v66$1 := (if p1$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$1), 4613937818241073152)), 4624633867356078080), 4609176140021203710))))) else v66$1);
    v66$2 := (if p1$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$2), 4613937818241073152)), 4624633867356078080), 4609176140021203710))))) else v66$2);
    v67$1 := (if p1$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4629911523169402880), 4621819117588971520), 4609176140021203710))))) else v67$1);
    v67$2 := (if p1$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4629911523169402880), 4621819117588971520), 4609176140021203710))))) else v67$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_WRITE_$$d_finavalu(p1$1, 7, FDIV32(FSUB32(v66$1, v13$1), FP64_CONV32(FADD64(FDIV64(4621256167635550208, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4613937818241073152), 4624633867356078080), 4609176140021203710)))), 4602678819172646912))), $$d_finavalu[7]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 7);
    assume {:do_not_predicate} {:check_id "check_state_53"} {:captureState "check_state_53"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_53"} {:sourceloc} {:sourceloc_num 53} _CHECK_WRITE_$$d_finavalu(p1$2, 7, FDIV32(FSUB32(v66$2, v13$2), FP64_CONV32(FADD64(FDIV64(4621256167635550208, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4613937818241073152), 4624633867356078080), 4609176140021203710)))), 4602678819172646912))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[7] := (if p1$1 then FDIV32(FSUB32(v66$1, v13$1), FP64_CONV32(FADD64(FDIV64(4621256167635550208, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4613937818241073152), 4624633867356078080), 4609176140021203710)))), 4602678819172646912))) else $$d_finavalu[7]);
    $$d_finavalu[7] := (if p1$2 then FDIV32(FSUB32(v66$2, v13$2), FP64_CONV32(FADD64(FDIV64(4621256167635550208, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4613937818241073152), 4624633867356078080), 4609176140021203710)))), 4602678819172646912))) else $$d_finavalu[7]);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$d_finavalu(p1$1, 8, FDIV32(FSUB32(v67$1, v14$1), FP64_CONV32(FADD64(FDIV64(4658815484840378368, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4629137466983448576))), $$d_finavalu[8]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 8);
    assume {:do_not_predicate} {:check_id "check_state_54"} {:captureState "check_state_54"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_54"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$d_finavalu(p1$2, 8, FDIV32(FSUB32(v67$2, v14$2), FP64_CONV32(FADD64(FDIV64(4658815484840378368, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4629137466983448576))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[8] := (if p1$1 then FDIV32(FSUB32(v67$1, v14$1), FP64_CONV32(FADD64(FDIV64(4658815484840378368, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4629137466983448576))) else $$d_finavalu[8]);
    $$d_finavalu[8] := (if p1$2 then FDIV32(FSUB32(v67$2, v14$2), FP64_CONV32(FADD64(FDIV64(4658815484840378368, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4629137466983448576))) else $$d_finavalu[8]);
    call {:sourceloc} {:sourceloc_num 55} _LOG_WRITE_$$d_finavalu(p1$1, 39, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4629911523169402880), 4621819117588971520), 4609176140021203710))))), v44$1), FP64_CONV32(FADD64(FDIV64(4658375680189267968, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4641944578423783424))), $$d_finavalu[39]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 39);
    assume {:do_not_predicate} {:check_id "check_state_55"} {:captureState "check_state_55"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_55"} {:sourceloc} {:sourceloc_num 55} _CHECK_WRITE_$$d_finavalu(p1$2, 39, FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4629911523169402880), 4621819117588971520), 4609176140021203710))))), v44$2), FP64_CONV32(FADD64(FDIV64(4658375680189267968, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4641944578423783424))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[39] := (if p1$1 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4629911523169402880), 4621819117588971520), 4609176140021203710))))), v44$1), FP64_CONV32(FADD64(FDIV64(4658375680189267968, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4641944578423783424))) else $$d_finavalu[39]);
    $$d_finavalu[39] := (if p1$2 then FDIV32(FSUB32(FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4629911523169402880), 4621819117588971520), 4609176140021203710))))), v44$2), FP64_CONV32(FADD64(FDIV64(4658375680189267968, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4633641066610819072), 4621819117588971520), 4609176140021203710)))), 4641944578423783424))) else $$d_finavalu[39]);
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$d_finavalu(p1$1, 9, FDIV32(FSUB32(v66$1, v15$1), FP64_CONV32(FADD64(FMUL64(4615063718147915776, FP32_CONV64(FEXP32(FMUL32(FDIV32(FDIV32(FMUL32(FSUB32(-2147483648, v43$1), v43$1), 1106247680), 1106247680), 1069066811)))), 4609434218613702656))), $$d_finavalu[9]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 9);
    assume {:do_not_predicate} {:check_id "check_state_56"} {:captureState "check_state_56"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_56"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$d_finavalu(p1$2, 9, FDIV32(FSUB32(v66$2, v15$2), FP64_CONV32(FADD64(FMUL64(4615063718147915776, FP32_CONV64(FEXP32(FMUL32(FDIV32(FDIV32(FMUL32(FSUB32(-2147483648, v43$2), v43$2), 1106247680), 1106247680), 1069066811)))), 4609434218613702656))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[9] := (if p1$1 then FDIV32(FSUB32(v66$1, v15$1), FP64_CONV32(FADD64(FMUL64(4615063718147915776, FP32_CONV64(FEXP32(FMUL32(FDIV32(FDIV32(FMUL32(FSUB32(-2147483648, v43$1), v43$1), 1106247680), 1106247680), 1069066811)))), 4609434218613702656))) else $$d_finavalu[9]);
    $$d_finavalu[9] := (if p1$2 then FDIV32(FSUB32(v66$2, v15$2), FP64_CONV32(FADD64(FMUL64(4615063718147915776, FP32_CONV64(FEXP32(FMUL32(FDIV32(FDIV32(FMUL32(FSUB32(-2147483648, v43$2), v43$2), 1106247680), 1106247680), 1069066811)))), 4609434218613702656))) else $$d_finavalu[9]);
    call {:sourceloc} {:sourceloc_num 57} _LOG_WRITE_$$d_finavalu(p1$1, 10, FDIV32(FSUB32(v67$1, v16$1), FP64_CONV32(FADD64(FDIV64(4626322717216342016, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4629911523169402880), 4621819117588971520), 4609176140021203710)))), 4626322717216342016))), $$d_finavalu[10]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 10);
    assume {:do_not_predicate} {:check_id "check_state_57"} {:captureState "check_state_57"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_57"} {:sourceloc} {:sourceloc_num 57} _CHECK_WRITE_$$d_finavalu(p1$2, 10, FDIV32(FSUB32(v67$2, v16$2), FP64_CONV32(FADD64(FDIV64(4626322717216342016, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4629911523169402880), 4621819117588971520), 4609176140021203710)))), 4626322717216342016))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[10] := (if p1$1 then FDIV32(FSUB32(v67$1, v16$1), FP64_CONV32(FADD64(FDIV64(4626322717216342016, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4629911523169402880), 4621819117588971520), 4609176140021203710)))), 4626322717216342016))) else $$d_finavalu[10]);
    $$d_finavalu[10] := (if p1$2 then FDIV32(FSUB32(v67$2, v16$2), FP64_CONV32(FADD64(FDIV64(4626322717216342016, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4629911523169402880), 4621819117588971520), 4609176140021203710)))), 4626322717216342016))) else $$d_finavalu[10]);
    v68$1 := (if p1$1 then FP64_CONV32(FDIV64(4607272490792564818, FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(4597760888379558330, FSUB64(FP32_CONV64(FSUB32(v43$1, v56$1)), 4633530587682460140)), 4609176140021203710))))) else v68$1);
    v68$2 := (if p1$2 then FP64_CONV32(FDIV64(4607272490792564818, FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(4597760888379558330, FSUB64(FP32_CONV64(FSUB32(v43$2, v56$2)), 4633530587682460140)), 4609176140021203710))))) else v68$2);
    v69$1 := (if p1$1 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$1), 4624352392379367424)), 4618441417868443648), 4609176140021203710))))) else v69$1);
    v69$2 := (if p1$2 then FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$2), 4624352392379367424)), 4618441417868443648), 4609176140021203710))))) else v69$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_WRITE_$$d_finavalu(p1$1, 3, FDIV32(FSUB32(v69$1, v9$1), FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(v69$1), FSUB64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$1), 4624352392379367424)), 4618441417868443648), 4609176140021203710)))), FMUL64(4585204852618449388, FADD64(FP32_CONV64(v43$1), 4624352392379367424))))), $$d_finavalu[3]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 3);
    assume {:do_not_predicate} {:check_id "check_state_58"} {:captureState "check_state_58"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_58"} {:sourceloc} {:sourceloc_num 58} _CHECK_WRITE_$$d_finavalu(p1$2, 3, FDIV32(FSUB32(v69$2, v9$2), FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(v69$2), FSUB64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$2), 4624352392379367424)), 4618441417868443648), 4609176140021203710)))), FMUL64(4585204852618449388, FADD64(FP32_CONV64(v43$2), 4624352392379367424))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[3] := (if p1$1 then FDIV32(FSUB32(v69$1, v9$1), FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(v69$1), FSUB64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$1), 4624352392379367424)), 4618441417868443648), 4609176140021203710)))), FMUL64(4585204852618449388, FADD64(FP32_CONV64(v43$1), 4624352392379367424))))) else $$d_finavalu[3]);
    $$d_finavalu[3] := (if p1$2 then FDIV32(FSUB32(v69$2, v9$2), FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(v69$2), FSUB64(4607182418800017408, FEXP64(FMUL64(FDIV64(FSUB64(-9223372036854775808, FADD64(FP32_CONV64(v43$2), 4624352392379367424)), 4618441417868443648), 4609176140021203710)))), FMUL64(4585204852618449388, FADD64(FP32_CONV64(v43$2), 4624352392379367424))))) else $$d_finavalu[3]);
    call {:sourceloc} {:sourceloc_num 59} _LOG_WRITE_$$d_finavalu(p1$1, 4, FDIV32(FSUB32(FP64_CONV32(FADD64(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4630131073651237192), 4615288898129284301), 4609176140021203710)))), FDIV64(4603579539098121011, FP32_CONV64(FADD32(1065353216, FEXP32(FMUL32(FDIV32(FSUB32(1112014848, v43$1), 1101004800), 1069066811))))))), v10$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(4581335359818612657, FEXP64(FMUL64(FSUB64(-9223372036854775808, FPOW64(FMUL64(4585017502873950775, FADD64(FP32_CONV64(v43$1), 4624352392379367424)), 4611686018427387904)), 4609176140021203710))), 4581421828931458171)))), $$d_finavalu[4]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 4);
    assume {:do_not_predicate} {:check_id "check_state_59"} {:captureState "check_state_59"} {:sourceloc} {:sourceloc_num 59} true;
    call {:check_id "check_state_59"} {:sourceloc} {:sourceloc_num 59} _CHECK_WRITE_$$d_finavalu(p1$2, 4, FDIV32(FSUB32(FP64_CONV32(FADD64(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4630131073651237192), 4615288898129284301), 4609176140021203710)))), FDIV64(4603579539098121011, FP32_CONV64(FADD32(1065353216, FEXP32(FMUL32(FDIV32(FSUB32(1112014848, v43$2), 1101004800), 1069066811))))))), v10$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(4581335359818612657, FEXP64(FMUL64(FSUB64(-9223372036854775808, FPOW64(FMUL64(4585017502873950775, FADD64(FP32_CONV64(v43$2), 4624352392379367424)), 4611686018427387904)), 4609176140021203710))), 4581421828931458171)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[4] := (if p1$1 then FDIV32(FSUB32(FP64_CONV32(FADD64(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$1), 4630131073651237192), 4615288898129284301), 4609176140021203710)))), FDIV64(4603579539098121011, FP32_CONV64(FADD32(1065353216, FEXP32(FMUL32(FDIV32(FSUB32(1112014848, v43$1), 1101004800), 1069066811))))))), v10$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(4581335359818612657, FEXP64(FMUL64(FSUB64(-9223372036854775808, FPOW64(FMUL64(4585017502873950775, FADD64(FP32_CONV64(v43$1), 4624352392379367424)), 4611686018427387904)), 4609176140021203710))), 4581421828931458171)))) else $$d_finavalu[4]);
    $$d_finavalu[4] := (if p1$2 then FDIV32(FSUB32(FP64_CONV32(FADD64(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(FP32_CONV64(v43$2), 4630131073651237192), 4615288898129284301), 4609176140021203710)))), FDIV64(4603579539098121011, FP32_CONV64(FADD32(1065353216, FEXP32(FMUL32(FDIV32(FSUB32(1112014848, v43$2), 1101004800), 1069066811))))))), v10$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(FMUL64(4581335359818612657, FEXP64(FMUL64(FSUB64(-9223372036854775808, FPOW64(FMUL64(4585017502873950775, FADD64(FP32_CONV64(v43$2), 4624352392379367424)), 4611686018427387904)), 4609176140021203710))), 4581421828931458171)))) else $$d_finavalu[4]);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$d_finavalu(p1$1, 5, FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v40$1)), FP32_CONV64(FSUB32(1065353216, v11$1))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v11$1))))), $$d_finavalu[5]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 5);
    assume {:do_not_predicate} {:check_id "check_state_60"} {:captureState "check_state_60"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_60"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$d_finavalu(p1$2, 5, FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v40$2)), FP32_CONV64(FSUB32(1065353216, v11$2))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v11$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[5] := (if p1$1 then FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v40$1)), FP32_CONV64(FSUB32(1065353216, v11$1))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v11$1))))) else $$d_finavalu[5]);
    $$d_finavalu[5] := (if p1$2 then FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v40$2)), FP32_CONV64(FSUB32(1065353216, v11$2))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v11$2))))) else $$d_finavalu[5]);
    call {:sourceloc} {:sourceloc_num 61} _LOG_WRITE_$$d_finavalu(p1$1, 6, FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v41$1)), FP32_CONV64(FSUB32(1065353216, v12$1))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v12$1))))), $$d_finavalu[6]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 6);
    assume {:do_not_predicate} {:check_id "check_state_61"} {:captureState "check_state_61"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_61"} {:sourceloc} {:sourceloc_num 61} _CHECK_WRITE_$$d_finavalu(p1$2, 6, FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v41$2)), FP32_CONV64(FSUB32(1065353216, v12$2))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v12$2))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[6] := (if p1$1 then FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v41$1)), FP32_CONV64(FSUB32(1065353216, v12$1))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v12$1))))) else $$d_finavalu[6]);
    $$d_finavalu[6] := (if p1$2 then FP64_CONV32(FADD64(FMUL64(FMUL64(4610334938539176755, FP32_CONV64(v41$2)), FP32_CONV64(FSUB32(1065353216, v12$2))), FSUB64(-9223372036854775808, FMUL64(4578013504733464180, FP32_CONV64(v12$2))))) else $$d_finavalu[6]);
    v70$1 := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1063675494, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(FMUL32(973967049, 1082130432), FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4599814529809639277, FP32_CONV64(v40$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$1), v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4599814529809639277, FP32_CONV64(1072064102))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$1), v45$1), 1069066811)), 1065353216))))), v9$1), v10$1), FSUB32(1065353216, v11$1)), FPOW32(1072064102, v46$1))), 4601778099247172813)) else v70$1);
    v70$2 := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1063675494, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(FMUL32(973967049, 1082130432), FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4599814529809639277, FP32_CONV64(v40$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$2), v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4599814529809639277, FP32_CONV64(1072064102))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$2), v45$2), 1069066811)), 1065353216))))), v9$2), v10$2), FSUB32(1065353216, v11$2)), FPOW32(1072064102, v46$2))), 4601778099247172813)) else v70$2);
    v71$1 := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v53$1, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(FMUL32(973967049, 1082130432), FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4599814529809639277, FP32_CONV64(v41$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$1), v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4599814529809639277, FP32_CONV64(1072064102))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$1), v45$1), 1069066811)), 1065353216))))), v9$1), v10$1), FSUB32(1065353216, v12$1)), FPOW32(1072064102, v46$1))), 4601778099247172813)) else v71$1);
    v71$2 := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v53$2, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(FMUL32(973967049, 1082130432), FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4599814529809639277, FP32_CONV64(v41$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$2), v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4599814529809639277, FP32_CONV64(1072064102))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(FMUL32(1073741824, v43$2), v45$2), 1069066811)), 1065353216))))), v9$2), v10$2), FSUB32(1065353216, v12$2)), FPOW32(1072064102, v46$2))), 4601778099247172813)) else v71$2);
    call {:sourceloc} {:sourceloc_num 62} _LOG_WRITE_$$d_finavalu(p1$1, 42, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v70$1, v71$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)), $$d_finavalu[42]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 42);
    assume {:do_not_predicate} {:check_id "check_state_62"} {:captureState "check_state_62"} {:sourceloc} {:sourceloc_num 62} true;
    call {:check_id "check_state_62"} {:sourceloc} {:sourceloc_num 62} _CHECK_WRITE_$$d_finavalu(p1$2, 42, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v70$2, v71$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[42] := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v70$1, v71$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[42]);
    $$d_finavalu[42] := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v70$2, v71$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[42]);
    v72$1 := (if p1$1 then FDIV32(FMUL32(FMUL32(FMUL32(FMUL32(1038174126, 1091567616), FPOW32(1070134723, v46$1)), FDIV32(1065353216, FADD32(1065353216, FPOW32(FDIV32(965097405, v40$1), 1077936128)))), FSUB32(FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(1051931443, v43$1), v45$1), 1069066811)), FPOW32(v36$1, 1077936128)), 1072064102), FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$1), v45$1), 1069066811)), FPOW32(1124859904, 1077936128)), v40$1))), FMUL32(FADD32(FMUL32(FPOW32(1124859904, 1077936128), v40$1), FADD32(FMUL32(FPOW32(v36$1, 1077936128), 1072064102), FADD32(FMUL32(1067869798, FPOW32(v36$1, 1077936128)), FADD32(FMUL32(FMUL32(FPOW32(1095017431, 1077936128), 1072064102), FADD32(1065353216, FDIV32(v40$1, 996886069))), FADD32(FMUL32(FMUL32(996886069, FPOW32(1124859904, 1077936128)), FADD32(1065353216, FPOW32(FDIV32(v36$1, 1095017431), 1077936128))), FMUL32(FPOW32(1118765056, 1077936128), v40$1)))))), FADD32(FMUL32(1049247089, FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$1), v45$1), 1069066811))), 1065353216))) else v72$1);
    v72$2 := (if p1$2 then FDIV32(FMUL32(FMUL32(FMUL32(FMUL32(1038174126, 1091567616), FPOW32(1070134723, v46$2)), FDIV32(1065353216, FADD32(1065353216, FPOW32(FDIV32(965097405, v40$2), 1077936128)))), FSUB32(FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(1051931443, v43$2), v45$2), 1069066811)), FPOW32(v36$2, 1077936128)), 1072064102), FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$2), v45$2), 1069066811)), FPOW32(1124859904, 1077936128)), v40$2))), FMUL32(FADD32(FMUL32(FPOW32(1124859904, 1077936128), v40$2), FADD32(FMUL32(FPOW32(v36$2, 1077936128), 1072064102), FADD32(FMUL32(1067869798, FPOW32(v36$2, 1077936128)), FADD32(FMUL32(FMUL32(FPOW32(1095017431, 1077936128), 1072064102), FADD32(1065353216, FDIV32(v40$2, 996886069))), FADD32(FMUL32(FMUL32(996886069, FPOW32(1124859904, 1077936128)), FADD32(1065353216, FPOW32(FDIV32(v36$2, 1095017431), 1077936128))), FMUL32(FPOW32(1118765056, 1077936128), v40$2)))))), FADD32(FMUL32(1049247089, FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$2), v45$2), 1069066811))), 1065353216))) else v72$2);
    v73$1 := (if p1$1 then FDIV32(FMUL32(FMUL32(FMUL32(FMUL32(v52$1, 1091567616), FPOW32(1070134723, v46$1)), FDIV32(1065353216, FADD32(1065353216, FPOW32(FDIV32(965097405, v41$1), 1077936128)))), FSUB32(FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(1051931443, v43$1), v45$1), 1069066811)), FPOW32(v37$1, 1077936128)), 1072064102), FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$1), v45$1), 1069066811)), FPOW32(1124859904, 1077936128)), v41$1))), FMUL32(FADD32(FMUL32(FPOW32(1124859904, 1077936128), v41$1), FADD32(FMUL32(FPOW32(v37$1, 1077936128), 1072064102), FADD32(FMUL32(1067869798, FPOW32(v37$1, 1077936128)), FADD32(FMUL32(FMUL32(FPOW32(1095017431, 1077936128), 1072064102), FADD32(1065353216, FDIV32(v41$1, 996886069))), FADD32(FMUL32(FMUL32(996886069, FPOW32(1124859904, 1077936128)), FADD32(1065353216, FPOW32(FDIV32(v37$1, 1095017431), 1077936128))), FMUL32(FPOW32(1118765056, 1077936128), v41$1)))))), FADD32(FMUL32(1049247089, FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$1), v45$1), 1069066811))), 1065353216))) else v73$1);
    v73$2 := (if p1$2 then FDIV32(FMUL32(FMUL32(FMUL32(FMUL32(v52$2, 1091567616), FPOW32(1070134723, v46$2)), FDIV32(1065353216, FADD32(1065353216, FPOW32(FDIV32(965097405, v41$2), 1077936128)))), FSUB32(FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(1051931443, v43$2), v45$2), 1069066811)), FPOW32(v37$2, 1077936128)), 1072064102), FMUL32(FMUL32(FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$2), v45$2), 1069066811)), FPOW32(1124859904, 1077936128)), v41$2))), FMUL32(FADD32(FMUL32(FPOW32(1124859904, 1077936128), v41$2), FADD32(FMUL32(FPOW32(v37$2, 1077936128), 1072064102), FADD32(FMUL32(1067869798, FPOW32(v37$2, 1077936128)), FADD32(FMUL32(FMUL32(FPOW32(1095017431, 1077936128), 1072064102), FADD32(1065353216, FDIV32(v41$2, 996886069))), FADD32(FMUL32(FMUL32(996886069, FPOW32(1124859904, 1077936128)), FADD32(1065353216, FPOW32(FDIV32(v37$2, 1095017431), 1077936128))), FMUL32(FPOW32(1118765056, 1077936128), v41$2)))))), FADD32(FMUL32(1049247089, FEXP32(FMUL32(FMUL32(FMUL32(FSUB32(1051931443, 1065353216), v43$2), v45$2), 1069066811))), 1065353216))) else v73$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$d_finavalu(p1$1, 44, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FMUL32(1073741824, FADD32(v72$1, v73$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)), $$d_finavalu[44]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 44);
    assume {:do_not_predicate} {:check_id "check_state_63"} {:captureState "check_state_63"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_63"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$d_finavalu(p1$2, 44, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FMUL32(1073741824, FADD32(v72$2, v73$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[44] := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FMUL32(1073741824, FADD32(v72$1, v73$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[44]);
    $$d_finavalu[44] := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FMUL32(1073741824, FADD32(v72$2, v73$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[44]);
    v74$1 := (if p1$1 then FDIV32(FMUL32(FMUL32(FMUL32(1038174126, FPOW32(1075209830, v46$1)), 1032443029), FPOW32(v40$1, 1070386381)), FADD32(FPOW32(973279855, 1070386381), FPOW32(v40$1, 1070386381))) else v74$1);
    v74$2 := (if p1$2 then FDIV32(FMUL32(FMUL32(FMUL32(1038174126, FPOW32(1075209830, v46$2)), 1032443029), FPOW32(v40$2, 1070386381)), FADD32(FPOW32(973279855, 1070386381), FPOW32(v40$2, 1070386381))) else v74$2);
    v75$1 := (if p1$1 then FDIV32(FMUL32(FMUL32(FMUL32(v52$1, FPOW32(1075209830, v46$1)), 1032443029), FPOW32(v41$1, 1070386381)), FADD32(FPOW32(973279855, 1070386381), FPOW32(v41$1, 1070386381))) else v75$1);
    v75$2 := (if p1$2 then FDIV32(FMUL32(FMUL32(FMUL32(v52$2, FPOW32(1075209830, v46$2)), 1032443029), FPOW32(v41$2, 1070386381)), FADD32(FPOW32(973279855, 1070386381), FPOW32(v41$2, 1070386381))) else v75$2);
    call {:sourceloc} {:sourceloc_num 64} _LOG_WRITE_$$d_finavalu(p1$1, 43, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v74$1, v75$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)), $$d_finavalu[43]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 43);
    assume {:do_not_predicate} {:check_id "check_state_64"} {:captureState "check_state_64"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_64"} {:sourceloc} {:sourceloc_num 64} _CHECK_WRITE_$$d_finavalu(p1$2, 43, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v74$2, v75$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[43] := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v74$1, v75$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[43]);
    $$d_finavalu[43] := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v74$2, v75$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[43]);
    v76$1 := (if p1$1 then FMUL32(FMUL32(1038174126, 964935914), FSUB32(v43$1, FMUL32(FDIV32(FDIV32(1065353216, v45$1), 1073741824), FMUL32(FLOG32(FDIV32(1072064102, v40$1)), 1060205080)))) else v76$1);
    v76$2 := (if p1$2 then FMUL32(FMUL32(1038174126, 964935914), FSUB32(v43$2, FMUL32(FDIV32(FDIV32(1065353216, v45$2), 1073741824), FMUL32(FLOG32(FDIV32(1072064102, v40$2)), 1060205080)))) else v76$2);
    v77$1 := (if p1$1 then FMUL32(FMUL32(v52$1, 964935914), FSUB32(v43$1, FMUL32(FDIV32(FDIV32(1065353216, v45$1), 1073741824), FMUL32(FLOG32(FDIV32(1072064102, v41$1)), 1060205080)))) else v77$1);
    v77$2 := (if p1$2 then FMUL32(FMUL32(v52$2, 964935914), FSUB32(v43$2, FMUL32(FDIV32(FDIV32(1065353216, v45$2), 1073741824), FMUL32(FLOG32(FDIV32(1072064102, v41$2)), 1060205080)))) else v77$2);
    call {:sourceloc} {:sourceloc_num 65} _LOG_WRITE_$$d_finavalu(p1$1, 45, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v76$1, v77$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)), $$d_finavalu[45]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 45);
    assume {:do_not_predicate} {:check_id "check_state_65"} {:captureState "check_state_65"} {:sourceloc} {:sourceloc_num 65} true;
    call {:check_id "check_state_65"} {:sourceloc} {:sourceloc_num 65} _CHECK_WRITE_$$d_finavalu(p1$2, 45, FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v76$2, v77$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[45] := (if p1$1 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v76$1, v77$1)), 790091698), FMUL32(FMUL32(v48$1, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[45]);
    $$d_finavalu[45] := (if p1$2 then FP64_CONV32(FMUL64(FP32_CONV64(FDIV32(FMUL32(FSUB32(-2147483648, FADD32(v76$2, v77$2)), 790091698), FMUL32(FMUL32(v48$2, 1073741824), 1203532416))), 4652007308841189376)) else $$d_finavalu[45]);
    v78$1 := (if p1$1 then FSUB32(1097859072, FDIV32(FSUB32(1097859072, 1065353216), FADD32(1065353216, FPOW32(FDIV32(1055286886, v35$1), 1075838976)))) else v78$1);
    v78$2 := (if p1$2 then FSUB32(1097859072, FDIV32(FSUB32(1097859072, 1065353216), FADD32(1065353216, FPOW32(FDIV32(1055286886, v35$2), 1075838976)))) else v78$2);
    v79$1 := (if p1$1 then FDIV32(1092616192, v78$1) else v79$1);
    v79$2 := (if p1$2 then FDIV32(1092616192, v78$2) else v79$2);
    v80$1 := (if p1$1 then FMUL32(1056964608, v78$1) else v80$1);
    v80$2 := (if p1$2 then FMUL32(1056964608, v78$2) else v80$2);
    v81$1 := (if p1$1 then FSUB32(FSUB32(FSUB32(1065353216, v19$1), v20$1), v21$1) else v81$1);
    v81$2 := (if p1$2 then FSUB32(FSUB32(FSUB32(1065353216, v19$2), v20$2), v21$2) else v81$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$d_finavalu(p1$1, 13, FSUB32(FADD32(FMUL32(1000593162, v81$1), FSUB32(-2147483648, FMUL32(FMUL32(v80$1, v40$1), v19$1))), FADD32(FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v19$1), FSUB32(-2147483648, FMUL32(1031127695, v20$1)))), $$d_finavalu[13]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 13);
    assume {:do_not_predicate} {:check_id "check_state_66"} {:captureState "check_state_66"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_66"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$d_finavalu(p1$2, 13, FSUB32(FADD32(FMUL32(1000593162, v81$2), FSUB32(-2147483648, FMUL32(FMUL32(v80$2, v40$2), v19$2))), FADD32(FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v19$2), FSUB32(-2147483648, FMUL32(1031127695, v20$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[13] := (if p1$1 then FSUB32(FADD32(FMUL32(1000593162, v81$1), FSUB32(-2147483648, FMUL32(FMUL32(v80$1, v40$1), v19$1))), FADD32(FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v19$1), FSUB32(-2147483648, FMUL32(1031127695, v20$1)))) else $$d_finavalu[13]);
    $$d_finavalu[13] := (if p1$2 then FSUB32(FADD32(FMUL32(1000593162, v81$2), FSUB32(-2147483648, FMUL32(FMUL32(v80$2, v40$2), v19$2))), FADD32(FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v19$2), FSUB32(-2147483648, FMUL32(1031127695, v20$2)))) else $$d_finavalu[13]);
    call {:sourceloc} {:sourceloc_num 67} _LOG_WRITE_$$d_finavalu(p1$1, 14, FSUB32(FADD32(FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v19$1), FSUB32(-2147483648, FMUL32(1031127695, v20$1))), FADD32(FMUL32(FMUL32(v80$1, v40$1), v20$1), FSUB32(-2147483648, FMUL32(1000593162, v21$1)))), $$d_finavalu[14]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 14);
    assume {:do_not_predicate} {:check_id "check_state_67"} {:captureState "check_state_67"} {:sourceloc} {:sourceloc_num 67} true;
    call {:check_id "check_state_67"} {:sourceloc} {:sourceloc_num 67} _CHECK_WRITE_$$d_finavalu(p1$2, 14, FSUB32(FADD32(FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v19$2), FSUB32(-2147483648, FMUL32(1031127695, v20$2))), FADD32(FMUL32(FMUL32(v80$2, v40$2), v20$2), FSUB32(-2147483648, FMUL32(1000593162, v21$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[14] := (if p1$1 then FSUB32(FADD32(FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v19$1), FSUB32(-2147483648, FMUL32(1031127695, v20$1))), FADD32(FMUL32(FMUL32(v80$1, v40$1), v20$1), FSUB32(-2147483648, FMUL32(1000593162, v21$1)))) else $$d_finavalu[14]);
    $$d_finavalu[14] := (if p1$2 then FSUB32(FADD32(FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v19$2), FSUB32(-2147483648, FMUL32(1031127695, v20$2))), FADD32(FMUL32(FMUL32(v80$2, v40$2), v20$2), FSUB32(-2147483648, FMUL32(1000593162, v21$2)))) else $$d_finavalu[14]);
    call {:sourceloc} {:sourceloc_num 68} _LOG_WRITE_$$d_finavalu(p1$1, 15, FSUB32(FADD32(FMUL32(FMUL32(v80$1, v40$1), v20$1), FSUB32(-2147483648, FMUL32(1000593162, v21$1))), FADD32(FMUL32(1031127695, v21$1), FSUB32(-2147483648, FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v81$1)))), $$d_finavalu[15]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 15);
    assume {:do_not_predicate} {:check_id "check_state_68"} {:captureState "check_state_68"} {:sourceloc} {:sourceloc_num 68} true;
    call {:check_id "check_state_68"} {:sourceloc} {:sourceloc_num 68} _CHECK_WRITE_$$d_finavalu(p1$2, 15, FSUB32(FADD32(FMUL32(FMUL32(v80$2, v40$2), v20$2), FSUB32(-2147483648, FMUL32(1000593162, v21$2))), FADD32(FMUL32(1031127695, v21$2), FSUB32(-2147483648, FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v81$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[15] := (if p1$1 then FSUB32(FADD32(FMUL32(FMUL32(v80$1, v40$1), v20$1), FSUB32(-2147483648, FMUL32(1000593162, v21$1))), FADD32(FMUL32(1031127695, v21$1), FSUB32(-2147483648, FMUL32(FMUL32(v79$1, FPOW32(v40$1, 1073741824)), v81$1)))) else $$d_finavalu[15]);
    $$d_finavalu[15] := (if p1$2 then FSUB32(FADD32(FMUL32(FMUL32(v80$2, v40$2), v20$2), FSUB32(-2147483648, FMUL32(1000593162, v21$2))), FADD32(FMUL32(1031127695, v21$2), FSUB32(-2147483648, FMUL32(FMUL32(v79$2, FPOW32(v40$2, 1073741824)), v81$2)))) else $$d_finavalu[15]);
    v82$1 := (if p1$1 then FMUL32(FMUL32(1103626240, v20$1), FSUB32(v35$1, v40$1)) else v82$1);
    v82$2 := (if p1$2 then FMUL32(FMUL32(1103626240, v20$2), FSUB32(v35$2, v40$2)) else v82$2);
    v83$1 := (if p1$1 then FDIV32(FMUL32(FMUL32(FPOW32(1076258406, v46$1), 966128197), FSUB32(FPOW32(FDIV32(v42$1, 964753808), 1071955050), FPOW32(FDIV32(v35$1, 1071225242), 1071955050))), FADD32(FADD32(1065353216, FPOW32(FDIV32(v42$1, 964753808), 1071955050)), FPOW32(FDIV32(v35$1, 1071225242), 1071955050))) else v83$1);
    v83$2 := (if p1$2 then FDIV32(FMUL32(FMUL32(FPOW32(1076258406, v46$2), 966128197), FSUB32(FPOW32(FDIV32(v42$2, 964753808), 1071955050), FPOW32(FDIV32(v35$2, 1071225242), 1071955050))), FADD32(FADD32(1065353216, FPOW32(FDIV32(v42$2, 964753808), 1071955050)), FPOW32(FDIV32(v35$2, 1071225242), 1071955050))) else v83$2);
    v84$1 := (if p1$1 then FP64_CONV32(FMUL64(4527927829867574700, FP32_CONV64(FSUB32(v35$1, v40$1)))) else v84$1);
    v84$2 := (if p1$2 then FP64_CONV32(FMUL64(4527927829867574700, FP32_CONV64(FSUB32(v35$2, v40$2)))) else v84$2);
    call {:sourceloc} {:sourceloc_num 69} _LOG_WRITE_$$d_finavalu(p1$1, 16, FADD32(FMUL32(FMUL32(953267991, v36$1), FSUB32(1089598390, v22$1)), FSUB32(-2147483648, FMUL32(981668463, v22$1))), $$d_finavalu[16]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 16);
    assume {:do_not_predicate} {:check_id "check_state_69"} {:captureState "check_state_69"} {:sourceloc} {:sourceloc_num 69} true;
    call {:check_id "check_state_69"} {:sourceloc} {:sourceloc_num 69} _CHECK_WRITE_$$d_finavalu(p1$2, 16, FADD32(FMUL32(FMUL32(953267991, v36$2), FSUB32(1089598390, v22$2)), FSUB32(-2147483648, FMUL32(981668463, v22$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[16] := (if p1$1 then FADD32(FMUL32(FMUL32(953267991, v36$1), FSUB32(1089598390, v22$1)), FSUB32(-2147483648, FMUL32(981668463, v22$1))) else $$d_finavalu[16]);
    $$d_finavalu[16] := (if p1$2 then FADD32(FMUL32(FMUL32(953267991, v36$2), FSUB32(1089598390, v22$2)), FSUB32(-2147483648, FMUL32(981668463, v22$2))) else $$d_finavalu[16]);
    call {:sourceloc} {:sourceloc_num 70} _LOG_WRITE_$$d_finavalu(p1$1, 17, FADD32(FMUL32(FMUL32(953267991, v37$1), FSUB32(1070805811, v23$1)), FSUB32(-2147483648, FMUL32(981668463, v23$1))), $$d_finavalu[17]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 17);
    assume {:do_not_predicate} {:check_id "check_state_70"} {:captureState "check_state_70"} {:sourceloc} {:sourceloc_num 70} true;
    call {:check_id "check_state_70"} {:sourceloc} {:sourceloc_num 70} _CHECK_WRITE_$$d_finavalu(p1$2, 17, FADD32(FMUL32(FMUL32(953267991, v37$2), FSUB32(1070805811, v23$2)), FSUB32(-2147483648, FMUL32(981668463, v23$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[17] := (if p1$1 then FADD32(FMUL32(FMUL32(953267991, v37$1), FSUB32(1070805811, v23$1)), FSUB32(-2147483648, FMUL32(981668463, v23$1))) else $$d_finavalu[17]);
    $$d_finavalu[17] := (if p1$2 then FADD32(FMUL32(FMUL32(953267991, v37$2), FSUB32(1070805811, v23$2)), FSUB32(-2147483648, FMUL32(981668463, v23$2))) else $$d_finavalu[17]);
    call {:sourceloc} {:sourceloc_num 71} _LOG_WRITE_$$d_finavalu(p1$1, 18, FADD32(FMUL32(FMUL32(1107479757, v42$1), FSUB32(1032805417, v24$1)), FSUB32(-2147483648, FMUL32(1017155630, v24$1))), $$d_finavalu[18]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 18);
    assume {:do_not_predicate} {:check_id "check_state_71"} {:captureState "check_state_71"} {:sourceloc} {:sourceloc_num 71} true;
    call {:check_id "check_state_71"} {:sourceloc} {:sourceloc_num 71} _CHECK_WRITE_$$d_finavalu(p1$2, 18, FADD32(FMUL32(FMUL32(1107479757, v42$2), FSUB32(1032805417, v24$2)), FSUB32(-2147483648, FMUL32(1017155630, v24$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[18] := (if p1$1 then FADD32(FMUL32(FMUL32(1107479757, v42$1), FSUB32(1032805417, v24$1)), FSUB32(-2147483648, FMUL32(1017155630, v24$1))) else $$d_finavalu[18]);
    $$d_finavalu[18] := (if p1$2 then FADD32(FMUL32(FMUL32(1107479757, v42$2), FSUB32(1032805417, v24$2)), FSUB32(-2147483648, FMUL32(1017155630, v24$2))) else $$d_finavalu[18]);
    call {:sourceloc} {:sourceloc_num 72} _LOG_WRITE_$$d_finavalu(p1$1, 19, FADD32(FMUL32(FMUL32(1075293716, v42$1), FSUB32(FSUB32(1041194025, v25$1), v26$1)), FSUB32(-2147483648, FMUL32(939931581, v25$1))), $$d_finavalu[19]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 19);
    assume {:do_not_predicate} {:check_id "check_state_72"} {:captureState "check_state_72"} {:sourceloc} {:sourceloc_num 72} true;
    call {:check_id "check_state_72"} {:sourceloc} {:sourceloc_num 72} _CHECK_WRITE_$$d_finavalu(p1$2, 19, FADD32(FMUL32(FMUL32(1075293716, v42$2), FSUB32(FSUB32(1041194025, v25$2), v26$2)), FSUB32(-2147483648, FMUL32(939931581, v25$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[19] := (if p1$1 then FADD32(FMUL32(FMUL32(1075293716, v42$1), FSUB32(FSUB32(1041194025, v25$1), v26$1)), FSUB32(-2147483648, FMUL32(939931581, v25$1))) else $$d_finavalu[19]);
    $$d_finavalu[19] := (if p1$2 then FADD32(FMUL32(FMUL32(1075293716, v42$2), FSUB32(FSUB32(1041194025, v25$2), v26$2)), FSUB32(-2147483648, FMUL32(939931581, v25$2))) else $$d_finavalu[19]);
    call {:sourceloc} {:sourceloc_num 73} _LOG_WRITE_$$d_finavalu(p1$1, 20, FADD32(FMUL32(FMUL32(994352038, 1065353216), FSUB32(FSUB32(1041194025, v25$1), v26$1)), FSUB32(-2147483648, FMUL32(995769377, v26$1))), $$d_finavalu[20]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 20);
    assume {:do_not_predicate} {:check_id "check_state_73"} {:captureState "check_state_73"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_73"} {:sourceloc} {:sourceloc_num 73} _CHECK_WRITE_$$d_finavalu(p1$2, 20, FADD32(FMUL32(FMUL32(994352038, 1065353216), FSUB32(FSUB32(1041194025, v25$2), v26$2)), FSUB32(-2147483648, FMUL32(995769377, v26$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[20] := (if p1$1 then FADD32(FMUL32(FMUL32(994352038, 1065353216), FSUB32(FSUB32(1041194025, v25$1), v26$1)), FSUB32(-2147483648, FMUL32(995769377, v26$1))) else $$d_finavalu[20]);
    $$d_finavalu[20] := (if p1$2 then FADD32(FMUL32(FMUL32(994352038, 1065353216), FSUB32(FSUB32(1041194025, v25$2), v26$2)), FSUB32(-2147483648, FMUL32(995769377, v26$2))) else $$d_finavalu[20]);
    call {:sourceloc} {:sourceloc_num 74} _LOG_WRITE_$$d_finavalu(p1$1, 21, 0, $$d_finavalu[21]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 21);
    assume {:do_not_predicate} {:check_id "check_state_74"} {:captureState "check_state_74"} {:sourceloc} {:sourceloc_num 74} true;
    call {:check_id "check_state_74"} {:sourceloc} {:sourceloc_num 74} _CHECK_WRITE_$$d_finavalu(p1$2, 21, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[21] := (if p1$1 then 0 else $$d_finavalu[21]);
    $$d_finavalu[21] := (if p1$2 then 0 else $$d_finavalu[21]);
    call {:sourceloc} {:sourceloc_num 75} _LOG_WRITE_$$d_finavalu(p1$1, 22, FADD32(FMUL32(FMUL32(1096600781, v42$1), FSUB32(FSUB32(1041194025, v27$1), v28$1)), FSUB32(-2147483648, FMUL32(972106792, v27$1))), $$d_finavalu[22]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 22);
    assume {:do_not_predicate} {:check_id "check_state_75"} {:captureState "check_state_75"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_75"} {:sourceloc} {:sourceloc_num 75} _CHECK_WRITE_$$d_finavalu(p1$2, 22, FADD32(FMUL32(FMUL32(1096600781, v42$2), FSUB32(FSUB32(1041194025, v27$2), v28$2)), FSUB32(-2147483648, FMUL32(972106792, v27$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[22] := (if p1$1 then FADD32(FMUL32(FMUL32(1096600781, v42$1), FSUB32(FSUB32(1041194025, v27$1), v28$1)), FSUB32(-2147483648, FMUL32(972106792, v27$1))) else $$d_finavalu[22]);
    $$d_finavalu[22] := (if p1$2 then FADD32(FMUL32(FMUL32(1096600781, v42$2), FSUB32(FSUB32(1041194025, v27$2), v28$2)), FSUB32(-2147483648, FMUL32(972106792, v27$2))) else $$d_finavalu[22]);
    call {:sourceloc} {:sourceloc_num 76} _LOG_WRITE_$$d_finavalu(p1$1, 23, FADD32(FMUL32(FMUL32(1015061833, 1065353216), FSUB32(FSUB32(1041194025, v27$1), v28$1)), FSUB32(-2147483648, FMUL32(946803529, v28$1))), $$d_finavalu[23]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 23);
    assume {:do_not_predicate} {:check_id "check_state_76"} {:captureState "check_state_76"} {:sourceloc} {:sourceloc_num 76} true;
    call {:check_id "check_state_76"} {:sourceloc} {:sourceloc_num 76} _CHECK_WRITE_$$d_finavalu(p1$2, 23, FADD32(FMUL32(FMUL32(1015061833, 1065353216), FSUB32(FSUB32(1041194025, v27$2), v28$2)), FSUB32(-2147483648, FMUL32(946803529, v28$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[23] := (if p1$1 then FADD32(FMUL32(FMUL32(1015061833, 1065353216), FSUB32(FSUB32(1041194025, v27$1), v28$1)), FSUB32(-2147483648, FMUL32(946803529, v28$1))) else $$d_finavalu[23]);
    $$d_finavalu[23] := (if p1$2 then FADD32(FMUL32(FMUL32(1015061833, 1065353216), FSUB32(FSUB32(1041194025, v27$2), v28$2)), FSUB32(-2147483648, FMUL32(946803529, v28$2))) else $$d_finavalu[23]);
    call {:sourceloc} {:sourceloc_num 77} _LOG_WRITE_$$d_finavalu(p1$1, 24, FADD32(FMUL32(FMUL32(1120403456, v42$1), FSUB32(1015813453, v29$1)), FSUB32(-2147483648, FMUL32(1031127695, v29$1))), $$d_finavalu[24]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 24);
    assume {:do_not_predicate} {:check_id "check_state_77"} {:captureState "check_state_77"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_77"} {:sourceloc} {:sourceloc_num 77} _CHECK_WRITE_$$d_finavalu(p1$2, 24, FADD32(FMUL32(FMUL32(1120403456, v42$2), FSUB32(1015813453, v29$2)), FSUB32(-2147483648, FMUL32(1031127695, v29$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[24] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v42$1), FSUB32(1015813453, v29$1)), FSUB32(-2147483648, FMUL32(1031127695, v29$1))) else $$d_finavalu[24]);
    $$d_finavalu[24] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v42$2), FSUB32(1015813453, v29$2)), FSUB32(-2147483648, FMUL32(1031127695, v29$2))) else $$d_finavalu[24]);
    call {:sourceloc} {:sourceloc_num 78} _LOG_READ_$$d_finavalu(p1$1, 18, $$d_finavalu[18]);
    assume {:do_not_predicate} {:check_id "check_state_78"} {:captureState "check_state_78"} {:sourceloc} {:sourceloc_num 78} true;
    call {:check_id "check_state_78"} {:sourceloc} {:sourceloc_num 78} _CHECK_READ_$$d_finavalu(p1$2, 18, $$d_finavalu[18]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v85$1 := (if p1$1 then $$d_finavalu[18] else v85$1);
    v85$2 := (if p1$2 then $$d_finavalu[18] else v85$2);
    call {:sourceloc} {:sourceloc_num 79} _LOG_READ_$$d_finavalu(p1$1, 19, $$d_finavalu[19]);
    assume {:do_not_predicate} {:check_id "check_state_79"} {:captureState "check_state_79"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_79"} {:sourceloc} {:sourceloc_num 79} _CHECK_READ_$$d_finavalu(p1$2, 19, $$d_finavalu[19]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v86$1 := (if p1$1 then $$d_finavalu[19] else v86$1);
    v86$2 := (if p1$2 then $$d_finavalu[19] else v86$2);
    call {:sourceloc} {:sourceloc_num 80} _LOG_READ_$$d_finavalu(p1$1, 20, $$d_finavalu[20]);
    assume {:do_not_predicate} {:check_id "check_state_80"} {:captureState "check_state_80"} {:sourceloc} {:sourceloc_num 80} true;
    call {:check_id "check_state_80"} {:sourceloc} {:sourceloc_num 80} _CHECK_READ_$$d_finavalu(p1$2, 20, $$d_finavalu[20]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v87$1 := (if p1$1 then $$d_finavalu[20] else v87$1);
    v87$2 := (if p1$2 then $$d_finavalu[20] else v87$2);
    call {:sourceloc} {:sourceloc_num 81} _LOG_READ_$$d_finavalu(p1$1, 21, $$d_finavalu[21]);
    assume {:do_not_predicate} {:check_id "check_state_81"} {:captureState "check_state_81"} {:sourceloc} {:sourceloc_num 81} true;
    call {:check_id "check_state_81"} {:sourceloc} {:sourceloc_num 81} _CHECK_READ_$$d_finavalu(p1$2, 21, $$d_finavalu[21]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v88$1 := (if p1$1 then $$d_finavalu[21] else v88$1);
    v88$2 := (if p1$2 then $$d_finavalu[21] else v88$2);
    call {:sourceloc} {:sourceloc_num 82} _LOG_READ_$$d_finavalu(p1$1, 22, $$d_finavalu[22]);
    assume {:do_not_predicate} {:check_id "check_state_82"} {:captureState "check_state_82"} {:sourceloc} {:sourceloc_num 82} true;
    call {:check_id "check_state_82"} {:sourceloc} {:sourceloc_num 82} _CHECK_READ_$$d_finavalu(p1$2, 22, $$d_finavalu[22]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v89$1 := (if p1$1 then $$d_finavalu[22] else v89$1);
    v89$2 := (if p1$2 then $$d_finavalu[22] else v89$2);
    call {:sourceloc} {:sourceloc_num 83} _LOG_READ_$$d_finavalu(p1$1, 23, $$d_finavalu[23]);
    assume {:do_not_predicate} {:check_id "check_state_83"} {:captureState "check_state_83"} {:sourceloc} {:sourceloc_num 83} true;
    call {:check_id "check_state_83"} {:sourceloc} {:sourceloc_num 83} _CHECK_READ_$$d_finavalu(p1$2, 23, $$d_finavalu[23]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v90$1 := (if p1$1 then $$d_finavalu[23] else v90$1);
    v90$2 := (if p1$2 then $$d_finavalu[23] else v90$2);
    call {:sourceloc} {:sourceloc_num 84} _LOG_READ_$$d_finavalu(p1$1, 24, $$d_finavalu[24]);
    assume {:do_not_predicate} {:check_id "check_state_84"} {:captureState "check_state_84"} {:sourceloc} {:sourceloc_num 84} true;
    call {:check_id "check_state_84"} {:sourceloc} {:sourceloc_num 84} _CHECK_READ_$$d_finavalu(p1$2, 24, $$d_finavalu[24]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v91$1 := (if p1$1 then $$d_finavalu[24] else v91$1);
    v91$2 := (if p1$2 then $$d_finavalu[24] else v91$2);
    call {:sourceloc} {:sourceloc_num 85} _LOG_WRITE_$$d_finavalu(p1$1, 25, FADD32(FMUL32(FMUL32(1120403456, v40$1), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4571976519504966577, FP32_CONV64(v48$1)), FP32_CONV64(v51$1)), 4591870180066957722)), v30$1)), FSUB32(-2147483648, FMUL32(1067869798, v30$1))), $$d_finavalu[25]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 25);
    assume {:do_not_predicate} {:check_id "check_state_85"} {:captureState "check_state_85"} {:sourceloc} {:sourceloc_num 85} true;
    call {:check_id "check_state_85"} {:sourceloc} {:sourceloc_num 85} _CHECK_WRITE_$$d_finavalu(p1$2, 25, FADD32(FMUL32(FMUL32(1120403456, v40$2), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4571976519504966577, FP32_CONV64(v48$2)), FP32_CONV64(v51$2)), 4591870180066957722)), v30$2)), FSUB32(-2147483648, FMUL32(1067869798, v30$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[25] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v40$1), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4571976519504966577, FP32_CONV64(v48$1)), FP32_CONV64(v51$1)), 4591870180066957722)), v30$1)), FSUB32(-2147483648, FMUL32(1067869798, v30$1))) else $$d_finavalu[25]);
    $$d_finavalu[25] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v40$2), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4571976519504966577, FP32_CONV64(v48$2)), FP32_CONV64(v51$2)), 4591870180066957722)), v30$2)), FSUB32(-2147483648, FMUL32(1067869798, v30$2))) else $$d_finavalu[25]);
    call {:sourceloc} {:sourceloc_num 86} _LOG_WRITE_$$d_finavalu(p1$1, 26, FADD32(FMUL32(FMUL32(1120403456, v41$1), FSUB32(FP64_CONV32(FDIV64(FMUL64(4585547846766069924, FP32_CONV64(v48$1)), FP32_CONV64(v50$1))), v31$1)), FSUB32(-2147483648, FMUL32(1067869798, v31$1))), $$d_finavalu[26]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 26);
    assume {:do_not_predicate} {:check_id "check_state_86"} {:captureState "check_state_86"} {:sourceloc} {:sourceloc_num 86} true;
    call {:check_id "check_state_86"} {:sourceloc} {:sourceloc_num 86} _CHECK_WRITE_$$d_finavalu(p1$2, 26, FADD32(FMUL32(FMUL32(1120403456, v41$2), FSUB32(FP64_CONV32(FDIV64(FMUL64(4585547846766069924, FP32_CONV64(v48$2)), FP32_CONV64(v50$2))), v31$2)), FSUB32(-2147483648, FMUL32(1067869798, v31$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[26] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v41$1), FSUB32(FP64_CONV32(FDIV64(FMUL64(4585547846766069924, FP32_CONV64(v48$1)), FP32_CONV64(v50$1))), v31$1)), FSUB32(-2147483648, FMUL32(1067869798, v31$1))) else $$d_finavalu[26]);
    $$d_finavalu[26] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v41$2), FSUB32(FP64_CONV32(FDIV64(FMUL64(4585547846766069924, FP32_CONV64(v48$2)), FP32_CONV64(v50$2))), v31$2)), FSUB32(-2147483648, FMUL32(1067869798, v31$2))) else $$d_finavalu[26]);
    call {:sourceloc} {:sourceloc_num 87} _LOG_WRITE_$$d_finavalu(p1$1, 27, FADD32(FMUL32(FMUL32(1120403456, v40$1), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4565252104829347142, FP32_CONV64(v48$1)), FP32_CONV64(v51$1)), 4591870180066957722)), v32$1)), FSUB32(-2147483648, FMUL32(1022739087, v32$1))), $$d_finavalu[27]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 27);
    assume {:do_not_predicate} {:check_id "check_state_87"} {:captureState "check_state_87"} {:sourceloc} {:sourceloc_num 87} true;
    call {:check_id "check_state_87"} {:sourceloc} {:sourceloc_num 87} _CHECK_WRITE_$$d_finavalu(p1$2, 27, FADD32(FMUL32(FMUL32(1120403456, v40$2), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4565252104829347142, FP32_CONV64(v48$2)), FP32_CONV64(v51$2)), 4591870180066957722)), v32$2)), FSUB32(-2147483648, FMUL32(1022739087, v32$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[27] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v40$1), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4565252104829347142, FP32_CONV64(v48$1)), FP32_CONV64(v51$1)), 4591870180066957722)), v32$1)), FSUB32(-2147483648, FMUL32(1022739087, v32$1))) else $$d_finavalu[27]);
    $$d_finavalu[27] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v40$2), FSUB32(FP64_CONV32(FMUL64(FDIV64(FMUL64(4565252104829347142, FP32_CONV64(v48$2)), FP32_CONV64(v51$2)), 4591870180066957722)), v32$2)), FSUB32(-2147483648, FMUL32(1022739087, v32$2))) else $$d_finavalu[27]);
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$d_finavalu(p1$1, 28, FADD32(FMUL32(FMUL32(1120403456, v41$1), FSUB32(FP64_CONV32(FDIV64(FMUL64(4578849372824304144, FP32_CONV64(v48$1)), FP32_CONV64(v50$1))), v33$1)), FSUB32(-2147483648, FMUL32(1022739087, v33$1))), $$d_finavalu[28]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 28);
    assume {:do_not_predicate} {:check_id "check_state_88"} {:captureState "check_state_88"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_88"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$d_finavalu(p1$2, 28, FADD32(FMUL32(FMUL32(1120403456, v41$2), FSUB32(FP64_CONV32(FDIV64(FMUL64(4578849372824304144, FP32_CONV64(v48$2)), FP32_CONV64(v50$2))), v33$2)), FSUB32(-2147483648, FMUL32(1022739087, v33$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[28] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v41$1), FSUB32(FP64_CONV32(FDIV64(FMUL64(4578849372824304144, FP32_CONV64(v48$1)), FP32_CONV64(v50$1))), v33$1)), FSUB32(-2147483648, FMUL32(1022739087, v33$1))) else $$d_finavalu[28]);
    $$d_finavalu[28] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v41$2), FSUB32(FP64_CONV32(FDIV64(FMUL64(4578849372824304144, FP32_CONV64(v48$2)), FP32_CONV64(v50$2))), v33$2)), FSUB32(-2147483648, FMUL32(1022739087, v33$2))) else $$d_finavalu[28]);
    call {:sourceloc} {:sourceloc_num 89} _LOG_READ_$$d_finavalu(p1$1, 25, $$d_finavalu[25]);
    assume {:do_not_predicate} {:check_id "check_state_89"} {:captureState "check_state_89"} {:sourceloc} {:sourceloc_num 89} true;
    call {:check_id "check_state_89"} {:sourceloc} {:sourceloc_num 89} _CHECK_READ_$$d_finavalu(p1$2, 25, $$d_finavalu[25]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v92$1 := (if p1$1 then $$d_finavalu[25] else v92$1);
    v92$2 := (if p1$2 then $$d_finavalu[25] else v92$2);
    call {:sourceloc} {:sourceloc_num 90} _LOG_READ_$$d_finavalu(p1$1, 27, $$d_finavalu[27]);
    assume {:do_not_predicate} {:check_id "check_state_90"} {:captureState "check_state_90"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_90"} {:sourceloc} {:sourceloc_num 90} _CHECK_READ_$$d_finavalu(p1$2, 27, $$d_finavalu[27]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v93$1 := (if p1$1 then $$d_finavalu[27] else v93$1);
    v93$2 := (if p1$2 then $$d_finavalu[27] else v93$2);
    call {:sourceloc} {:sourceloc_num 91} _LOG_READ_$$d_finavalu(p1$1, 26, $$d_finavalu[26]);
    assume {:do_not_predicate} {:check_id "check_state_91"} {:captureState "check_state_91"} {:sourceloc} {:sourceloc_num 91} true;
    call {:check_id "check_state_91"} {:sourceloc} {:sourceloc_num 91} _CHECK_READ_$$d_finavalu(p1$2, 26, $$d_finavalu[26]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v94$1 := (if p1$1 then $$d_finavalu[26] else v94$1);
    v94$2 := (if p1$2 then $$d_finavalu[26] else v94$2);
    call {:sourceloc} {:sourceloc_num 92} _LOG_READ_$$d_finavalu(p1$1, 28, $$d_finavalu[28]);
    assume {:do_not_predicate} {:check_id "check_state_92"} {:captureState "check_state_92"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_92"} {:sourceloc} {:sourceloc_num 92} _CHECK_READ_$$d_finavalu(p1$2, 28, $$d_finavalu[28]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v95$1 := (if p1$1 then $$d_finavalu[28] else v95$1);
    v95$2 := (if p1$2 then $$d_finavalu[28] else v95$2);
    call {:sourceloc} {:sourceloc_num 93} _LOG_WRITE_$$d_finavalu(p1$1, 29, FADD32(FMUL32(FMUL32(1120403456, v35$1), FSUB32(1076677837, v34$1)), FSUB32(-2147483648, FMUL32(1115815936, v34$1))), $$d_finavalu[29]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 29);
    assume {:do_not_predicate} {:check_id "check_state_93"} {:captureState "check_state_93"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_93"} {:sourceloc} {:sourceloc_num 93} _CHECK_WRITE_$$d_finavalu(p1$2, 29, FADD32(FMUL32(FMUL32(1120403456, v35$2), FSUB32(1076677837, v34$2)), FSUB32(-2147483648, FMUL32(1115815936, v34$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[29] := (if p1$1 then FADD32(FMUL32(FMUL32(1120403456, v35$1), FSUB32(1076677837, v34$1)), FSUB32(-2147483648, FMUL32(1115815936, v34$1))) else $$d_finavalu[29]);
    $$d_finavalu[29] := (if p1$2 then FADD32(FMUL32(FMUL32(1120403456, v35$2), FSUB32(1076677837, v34$2)), FSUB32(-2147483648, FMUL32(1115815936, v34$2))) else $$d_finavalu[29]);
    v96$1 := (if p1$1 then FDIV32(1065353216, v49$1) else v96$1);
    v96$2 := (if p1$2 then FDIV32(1065353216, v49$2) else v96$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_READ_$$d_finavalu(p1$1, 29, $$d_finavalu[29]);
    assume {:do_not_predicate} {:check_id "check_state_94"} {:captureState "check_state_94"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_94"} {:sourceloc} {:sourceloc_num 94} _CHECK_READ_$$d_finavalu(p1$2, 29, $$d_finavalu[29]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v97$1 := (if p1$1 then $$d_finavalu[29] else v97$1);
    v97$2 := (if p1$2 then $$d_finavalu[29] else v97$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_WRITE_$$d_finavalu(p1$1, 30, FSUB32(FADD32(FMUL32(FMUL32(v83$1, v48$1), v96$1), FSUB32(-2147483648, FADD32(FMUL32(FMUL32(v84$1, v48$1), v96$1), v82$1))), v97$1), $$d_finavalu[30]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 30);
    assume {:do_not_predicate} {:check_id "check_state_95"} {:captureState "check_state_95"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_95"} {:sourceloc} {:sourceloc_num 95} _CHECK_WRITE_$$d_finavalu(p1$2, 30, FSUB32(FADD32(FMUL32(FMUL32(v83$2, v48$2), v96$2), FSUB32(-2147483648, FADD32(FMUL32(FMUL32(v84$2, v48$2), v96$2), v82$2))), v97$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[30] := (if p1$1 then FSUB32(FADD32(FMUL32(FMUL32(v83$1, v48$1), v96$1), FSUB32(-2147483648, FADD32(FMUL32(FMUL32(v84$1, v48$1), v96$1), v82$1))), v97$1) else $$d_finavalu[30]);
    $$d_finavalu[30] := (if p1$2 then FSUB32(FADD32(FMUL32(FMUL32(v83$2, v48$2), v96$2), FSUB32(-2147483648, FADD32(FMUL32(FMUL32(v84$2, v48$2), v96$2), v82$2))), v97$2) else $$d_finavalu[30]);
    v98$1 := (if p1$1 then FADD32(FADD32(FADD32(FADD32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1038174126, 1098907648), FPOW32(v6$1, 1077936128)), v7$1), v8$1), FSUB32(v43$1, v54$1)), FMUL32(FMUL32(1038174126, 966506154), FSUB32(v43$1, v54$1))), FMUL32(1077936128, v72$1)), FMUL32(1077936128, v60$1)), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1063675494, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(847305049, FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v36$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1124859904))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)), 1065353216))))), v9$1), v10$1), FSUB32(1065353216, v11$1)), FPOW32(1072064102, v46$1))), 4601778099247172813))) else v98$1);
    v98$2 := (if p1$2 then FADD32(FADD32(FADD32(FADD32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1038174126, 1098907648), FPOW32(v6$2, 1077936128)), v7$2), v8$2), FSUB32(v43$2, v54$2)), FMUL32(FMUL32(1038174126, 966506154), FSUB32(v43$2, v54$2))), FMUL32(1077936128, v72$2)), FMUL32(1077936128, v60$2)), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(1063675494, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(847305049, FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v36$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1124859904))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)), 1065353216))))), v9$2), v10$2), FSUB32(1065353216, v11$2)), FPOW32(1072064102, v46$2))), 4601778099247172813))) else v98$2);
    v99$1 := (if p1$1 then FADD32(FADD32(FADD32(FADD32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v52$1, 1098907648), FPOW32(v6$1, 1077936128)), v7$1), v8$1), FSUB32(v43$1, v55$1)), FMUL32(FMUL32(v52$1, 966506154), FSUB32(v43$1, v55$1))), FMUL32(1077936128, v73$1)), FMUL32(1077936128, v61$1)), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v53$1, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(847305049, FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v37$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1124859904))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)), 1065353216))))), v9$1), v10$1), FSUB32(1065353216, v12$1)), FPOW32(1072064102, v46$1))), 4601778099247172813))) else v99$1);
    v99$2 := (if p1$2 then FADD32(FADD32(FADD32(FADD32(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v52$2, 1098907648), FPOW32(v6$2, 1077936128)), v7$2), v8$2), FSUB32(v43$2, v55$2)), FMUL32(FMUL32(v52$2, 966506154), FSUB32(v43$2, v55$2))), FMUL32(1077936128, v73$2)), FMUL32(1077936128, v61$2)), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FMUL32(v53$2, FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(847305049, FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v37$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1124859904))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)), 1065353216))))), v9$2), v10$2), FSUB32(1065353216, v12$2)), FPOW32(1072064102, v46$2))), 4601778099247172813))) else v99$2);
    call {:sourceloc} {:sourceloc_num 96} _LOG_READ_$$d_finavalu(p1$1, 16, $$d_finavalu[16]);
    assume {:do_not_predicate} {:check_id "check_state_96"} {:captureState "check_state_96"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_96"} {:sourceloc} {:sourceloc_num 96} _CHECK_READ_$$d_finavalu(p1$2, 16, $$d_finavalu[16]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v100$1 := (if p1$1 then $$d_finavalu[16] else v100$1);
    v100$2 := (if p1$2 then $$d_finavalu[16] else v100$2);
    call {:sourceloc} {:sourceloc_num 97} _LOG_WRITE_$$d_finavalu(p1$1, 31, FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v98$1), 790091698), FMUL32(v51$1, 1203532416)), FMUL32(FDIV32(681898599, v51$1), FSUB32(v37$1, v36$1))), v100$1), $$d_finavalu[31]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 31);
    assume {:do_not_predicate} {:check_id "check_state_97"} {:captureState "check_state_97"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_97"} {:sourceloc} {:sourceloc_num 97} _CHECK_WRITE_$$d_finavalu(p1$2, 31, FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v98$2), 790091698), FMUL32(v51$2, 1203532416)), FMUL32(FDIV32(681898599, v51$2), FSUB32(v37$2, v36$2))), v100$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[31] := (if p1$1 then FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v98$1), 790091698), FMUL32(v51$1, 1203532416)), FMUL32(FDIV32(681898599, v51$1), FSUB32(v37$1, v36$1))), v100$1) else $$d_finavalu[31]);
    $$d_finavalu[31] := (if p1$2 then FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v98$2), 790091698), FMUL32(v51$2, 1203532416)), FMUL32(FDIV32(681898599, v51$2), FSUB32(v37$2, v36$2))), v100$2) else $$d_finavalu[31]);
    v101$1 := (if p1$1 then FDIV32(1065353216, v50$1) else v101$1);
    v101$2 := (if p1$2 then FDIV32(1065353216, v50$2) else v101$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_READ_$$d_finavalu(p1$1, 17, $$d_finavalu[17]);
    assume {:do_not_predicate} {:check_id "check_state_98"} {:captureState "check_state_98"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_98"} {:sourceloc} {:sourceloc_num 98} _CHECK_READ_$$d_finavalu(p1$2, 17, $$d_finavalu[17]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$d_finavalu"} true;
    v102$1 := (if p1$1 then $$d_finavalu[17] else v102$1);
    v102$2 := (if p1$2 then $$d_finavalu[17] else v102$2);
    call {:sourceloc} {:sourceloc_num 99} _LOG_WRITE_$$d_finavalu(p1$1, 32, FSUB32(FADD32(FADD32(FDIV32(FMUL32(FMUL32(FSUB32(-2147483648, v99$1), 790091698), v101$1), 1203532416), FMUL32(FMUL32(681898599, v101$1), FSUB32(v36$1, v37$1))), FMUL32(FMUL32(736533963, v101$1), FSUB32(v38$1, v37$1))), v102$1), $$d_finavalu[32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 32);
    assume {:do_not_predicate} {:check_id "check_state_99"} {:captureState "check_state_99"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_99"} {:sourceloc} {:sourceloc_num 99} _CHECK_WRITE_$$d_finavalu(p1$2, 32, FSUB32(FADD32(FADD32(FDIV32(FMUL32(FMUL32(FSUB32(-2147483648, v99$2), 790091698), v101$2), 1203532416), FMUL32(FMUL32(681898599, v101$2), FSUB32(v36$2, v37$2))), FMUL32(FMUL32(736533963, v101$2), FSUB32(v38$2, v37$2))), v102$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[32] := (if p1$1 then FSUB32(FADD32(FADD32(FDIV32(FMUL32(FMUL32(FSUB32(-2147483648, v99$1), 790091698), v101$1), 1203532416), FMUL32(FMUL32(681898599, v101$1), FSUB32(v36$1, v37$1))), FMUL32(FMUL32(736533963, v101$1), FSUB32(v38$1, v37$1))), v102$1) else $$d_finavalu[32]);
    $$d_finavalu[32] := (if p1$2 then FSUB32(FADD32(FADD32(FDIV32(FMUL32(FMUL32(FSUB32(-2147483648, v99$2), 790091698), v101$2), 1203532416), FMUL32(FMUL32(681898599, v101$2), FSUB32(v36$2, v37$2))), FMUL32(FMUL32(736533963, v101$2), FSUB32(v38$2, v37$2))), v102$2) else $$d_finavalu[32]);
    call {:sourceloc} {:sourceloc_num 100} _LOG_WRITE_$$d_finavalu(p1$1, 33, FMUL32(FDIV32(736533963, v48$1), FSUB32(v37$1, v38$1)), $$d_finavalu[33]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 33);
    assume {:do_not_predicate} {:check_id "check_state_100"} {:captureState "check_state_100"} {:sourceloc} {:sourceloc_num 100} true;
    call {:check_id "check_state_100"} {:sourceloc} {:sourceloc_num 100} _CHECK_WRITE_$$d_finavalu(p1$2, 33, FMUL32(FDIV32(736533963, v48$2), FSUB32(v37$2, v38$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[33] := (if p1$1 then FMUL32(FDIV32(736533963, v48$1), FSUB32(v37$1, v38$1)) else $$d_finavalu[33]);
    $$d_finavalu[33] := (if p1$2 then FMUL32(FDIV32(736533963, v48$2), FSUB32(v37$2, v38$2)) else $$d_finavalu[33]);
    call {:sourceloc} {:sourceloc_num 101} _LOG_WRITE_$$d_finavalu(p1$1, 34, 0, $$d_finavalu[34]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 34);
    assume {:do_not_predicate} {:check_id "check_state_101"} {:captureState "check_state_101"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_101"} {:sourceloc} {:sourceloc_num 101} _CHECK_WRITE_$$d_finavalu(p1$2, 34, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[34] := (if p1$1 then 0 else $$d_finavalu[34]);
    $$d_finavalu[34] := (if p1$2 then 0 else $$d_finavalu[34]);
    v103$1 := (if p1$1 then FSUB32(FADD32(FADD32(v70$1, v76$1), v74$1), FMUL32(1073741824, v72$1)) else v103$1);
    v103$2 := (if p1$2 then FSUB32(FADD32(FADD32(v70$2, v76$2), v74$2), FMUL32(1073741824, v72$2)) else v103$2);
    v104$1 := (if p1$1 then FSUB32(FADD32(FADD32(v71$1, v77$1), v75$1), FMUL32(1073741824, v73$1)) else v104$1);
    v104$2 := (if p1$2 then FSUB32(FADD32(FADD32(v71$2, v77$2), v75$2), FMUL32(1073741824, v73$2)) else v104$2);
    call {:sourceloc} {:sourceloc_num 102} _LOG_WRITE_$$d_finavalu(p1$1, 35, FADD32(FADD32(FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v103$1), 790091698), FMUL32(FMUL32(v51$1, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v51$1), FSUB32(v41$1, v40$1))), FADD32(v92$1, v93$1)), FDIV32(FMUL32(v82$1, v49$1), v51$1)), FDIV32(FMUL32(v84$1, v48$1), v51$1)), $$d_finavalu[35]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 35);
    assume {:do_not_predicate} {:check_id "check_state_102"} {:captureState "check_state_102"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_102"} {:sourceloc} {:sourceloc_num 102} _CHECK_WRITE_$$d_finavalu(p1$2, 35, FADD32(FADD32(FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v103$2), 790091698), FMUL32(FMUL32(v51$2, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v51$2), FSUB32(v41$2, v40$2))), FADD32(v92$2, v93$2)), FDIV32(FMUL32(v82$2, v49$2), v51$2)), FDIV32(FMUL32(v84$2, v48$2), v51$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[35] := (if p1$1 then FADD32(FADD32(FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v103$1), 790091698), FMUL32(FMUL32(v51$1, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v51$1), FSUB32(v41$1, v40$1))), FADD32(v92$1, v93$1)), FDIV32(FMUL32(v82$1, v49$1), v51$1)), FDIV32(FMUL32(v84$1, v48$1), v51$1)) else $$d_finavalu[35]);
    $$d_finavalu[35] := (if p1$2 then FADD32(FADD32(FSUB32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v103$2), 790091698), FMUL32(FMUL32(v51$2, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v51$2), FSUB32(v41$2, v40$2))), FADD32(v92$2, v93$2)), FDIV32(FMUL32(v82$2, v49$2), v51$2)), FDIV32(FMUL32(v84$2, v48$2), v51$2)) else $$d_finavalu[35]);
    call {:sourceloc} {:sourceloc_num 103} _LOG_WRITE_$$d_finavalu(p1$1, 36, FSUB32(FADD32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v104$1), 790091698), FMUL32(FMUL32(v50$1, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v50$1), FSUB32(v40$1, v41$1))), FMUL32(FDIV32(746785054, v50$1), FSUB32(v42$1, v41$1))), FADD32(v94$1, v95$1)), $$d_finavalu[36]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 36);
    assume {:do_not_predicate} {:check_id "check_state_103"} {:captureState "check_state_103"} {:sourceloc} {:sourceloc_num 103} true;
    call {:check_id "check_state_103"} {:sourceloc} {:sourceloc_num 103} _CHECK_WRITE_$$d_finavalu(p1$2, 36, FSUB32(FADD32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v104$2), 790091698), FMUL32(FMUL32(v50$2, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v50$2), FSUB32(v40$2, v41$2))), FMUL32(FDIV32(746785054, v50$2), FSUB32(v42$2, v41$2))), FADD32(v94$2, v95$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[36] := (if p1$1 then FSUB32(FADD32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v104$1), 790091698), FMUL32(FMUL32(v50$1, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v50$1), FSUB32(v40$1, v41$1))), FMUL32(FDIV32(746785054, v50$1), FSUB32(v42$1, v41$1))), FADD32(v94$1, v95$1)) else $$d_finavalu[36]);
    $$d_finavalu[36] := (if p1$2 then FSUB32(FADD32(FADD32(FDIV32(FMUL32(FSUB32(-2147483648, v104$2), 790091698), FMUL32(FMUL32(v50$2, 1073741824), 1203532416)), FMUL32(FDIV32(728234205, v50$2), FSUB32(v40$2, v41$2))), FMUL32(FDIV32(746785054, v50$2), FSUB32(v42$2, v41$2))), FADD32(v94$2, v95$2)) else $$d_finavalu[36]);
    call {:sourceloc} {:sourceloc_num 104} _LOG_WRITE_$$d_finavalu(p1$1, 37, FADD32(FSUB32(FSUB32(-2147483648, v83$1), FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v85$1, v86$1), v87$1), v88$1), v89$1), v90$1), v91$1)), FMUL32(FDIV32(746785054, v48$1), FSUB32(v41$1, v42$1))), $$d_finavalu[37]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 37);
    assume {:do_not_predicate} {:check_id "check_state_104"} {:captureState "check_state_104"} {:sourceloc} {:sourceloc_num 104} true;
    call {:check_id "check_state_104"} {:sourceloc} {:sourceloc_num 104} _CHECK_WRITE_$$d_finavalu(p1$2, 37, FADD32(FSUB32(FSUB32(-2147483648, v83$2), FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v85$2, v86$2), v87$2), v88$2), v89$2), v90$2), v91$2)), FMUL32(FDIV32(746785054, v48$2), FSUB32(v41$2, v42$2))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[37] := (if p1$1 then FADD32(FSUB32(FSUB32(-2147483648, v83$1), FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v85$1, v86$1), v87$1), v88$1), v89$1), v90$1), v91$1)), FMUL32(FDIV32(746785054, v48$1), FSUB32(v41$1, v42$1))) else $$d_finavalu[37]);
    $$d_finavalu[37] := (if p1$2 then FADD32(FSUB32(FSUB32(-2147483648, v83$2), FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v85$2, v86$2), v87$2), v88$2), v89$2), v90$2), v91$2)), FMUL32(FDIV32(746785054, v48$2), FSUB32(v41$2, v42$2))) else $$d_finavalu[37]);
    p4$1 := (if p1$1 && false then false else p4$1);
    p4$2 := (if p1$2 && false then false else p4$2);
    p5$1 := (if p1$1 && true then true else p5$1);
    p5$2 := (if p1$2 && true then true else p5$2);
    p8$1 := (if p1$1 && false then false else p8$1);
    p8$2 := (if p1$2 && false then false else p8$2);
    p11$1 := (if p1$1 && false then false else p11$1);
    p11$2 := (if p1$2 && false then false else p11$2);
    $I_app.i.1$1 := (if p4$1 then 0 else $I_app.i.1$1);
    $I_app.i.1$2 := (if p4$2 then 0 else $I_app.i.1$2);
    call {:sourceloc_num 107} v105$1, v105$2 := $fmodf(p5$1, v4$1, v5$1, p5$2, v4$2, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$fmodf"} true;
    v106$1 := (if p5$1 then FEQ32(v105$1, 1084227584) || FLT32(v105$1, 1084227584) else v106$1);
    v106$2 := (if p5$2 then FEQ32(v105$2, 1084227584) || FLT32(v105$2, 1084227584) else v106$2);
    p6$1 := (if p5$1 && v106$1 then v106$1 else p6$1);
    p6$2 := (if p5$2 && v106$2 then v106$2 else p6$2);
    p7$1 := (if p5$1 && !v106$1 then !v106$1 else p7$1);
    p7$2 := (if p5$2 && !v106$2 then !v106$2 else p7$2);
    $I_app.i.0$1 := (if p6$1 then 1092091904 else $I_app.i.0$1);
    $I_app.i.0$2 := (if p6$2 then 1092091904 else $I_app.i.0$2);
    $I_app.i.0$1 := (if p7$1 then 0 else $I_app.i.0$1);
    $I_app.i.0$2 := (if p7$2 then 0 else $I_app.i.0$2);
    $I_app.i.1$1 := (if p5$1 then $I_app.i.0$1 else $I_app.i.1$1);
    $I_app.i.1$2 := (if p5$2 then $I_app.i.0$2 else $I_app.i.1$2);
    v107$1 := (if p8$1 then BV32_AND(BV1_ZEXT32((if FLT64(4602678819172646912, FP32_CONV64(v4$1)) then 1 else 0)), BV1_ZEXT32((if FLT64(FP32_CONV64(v4$1), 4641258483168051200) then 1 else 0))) != 0 else v107$1);
    v107$2 := (if p8$2 then BV32_AND(BV1_ZEXT32((if FLT64(4602678819172646912, FP32_CONV64(v4$2)) then 1 else 0)), BV1_ZEXT32((if FLT64(FP32_CONV64(v4$2), 4641258483168051200) then 1 else 0))) != 0 else v107$2);
    p9$1 := (if p8$1 && v107$1 then v107$1 else p9$1);
    p9$2 := (if p8$2 && v107$2 then v107$2 else p9$2);
    p10$1 := (if p8$1 && !v107$1 then !v107$1 else p10$1);
    p10$2 := (if p8$2 && !v107$2 then !v107$2 else p10$2);
    $V_clamp.i.0$1 := (if p9$1 then 0 else $V_clamp.i.0$1);
    $V_clamp.i.0$2 := (if p9$2 then 0 else $V_clamp.i.0$2);
    $V_clamp.i.0$1 := (if p10$1 then -1034158080 else $V_clamp.i.0$1);
    $V_clamp.i.0$2 := (if p10$2 then -1034158080 else $V_clamp.i.0$2);
    $I_app.i.1$1 := (if p8$1 then FDIV32(FSUB32($V_clamp.i.0$1, v43$1), 1025758986) else $I_app.i.1$1);
    $I_app.i.1$2 := (if p8$2 then FDIV32(FSUB32($V_clamp.i.0$2, v43$2), 1025758986) else $I_app.i.1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v272$1 := (if p11$1 then _HAVOC_int$1 else v272$1);
    v272$2 := (if p11$2 then _HAVOC_int$2 else v272$2);
    $I_app.i.1$1 := (if p11$1 then v272$1 else $I_app.i.1$1);
    $I_app.i.1$2 := (if p11$2 then v272$2 else $I_app.i.1$2);
    call {:sourceloc} {:sourceloc_num 116} _LOG_WRITE_$$d_finavalu(p1$1, 38, FSUB32(-2147483648, FSUB32(FADD32(FADD32(FADD32(FADD32(v98$1, v99$1), FADD32(FADD32(FMUL32(FDIV32(FMUL32(1038174126, 1038123794), FADD32(1065353216, FDIV32(1036831949, v40$1))), FSUB32(v43$1, v57$1)), FMUL32(FDIV32(FMUL32(v52$1, 1038123794), FADD32(1065353216, FDIV32(1036831949, v41$1))), FSUB32(v43$1, v57$1))), FMUL32(1007908028, FSUB32(v43$1, v57$1)))), FADD32(v103$1, v104$1)), FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FP64_CONV32(FMUL64(FMUL64(FP32_CONV64(FMUL32(1031127695, v13$1)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v44$1)), FP32_CONV64(v14$1))), FP32_CONV64(FSUB32(v43$1, v56$1)))), FMUL32(FMUL32(FMUL32(1017370378, v15$1), v16$1), FSUB32(v43$1, v56$1))), FMUL32(FMUL32(FMUL32(FP64_CONV32(FMUL64(4584304132692975288, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074)))), v17$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(v43$1, 1107558400)), 4626998257160447590), 4609176140021203710)))))), FSUB32(v43$1, v56$1))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v62$1)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v17$1, 1073741824)), FSUB32(v43$1, v64$1)), FMUL32(FMUL32(FMUL32(v52$1, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v63$1)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v18$1, 1073741824)), FSUB32(v43$1, v64$1)))), FP64_CONV32(FMUL64(FMUL64(FMUL64(4606281698874543309, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074))), FP32_CONV64(FDIV32(v68$1, FADD32(v68$1, FP64_CONV32(FDIV64(FADD64(FMUL64(4602521013041703850, FEXP64(FMUL64(FMUL64(4590452086616291300, FSUB64(FADD64(FP32_CONV64(v43$1), 4617851446317258113), FP32_CONV64(v56$1))), 4609176140021203710))), FEXP64(FMUL64(FMUL64(4589059933899478532, FSUB64(FP32_CONV64(FSUB32(v43$1, v56$1)), 4648438821863009812)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4620564414732786100, FADD64(FP32_CONV64(FSUB32(v43$1, v56$1)), 4617037420684610896)), 4609176140021203710))))))))), FP32_CONV64(FSUB32(v43$1, v56$1))))), FMUL32(1073741824, FADD32(v60$1, v61$1))), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(881915012, FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v39$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1085066445))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)), 1065353216)))), v9$1), v10$1), FADD32(FMUL32(1063675494, FSUB32(1065353216, v11$1)), FMUL32(v53$1, FSUB32(1065353216, v12$1)))), FPOW32(1072064102, v46$1))), 4601778099247172813))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, 981668463), v65$1), FSUB32(v43$1, v56$1)), FMUL32(FMUL32(FMUL32(v52$1, 981668463), v65$1), FSUB32(v43$1, v56$1))))), $I_app.i.1$1)), $$d_finavalu[38]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 38);
    assume {:do_not_predicate} {:check_id "check_state_105"} {:captureState "check_state_105"} {:sourceloc} {:sourceloc_num 116} true;
    call {:check_id "check_state_105"} {:sourceloc} {:sourceloc_num 116} _CHECK_WRITE_$$d_finavalu(p1$2, 38, FSUB32(-2147483648, FSUB32(FADD32(FADD32(FADD32(FADD32(v98$2, v99$2), FADD32(FADD32(FMUL32(FDIV32(FMUL32(1038174126, 1038123794), FADD32(1065353216, FDIV32(1036831949, v40$2))), FSUB32(v43$2, v57$2)), FMUL32(FDIV32(FMUL32(v52$2, 1038123794), FADD32(1065353216, FDIV32(1036831949, v41$2))), FSUB32(v43$2, v57$2))), FMUL32(1007908028, FSUB32(v43$2, v57$2)))), FADD32(v103$2, v104$2)), FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FP64_CONV32(FMUL64(FMUL64(FP32_CONV64(FMUL32(1031127695, v13$2)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v44$2)), FP32_CONV64(v14$2))), FP32_CONV64(FSUB32(v43$2, v56$2)))), FMUL32(FMUL32(FMUL32(1017370378, v15$2), v16$2), FSUB32(v43$2, v56$2))), FMUL32(FMUL32(FMUL32(FP64_CONV32(FMUL64(4584304132692975288, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074)))), v17$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(v43$2, 1107558400)), 4626998257160447590), 4609176140021203710)))))), FSUB32(v43$2, v56$2))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v62$2)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v17$2, 1073741824)), FSUB32(v43$2, v64$2)), FMUL32(FMUL32(FMUL32(v52$2, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v63$2)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v18$2, 1073741824)), FSUB32(v43$2, v64$2)))), FP64_CONV32(FMUL64(FMUL64(FMUL64(4606281698874543309, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074))), FP32_CONV64(FDIV32(v68$2, FADD32(v68$2, FP64_CONV32(FDIV64(FADD64(FMUL64(4602521013041703850, FEXP64(FMUL64(FMUL64(4590452086616291300, FSUB64(FADD64(FP32_CONV64(v43$2), 4617851446317258113), FP32_CONV64(v56$2))), 4609176140021203710))), FEXP64(FMUL64(FMUL64(4589059933899478532, FSUB64(FP32_CONV64(FSUB32(v43$2, v56$2)), 4648438821863009812)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4620564414732786100, FADD64(FP32_CONV64(FSUB32(v43$2, v56$2)), 4617037420684610896)), 4609176140021203710))))))))), FP32_CONV64(FSUB32(v43$2, v56$2))))), FMUL32(1073741824, FADD32(v60$2, v61$2))), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(881915012, FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v39$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1085066445))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)), 1065353216)))), v9$2), v10$2), FADD32(FMUL32(1063675494, FSUB32(1065353216, v11$2)), FMUL32(v53$2, FSUB32(1065353216, v12$2)))), FPOW32(1072064102, v46$2))), 4601778099247172813))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, 981668463), v65$2), FSUB32(v43$2, v56$2)), FMUL32(FMUL32(FMUL32(v52$2, 981668463), v65$2), FSUB32(v43$2, v56$2))))), $I_app.i.1$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[38] := (if p1$1 then FSUB32(-2147483648, FSUB32(FADD32(FADD32(FADD32(FADD32(v98$1, v99$1), FADD32(FADD32(FMUL32(FDIV32(FMUL32(1038174126, 1038123794), FADD32(1065353216, FDIV32(1036831949, v40$1))), FSUB32(v43$1, v57$1)), FMUL32(FDIV32(FMUL32(v52$1, 1038123794), FADD32(1065353216, FDIV32(1036831949, v41$1))), FSUB32(v43$1, v57$1))), FMUL32(1007908028, FSUB32(v43$1, v57$1)))), FADD32(v103$1, v104$1)), FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FP64_CONV32(FMUL64(FMUL64(FP32_CONV64(FMUL32(1031127695, v13$1)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v44$1)), FP32_CONV64(v14$1))), FP32_CONV64(FSUB32(v43$1, v56$1)))), FMUL32(FMUL32(FMUL32(1017370378, v15$1), v16$1), FSUB32(v43$1, v56$1))), FMUL32(FMUL32(FMUL32(FP64_CONV32(FMUL64(4584304132692975288, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074)))), v17$1), FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(v43$1, 1107558400)), 4626998257160447590), 4609176140021203710)))))), FSUB32(v43$1, v56$1))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v62$1)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v17$1, 1073741824)), FSUB32(v43$1, v64$1)), FMUL32(FMUL32(FMUL32(v52$1, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v63$1)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v18$1, 1073741824)), FSUB32(v43$1, v64$1)))), FP64_CONV32(FMUL64(FMUL64(FMUL64(4606281698874543309, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074))), FP32_CONV64(FDIV32(v68$1, FADD32(v68$1, FP64_CONV32(FDIV64(FADD64(FMUL64(4602521013041703850, FEXP64(FMUL64(FMUL64(4590452086616291300, FSUB64(FADD64(FP32_CONV64(v43$1), 4617851446317258113), FP32_CONV64(v56$1))), 4609176140021203710))), FEXP64(FMUL64(FMUL64(4589059933899478532, FSUB64(FP32_CONV64(FSUB32(v43$1, v56$1)), 4648438821863009812)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4620564414732786100, FADD64(FP32_CONV64(FSUB32(v43$1, v56$1)), 4617037420684610896)), 4609176140021203710))))))))), FP32_CONV64(FSUB32(v43$1, v56$1))))), FMUL32(1073741824, FADD32(v60$1, v61$1))), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(881915012, FMUL32(FMUL32(v43$1, 1203532416), v45$1))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v39$1)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1085066445))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$1, v45$1), 1069066811)), 1065353216)))), v9$1), v10$1), FADD32(FMUL32(1063675494, FSUB32(1065353216, v11$1)), FMUL32(v53$1, FSUB32(1065353216, v12$1)))), FPOW32(1072064102, v46$1))), 4601778099247172813))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, 981668463), v65$1), FSUB32(v43$1, v56$1)), FMUL32(FMUL32(FMUL32(v52$1, 981668463), v65$1), FSUB32(v43$1, v56$1))))), $I_app.i.1$1)) else $$d_finavalu[38]);
    $$d_finavalu[38] := (if p1$2 then FSUB32(-2147483648, FSUB32(FADD32(FADD32(FADD32(FADD32(v98$2, v99$2), FADD32(FADD32(FMUL32(FDIV32(FMUL32(1038174126, 1038123794), FADD32(1065353216, FDIV32(1036831949, v40$2))), FSUB32(v43$2, v57$2)), FMUL32(FDIV32(FMUL32(v52$2, 1038123794), FADD32(1065353216, FDIV32(1036831949, v41$2))), FSUB32(v43$2, v57$2))), FMUL32(1007908028, FSUB32(v43$2, v57$2)))), FADD32(v103$2, v104$2)), FADD32(FADD32(FSUB32(FADD32(FADD32(FADD32(FADD32(FP64_CONV32(FMUL64(FMUL64(FP32_CONV64(FMUL32(1031127695, v13$2)), FADD64(FMUL64(4602678819172646912, FP32_CONV64(v44$2)), FP32_CONV64(v14$2))), FP32_CONV64(FSUB32(v43$2, v56$2)))), FMUL32(FMUL32(FMUL32(1017370378, v15$2), v16$2), FSUB32(v43$2, v56$2))), FMUL32(FMUL32(FMUL32(FP64_CONV32(FMUL64(4584304132692975288, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074)))), v17$2), FP64_CONV32(FDIV64(4607182418800017408, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FP32_CONV64(FADD32(v43$2, 1107558400)), 4626998257160447590), 4609176140021203710)))))), FSUB32(v43$2, v56$2))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v62$2)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v17$2, 1073741824)), FSUB32(v43$2, v64$2)), FMUL32(FMUL32(FMUL32(v52$2, FP64_CONV32(FMUL64(4589708452245819884, FADD64(4588375386756118217, FDIV64(4596013491724138578, FADD64(4607182418800017408, FEXP64(FMUL64(FDIV64(FADD64(-4603579539098121011, FP32_CONV64(FP64_CONV32(FADD64(FP32_CONV64(FSUB32(-2147483648, v63$2)), 4613937818241073152)))), 4603579539098121011), 4609176140021203710)))))))), FPOW32(v18$2, 1073741824)), FSUB32(v43$2, v64$2)))), FP64_CONV32(FMUL64(FMUL64(FMUL64(4606281698874543309, FSQRT64(FDIV64(FP32_CONV64(1085066445), 4617765877924338074))), FP32_CONV64(FDIV32(v68$2, FADD32(v68$2, FP64_CONV32(FDIV64(FADD64(FMUL64(4602521013041703850, FEXP64(FMUL64(FMUL64(4590452086616291300, FSUB64(FADD64(FP32_CONV64(v43$2), 4617851446317258113), FP32_CONV64(v56$2))), 4609176140021203710))), FEXP64(FMUL64(FMUL64(4589059933899478532, FSUB64(FP32_CONV64(FSUB32(v43$2, v56$2)), 4648438821863009812)), 4609176140021203710))), FADD64(4607182418800017408, FEXP64(FMUL64(FMUL64(-4620564414732786100, FADD64(FP32_CONV64(FSUB32(v43$2, v56$2)), 4617037420684610896)), 4609176140021203710))))))))), FP32_CONV64(FSUB32(v43$2, v56$2))))), FMUL32(1073741824, FADD32(v60$2, v61$2))), FP64_CONV32(FMUL64(FP32_CONV64(FMUL32(FMUL32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(FMUL32(881915012, FMUL32(FMUL32(v43$2, 1203532416), v45$2))), FADD64(FMUL64(FMUL64(4604930618986332160, FP32_CONV64(v39$2)), FP32_CONV64(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)))), FSUB64(-9223372036854775808, FMUL64(4604930618986332160, FP32_CONV64(1085066445))))), FP32_CONV64(FSUB32(FEXP32(FMUL32(FMUL32(v43$2, v45$2), 1069066811)), 1065353216)))), v9$2), v10$2), FADD32(FMUL32(1063675494, FSUB32(1065353216, v11$2)), FMUL32(v53$2, FSUB32(1065353216, v12$2)))), FPOW32(1072064102, v46$2))), 4601778099247172813))), FADD32(FMUL32(FMUL32(FMUL32(1038174126, 981668463), v65$2), FSUB32(v43$2, v56$2)), FMUL32(FMUL32(FMUL32(v52$2, 981668463), v65$2), FSUB32(v43$2, v56$2))))), $I_app.i.1$2)) else $$d_finavalu[38]);
    call {:sourceloc} {:sourceloc_num 117} _LOG_WRITE_$$d_finavalu(p1$1, 40, 0, $$d_finavalu[40]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 40);
    assume {:do_not_predicate} {:check_id "check_state_106"} {:captureState "check_state_106"} {:sourceloc} {:sourceloc_num 117} true;
    call {:check_id "check_state_106"} {:sourceloc} {:sourceloc_num 117} _CHECK_WRITE_$$d_finavalu(p1$2, 40, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[40] := (if p1$1 then 0 else $$d_finavalu[40]);
    $$d_finavalu[40] := (if p1$2 then 0 else $$d_finavalu[40]);
    call {:sourceloc} {:sourceloc_num 118} _LOG_WRITE_$$d_finavalu(p1$1, 41, 0, $$d_finavalu[41]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p1$2, 41);
    assume {:do_not_predicate} {:check_id "check_state_107"} {:captureState "check_state_107"} {:sourceloc} {:sourceloc_num 118} true;
    call {:check_id "check_state_107"} {:sourceloc} {:sourceloc_num 118} _CHECK_WRITE_$$d_finavalu(p1$2, 41, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[41] := (if p1$1 then 0 else $$d_finavalu[41]);
    $$d_finavalu[41] := (if p1$2 then 0 else $$d_finavalu[41]);
    v108$1 := (if p13$1 then v0$1 == 1 else v108$1);
    v108$2 := (if p13$2 then v0$2 == 1 else v108$2);
    p14$1 := (if p13$1 && v108$1 then v108$1 else p14$1);
    p14$2 := (if p13$2 && v108$2 then v108$2 else p14$2);
    v109$1 := (if p14$1 then v1$1 == 0 else v109$1);
    v109$2 := (if p14$2 then v1$2 == 0 else v109$2);
    p15$1 := (if p14$1 && v109$1 then v109$1 else p15$1);
    p15$2 := (if p14$2 && v109$2 then v109$2 else p15$2);
    v110$1 := (if p15$1 then $$d_initvalu[35] else v110$1);
    v110$2 := (if p15$2 then $$d_initvalu[35] else v110$2);
    v111$1 := (if p15$1 then FP64_CONV32(FMUL64(FP32_CONV64(v110$1), 4652007308841189376)) else v111$1);
    v111$2 := (if p15$2 then FP64_CONV32(FMUL64(FP32_CONV64(v110$2), 4652007308841189376)) else v111$2);
    v112$1 := (if p15$1 then $$d_params[1] else v112$1);
    v112$2 := (if p15$2 then $$d_params[1] else v112$2);
    v113$1 := (if p15$1 then $$d_params[2] else v113$1);
    v113$2 := (if p15$2 then $$d_params[2] else v113$2);
    v114$1 := (if p15$1 then $$d_params[3] else v114$1);
    v114$2 := (if p15$2 then $$d_params[3] else v114$2);
    v115$1 := (if p15$1 then $$d_params[4] else v115$1);
    v115$2 := (if p15$2 then $$d_params[4] else v115$2);
    v116$1 := (if p15$1 then $$d_params[16] else v116$1);
    v116$2 := (if p15$2 then $$d_params[16] else v116$2);
    v117$1 := (if p15$1 then $$d_params[17] else v117$1);
    v117$2 := (if p15$2 then $$d_params[17] else v117$2);
    v118$1 := (if p15$1 then $$d_initvalu[46] else v118$1);
    v118$2 := (if p15$2 then $$d_initvalu[46] else v118$2);
    v119$1 := (if p15$1 then $$d_initvalu[47] else v119$1);
    v119$2 := (if p15$2 then $$d_initvalu[47] else v119$2);
    v120$1 := (if p15$1 then $$d_initvalu[48] else v120$1);
    v120$2 := (if p15$2 then $$d_initvalu[48] else v120$2);
    v121$1 := (if p15$1 then $$d_initvalu[49] else v121$1);
    v121$2 := (if p15$2 then $$d_initvalu[49] else v121$2);
    v122$1 := (if p15$1 then $$d_initvalu[50] else v122$1);
    v122$2 := (if p15$2 then $$d_initvalu[50] else v122$2);
    v123$1 := (if p15$1 then $$d_initvalu[51] else v123$1);
    v123$2 := (if p15$2 then $$d_initvalu[51] else v123$2);
    v124$1 := (if p15$1 then $$d_initvalu[52] else v124$1);
    v124$2 := (if p15$2 then $$d_initvalu[52] else v124$2);
    v125$1 := (if p15$1 then $$d_initvalu[53] else v125$1);
    v125$2 := (if p15$2 then $$d_initvalu[53] else v125$2);
    v126$1 := (if p15$1 then $$d_initvalu[54] else v126$1);
    v126$2 := (if p15$2 then $$d_initvalu[54] else v126$2);
    v127$1 := (if p15$1 then $$d_initvalu[55] else v127$1);
    v127$2 := (if p15$2 then $$d_initvalu[55] else v127$2);
    v128$1 := (if p15$1 then $$d_initvalu[56] else v128$1);
    v128$2 := (if p15$2 then $$d_initvalu[56] else v128$2);
    v129$1 := (if p15$1 then $$d_initvalu[57] else v129$1);
    v129$2 := (if p15$2 then $$d_initvalu[57] else v129$2);
    v130$1 := (if p15$1 then $$d_initvalu[58] else v130$1);
    v130$2 := (if p15$2 then $$d_initvalu[58] else v130$2);
    v131$1 := (if p15$1 then $$d_initvalu[59] else v131$1);
    v131$2 := (if p15$2 then $$d_initvalu[59] else v131$2);
    v132$1 := (if p15$1 then $$d_initvalu[60] else v132$1);
    v132$2 := (if p15$2 then $$d_initvalu[60] else v132$2);
    v133$1 := (if p15$1 then FEQ32(v117$1, 1065353216) || FLT32(v117$1, 1065353216) else v133$1);
    v133$2 := (if p15$2 then FEQ32(v117$2, 1065353216) || FLT32(v117$2, 1065353216) else v133$2);
    p16$1 := (if p15$1 && v133$1 then v133$1 else p16$1);
    p16$2 := (if p15$2 && v133$2 then v133$2 else p16$2);
    p17$1 := (if p15$1 && !v133$1 then !v133$1 else p17$1);
    p17$2 := (if p15$2 && !v133$2 then !v133$2 else p17$2);
    $Kd02.i.0$1, $Kd24.i.0$1 := (if p16$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4606641986844732948)), FDIV64(FP32_CONV64(v117$1), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4620749512677471027)), FDIV64(FP32_CONV64(v117$1), 4581998289683761594)))) else $Kd02.i.0$1), (if p16$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4603939827068310651)), FDIV64(FP32_CONV64(v117$1), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4623507967449235456)), FDIV64(FP32_CONV64(v117$1), 4594680426234436911)))) else $Kd24.i.0$1);
    $Kd02.i.0$2, $Kd24.i.0$2 := (if p16$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4606641986844732948)), FDIV64(FP32_CONV64(v117$2), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4620749512677471027)), FDIV64(FP32_CONV64(v117$2), 4581998289683761594)))) else $Kd02.i.0$2), (if p16$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4603939827068310651)), FDIV64(FP32_CONV64(v117$2), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4623507967449235456)), FDIV64(FP32_CONV64(v117$2), 4594680426234436911)))) else $Kd24.i.0$2);
    $Kd02.i.0$1, $Kd24.i.0$1 := (if p17$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v117$1, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v117$1, 1065353216)), 4589564337057744028)))) else $Kd02.i.0$1), (if p17$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v117$1, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$1), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v117$1, 1065353216)), 4594572339843380019)))) else $Kd24.i.0$1);
    $Kd02.i.0$2, $Kd24.i.0$2 := (if p17$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v117$2, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v117$2, 1065353216)), 4589564337057744028)))) else $Kd02.i.0$2), (if p17$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v117$2, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v116$2), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v117$2, 1065353216)), 4594572339843380019)))) else $Kd24.i.0$2);
    v134$1 := (if p15$1 then FDIV32(1092616192, $Kd02.i.0$1) else v134$1);
    v134$2 := (if p15$2 then FDIV32(1092616192, $Kd02.i.0$2) else v134$2);
    v135$1 := (if p15$1 then FDIV32(1140457472, $Kd24.i.0$1) else v135$1);
    v135$2 := (if p15$2 then FDIV32(1140457472, $Kd24.i.0$2) else v135$2);
    v136$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v136$1);
    v136$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v136$2);
    v137$1 := (if p15$1 then FDIV32(985104436, 1120403456) else v137$1);
    v137$2 := (if p15$2 then FDIV32(985104436, 1120403456) else v137$2);
    v138$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v138$1);
    v138$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v138$2);
    v139$1 := (if p15$1 then FMUL32(1159512064, 984245443) else v139$1);
    v139$2 := (if p15$2 then FMUL32(1159512064, 984245443) else v139$2);
    v140$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v134$1, FPOW32(v111$1, 1073741824)), v118$1), FSUB32(-2147483648, FMUL32(1092616192, v119$1))) else v140$1);
    v140$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v134$2, FPOW32(v111$2, 1073741824)), v118$2), FSUB32(-2147483648, FMUL32(1092616192, v119$2))) else v140$2);
    v141$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v135$1, FPOW32(v111$1, 1073741824)), v119$1), FSUB32(-2147483648, FMUL32(1140457472, v120$1))) else v141$1);
    v141$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v135$2, FPOW32(v111$2, 1073741824)), v119$2), FSUB32(-2147483648, FMUL32(1140457472, v120$2))) else v141$2);
    v142$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(v112$1, v121$1), v122$1), v123$1) else v142$1);
    v142$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(v112$2, v121$2), v122$2), v123$2) else v142$2);
    v143$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v134$1, FPOW32(v111$1, 1073741824)), v121$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v122$1))) else v143$1);
    v143$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v134$2, FPOW32(v111$2, 1073741824)), v121$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v122$2))) else v143$2);
    v144$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v135$1, FPOW32(v111$1, 1073741824)), v122$1), FSUB32(-2147483648, FMUL32(1140457472, v123$1))) else v144$1);
    v144$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v135$2, FPOW32(v111$2, 1073741824)), v122$2), FSUB32(-2147483648, FMUL32(1140457472, v123$2))) else v144$2);
    v145$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v136$1, v118$1), v142$1), FSUB32(-2147483648, FMUL32(985104436, v121$1))) else v145$1);
    v145$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v136$2, v118$2), v142$2), FSUB32(-2147483648, FMUL32(985104436, v121$2))) else v145$2);
    v146$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v136$1, v119$1), v142$1), FSUB32(-2147483648, FMUL32(v137$1, v122$1))) else v146$1);
    v146$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v136$2, v119$2), v142$2), FSUB32(-2147483648, FMUL32(v137$2, v122$2))) else v146$2);
    v147$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v136$1, v120$1), v142$1), FSUB32(-2147483648, FMUL32(v137$1, v123$1))) else v147$1);
    v147$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v136$2, v120$2), v142$2), FSUB32(-2147483648, FMUL32(v137$2, v123$2))) else v147$2);
    v148$1 := (if p15$1 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v111$1, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v114$1, v129$1), v130$1), v131$1), v132$1)), FSUB32(-2147483648, FMUL32(1065353216, v129$1))) else v148$1);
    v148$2 := (if p15$2 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v111$2, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v114$2, v129$2), v130$2), v131$2), v132$2)), FSUB32(-2147483648, FMUL32(1065353216, v129$2))) else v148$2);
    v149$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v134$1, FPOW32(v111$1, 1073741824)), v130$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v131$1))) else v149$1);
    v149$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v134$2, FPOW32(v111$2, 1073741824)), v130$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v131$2))) else v149$2);
    v150$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v135$1, FPOW32(v111$1, 1073741824)), v131$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v132$1))) else v150$1);
    v150$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v135$2, FPOW32(v111$2, 1073741824)), v131$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v132$2))) else v150$2);
    v151$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v118$1), v129$1), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v139$1), v130$1))) else v151$1);
    v151$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v118$2), v129$2), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v139$2), v130$2))) else v151$2);
    v152$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v119$1), v129$1), FSUB32(-2147483648, FMUL32(v139$1, v131$1))) else v152$1);
    v152$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v119$2), v129$2), FSUB32(-2147483648, FMUL32(v139$2, v131$2))) else v152$2);
    v153$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v120$1), v129$1), FSUB32(-2147483648, FMUL32(984245443, v132$1))) else v153$1);
    v153$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v120$2), v129$2), FSUB32(-2147483648, FMUL32(984245443, v132$2))) else v153$2);
    v154$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v124$1), v125$1), v126$1), v127$1), v128$1) else v154$1);
    v154$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v124$2), v125$2), v126$2), v127$2), v128$2) else v154$2);
    v155$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v138$1, v119$1), v154$1), FSUB32(-2147483648, FMUL32(FMUL32(v138$1, 1084227584), v124$1))) else v155$1);
    v155$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v138$2, v119$2), v154$2), FSUB32(-2147483648, FMUL32(FMUL32(v138$2, 1084227584), v124$2))) else v155$2);
    v156$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v135$1, FPOW32(v111$1, 1073741824)), v124$1), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v125$1))) else v156$1);
    v156$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v135$2, FPOW32(v111$2, 1073741824)), v124$2), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v125$2))) else v156$2);
    v157$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v138$1, v120$1), v154$1), FSUB32(-2147483648, FMUL32(1074580685, v125$1))) else v157$1);
    v157$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v138$2, v120$2), v154$2), FSUB32(-2147483648, FMUL32(1074580685, v125$2))) else v157$2);
    v158$1 := (if p15$1 then FADD32(FADD32(FADD32(v125$1, v126$1), v127$1), v128$1) else v158$1);
    v158$2 := (if p15$2 then FADD32(FADD32(FADD32(v125$2, v126$2), v127$2), v128$2) else v158$2);
    v159$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v158$1, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v158$1)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v158$1, 1073741824)))))), v125$1), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v115$1), v126$1), FADD32(FMUL32(v113$1, v126$1), 1094189056)))) else v159$1);
    v159$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v158$2, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v158$2)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v158$2, 1073741824)))))), v125$2), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v115$2), v126$2), FADD32(FMUL32(v113$2, v126$2), 1094189056)))) else v159$2);
    v160$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v126$1), FSUB32(-2147483648, FMUL32(FMUL32(v135$1, FPOW32(v111$1, 1073741824)), v127$1))) else v160$1);
    v160$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v126$2), FSUB32(-2147483648, FMUL32(FMUL32(v135$2, FPOW32(v111$2, 1073741824)), v127$2))) else v160$2);
    v161$1 := (if p15$1 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v126$1), FSUB32(-2147483648, FMUL32(FMUL32(v138$1, v120$1), v128$1))) else v161$1);
    v161$2 := (if p15$2 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v126$2), FSUB32(-2147483648, FMUL32(FMUL32(v138$2, v120$2), v128$2))) else v161$2);
    v162$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v138$1, 1084227584), v127$1), FSUB32(-2147483648, FMUL32(FMUL32(v138$1, v119$1), v128$1))) else v162$1);
    v162$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v138$2, 1084227584), v127$2), FSUB32(-2147483648, FMUL32(FMUL32(v138$2, v119$2), v128$2))) else v162$2);
    v163$1 := (if p15$1 then FDIV32(FMUL32(FMUL32(1071393014, v115$1), v127$1), FADD32(FMUL32(v113$1, v127$1), 1094189056)) else v163$1);
    v163$2 := (if p15$2 then FDIV32(FMUL32(FMUL32(1071393014, v115$2), v127$2), FADD32(FMUL32(v113$2, v127$2), 1094189056)) else v163$2);
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$d_finavalu(p15$1, 46, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v140$1), v145$1), v151$1)))), $$d_finavalu[46]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 46);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$d_finavalu(p15$2, 46, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v140$2), v145$2), v151$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[46] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v140$1), v145$1), v151$1)))) else $$d_finavalu[46]);
    $$d_finavalu[46] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v140$2), v145$2), v151$2)))) else $$d_finavalu[46]);
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$d_finavalu(p15$1, 47, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v140$1, v141$1), v146$1), v152$1), FMUL32(v113$1, FADD32(FSUB32(-2147483648, v155$1), v162$1)))))), $$d_finavalu[47]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 47);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$d_finavalu(p15$2, 47, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v140$2, v141$2), v146$2), v152$2), FMUL32(v113$2, FADD32(FSUB32(-2147483648, v155$2), v162$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[47] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v140$1, v141$1), v146$1), v152$1), FMUL32(v113$1, FADD32(FSUB32(-2147483648, v155$1), v162$1)))))) else $$d_finavalu[47]);
    $$d_finavalu[47] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v140$2, v141$2), v146$2), v152$2), FMUL32(v113$2, FADD32(FSUB32(-2147483648, v155$2), v162$2)))))) else $$d_finavalu[47]);
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$d_finavalu(p15$1, 48, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v141$1, v147$1), v153$1), FMUL32(v113$1, FADD32(FSUB32(-2147483648, v157$1), v161$1)))))), $$d_finavalu[48]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 48);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$d_finavalu(p15$2, 48, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v141$2, v147$2), v153$2), FMUL32(v113$2, FADD32(FSUB32(-2147483648, v157$2), v161$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[48] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v141$1, v147$1), v153$1), FMUL32(v113$1, FADD32(FSUB32(-2147483648, v157$1), v161$1)))))) else $$d_finavalu[48]);
    $$d_finavalu[48] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v141$2, v147$2), v153$2), FMUL32(v113$2, FADD32(FSUB32(-2147483648, v157$2), v161$2)))))) else $$d_finavalu[48]);
    call {:sourceloc} {:sourceloc_num 151} _LOG_WRITE_$$d_finavalu(p15$1, 49, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v145$1, v143$1)))), $$d_finavalu[49]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 49);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 151} _CHECK_WRITE_$$d_finavalu(p15$2, 49, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v145$2, v143$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[49] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v145$1, v143$1)))) else $$d_finavalu[49]);
    $$d_finavalu[49] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v145$2, v143$2)))) else $$d_finavalu[49]);
    call {:sourceloc} {:sourceloc_num 152} _LOG_WRITE_$$d_finavalu(p15$1, 50, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v143$1, v146$1), v144$1)))), $$d_finavalu[50]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 50);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 152} _CHECK_WRITE_$$d_finavalu(p15$2, 50, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v143$2, v146$2), v144$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[50] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v143$1, v146$1), v144$1)))) else $$d_finavalu[50]);
    $$d_finavalu[50] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v143$2, v146$2), v144$2)))) else $$d_finavalu[50]);
    call {:sourceloc} {:sourceloc_num 153} _LOG_WRITE_$$d_finavalu(p15$1, 51, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v144$1, v147$1)))), $$d_finavalu[51]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 51);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 153} _CHECK_WRITE_$$d_finavalu(p15$2, 51, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v144$2, v147$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[51] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v144$1, v147$1)))) else $$d_finavalu[51]);
    $$d_finavalu[51] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v144$2, v147$2)))) else $$d_finavalu[51]);
    call {:sourceloc} {:sourceloc_num 154} _LOG_WRITE_$$d_finavalu(p15$1, 52, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v155$1, v156$1), v163$1)))), $$d_finavalu[52]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 52);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 154} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 154} _CHECK_WRITE_$$d_finavalu(p15$2, 52, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v155$2, v156$2), v163$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[52] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v155$1, v156$1), v163$1)))) else $$d_finavalu[52]);
    $$d_finavalu[52] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v155$2, v156$2), v163$2)))) else $$d_finavalu[52]);
    call {:sourceloc} {:sourceloc_num 155} _LOG_WRITE_$$d_finavalu(p15$1, 53, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v157$1, v156$1), v159$1)))), $$d_finavalu[53]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 53);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 155} _CHECK_WRITE_$$d_finavalu(p15$2, 53, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v157$2, v156$2), v159$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[53] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v157$1, v156$1), v159$1)))) else $$d_finavalu[53]);
    $$d_finavalu[53] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v157$2, v156$2), v159$2)))) else $$d_finavalu[53]);
    call {:sourceloc} {:sourceloc_num 156} _LOG_WRITE_$$d_finavalu(p15$1, 54, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v159$1, v161$1), v160$1)))), $$d_finavalu[54]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 54);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 156} _CHECK_WRITE_$$d_finavalu(p15$2, 54, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v159$2, v161$2), v160$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[54] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v159$1, v161$1), v160$1)))) else $$d_finavalu[54]);
    $$d_finavalu[54] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v159$2, v161$2), v160$2)))) else $$d_finavalu[54]);
    call {:sourceloc} {:sourceloc_num 157} _LOG_WRITE_$$d_finavalu(p15$1, 55, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v160$1, v162$1), v163$1)))), $$d_finavalu[55]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 55);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 157} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 157} _CHECK_WRITE_$$d_finavalu(p15$2, 55, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v160$2, v162$2), v163$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[55] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v160$1, v162$1), v163$1)))) else $$d_finavalu[55]);
    $$d_finavalu[55] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v160$2, v162$2), v163$2)))) else $$d_finavalu[55]);
    call {:sourceloc} {:sourceloc_num 158} _LOG_WRITE_$$d_finavalu(p15$1, 56, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v161$1, v162$1), FDIV32(FMUL32(FMUL32(1071393014, v115$1), v128$1), FADD32(FMUL32(v113$1, v128$1), 1094189056)))))), $$d_finavalu[56]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 56);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 158} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 158} _CHECK_WRITE_$$d_finavalu(p15$2, 56, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v161$2, v162$2), FDIV32(FMUL32(FMUL32(1071393014, v115$2), v128$2), FADD32(FMUL32(v113$2, v128$2), 1094189056)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[56] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v161$1, v162$1), FDIV32(FMUL32(FMUL32(1071393014, v115$1), v128$1), FADD32(FMUL32(v113$1, v128$1), 1094189056)))))) else $$d_finavalu[56]);
    $$d_finavalu[56] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v161$2, v162$2), FDIV32(FMUL32(FMUL32(1071393014, v115$2), v128$2), FADD32(FMUL32(v113$2, v128$2), 1094189056)))))) else $$d_finavalu[56]);
    call {:sourceloc} {:sourceloc_num 159} _LOG_WRITE_$$d_finavalu(p15$1, 57, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v148$1, v151$1), v152$1), v153$1)))), $$d_finavalu[57]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 57);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 159} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 159} _CHECK_WRITE_$$d_finavalu(p15$2, 57, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v148$2, v151$2), v152$2), v153$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[57] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v148$1, v151$1), v152$1), v153$1)))) else $$d_finavalu[57]);
    $$d_finavalu[57] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v148$2, v151$2), v152$2), v153$2)))) else $$d_finavalu[57]);
    call {:sourceloc} {:sourceloc_num 160} _LOG_WRITE_$$d_finavalu(p15$1, 58, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v151$1, v149$1)))), $$d_finavalu[58]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 58);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 160} _CHECK_WRITE_$$d_finavalu(p15$2, 58, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v151$2, v149$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[58] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v151$1, v149$1)))) else $$d_finavalu[58]);
    $$d_finavalu[58] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v151$2, v149$2)))) else $$d_finavalu[58]);
    call {:sourceloc} {:sourceloc_num 161} _LOG_WRITE_$$d_finavalu(p15$1, 59, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v152$1, v149$1), v150$1)))), $$d_finavalu[59]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 59);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 161} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 161} _CHECK_WRITE_$$d_finavalu(p15$2, 59, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v152$2, v149$2), v150$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[59] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v152$1, v149$1), v150$1)))) else $$d_finavalu[59]);
    $$d_finavalu[59] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v152$2, v149$2), v150$2)))) else $$d_finavalu[59]);
    call {:sourceloc} {:sourceloc_num 162} _LOG_WRITE_$$d_finavalu(p15$1, 60, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v153$1, v150$1)))), $$d_finavalu[60]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 60);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 162} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 162} _CHECK_WRITE_$$d_finavalu(p15$2, 60, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v153$2, v150$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[60] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v153$1, v150$1)))) else $$d_finavalu[60]);
    $$d_finavalu[60] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v153$2, v150$2)))) else $$d_finavalu[60]);
    call {:sourceloc} {:sourceloc_num 163} _LOG_WRITE_$$d_com(p15$1, 0, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v113$1), FSUB32(v160$1, v156$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v140$1, v141$1), v143$1), v144$1), v148$1), v149$1), v150$1))))))), $$d_com[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_com(p15$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 163} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 163} _CHECK_WRITE_$$d_com(p15$2, 0, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v113$2), FSUB32(v160$2, v156$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v140$2, v141$2), v143$2), v144$2), v148$2), v149$2), v150$2))))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_com"} true;
    $$d_com[0] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v113$1), FSUB32(v160$1, v156$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v140$1, v141$1), v143$1), v144$1), v148$1), v149$1), v150$1))))))) else $$d_com[0]);
    $$d_com[0] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v113$2), FSUB32(v160$2, v156$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v140$2, v141$2), v143$2), v144$2), v148$2), v149$2), v150$2))))))) else $$d_com[0]);
    v164$1 := (if p15$1 then $$d_initvalu[36] else v164$1);
    v164$2 := (if p15$2 then $$d_initvalu[36] else v164$2);
    v165$1 := (if p15$1 then FP64_CONV32(FMUL64(FP32_CONV64(v164$1), 4652007308841189376)) else v165$1);
    v165$2 := (if p15$2 then FP64_CONV32(FMUL64(FP32_CONV64(v164$2), 4652007308841189376)) else v165$2);
    v166$1 := (if p15$1 then $$d_params[6] else v166$1);
    v166$2 := (if p15$2 then $$d_params[6] else v166$2);
    v167$1 := (if p15$1 then $$d_params[7] else v167$1);
    v167$2 := (if p15$2 then $$d_params[7] else v167$2);
    v168$1 := (if p15$1 then $$d_params[8] else v168$1);
    v168$2 := (if p15$2 then $$d_params[8] else v168$2);
    v169$1 := (if p15$1 then $$d_params[9] else v169$1);
    v169$2 := (if p15$2 then $$d_params[9] else v169$2);
    v170$1 := (if p15$1 then $$d_params[16] else v170$1);
    v170$2 := (if p15$2 then $$d_params[16] else v170$2);
    v171$1 := (if p15$1 then $$d_params[17] else v171$1);
    v171$2 := (if p15$2 then $$d_params[17] else v171$2);
    v172$1 := (if p15$1 then $$d_initvalu[61] else v172$1);
    v172$2 := (if p15$2 then $$d_initvalu[61] else v172$2);
    v173$1 := (if p15$1 then $$d_initvalu[62] else v173$1);
    v173$2 := (if p15$2 then $$d_initvalu[62] else v173$2);
    v174$1 := (if p15$1 then $$d_initvalu[63] else v174$1);
    v174$2 := (if p15$2 then $$d_initvalu[63] else v174$2);
    v175$1 := (if p15$1 then $$d_initvalu[64] else v175$1);
    v175$2 := (if p15$2 then $$d_initvalu[64] else v175$2);
    v176$1 := (if p15$1 then $$d_initvalu[65] else v176$1);
    v176$2 := (if p15$2 then $$d_initvalu[65] else v176$2);
    v177$1 := (if p15$1 then $$d_initvalu[66] else v177$1);
    v177$2 := (if p15$2 then $$d_initvalu[66] else v177$2);
    v178$1 := (if p15$1 then $$d_initvalu[67] else v178$1);
    v178$2 := (if p15$2 then $$d_initvalu[67] else v178$2);
    v179$1 := (if p15$1 then $$d_initvalu[68] else v179$1);
    v179$2 := (if p15$2 then $$d_initvalu[68] else v179$2);
    v180$1 := (if p15$1 then $$d_initvalu[69] else v180$1);
    v180$2 := (if p15$2 then $$d_initvalu[69] else v180$2);
    v181$1 := (if p15$1 then $$d_initvalu[70] else v181$1);
    v181$2 := (if p15$2 then $$d_initvalu[70] else v181$2);
    v182$1 := (if p15$1 then $$d_initvalu[71] else v182$1);
    v182$2 := (if p15$2 then $$d_initvalu[71] else v182$2);
    v183$1 := (if p15$1 then $$d_initvalu[72] else v183$1);
    v183$2 := (if p15$2 then $$d_initvalu[72] else v183$2);
    v184$1 := (if p15$1 then $$d_initvalu[73] else v184$1);
    v184$2 := (if p15$2 then $$d_initvalu[73] else v184$2);
    v185$1 := (if p15$1 then $$d_initvalu[74] else v185$1);
    v185$2 := (if p15$2 then $$d_initvalu[74] else v185$2);
    v186$1 := (if p15$1 then $$d_initvalu[75] else v186$1);
    v186$2 := (if p15$2 then $$d_initvalu[75] else v186$2);
    v187$1 := (if p15$1 then FEQ32(v171$1, 1065353216) || FLT32(v171$1, 1065353216) else v187$1);
    v187$2 := (if p15$2 then FEQ32(v171$2, 1065353216) || FLT32(v171$2, 1065353216) else v187$2);
    p18$1 := (if p15$1 && v187$1 then v187$1 else p18$1);
    p18$2 := (if p15$2 && v187$2 then v187$2 else p18$2);
    p19$1 := (if p15$1 && !v187$1 then !v187$1 else p19$1);
    p19$2 := (if p15$2 && !v187$2 then !v187$2 else p19$2);
    $Kd02.i52.0$1, $Kd24.i53.0$1 := (if p18$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4606641986844732948)), FDIV64(FP32_CONV64(v171$1), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4620749512677471027)), FDIV64(FP32_CONV64(v171$1), 4581998289683761594)))) else $Kd02.i52.0$1), (if p18$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4603939827068310651)), FDIV64(FP32_CONV64(v171$1), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4623507967449235456)), FDIV64(FP32_CONV64(v171$1), 4594680426234436911)))) else $Kd24.i53.0$1);
    $Kd02.i52.0$2, $Kd24.i53.0$2 := (if p18$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4606641986844732948)), FDIV64(FP32_CONV64(v171$2), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4620749512677471027)), FDIV64(FP32_CONV64(v171$2), 4581998289683761594)))) else $Kd02.i52.0$2), (if p18$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4603939827068310651)), FDIV64(FP32_CONV64(v171$2), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4623507967449235456)), FDIV64(FP32_CONV64(v171$2), 4594680426234436911)))) else $Kd24.i53.0$2);
    $Kd02.i52.0$1, $Kd24.i53.0$1 := (if p19$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v171$1, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v171$1, 1065353216)), 4589564337057744028)))) else $Kd02.i52.0$1), (if p19$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v171$1, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$1), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v171$1, 1065353216)), 4594572339843380019)))) else $Kd24.i53.0$1);
    $Kd02.i52.0$2, $Kd24.i53.0$2 := (if p19$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v171$2, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v171$2, 1065353216)), 4589564337057744028)))) else $Kd02.i52.0$2), (if p19$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v171$2, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v170$2), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v171$2, 1065353216)), 4594572339843380019)))) else $Kd24.i53.0$2);
    v188$1 := (if p15$1 then FDIV32(1092616192, $Kd02.i52.0$1) else v188$1);
    v188$2 := (if p15$2 then FDIV32(1092616192, $Kd02.i52.0$2) else v188$2);
    v189$1 := (if p15$1 then FDIV32(1140457472, $Kd24.i53.0$1) else v189$1);
    v189$2 := (if p15$2 then FDIV32(1140457472, $Kd24.i53.0$2) else v189$2);
    v190$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v190$1);
    v190$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v190$2);
    v191$1 := (if p15$1 then FDIV32(985104436, 1120403456) else v191$1);
    v191$2 := (if p15$2 then FDIV32(985104436, 1120403456) else v191$2);
    v192$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v192$1);
    v192$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v192$2);
    v193$1 := (if p15$1 then FMUL32(1159512064, 984245443) else v193$1);
    v193$2 := (if p15$2 then FMUL32(1159512064, 984245443) else v193$2);
    v194$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v188$1, FPOW32(v165$1, 1073741824)), v172$1), FSUB32(-2147483648, FMUL32(1092616192, v173$1))) else v194$1);
    v194$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v188$2, FPOW32(v165$2, 1073741824)), v172$2), FSUB32(-2147483648, FMUL32(1092616192, v173$2))) else v194$2);
    v195$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v189$1, FPOW32(v165$1, 1073741824)), v173$1), FSUB32(-2147483648, FMUL32(1140457472, v174$1))) else v195$1);
    v195$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v189$2, FPOW32(v165$2, 1073741824)), v173$2), FSUB32(-2147483648, FMUL32(1140457472, v174$2))) else v195$2);
    v196$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(v166$1, v175$1), v176$1), v177$1) else v196$1);
    v196$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(v166$2, v175$2), v176$2), v177$2) else v196$2);
    v197$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v188$1, FPOW32(v165$1, 1073741824)), v175$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v176$1))) else v197$1);
    v197$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v188$2, FPOW32(v165$2, 1073741824)), v175$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v176$2))) else v197$2);
    v198$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v189$1, FPOW32(v165$1, 1073741824)), v176$1), FSUB32(-2147483648, FMUL32(1140457472, v177$1))) else v198$1);
    v198$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v189$2, FPOW32(v165$2, 1073741824)), v176$2), FSUB32(-2147483648, FMUL32(1140457472, v177$2))) else v198$2);
    v199$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v190$1, v172$1), v196$1), FSUB32(-2147483648, FMUL32(985104436, v175$1))) else v199$1);
    v199$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v190$2, v172$2), v196$2), FSUB32(-2147483648, FMUL32(985104436, v175$2))) else v199$2);
    v200$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v190$1, v173$1), v196$1), FSUB32(-2147483648, FMUL32(v191$1, v176$1))) else v200$1);
    v200$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v190$2, v173$2), v196$2), FSUB32(-2147483648, FMUL32(v191$2, v176$2))) else v200$2);
    v201$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v190$1, v174$1), v196$1), FSUB32(-2147483648, FMUL32(v191$1, v177$1))) else v201$1);
    v201$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v190$2, v174$2), v196$2), FSUB32(-2147483648, FMUL32(v191$2, v177$2))) else v201$2);
    v202$1 := (if p15$1 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v165$1, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v168$1, v183$1), v184$1), v185$1), v186$1)), FSUB32(-2147483648, FMUL32(1065353216, v183$1))) else v202$1);
    v202$2 := (if p15$2 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v165$2, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v168$2, v183$2), v184$2), v185$2), v186$2)), FSUB32(-2147483648, FMUL32(1065353216, v183$2))) else v202$2);
    v203$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v188$1, FPOW32(v165$1, 1073741824)), v184$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v185$1))) else v203$1);
    v203$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v188$2, FPOW32(v165$2, 1073741824)), v184$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v185$2))) else v203$2);
    v204$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v189$1, FPOW32(v165$1, 1073741824)), v185$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v186$1))) else v204$1);
    v204$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v189$2, FPOW32(v165$2, 1073741824)), v185$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v186$2))) else v204$2);
    v205$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v172$1), v183$1), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v193$1), v184$1))) else v205$1);
    v205$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v172$2), v183$2), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v193$2), v184$2))) else v205$2);
    v206$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v173$1), v183$1), FSUB32(-2147483648, FMUL32(v193$1, v185$1))) else v206$1);
    v206$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v173$2), v183$2), FSUB32(-2147483648, FMUL32(v193$2, v185$2))) else v206$2);
    v207$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v174$1), v183$1), FSUB32(-2147483648, FMUL32(984245443, v186$1))) else v207$1);
    v207$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v174$2), v183$2), FSUB32(-2147483648, FMUL32(984245443, v186$2))) else v207$2);
    v208$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v178$1), v179$1), v180$1), v181$1), v182$1) else v208$1);
    v208$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v178$2), v179$2), v180$2), v181$2), v182$2) else v208$2);
    v209$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v192$1, v173$1), v208$1), FSUB32(-2147483648, FMUL32(FMUL32(v192$1, 1084227584), v178$1))) else v209$1);
    v209$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v192$2, v173$2), v208$2), FSUB32(-2147483648, FMUL32(FMUL32(v192$2, 1084227584), v178$2))) else v209$2);
    v210$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v189$1, FPOW32(v165$1, 1073741824)), v178$1), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v179$1))) else v210$1);
    v210$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v189$2, FPOW32(v165$2, 1073741824)), v178$2), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v179$2))) else v210$2);
    v211$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v192$1, v174$1), v208$1), FSUB32(-2147483648, FMUL32(1074580685, v179$1))) else v211$1);
    v211$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v192$2, v174$2), v208$2), FSUB32(-2147483648, FMUL32(1074580685, v179$2))) else v211$2);
    v212$1 := (if p15$1 then FADD32(FADD32(FADD32(v179$1, v180$1), v181$1), v182$1) else v212$1);
    v212$2 := (if p15$2 then FADD32(FADD32(FADD32(v179$2, v180$2), v181$2), v182$2) else v212$2);
    v213$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v212$1, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v212$1)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v212$1, 1073741824)))))), v179$1), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v169$1), v180$1), FADD32(FMUL32(v167$1, v180$1), 1094189056)))) else v213$1);
    v213$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v212$2, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v212$2)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v212$2, 1073741824)))))), v179$2), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v169$2), v180$2), FADD32(FMUL32(v167$2, v180$2), 1094189056)))) else v213$2);
    v214$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v180$1), FSUB32(-2147483648, FMUL32(FMUL32(v189$1, FPOW32(v165$1, 1073741824)), v181$1))) else v214$1);
    v214$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v180$2), FSUB32(-2147483648, FMUL32(FMUL32(v189$2, FPOW32(v165$2, 1073741824)), v181$2))) else v214$2);
    v215$1 := (if p15$1 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v180$1), FSUB32(-2147483648, FMUL32(FMUL32(v192$1, v174$1), v182$1))) else v215$1);
    v215$2 := (if p15$2 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v180$2), FSUB32(-2147483648, FMUL32(FMUL32(v192$2, v174$2), v182$2))) else v215$2);
    v216$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v192$1, 1084227584), v181$1), FSUB32(-2147483648, FMUL32(FMUL32(v192$1, v173$1), v182$1))) else v216$1);
    v216$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v192$2, 1084227584), v181$2), FSUB32(-2147483648, FMUL32(FMUL32(v192$2, v173$2), v182$2))) else v216$2);
    v217$1 := (if p15$1 then FDIV32(FMUL32(FMUL32(1071393014, v169$1), v181$1), FADD32(FMUL32(v167$1, v181$1), 1094189056)) else v217$1);
    v217$2 := (if p15$2 then FDIV32(FMUL32(FMUL32(1071393014, v169$2), v181$2), FADD32(FMUL32(v167$2, v181$2), 1094189056)) else v217$2);
    call {:sourceloc} {:sourceloc_num 189} _LOG_WRITE_$$d_finavalu(p15$1, 61, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v194$1), v199$1), v205$1)))), $$d_finavalu[61]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 61);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 189} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 189} _CHECK_WRITE_$$d_finavalu(p15$2, 61, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v194$2), v199$2), v205$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[61] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v194$1), v199$1), v205$1)))) else $$d_finavalu[61]);
    $$d_finavalu[61] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v194$2), v199$2), v205$2)))) else $$d_finavalu[61]);
    call {:sourceloc} {:sourceloc_num 190} _LOG_WRITE_$$d_finavalu(p15$1, 62, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v194$1, v195$1), v200$1), v206$1), FMUL32(v167$1, FADD32(FSUB32(-2147483648, v209$1), v216$1)))))), $$d_finavalu[62]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 62);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 190} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 190} _CHECK_WRITE_$$d_finavalu(p15$2, 62, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v194$2, v195$2), v200$2), v206$2), FMUL32(v167$2, FADD32(FSUB32(-2147483648, v209$2), v216$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[62] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v194$1, v195$1), v200$1), v206$1), FMUL32(v167$1, FADD32(FSUB32(-2147483648, v209$1), v216$1)))))) else $$d_finavalu[62]);
    $$d_finavalu[62] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v194$2, v195$2), v200$2), v206$2), FMUL32(v167$2, FADD32(FSUB32(-2147483648, v209$2), v216$2)))))) else $$d_finavalu[62]);
    call {:sourceloc} {:sourceloc_num 191} _LOG_WRITE_$$d_finavalu(p15$1, 63, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v195$1, v201$1), v207$1), FMUL32(v167$1, FADD32(FSUB32(-2147483648, v211$1), v215$1)))))), $$d_finavalu[63]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 63);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 191} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 191} _CHECK_WRITE_$$d_finavalu(p15$2, 63, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v195$2, v201$2), v207$2), FMUL32(v167$2, FADD32(FSUB32(-2147483648, v211$2), v215$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[63] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v195$1, v201$1), v207$1), FMUL32(v167$1, FADD32(FSUB32(-2147483648, v211$1), v215$1)))))) else $$d_finavalu[63]);
    $$d_finavalu[63] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v195$2, v201$2), v207$2), FMUL32(v167$2, FADD32(FSUB32(-2147483648, v211$2), v215$2)))))) else $$d_finavalu[63]);
    call {:sourceloc} {:sourceloc_num 192} _LOG_WRITE_$$d_finavalu(p15$1, 64, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v199$1, v197$1)))), $$d_finavalu[64]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 64);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 192} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 192} _CHECK_WRITE_$$d_finavalu(p15$2, 64, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v199$2, v197$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[64] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v199$1, v197$1)))) else $$d_finavalu[64]);
    $$d_finavalu[64] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v199$2, v197$2)))) else $$d_finavalu[64]);
    call {:sourceloc} {:sourceloc_num 193} _LOG_WRITE_$$d_finavalu(p15$1, 65, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v197$1, v200$1), v198$1)))), $$d_finavalu[65]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 65);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 193} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 193} _CHECK_WRITE_$$d_finavalu(p15$2, 65, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v197$2, v200$2), v198$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[65] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v197$1, v200$1), v198$1)))) else $$d_finavalu[65]);
    $$d_finavalu[65] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v197$2, v200$2), v198$2)))) else $$d_finavalu[65]);
    call {:sourceloc} {:sourceloc_num 194} _LOG_WRITE_$$d_finavalu(p15$1, 66, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v198$1, v201$1)))), $$d_finavalu[66]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 66);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 194} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 194} _CHECK_WRITE_$$d_finavalu(p15$2, 66, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v198$2, v201$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[66] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v198$1, v201$1)))) else $$d_finavalu[66]);
    $$d_finavalu[66] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v198$2, v201$2)))) else $$d_finavalu[66]);
    call {:sourceloc} {:sourceloc_num 195} _LOG_WRITE_$$d_finavalu(p15$1, 67, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v209$1, v210$1), v217$1)))), $$d_finavalu[67]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 67);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 195} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 195} _CHECK_WRITE_$$d_finavalu(p15$2, 67, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v209$2, v210$2), v217$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[67] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v209$1, v210$1), v217$1)))) else $$d_finavalu[67]);
    $$d_finavalu[67] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v209$2, v210$2), v217$2)))) else $$d_finavalu[67]);
    call {:sourceloc} {:sourceloc_num 196} _LOG_WRITE_$$d_finavalu(p15$1, 68, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v211$1, v210$1), v213$1)))), $$d_finavalu[68]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 68);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 196} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 196} _CHECK_WRITE_$$d_finavalu(p15$2, 68, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v211$2, v210$2), v213$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[68] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v211$1, v210$1), v213$1)))) else $$d_finavalu[68]);
    $$d_finavalu[68] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v211$2, v210$2), v213$2)))) else $$d_finavalu[68]);
    call {:sourceloc} {:sourceloc_num 197} _LOG_WRITE_$$d_finavalu(p15$1, 69, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v213$1, v215$1), v214$1)))), $$d_finavalu[69]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 69);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 197} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 197} _CHECK_WRITE_$$d_finavalu(p15$2, 69, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v213$2, v215$2), v214$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[69] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v213$1, v215$1), v214$1)))) else $$d_finavalu[69]);
    $$d_finavalu[69] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v213$2, v215$2), v214$2)))) else $$d_finavalu[69]);
    call {:sourceloc} {:sourceloc_num 198} _LOG_WRITE_$$d_finavalu(p15$1, 70, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v214$1, v216$1), v217$1)))), $$d_finavalu[70]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 70);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 198} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 198} _CHECK_WRITE_$$d_finavalu(p15$2, 70, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v214$2, v216$2), v217$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[70] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v214$1, v216$1), v217$1)))) else $$d_finavalu[70]);
    $$d_finavalu[70] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v214$2, v216$2), v217$2)))) else $$d_finavalu[70]);
    call {:sourceloc} {:sourceloc_num 199} _LOG_WRITE_$$d_finavalu(p15$1, 71, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v215$1, v216$1), FDIV32(FMUL32(FMUL32(1071393014, v169$1), v182$1), FADD32(FMUL32(v167$1, v182$1), 1094189056)))))), $$d_finavalu[71]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 71);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 199} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 199} _CHECK_WRITE_$$d_finavalu(p15$2, 71, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v215$2, v216$2), FDIV32(FMUL32(FMUL32(1071393014, v169$2), v182$2), FADD32(FMUL32(v167$2, v182$2), 1094189056)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[71] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v215$1, v216$1), FDIV32(FMUL32(FMUL32(1071393014, v169$1), v182$1), FADD32(FMUL32(v167$1, v182$1), 1094189056)))))) else $$d_finavalu[71]);
    $$d_finavalu[71] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v215$2, v216$2), FDIV32(FMUL32(FMUL32(1071393014, v169$2), v182$2), FADD32(FMUL32(v167$2, v182$2), 1094189056)))))) else $$d_finavalu[71]);
    call {:sourceloc} {:sourceloc_num 200} _LOG_WRITE_$$d_finavalu(p15$1, 72, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v202$1, v205$1), v206$1), v207$1)))), $$d_finavalu[72]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 72);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 200} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 200} _CHECK_WRITE_$$d_finavalu(p15$2, 72, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v202$2, v205$2), v206$2), v207$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[72] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v202$1, v205$1), v206$1), v207$1)))) else $$d_finavalu[72]);
    $$d_finavalu[72] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v202$2, v205$2), v206$2), v207$2)))) else $$d_finavalu[72]);
    call {:sourceloc} {:sourceloc_num 201} _LOG_WRITE_$$d_finavalu(p15$1, 73, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v205$1, v203$1)))), $$d_finavalu[73]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 73);
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 201} _CHECK_WRITE_$$d_finavalu(p15$2, 73, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v205$2, v203$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[73] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v205$1, v203$1)))) else $$d_finavalu[73]);
    $$d_finavalu[73] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v205$2, v203$2)))) else $$d_finavalu[73]);
    call {:sourceloc} {:sourceloc_num 202} _LOG_WRITE_$$d_finavalu(p15$1, 74, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v206$1, v203$1), v204$1)))), $$d_finavalu[74]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 74);
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 202} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 202} _CHECK_WRITE_$$d_finavalu(p15$2, 74, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v206$2, v203$2), v204$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[74] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v206$1, v203$1), v204$1)))) else $$d_finavalu[74]);
    $$d_finavalu[74] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v206$2, v203$2), v204$2)))) else $$d_finavalu[74]);
    call {:sourceloc} {:sourceloc_num 203} _LOG_WRITE_$$d_finavalu(p15$1, 75, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v207$1, v204$1)))), $$d_finavalu[75]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 75);
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 203} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 203} _CHECK_WRITE_$$d_finavalu(p15$2, 75, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v207$2, v204$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[75] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v207$1, v204$1)))) else $$d_finavalu[75]);
    $$d_finavalu[75] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v207$2, v204$2)))) else $$d_finavalu[75]);
    call {:sourceloc} {:sourceloc_num 204} _LOG_WRITE_$$d_com(p15$1, 1, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v167$1), FSUB32(v214$1, v210$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v194$1, v195$1), v197$1), v198$1), v202$1), v203$1), v204$1))))))), $$d_com[1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_com(p15$2, 1);
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 204} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 204} _CHECK_WRITE_$$d_com(p15$2, 1, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v167$2), FSUB32(v214$2, v210$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v194$2, v195$2), v197$2), v198$2), v202$2), v203$2), v204$2))))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_com"} true;
    $$d_com[1] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v167$1), FSUB32(v214$1, v210$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v194$1, v195$1), v197$1), v198$1), v202$1), v203$1), v204$1))))))) else $$d_com[1]);
    $$d_com[1] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v167$2), FSUB32(v214$2, v210$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v194$2, v195$2), v197$2), v198$2), v202$2), v203$2), v204$2))))))) else $$d_com[1]);
    v218$1 := (if p15$1 then $$d_initvalu[37] else v218$1);
    v218$2 := (if p15$2 then $$d_initvalu[37] else v218$2);
    v219$1 := (if p15$1 then FP64_CONV32(FMUL64(FP32_CONV64(v218$1), 4652007308841189376)) else v219$1);
    v219$2 := (if p15$2 then FP64_CONV32(FMUL64(FP32_CONV64(v218$2), 4652007308841189376)) else v219$2);
    v220$1 := (if p15$1 then $$d_params[11] else v220$1);
    v220$2 := (if p15$2 then $$d_params[11] else v220$2);
    v221$1 := (if p15$1 then $$d_params[12] else v221$1);
    v221$2 := (if p15$2 then $$d_params[12] else v221$2);
    v222$1 := (if p15$1 then $$d_params[13] else v222$1);
    v222$2 := (if p15$2 then $$d_params[13] else v222$2);
    v223$1 := (if p15$1 then $$d_params[14] else v223$1);
    v223$2 := (if p15$2 then $$d_params[14] else v223$2);
    v224$1 := (if p15$1 then $$d_params[16] else v224$1);
    v224$2 := (if p15$2 then $$d_params[16] else v224$2);
    v225$1 := (if p15$1 then $$d_params[17] else v225$1);
    v225$2 := (if p15$2 then $$d_params[17] else v225$2);
    v226$1 := (if p15$1 then $$d_initvalu[76] else v226$1);
    v226$2 := (if p15$2 then $$d_initvalu[76] else v226$2);
    v227$1 := (if p15$1 then $$d_initvalu[77] else v227$1);
    v227$2 := (if p15$2 then $$d_initvalu[77] else v227$2);
    v228$1 := (if p15$1 then $$d_initvalu[78] else v228$1);
    v228$2 := (if p15$2 then $$d_initvalu[78] else v228$2);
    v229$1 := (if p15$1 then $$d_initvalu[79] else v229$1);
    v229$2 := (if p15$2 then $$d_initvalu[79] else v229$2);
    v230$1 := (if p15$1 then $$d_initvalu[80] else v230$1);
    v230$2 := (if p15$2 then $$d_initvalu[80] else v230$2);
    v231$1 := (if p15$1 then $$d_initvalu[81] else v231$1);
    v231$2 := (if p15$2 then $$d_initvalu[81] else v231$2);
    v232$1 := (if p15$1 then $$d_initvalu[82] else v232$1);
    v232$2 := (if p15$2 then $$d_initvalu[82] else v232$2);
    v233$1 := (if p15$1 then $$d_initvalu[83] else v233$1);
    v233$2 := (if p15$2 then $$d_initvalu[83] else v233$2);
    v234$1 := (if p15$1 then $$d_initvalu[84] else v234$1);
    v234$2 := (if p15$2 then $$d_initvalu[84] else v234$2);
    v235$1 := (if p15$1 then $$d_initvalu[85] else v235$1);
    v235$2 := (if p15$2 then $$d_initvalu[85] else v235$2);
    v236$1 := (if p15$1 then $$d_initvalu[86] else v236$1);
    v236$2 := (if p15$2 then $$d_initvalu[86] else v236$2);
    v237$1 := (if p15$1 then $$d_initvalu[87] else v237$1);
    v237$2 := (if p15$2 then $$d_initvalu[87] else v237$2);
    v238$1 := (if p15$1 then $$d_initvalu[88] else v238$1);
    v238$2 := (if p15$2 then $$d_initvalu[88] else v238$2);
    v239$1 := (if p15$1 then $$d_initvalu[89] else v239$1);
    v239$2 := (if p15$2 then $$d_initvalu[89] else v239$2);
    v240$1 := (if p15$1 then $$d_initvalu[90] else v240$1);
    v240$2 := (if p15$2 then $$d_initvalu[90] else v240$2);
    v241$1 := (if p15$1 then FEQ32(v225$1, 1065353216) || FLT32(v225$1, 1065353216) else v241$1);
    v241$2 := (if p15$2 then FEQ32(v225$2, 1065353216) || FLT32(v225$2, 1065353216) else v241$2);
    p20$1 := (if p15$1 && v241$1 then v241$1 else p20$1);
    p20$2 := (if p15$2 && v241$2 then v241$2 else p20$2);
    p21$1 := (if p15$1 && !v241$1 then !v241$1 else p21$1);
    p21$2 := (if p15$2 && !v241$2 then !v241$2 else p21$2);
    $Kd02.i173.0$1, $Kd24.i174.0$1 := (if p20$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4606641986844732948)), FDIV64(FP32_CONV64(v225$1), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4620749512677471027)), FDIV64(FP32_CONV64(v225$1), 4581998289683761594)))) else $Kd02.i173.0$1), (if p20$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4603939827068310651)), FDIV64(FP32_CONV64(v225$1), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4623507967449235456)), FDIV64(FP32_CONV64(v225$1), 4594680426234436911)))) else $Kd24.i174.0$1);
    $Kd02.i173.0$2, $Kd24.i174.0$2 := (if p20$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4606641986844732948)), FDIV64(FP32_CONV64(v225$2), 4578071150808694522))), FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4620749512677471027)), FDIV64(FP32_CONV64(v225$2), 4581998289683761594)))) else $Kd02.i173.0$2), (if p20$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4603939827068310651)), FDIV64(FP32_CONV64(v225$2), 4564099183324740295))), FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4623507967449235456)), FDIV64(FP32_CONV64(v225$2), 4594680426234436911)))) else $Kd24.i174.0$2);
    $Kd02.i173.0$1, $Kd24.i174.0$1 := (if p21$1 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v225$1, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v225$1, 1065353216)), 4589564337057744028)))) else $Kd02.i173.0$1), (if p21$1 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v225$1, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$1), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v225$1, 1065353216)), 4594572339843380019)))) else $Kd24.i174.0$1);
    $Kd02.i173.0$2, $Kd24.i174.0$2 := (if p21$2 then FP64_CONV32(FMUL64(FMUL64(4567911030049346683, FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4606641986844732948)), 4635564478951675221), FDIV64(FP32_CONV64(FSUB32(v225$2, 1065353216)), 4588807732320345784))), FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4620749512677471027)), 4631593975871105211), FDIV64(FP32_CONV64(FSUB32(v225$2, 1065353216)), 4589564337057744028)))) else $Kd02.i173.0$2), (if p21$2 then FP64_CONV32(FMUL64(FMUL64(4593779706308962812, FADD64(FADD64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4603939827068310651)), 4649494139406272805), FDIV64(FP32_CONV64(FSUB32(v225$2, 1065353216)), 4572414629676717179))), FADD64(FSUB64(FADD64(4607182418800017408, FDIV64(FP32_CONV64(v224$2), 4623507967449235456)), 4619044841347927930), FDIV64(FP32_CONV64(FSUB32(v225$2, 1065353216)), 4594572339843380019)))) else $Kd24.i174.0$2);
    v242$1 := (if p15$1 then FDIV32(1092616192, $Kd02.i173.0$1) else v242$1);
    v242$2 := (if p15$2 then FDIV32(1092616192, $Kd02.i173.0$2) else v242$2);
    v243$1 := (if p15$1 then FDIV32(1140457472, $Kd24.i174.0$1) else v243$1);
    v243$2 := (if p15$2 then FDIV32(1140457472, $Kd24.i174.0$2) else v243$2);
    v244$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v244$1);
    v244$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(985104436), 4596373779694328218)) else v244$2);
    v245$1 := (if p15$1 then FDIV32(985104436, 1120403456) else v245$1);
    v245$2 := (if p15$2 then FDIV32(985104436, 1120403456) else v245$2);
    v246$1 := (if p15$1 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v246$1);
    v246$2 := (if p15$2 then FP64_CONV32(FDIV64(FP32_CONV64(1074580685), 4584988679836335604)) else v246$2);
    v247$1 := (if p15$1 then FMUL32(1159512064, 984245443) else v247$1);
    v247$2 := (if p15$2 then FMUL32(1159512064, 984245443) else v247$2);
    v248$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v242$1, FPOW32(v219$1, 1073741824)), v226$1), FSUB32(-2147483648, FMUL32(1092616192, v227$1))) else v248$1);
    v248$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v242$2, FPOW32(v219$2, 1073741824)), v226$2), FSUB32(-2147483648, FMUL32(1092616192, v227$2))) else v248$2);
    v249$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v243$1, FPOW32(v219$1, 1073741824)), v227$1), FSUB32(-2147483648, FMUL32(1140457472, v228$1))) else v249$1);
    v249$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v243$2, FPOW32(v219$2, 1073741824)), v227$2), FSUB32(-2147483648, FMUL32(1140457472, v228$2))) else v249$2);
    v250$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(v220$1, v229$1), v230$1), v231$1) else v250$1);
    v250$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(v220$2, v229$2), v230$2), v231$2) else v250$2);
    v251$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v242$1, FPOW32(v219$1, 1073741824)), v229$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v230$1))) else v251$1);
    v251$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v242$2, FPOW32(v219$2, 1073741824)), v229$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1120403456), v230$2))) else v251$2);
    v252$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v243$1, FPOW32(v219$1, 1073741824)), v230$1), FSUB32(-2147483648, FMUL32(1140457472, v231$1))) else v252$1);
    v252$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v243$2, FPOW32(v219$2, 1073741824)), v230$2), FSUB32(-2147483648, FMUL32(1140457472, v231$2))) else v252$2);
    v253$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v244$1, v226$1), v250$1), FSUB32(-2147483648, FMUL32(985104436, v229$1))) else v253$1);
    v253$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v244$2, v226$2), v250$2), FSUB32(-2147483648, FMUL32(985104436, v229$2))) else v253$2);
    v254$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v244$1, v227$1), v250$1), FSUB32(-2147483648, FMUL32(v245$1, v230$1))) else v254$1);
    v254$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v244$2, v227$2), v250$2), FSUB32(-2147483648, FMUL32(v245$2, v230$2))) else v254$2);
    v255$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v244$1, v228$1), v250$1), FSUB32(-2147483648, FMUL32(v245$1, v231$1))) else v255$1);
    v255$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v244$2, v228$2), v250$2), FSUB32(-2147483648, FMUL32(v245$2, v231$2))) else v255$2);
    v256$1 := (if p15$1 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v219$1, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v222$1, v237$1), v238$1), v239$1), v240$1)), FSUB32(-2147483648, FMUL32(1065353216, v237$1))) else v256$1);
    v256$2 := (if p15$2 then FADD32(FMUL32(FMUL32(FP64_CONV32(FDIV64(FP32_CONV64(1065353216), 4602678819172646912)), FPOW32(v219$2, 1073741824)), FSUB32(FSUB32(FSUB32(FSUB32(v222$2, v237$2), v238$2), v239$2), v240$2)), FSUB32(-2147483648, FMUL32(1065353216, v237$2))) else v256$2);
    v257$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v242$1, FPOW32(v219$1, 1073741824)), v238$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v239$1))) else v257$1);
    v257$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v242$2, FPOW32(v219$2, 1073741824)), v238$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1126498304), v239$2))) else v257$2);
    v258$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v243$1, FPOW32(v219$1, 1073741824)), v239$1), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v240$1))) else v258$1);
    v258$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v243$2, FPOW32(v219$2, 1073741824)), v239$2), FSUB32(-2147483648, FMUL32(FDIV32(1092616192, 1159512064), v240$2))) else v258$2);
    v259$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v226$1), v237$1), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v247$1), v238$1))) else v259$1);
    v259$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v226$2), v237$2), FSUB32(-2147483648, FMUL32(FMUL32(1126498304, v247$2), v238$2))) else v259$2);
    v260$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v227$1), v237$1), FSUB32(-2147483648, FMUL32(v247$1, v239$1))) else v260$1);
    v260$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v227$2), v237$2), FSUB32(-2147483648, FMUL32(v247$2, v239$2))) else v260$2);
    v261$1 := (if p15$1 then FADD32(FMUL32(FMUL32(1110966272, v228$1), v237$1), FSUB32(-2147483648, FMUL32(984245443, v240$1))) else v261$1);
    v261$2 := (if p15$2 then FADD32(FMUL32(FMUL32(1110966272, v228$2), v237$2), FSUB32(-2147483648, FMUL32(984245443, v240$2))) else v261$2);
    v262$1 := (if p15$1 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v232$1), v233$1), v234$1), v235$1), v236$1) else v262$1);
    v262$2 := (if p15$2 then FSUB32(FSUB32(FSUB32(FSUB32(FSUB32(1065353216, v232$2), v233$2), v234$2), v235$2), v236$2) else v262$2);
    v263$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v246$1, v227$1), v262$1), FSUB32(-2147483648, FMUL32(FMUL32(v246$1, 1084227584), v232$1))) else v263$1);
    v263$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v246$2, v227$2), v262$2), FSUB32(-2147483648, FMUL32(FMUL32(v246$2, 1084227584), v232$2))) else v263$2);
    v264$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v243$1, FPOW32(v219$1, 1073741824)), v232$1), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v233$1))) else v264$1);
    v264$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v243$2, FPOW32(v219$2, 1073741824)), v232$2), FSUB32(-2147483648, FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4584988679836335604), 4617315517961601024)), v233$2))) else v264$2);
    v265$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v246$1, v228$1), v262$1), FSUB32(-2147483648, FMUL32(1074580685, v233$1))) else v265$1);
    v265$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v246$2, v228$2), v262$2), FSUB32(-2147483648, FMUL32(1074580685, v233$2))) else v265$2);
    v266$1 := (if p15$1 then FADD32(FADD32(FADD32(v233$1, v234$1), v235$1), v236$1) else v266$1);
    v266$2 := (if p15$2 then FADD32(FADD32(FADD32(v233$2, v234$2), v235$2), v236$2) else v266$2);
    v267$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v266$1, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v266$1)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v266$1, 1073741824)))))), v233$1), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v223$1), v234$1), FADD32(FMUL32(v221$1, v234$1), 1094189056)))) else v267$1);
    v267$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FADD64(FMUL64(4579800533065604792, FP32_CONV64(FPOW32(v266$2, 1077936128))), FADD64(FMUL64(4588087156379966505, FP32_CONV64(v266$2)), FMUL64(4575181641287773612, FP32_CONV64(FPOW32(v266$2, 1073741824)))))), v233$2), FSUB32(-2147483648, FDIV32(FMUL32(FMUL32(1071393014, v223$2), v234$2), FADD32(FMUL32(v221$2, v234$2), 1094189056)))) else v267$2);
    v268$1 := (if p15$1 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v234$1), FSUB32(-2147483648, FMUL32(FMUL32(v243$1, FPOW32(v219$1, 1073741824)), v235$1))) else v268$1);
    v268$2 := (if p15$2 then FADD32(FMUL32(FP64_CONV32(FDIV64(FMUL64(FP32_CONV64(1140457472), 4540068552173843632), 4617315517961601024)), v234$2), FSUB32(-2147483648, FMUL32(FMUL32(v243$2, FPOW32(v219$2, 1073741824)), v235$2))) else v268$2);
    v269$1 := (if p15$1 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v234$1), FSUB32(-2147483648, FMUL32(FMUL32(v246$1, v228$1), v236$1))) else v269$1);
    v269$2 := (if p15$2 then FADD32(FMUL32(FDIV32(1074580685, 1148846080), v234$2), FSUB32(-2147483648, FMUL32(FMUL32(v246$2, v228$2), v236$2))) else v269$2);
    v270$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v246$1, 1084227584), v235$1), FSUB32(-2147483648, FMUL32(FMUL32(v246$1, v227$1), v236$1))) else v270$1);
    v270$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v246$2, 1084227584), v235$2), FSUB32(-2147483648, FMUL32(FMUL32(v246$2, v227$2), v236$2))) else v270$2);
    v271$1 := (if p15$1 then FDIV32(FMUL32(FMUL32(1071393014, v223$1), v235$1), FADD32(FMUL32(v221$1, v235$1), 1094189056)) else v271$1);
    v271$2 := (if p15$2 then FDIV32(FMUL32(FMUL32(1071393014, v223$2), v235$2), FADD32(FMUL32(v221$2, v235$2), 1094189056)) else v271$2);
    call {:sourceloc} {:sourceloc_num 230} _LOG_WRITE_$$d_finavalu(p15$1, 76, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v248$1), v253$1), v259$1)))), $$d_finavalu[76]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 76);
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 230} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 230} _CHECK_WRITE_$$d_finavalu(p15$2, 76, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v248$2), v253$2), v259$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[76] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v248$1), v253$1), v259$1)))) else $$d_finavalu[76]);
    $$d_finavalu[76] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(-2147483648, v248$2), v253$2), v259$2)))) else $$d_finavalu[76]);
    call {:sourceloc} {:sourceloc_num 231} _LOG_WRITE_$$d_finavalu(p15$1, 77, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v248$1, v249$1), v254$1), v260$1), FMUL32(v221$1, FADD32(FSUB32(-2147483648, v263$1), v270$1)))))), $$d_finavalu[77]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 77);
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 231} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 231} _CHECK_WRITE_$$d_finavalu(p15$2, 77, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v248$2, v249$2), v254$2), v260$2), FMUL32(v221$2, FADD32(FSUB32(-2147483648, v263$2), v270$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[77] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v248$1, v249$1), v254$1), v260$1), FMUL32(v221$1, FADD32(FSUB32(-2147483648, v263$1), v270$1)))))) else $$d_finavalu[77]);
    $$d_finavalu[77] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(FSUB32(v248$2, v249$2), v254$2), v260$2), FMUL32(v221$2, FADD32(FSUB32(-2147483648, v263$2), v270$2)))))) else $$d_finavalu[77]);
    call {:sourceloc} {:sourceloc_num 232} _LOG_WRITE_$$d_finavalu(p15$1, 78, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v249$1, v255$1), v261$1), FMUL32(v221$1, FADD32(FSUB32(-2147483648, v265$1), v269$1)))))), $$d_finavalu[78]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 78);
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 232} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 232} _CHECK_WRITE_$$d_finavalu(p15$2, 78, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v249$2, v255$2), v261$2), FMUL32(v221$2, FADD32(FSUB32(-2147483648, v265$2), v269$2)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[78] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v249$1, v255$1), v261$1), FMUL32(v221$1, FADD32(FSUB32(-2147483648, v265$1), v269$1)))))) else $$d_finavalu[78]);
    $$d_finavalu[78] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(FSUB32(v249$2, v255$2), v261$2), FMUL32(v221$2, FADD32(FSUB32(-2147483648, v265$2), v269$2)))))) else $$d_finavalu[78]);
    call {:sourceloc} {:sourceloc_num 233} _LOG_WRITE_$$d_finavalu(p15$1, 79, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v253$1, v251$1)))), $$d_finavalu[79]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 79);
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 233} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 233} _CHECK_WRITE_$$d_finavalu(p15$2, 79, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v253$2, v251$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[79] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v253$1, v251$1)))) else $$d_finavalu[79]);
    $$d_finavalu[79] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v253$2, v251$2)))) else $$d_finavalu[79]);
    call {:sourceloc} {:sourceloc_num 234} _LOG_WRITE_$$d_finavalu(p15$1, 80, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v251$1, v254$1), v252$1)))), $$d_finavalu[80]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 80);
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 234} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 234} _CHECK_WRITE_$$d_finavalu(p15$2, 80, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v251$2, v254$2), v252$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[80] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v251$1, v254$1), v252$1)))) else $$d_finavalu[80]);
    $$d_finavalu[80] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v251$2, v254$2), v252$2)))) else $$d_finavalu[80]);
    call {:sourceloc} {:sourceloc_num 235} _LOG_WRITE_$$d_finavalu(p15$1, 81, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v252$1, v255$1)))), $$d_finavalu[81]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 81);
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 235} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 235} _CHECK_WRITE_$$d_finavalu(p15$2, 81, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v252$2, v255$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[81] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v252$1, v255$1)))) else $$d_finavalu[81]);
    $$d_finavalu[81] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v252$2, v255$2)))) else $$d_finavalu[81]);
    call {:sourceloc} {:sourceloc_num 236} _LOG_WRITE_$$d_finavalu(p15$1, 82, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v263$1, v264$1), v271$1)))), $$d_finavalu[82]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 82);
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 236} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 236} _CHECK_WRITE_$$d_finavalu(p15$2, 82, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v263$2, v264$2), v271$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[82] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v263$1, v264$1), v271$1)))) else $$d_finavalu[82]);
    $$d_finavalu[82] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FSUB32(v263$2, v264$2), v271$2)))) else $$d_finavalu[82]);
    call {:sourceloc} {:sourceloc_num 237} _LOG_WRITE_$$d_finavalu(p15$1, 83, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v265$1, v264$1), v267$1)))), $$d_finavalu[83]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 83);
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 237} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 237} _CHECK_WRITE_$$d_finavalu(p15$2, 83, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v265$2, v264$2), v267$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[83] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v265$1, v264$1), v267$1)))) else $$d_finavalu[83]);
    $$d_finavalu[83] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v265$2, v264$2), v267$2)))) else $$d_finavalu[83]);
    call {:sourceloc} {:sourceloc_num 238} _LOG_WRITE_$$d_finavalu(p15$1, 84, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v267$1, v269$1), v268$1)))), $$d_finavalu[84]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 84);
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 238} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 238} _CHECK_WRITE_$$d_finavalu(p15$2, 84, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v267$2, v269$2), v268$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[84] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v267$1, v269$1), v268$1)))) else $$d_finavalu[84]);
    $$d_finavalu[84] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v267$2, v269$2), v268$2)))) else $$d_finavalu[84]);
    call {:sourceloc} {:sourceloc_num 239} _LOG_WRITE_$$d_finavalu(p15$1, 85, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v268$1, v270$1), v271$1)))), $$d_finavalu[85]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 85);
    assume {:do_not_predicate} {:check_id "check_state_41"} {:captureState "check_state_41"} {:sourceloc} {:sourceloc_num 239} true;
    call {:check_id "check_state_41"} {:sourceloc} {:sourceloc_num 239} _CHECK_WRITE_$$d_finavalu(p15$2, 85, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v268$2, v270$2), v271$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[85] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v268$1, v270$1), v271$1)))) else $$d_finavalu[85]);
    $$d_finavalu[85] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(v268$2, v270$2), v271$2)))) else $$d_finavalu[85]);
    call {:sourceloc} {:sourceloc_num 240} _LOG_WRITE_$$d_finavalu(p15$1, 86, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v269$1, v270$1), FDIV32(FMUL32(FMUL32(1071393014, v223$1), v236$1), FADD32(FMUL32(v221$1, v236$1), 1094189056)))))), $$d_finavalu[86]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 86);
    assume {:do_not_predicate} {:check_id "check_state_42"} {:captureState "check_state_42"} {:sourceloc} {:sourceloc_num 240} true;
    call {:check_id "check_state_42"} {:sourceloc} {:sourceloc_num 240} _CHECK_WRITE_$$d_finavalu(p15$2, 86, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v269$2, v270$2), FDIV32(FMUL32(FMUL32(1071393014, v223$2), v236$2), FADD32(FMUL32(v221$2, v236$2), 1094189056)))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[86] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v269$1, v270$1), FDIV32(FMUL32(FMUL32(1071393014, v223$1), v236$1), FADD32(FMUL32(v221$1, v236$1), 1094189056)))))) else $$d_finavalu[86]);
    $$d_finavalu[86] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v269$2, v270$2), FDIV32(FMUL32(FMUL32(1071393014, v223$2), v236$2), FADD32(FMUL32(v221$2, v236$2), 1094189056)))))) else $$d_finavalu[86]);
    call {:sourceloc} {:sourceloc_num 241} _LOG_WRITE_$$d_finavalu(p15$1, 87, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v256$1, v259$1), v260$1), v261$1)))), $$d_finavalu[87]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 87);
    assume {:do_not_predicate} {:check_id "check_state_43"} {:captureState "check_state_43"} {:sourceloc} {:sourceloc_num 241} true;
    call {:check_id "check_state_43"} {:sourceloc} {:sourceloc_num 241} _CHECK_WRITE_$$d_finavalu(p15$2, 87, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v256$2, v259$2), v260$2), v261$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[87] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v256$1, v259$1), v260$1), v261$1)))) else $$d_finavalu[87]);
    $$d_finavalu[87] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FSUB32(FSUB32(v256$2, v259$2), v260$2), v261$2)))) else $$d_finavalu[87]);
    call {:sourceloc} {:sourceloc_num 242} _LOG_WRITE_$$d_finavalu(p15$1, 88, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v259$1, v257$1)))), $$d_finavalu[88]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 88);
    assume {:do_not_predicate} {:check_id "check_state_44"} {:captureState "check_state_44"} {:sourceloc} {:sourceloc_num 242} true;
    call {:check_id "check_state_44"} {:sourceloc} {:sourceloc_num 242} _CHECK_WRITE_$$d_finavalu(p15$2, 88, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v259$2, v257$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[88] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v259$1, v257$1)))) else $$d_finavalu[88]);
    $$d_finavalu[88] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(v259$2, v257$2)))) else $$d_finavalu[88]);
    call {:sourceloc} {:sourceloc_num 243} _LOG_WRITE_$$d_finavalu(p15$1, 89, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v260$1, v257$1), v258$1)))), $$d_finavalu[89]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 89);
    assume {:do_not_predicate} {:check_id "check_state_45"} {:captureState "check_state_45"} {:sourceloc} {:sourceloc_num 243} true;
    call {:check_id "check_state_45"} {:sourceloc} {:sourceloc_num 243} _CHECK_WRITE_$$d_finavalu(p15$2, 89, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v260$2, v257$2), v258$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[89] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v260$1, v257$1), v258$1)))) else $$d_finavalu[89]);
    $$d_finavalu[89] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FSUB32(FADD32(v260$2, v257$2), v258$2)))) else $$d_finavalu[89]);
    call {:sourceloc} {:sourceloc_num 244} _LOG_WRITE_$$d_finavalu(p15$1, 90, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v261$1, v258$1)))), $$d_finavalu[90]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(p15$2, 90);
    assume {:do_not_predicate} {:check_id "check_state_46"} {:captureState "check_state_46"} {:sourceloc} {:sourceloc_num 244} true;
    call {:check_id "check_state_46"} {:sourceloc} {:sourceloc_num 244} _CHECK_WRITE_$$d_finavalu(p15$2, 90, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v261$2, v258$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_finavalu"} true;
    $$d_finavalu[90] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v261$1, v258$1)))) else $$d_finavalu[90]);
    $$d_finavalu[90] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(v261$2, v258$2)))) else $$d_finavalu[90]);
    call {:sourceloc} {:sourceloc_num 245} _LOG_WRITE_$$d_com(p15$1, 2, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v221$1), FSUB32(v268$1, v264$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v248$1, v249$1), v251$1), v252$1), v256$1), v257$1), v258$1))))))), $$d_com[2]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_com(p15$2, 2);
    assume {:do_not_predicate} {:check_id "check_state_47"} {:captureState "check_state_47"} {:sourceloc} {:sourceloc_num 245} true;
    call {:check_id "check_state_47"} {:sourceloc} {:sourceloc_num 245} _CHECK_WRITE_$$d_com(p15$2, 2, FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v221$2), FSUB32(v268$2, v264$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v248$2, v249$2), v251$2), v252$2), v256$2), v257$2), v258$2))))))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_com"} true;
    $$d_com[2] := (if p15$1 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v221$1), FSUB32(v268$1, v264$1)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v248$1, v249$1), v251$1), v252$1), v256$1), v257$1), v258$1))))))) else $$d_com[2]);
    $$d_com[2] := (if p15$2 then FP64_CONV32(FMUL64(4562254508917369340, FP32_CONV64(FADD32(FMUL32(FMUL32(1073741824, v221$2), FSUB32(v268$2, v264$2)), FSUB32(-2147483648, FMUL32(1073741824, FADD32(FADD32(FADD32(FADD32(FADD32(FADD32(v248$2, v249$2), v251$2), v252$2), v256$2), v257$2), v258$2))))))) else $$d_com[2]);
    return;
}



procedure {:source_name "__log10_float"} $__log10_float(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "fmodf"} $fmodf(_P$1: bool, $0$1: int, $1$1: int, _P$2: bool, $0$2: int, $1$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 2 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

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

const _WATCHED_VALUE_$$d_initvalu: int;

procedure {:inline 1} _LOG_READ_$$d_initvalu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_initvalu;



implementation {:inline 1} _LOG_READ_$$d_initvalu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_initvalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_initvalu == _value then true else _READ_HAS_OCCURRED_$$d_initvalu);
    return;
}



procedure _CHECK_READ_$$d_initvalu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_initvalu);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_initvalu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_initvalu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_initvalu, _WRITE_READ_BENIGN_FLAG_$$d_initvalu;



implementation {:inline 1} _LOG_WRITE_$$d_initvalu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_initvalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_initvalu == _value then true else _WRITE_HAS_OCCURRED_$$d_initvalu);
    _WRITE_READ_BENIGN_FLAG_$$d_initvalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_initvalu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_initvalu);
    return;
}



procedure _CHECK_WRITE_$$d_initvalu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_initvalu != _value);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_initvalu != _value);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_initvalu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_initvalu;



implementation {:inline 1} _LOG_ATOMIC_$$d_initvalu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_initvalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_initvalu);
    return;
}



procedure _CHECK_ATOMIC_$$d_initvalu(_P: bool, _offset: int);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_initvalu"} {:array "$$d_initvalu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_initvalu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_initvalu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_initvalu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_initvalu := (if _P && _WRITE_HAS_OCCURRED_$$d_initvalu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_initvalu);
    return;
}



const _WATCHED_VALUE_$$d_finavalu: int;

procedure {:inline 1} _LOG_READ_$$d_finavalu(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_finavalu;



implementation {:inline 1} _LOG_READ_$$d_finavalu(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_finavalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_finavalu == _value then true else _READ_HAS_OCCURRED_$$d_finavalu);
    return;
}



procedure _CHECK_READ_$$d_finavalu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_finavalu);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_finavalu: bool;

procedure {:inline 1} _LOG_WRITE_$$d_finavalu(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_finavalu, _WRITE_READ_BENIGN_FLAG_$$d_finavalu;



implementation {:inline 1} _LOG_WRITE_$$d_finavalu(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_finavalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_finavalu == _value then true else _WRITE_HAS_OCCURRED_$$d_finavalu);
    _WRITE_READ_BENIGN_FLAG_$$d_finavalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_finavalu == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_finavalu);
    return;
}



procedure _CHECK_WRITE_$$d_finavalu(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_finavalu != _value);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_finavalu != _value);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_finavalu(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_finavalu;



implementation {:inline 1} _LOG_ATOMIC_$$d_finavalu(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_finavalu := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_finavalu);
    return;
}



procedure _CHECK_ATOMIC_$$d_finavalu(_P: bool, _offset: int);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_finavalu"} {:array "$$d_finavalu"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_finavalu;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_finavalu(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_finavalu := (if _P && _WRITE_HAS_OCCURRED_$$d_finavalu && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_finavalu);
    return;
}



const _WATCHED_VALUE_$$d_params: int;

procedure {:inline 1} _LOG_READ_$$d_params(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_params;



implementation {:inline 1} _LOG_READ_$$d_params(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_params := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_params == _value then true else _READ_HAS_OCCURRED_$$d_params);
    return;
}



procedure _CHECK_READ_$$d_params(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_params);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_params: bool;

procedure {:inline 1} _LOG_WRITE_$$d_params(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_params, _WRITE_READ_BENIGN_FLAG_$$d_params;



implementation {:inline 1} _LOG_WRITE_$$d_params(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_params := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_params == _value then true else _WRITE_HAS_OCCURRED_$$d_params);
    _WRITE_READ_BENIGN_FLAG_$$d_params := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_params == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_params);
    return;
}



procedure _CHECK_WRITE_$$d_params(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_params != _value);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_params != _value);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_params(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_params;



implementation {:inline 1} _LOG_ATOMIC_$$d_params(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_params := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_params);
    return;
}



procedure _CHECK_ATOMIC_$$d_params(_P: bool, _offset: int);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_params"} {:array "$$d_params"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_params(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_params;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_params(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_params := (if _P && _WRITE_HAS_OCCURRED_$$d_params && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_params);
    return;
}



const _WATCHED_VALUE_$$d_com: int;

procedure {:inline 1} _LOG_READ_$$d_com(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_com;



implementation {:inline 1} _LOG_READ_$$d_com(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_com := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_com == _value then true else _READ_HAS_OCCURRED_$$d_com);
    return;
}



procedure _CHECK_READ_$$d_com(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_com);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_com: bool;

procedure {:inline 1} _LOG_WRITE_$$d_com(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_com, _WRITE_READ_BENIGN_FLAG_$$d_com;



implementation {:inline 1} _LOG_WRITE_$$d_com(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_com := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_com == _value then true else _WRITE_HAS_OCCURRED_$$d_com);
    _WRITE_READ_BENIGN_FLAG_$$d_com := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_com == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_com);
    return;
}



procedure _CHECK_WRITE_$$d_com(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_com != _value);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_com != _value);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_com(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_com;



implementation {:inline 1} _LOG_ATOMIC_$$d_com(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_com := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_com);
    return;
}



procedure _CHECK_ATOMIC_$$d_com(_P: bool, _offset: int);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_com"} {:array "$$d_com"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_com(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_com;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_com(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_com := (if _P && _WRITE_HAS_OCCURRED_$$d_com && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_com);
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
