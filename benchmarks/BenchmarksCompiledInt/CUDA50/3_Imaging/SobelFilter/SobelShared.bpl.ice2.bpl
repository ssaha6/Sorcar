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
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "pSobelOriginal"} {:global} $$pSobelOriginal: [int]int;

axiom {:array_info "$$pSobelOriginal"} {:global} {:elem_width 8} {:source_name "pSobelOriginal"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pSobelOriginal: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pSobelOriginal: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pSobelOriginal: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$out"} {:elem_width 8} {:source_name "out"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "LocalBlock"} {:group_shared} $$LocalBlock: [bv1][int]int;

axiom {:array_info "$$LocalBlock"} {:group_shared} {:elem_width 8} {:source_name "LocalBlock"} {:source_elem_width 8} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$LocalBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$LocalBlock: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 8} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$LocalBlock: bool;

axiom {:array_info "$$tex"} {:global} {:elem_width 8} {:source_name "tex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex: bool;

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

function BV32_ASHR(int, int) : int;

function BV16_SEXT32(int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

function FP32_TO_SI16(int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function  BV16_ZEXT32(x: int) : int
{
  x
}

function  BV1_ZEXT32(x: int) : int
{
  x
}

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_OR(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 then y else (if y == 0 then x else BV32_OR_UF(x, y))))
}

function BV32_OR_UF(int, int) : int;

function  BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function  BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "SobelShared"} {:kernel} $_Z11SobelSharedP6uchar4tssssf($SobelPitch: int, $BlockWidth: int, $SharedPitch: int, $w: int, $h: int, $fScale: int);
  requires {:sourceloc_num 0} {:thread 1} (if BV16_ZEXT32($SobelPitch) == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if BV16_SEXT32($BlockWidth) == 80 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV16_SEXT32($SharedPitch) == 384 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if BV16_SEXT32($w) == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$pSobelOriginal && !_WRITE_HAS_OCCURRED_$$pSobelOriginal && !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
  requires !_READ_HAS_OCCURRED_$$tex && !_WRITE_HAS_OCCURRED_$$tex && !_ATOMIC_HAS_OCCURRED_$$tex;
  requires !_READ_HAS_OCCURRED_$$LocalBlock && !_WRITE_HAS_OCCURRED_$$LocalBlock && !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
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
  modifies $$LocalBlock, _WRITE_HAS_OCCURRED_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock, $$pSobelOriginal, _TRACKING, _READ_HAS_OCCURRED_$$LocalBlock, _WRITE_HAS_OCCURRED_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal, _TRACKING;



implementation {:source_name "SobelShared"} {:kernel} $_Z11SobelSharedP6uchar4tssssf($SobelPitch: int, $BlockWidth: int, $SharedPitch: int, $w: int, $h: int, $fScale: int)
{
  var $ib.0$1: int;
  var $ib.0$2: int;
  var $ib.1$1: int;
  var $ib.1$2: int;
  var $ib.2$1: int;
  var $ib.2$2: int;
  var $.01$1: int;
  var $.01$2: int;
  var $.03$1: int;
  var $.03$2: int;
  var $.02$1: int;
  var $.02$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: bool;
  var v3$2: bool;
  var v4$1: int;
  var v4$2: int;
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
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v32$1: int;
  var v32$2: int;
  var v33$1: int;
  var v33$2: int;
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
  var v59$1: int;
  var v59$2: int;
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
  var v58$1: int;
  var v58$2: int;
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
  var v92$1: bool;
  var v92$2: bool;
  var v93$1: int;
  var v93$2: int;
  var v94$1: bool;
  var v94$2: bool;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: int;
  var v97$2: int;
  var v98$1: int;
  var v98$2: int;
  var v103$1: int;
  var v103$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
  var v104$1: int;
  var v104$2: int;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v123$1: int;
  var v123$2: int;
  var v124$1: int;
  var v124$2: int;
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
  var v122$1: int;
  var v122$2: int;
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
  var v149$1: int;
  var v149$2: int;
  var v150$1: int;
  var v150$2: int;
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
  var v148$1: int;
  var v148$2: int;
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
  var v185$1: bool;
  var v185$2: bool;
  var v186$1: int;
  var v186$2: int;
  var v189$1: int;
  var v189$2: int;
  var v187$1: int;
  var v187$2: int;
  var v188$1: int;
  var v188$2: int;
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
  var v198$1: bool;
  var v198$2: bool;
  var v199$1: bool;
  var v199$2: bool;
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
  var v206$1: bool;
  var v206$2: bool;
  var v207$1: bool;
  var v207$2: bool;
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
  var v214$1: bool;
  var v214$2: bool;
  var v215$1: bool;
  var v215$2: bool;
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
  var v222$1: bool;
  var v222$2: bool;
  var v223$1: bool;
  var v223$2: bool;
  var v224$1: bool;
  var v224$2: bool;
  var v225$1: bool;
  var v225$2: bool;
  var v226$1: int;
  var v226$2: int;
  var v227$1: int;
  var v227$2: int;
  var v228$1: int;
  var v228$2: int;
  var v229$1: int;
  var v229$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6: bool;


  $0:
    v0$1 := BV_EXTRACT(BV32_MUL(BV32_MUL(4, group_id_x$1), BV16_SEXT32($BlockWidth)), 16, 0);
    v0$2 := BV_EXTRACT(BV32_MUL(BV32_MUL(4, group_id_x$2), BV16_SEXT32($BlockWidth)), 16, 0);
    v1$1 := BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 16, 0);
    v1$2 := BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2), 16, 0);
    v2$1 := BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch));
    v2$2 := BV32_MUL(local_id_y$2, BV16_SEXT32($SharedPitch));
    $ib.0$1 := BV_EXTRACT(local_id_x$1, 16, 0);
    $ib.0$2 := BV_EXTRACT(local_id_x$2, 16, 0);
    p0$1 := false;
    p0$2 := false;
    p4$1 := false;
    p4$2 := false;
    p7$1 := false;
    p7$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_2"} true;
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> BV32_SLE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p0$2 ==> BV32_SLE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p0$1 ==> BV32_SGE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p0$2 ==> BV32_SGE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p0$1 ==> BV32_ULE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p0$2 ==> BV32_ULE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p0$1 ==> BV32_UGE($ib.0$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p0$2 ==> BV32_UGE($ib.0$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  (  BV32_SLT(BV16_SEXT32($ib.0$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p0$1 )  && (  BV32_SLT(BV16_SEXT32($ib.0$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 1} (if BV32_UREM(BV16_SEXT32($ib.0$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 6} {:thread 2} (if BV32_UREM(BV16_SEXT32($ib.0$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 7} {:thread 1} (if _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v2$1), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 8} {:thread 1} (if _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v2$1), 4), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    v3$1 := (if p0$1 then BV32_SLT(BV16_SEXT32($ib.0$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v3$1);
    v3$2 := (if p0$2 then BV32_SLT(BV16_SEXT32($ib.0$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v3$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p6$1 := false;
    p6$2 := false;
    p1$1 := (if p0$1 && v3$1 then v3$1 else p1$1);
    p1$2 := (if p0$2 && v3$2 then v3$2 else p1$2);
    p0$1 := (if p0$1 && !v3$1 then v3$1 else p0$1);
    p0$2 := (if p0$2 && !v3$2 then v3$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p1$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p1$2 then _HAVOC_int$2 else v4$2);
    $$0$0$1 := (if p1$1 then v4$1 else $$0$0$1);
    $$0$0$2 := (if p1$2 then v4$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p1$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p1$2 then _HAVOC_int$2 else v5$2);
    $$0$1$1 := (if p1$1 then v5$1 else $$0$1$1);
    $$0$1$2 := (if p1$2 then v5$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v6$1 := (if p1$1 then _HAVOC_int$1 else v6$1);
    v6$2 := (if p1$2 then _HAVOC_int$2 else v6$2);
    $$0$2$1 := (if p1$1 then v6$1 else $$0$2$1);
    $$0$2$2 := (if p1$2 then v6$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v7$1 := (if p1$1 then _HAVOC_int$1 else v7$1);
    v7$2 := (if p1$2 then _HAVOC_int$2 else v7$2);
    $$0$3$1 := (if p1$1 then v7$1 else $$0$3$1);
    $$0$3$2 := (if p1$2 then v7$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v8$1 := (if p1$1 then _HAVOC_int$1 else v8$1);
    v8$2 := (if p1$2 then _HAVOC_int$2 else v8$2);
    $$0$4$1 := (if p1$1 then v8$1 else $$0$4$1);
    $$0$4$2 := (if p1$2 then v8$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v9$1 := (if p1$1 then _HAVOC_int$1 else v9$1);
    v9$2 := (if p1$2 then _HAVOC_int$2 else v9$2);
    $$0$5$1 := (if p1$1 then v9$1 else $$0$5$1);
    $$0$5$2 := (if p1$2 then v9$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p1$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p1$2 then _HAVOC_int$2 else v10$2);
    $$0$6$1 := (if p1$1 then v10$1 else $$0$6$1);
    $$0$6$2 := (if p1$2 then v10$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p1$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p1$2 then _HAVOC_int$2 else v11$2);
    $$0$7$1 := (if p1$1 then v11$1 else $$0$7$1);
    $$0$7$2 := (if p1$2 then v11$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p1$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p1$2 then _HAVOC_int$2 else v12$2);
    $$0$8$1 := (if p1$1 then v12$1 else $$0$8$1);
    $$0$8$2 := (if p1$2 then v12$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p1$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p1$2 then _HAVOC_int$2 else v13$2);
    $$0$9$1 := (if p1$1 then v13$1 else $$0$9$1);
    $$0$9$2 := (if p1$2 then v13$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v14$1 := (if p1$1 then _HAVOC_int$1 else v14$1);
    v14$2 := (if p1$2 then _HAVOC_int$2 else v14$2);
    $$0$10$1 := (if p1$1 then v14$1 else $$0$10$1);
    $$0$10$2 := (if p1$2 then v14$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v15$1 := (if p1$1 then _HAVOC_int$1 else v15$1);
    v15$2 := (if p1$2 then _HAVOC_int$2 else v15$2);
    $$0$11$1 := (if p1$1 then v15$1 else $$0$11$1);
    $$0$11$2 := (if p1$2 then v15$2 else $$0$11$2);
    v16$1 := (if p1$1 then $$0$0$1 else v16$1);
    v16$2 := (if p1$2 then $$0$0$2 else v16$2);
    v17$1 := (if p1$1 then $$0$4$1 else v17$1);
    v17$2 := (if p1$2 then $$0$4$2 else v17$2);
    v18$1 := (if p1$1 then $$0$5$1 else v18$1);
    v18$2 := (if p1$2 then $$0$5$2 else v18$2);
    v19$1 := (if p1$1 then $$0$6$1 else v19$1);
    v19$2 := (if p1$2 then $$0$6$2 else v19$2);
    v20$1 := (if p1$1 then $$0$7$1 else v20$1);
    v20$2 := (if p1$2 then $$0$7$2 else v20$2);
    v21$1 := (if p1$1 then $$0$8$1 else v21$1);
    v21$2 := (if p1$2 then $$0$8$2 else v21$2);
    v22$1 := (if p1$1 then $$0$9$1 else v22$1);
    v22$2 := (if p1$2 then $$0$9$2 else v22$2);
    v23$1 := (if p1$1 then $$0$10$1 else v23$1);
    v23$2 := (if p1$2 then $$0$10$2 else v23$2);
    v24$1 := (if p1$1 then $$0$11$1 else v24$1);
    v24$2 := (if p1$2 then $$0$11$2 else v24$2);
    call {:sourceloc_num 43} v25$1, v25$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v16$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$1, v19$1), v18$1), v17$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$1, v23$1), v22$1), v21$1), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v16$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v20$2, v19$2), v18$2), v17$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v24$2, v23$2), v22$2), v21$2), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 44} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), v25$1, $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 44} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 44} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), v25$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))] := (if p1$1 then v25$1 else $$LocalBlock[1bv1][BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1)))]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2)))] := (if p1$2 then v25$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2)))]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p1$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p1$2 then _HAVOC_int$2 else v26$2);
    $$1$0$1 := (if p1$1 then v26$1 else $$1$0$1);
    $$1$0$2 := (if p1$2 then v26$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v27$1 := (if p1$1 then _HAVOC_int$1 else v27$1);
    v27$2 := (if p1$2 then _HAVOC_int$2 else v27$2);
    $$1$1$1 := (if p1$1 then v27$1 else $$1$1$1);
    $$1$1$2 := (if p1$2 then v27$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p1$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p1$2 then _HAVOC_int$2 else v28$2);
    $$1$2$1 := (if p1$1 then v28$1 else $$1$2$1);
    $$1$2$2 := (if p1$2 then v28$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p1$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p1$2 then _HAVOC_int$2 else v29$2);
    $$1$3$1 := (if p1$1 then v29$1 else $$1$3$1);
    $$1$3$2 := (if p1$2 then v29$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p1$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p1$2 then _HAVOC_int$2 else v30$2);
    $$1$4$1 := (if p1$1 then v30$1 else $$1$4$1);
    $$1$4$2 := (if p1$2 then v30$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p1$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p1$2 then _HAVOC_int$2 else v31$2);
    $$1$5$1 := (if p1$1 then v31$1 else $$1$5$1);
    $$1$5$2 := (if p1$2 then v31$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p1$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p1$2 then _HAVOC_int$2 else v32$2);
    $$1$6$1 := (if p1$1 then v32$1 else $$1$6$1);
    $$1$6$2 := (if p1$2 then v32$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v33$1 := (if p1$1 then _HAVOC_int$1 else v33$1);
    v33$2 := (if p1$2 then _HAVOC_int$2 else v33$2);
    $$1$7$1 := (if p1$1 then v33$1 else $$1$7$1);
    $$1$7$2 := (if p1$2 then v33$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v34$1 := (if p1$1 then _HAVOC_int$1 else v34$1);
    v34$2 := (if p1$2 then _HAVOC_int$2 else v34$2);
    $$1$8$1 := (if p1$1 then v34$1 else $$1$8$1);
    $$1$8$2 := (if p1$2 then v34$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v35$1 := (if p1$1 then _HAVOC_int$1 else v35$1);
    v35$2 := (if p1$2 then _HAVOC_int$2 else v35$2);
    $$1$9$1 := (if p1$1 then v35$1 else $$1$9$1);
    $$1$9$2 := (if p1$2 then v35$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v36$1 := (if p1$1 then _HAVOC_int$1 else v36$1);
    v36$2 := (if p1$2 then _HAVOC_int$2 else v36$2);
    $$1$10$1 := (if p1$1 then v36$1 else $$1$10$1);
    $$1$10$2 := (if p1$2 then v36$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v37$1 := (if p1$1 then _HAVOC_int$1 else v37$1);
    v37$2 := (if p1$2 then _HAVOC_int$2 else v37$2);
    $$1$11$1 := (if p1$1 then v37$1 else $$1$11$1);
    $$1$11$2 := (if p1$2 then v37$2 else $$1$11$2);
    v38$1 := (if p1$1 then $$1$0$1 else v38$1);
    v38$2 := (if p1$2 then $$1$0$2 else v38$2);
    v39$1 := (if p1$1 then $$1$4$1 else v39$1);
    v39$2 := (if p1$2 then $$1$4$2 else v39$2);
    v40$1 := (if p1$1 then $$1$5$1 else v40$1);
    v40$2 := (if p1$2 then $$1$5$2 else v40$2);
    v41$1 := (if p1$1 then $$1$6$1 else v41$1);
    v41$2 := (if p1$2 then $$1$6$2 else v41$2);
    v42$1 := (if p1$1 then $$1$7$1 else v42$1);
    v42$2 := (if p1$2 then $$1$7$2 else v42$2);
    v43$1 := (if p1$1 then $$1$8$1 else v43$1);
    v43$2 := (if p1$2 then $$1$8$2 else v43$2);
    v44$1 := (if p1$1 then $$1$9$1 else v44$1);
    v44$2 := (if p1$2 then $$1$9$2 else v44$2);
    v45$1 := (if p1$1 then $$1$10$1 else v45$1);
    v45$2 := (if p1$2 then $$1$10$2 else v45$2);
    v46$1 := (if p1$1 then $$1$11$1 else v46$1);
    v46$2 := (if p1$2 then $$1$11$2 else v46$2);
    call {:sourceloc_num 78} v47$1, v47$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v38$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v42$1, v41$1), v40$1), v39$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v46$1, v45$1), v44$1), v43$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v38$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v42$2, v41$2), v40$2), v39$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v46$2, v45$2), v44$2), v43$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 1)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 79} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), v47$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 79} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 79} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), v47$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)] := (if p1$1 then v47$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)] := (if p1$2 then v47$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v48$1 := (if p1$1 then _HAVOC_int$1 else v48$1);
    v48$2 := (if p1$2 then _HAVOC_int$2 else v48$2);
    $$2$0$1 := (if p1$1 then v48$1 else $$2$0$1);
    $$2$0$2 := (if p1$2 then v48$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v49$1 := (if p1$1 then _HAVOC_int$1 else v49$1);
    v49$2 := (if p1$2 then _HAVOC_int$2 else v49$2);
    $$2$1$1 := (if p1$1 then v49$1 else $$2$1$1);
    $$2$1$2 := (if p1$2 then v49$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p1$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p1$2 then _HAVOC_int$2 else v50$2);
    $$2$2$1 := (if p1$1 then v50$1 else $$2$2$1);
    $$2$2$2 := (if p1$2 then v50$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p1$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p1$2 then _HAVOC_int$2 else v51$2);
    $$2$3$1 := (if p1$1 then v51$1 else $$2$3$1);
    $$2$3$2 := (if p1$2 then v51$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p1$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p1$2 then _HAVOC_int$2 else v52$2);
    $$2$4$1 := (if p1$1 then v52$1 else $$2$4$1);
    $$2$4$2 := (if p1$2 then v52$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v53$1 := (if p1$1 then _HAVOC_int$1 else v53$1);
    v53$2 := (if p1$2 then _HAVOC_int$2 else v53$2);
    $$2$5$1 := (if p1$1 then v53$1 else $$2$5$1);
    $$2$5$2 := (if p1$2 then v53$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v54$1 := (if p1$1 then _HAVOC_int$1 else v54$1);
    v54$2 := (if p1$2 then _HAVOC_int$2 else v54$2);
    $$2$6$1 := (if p1$1 then v54$1 else $$2$6$1);
    $$2$6$2 := (if p1$2 then v54$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v55$1 := (if p1$1 then _HAVOC_int$1 else v55$1);
    v55$2 := (if p1$2 then _HAVOC_int$2 else v55$2);
    $$2$7$1 := (if p1$1 then v55$1 else $$2$7$1);
    $$2$7$2 := (if p1$2 then v55$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v56$1 := (if p1$1 then _HAVOC_int$1 else v56$1);
    v56$2 := (if p1$2 then _HAVOC_int$2 else v56$2);
    $$2$8$1 := (if p1$1 then v56$1 else $$2$8$1);
    $$2$8$2 := (if p1$2 then v56$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v57$1 := (if p1$1 then _HAVOC_int$1 else v57$1);
    v57$2 := (if p1$2 then _HAVOC_int$2 else v57$2);
    $$2$9$1 := (if p1$1 then v57$1 else $$2$9$1);
    $$2$9$2 := (if p1$2 then v57$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v58$1 := (if p1$1 then _HAVOC_int$1 else v58$1);
    v58$2 := (if p1$2 then _HAVOC_int$2 else v58$2);
    $$2$10$1 := (if p1$1 then v58$1 else $$2$10$1);
    $$2$10$2 := (if p1$2 then v58$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p1$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p1$2 then _HAVOC_int$2 else v59$2);
    $$2$11$1 := (if p1$1 then v59$1 else $$2$11$1);
    $$2$11$2 := (if p1$2 then v59$2 else $$2$11$2);
    v60$1 := (if p1$1 then $$2$0$1 else v60$1);
    v60$2 := (if p1$2 then $$2$0$2 else v60$2);
    v61$1 := (if p1$1 then $$2$4$1 else v61$1);
    v61$2 := (if p1$2 then $$2$4$2 else v61$2);
    v62$1 := (if p1$1 then $$2$5$1 else v62$1);
    v62$2 := (if p1$2 then $$2$5$2 else v62$2);
    v63$1 := (if p1$1 then $$2$6$1 else v63$1);
    v63$2 := (if p1$2 then $$2$6$2 else v63$2);
    v64$1 := (if p1$1 then $$2$7$1 else v64$1);
    v64$2 := (if p1$2 then $$2$7$2 else v64$2);
    v65$1 := (if p1$1 then $$2$8$1 else v65$1);
    v65$2 := (if p1$2 then $$2$8$2 else v65$2);
    v66$1 := (if p1$1 then $$2$9$1 else v66$1);
    v66$2 := (if p1$2 then $$2$9$2 else v66$2);
    v67$1 := (if p1$1 then $$2$10$1 else v67$1);
    v67$2 := (if p1$2 then $$2$10$2 else v67$2);
    v68$1 := (if p1$1 then $$2$11$1 else v68$1);
    v68$2 := (if p1$2 then $$2$11$2 else v68$2);
    call {:sourceloc_num 113} v69$1, v69$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v60$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v64$1, v63$1), v62$1), v61$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$1, v67$1), v66$1), v65$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 2)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v60$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v64$2, v63$2), v62$2), v61$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v68$2, v67$2), v66$2), v65$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 2)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 114} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2), v69$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 114} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 114} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2), v69$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)] := (if p1$1 then v69$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 2)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2)] := (if p1$2 then v69$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v70$1 := (if p1$1 then _HAVOC_int$1 else v70$1);
    v70$2 := (if p1$2 then _HAVOC_int$2 else v70$2);
    $$3$0$1 := (if p1$1 then v70$1 else $$3$0$1);
    $$3$0$2 := (if p1$2 then v70$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v71$1 := (if p1$1 then _HAVOC_int$1 else v71$1);
    v71$2 := (if p1$2 then _HAVOC_int$2 else v71$2);
    $$3$1$1 := (if p1$1 then v71$1 else $$3$1$1);
    $$3$1$2 := (if p1$2 then v71$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v72$1 := (if p1$1 then _HAVOC_int$1 else v72$1);
    v72$2 := (if p1$2 then _HAVOC_int$2 else v72$2);
    $$3$2$1 := (if p1$1 then v72$1 else $$3$2$1);
    $$3$2$2 := (if p1$2 then v72$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v73$1 := (if p1$1 then _HAVOC_int$1 else v73$1);
    v73$2 := (if p1$2 then _HAVOC_int$2 else v73$2);
    $$3$3$1 := (if p1$1 then v73$1 else $$3$3$1);
    $$3$3$2 := (if p1$2 then v73$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v74$1 := (if p1$1 then _HAVOC_int$1 else v74$1);
    v74$2 := (if p1$2 then _HAVOC_int$2 else v74$2);
    $$3$4$1 := (if p1$1 then v74$1 else $$3$4$1);
    $$3$4$2 := (if p1$2 then v74$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v75$1 := (if p1$1 then _HAVOC_int$1 else v75$1);
    v75$2 := (if p1$2 then _HAVOC_int$2 else v75$2);
    $$3$5$1 := (if p1$1 then v75$1 else $$3$5$1);
    $$3$5$2 := (if p1$2 then v75$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v76$1 := (if p1$1 then _HAVOC_int$1 else v76$1);
    v76$2 := (if p1$2 then _HAVOC_int$2 else v76$2);
    $$3$6$1 := (if p1$1 then v76$1 else $$3$6$1);
    $$3$6$2 := (if p1$2 then v76$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v77$1 := (if p1$1 then _HAVOC_int$1 else v77$1);
    v77$2 := (if p1$2 then _HAVOC_int$2 else v77$2);
    $$3$7$1 := (if p1$1 then v77$1 else $$3$7$1);
    $$3$7$2 := (if p1$2 then v77$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v78$1 := (if p1$1 then _HAVOC_int$1 else v78$1);
    v78$2 := (if p1$2 then _HAVOC_int$2 else v78$2);
    $$3$8$1 := (if p1$1 then v78$1 else $$3$8$1);
    $$3$8$2 := (if p1$2 then v78$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v79$1 := (if p1$1 then _HAVOC_int$1 else v79$1);
    v79$2 := (if p1$2 then _HAVOC_int$2 else v79$2);
    $$3$9$1 := (if p1$1 then v79$1 else $$3$9$1);
    $$3$9$2 := (if p1$2 then v79$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v80$1 := (if p1$1 then _HAVOC_int$1 else v80$1);
    v80$2 := (if p1$2 then _HAVOC_int$2 else v80$2);
    $$3$10$1 := (if p1$1 then v80$1 else $$3$10$1);
    $$3$10$2 := (if p1$2 then v80$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v81$1 := (if p1$1 then _HAVOC_int$1 else v81$1);
    v81$2 := (if p1$2 then _HAVOC_int$2 else v81$2);
    $$3$11$1 := (if p1$1 then v81$1 else $$3$11$1);
    $$3$11$2 := (if p1$2 then v81$2 else $$3$11$2);
    v82$1 := (if p1$1 then $$3$0$1 else v82$1);
    v82$2 := (if p1$2 then $$3$0$2 else v82$2);
    v83$1 := (if p1$1 then $$3$4$1 else v83$1);
    v83$2 := (if p1$2 then $$3$4$2 else v83$2);
    v84$1 := (if p1$1 then $$3$5$1 else v84$1);
    v84$2 := (if p1$2 then $$3$5$2 else v84$2);
    v85$1 := (if p1$1 then $$3$6$1 else v85$1);
    v85$2 := (if p1$2 then $$3$6$2 else v85$2);
    v86$1 := (if p1$1 then $$3$7$1 else v86$1);
    v86$2 := (if p1$2 then $$3$7$2 else v86$2);
    v87$1 := (if p1$1 then $$3$8$1 else v87$1);
    v87$2 := (if p1$2 then $$3$8$2 else v87$2);
    v88$1 := (if p1$1 then $$3$9$1 else v88$1);
    v88$2 := (if p1$2 then $$3$9$2 else v88$2);
    v89$1 := (if p1$1 then $$3$10$1 else v89$1);
    v89$2 := (if p1$2 then $$3$10$2 else v89$2);
    v90$1 := (if p1$1 then $$3$11$1 else v90$1);
    v90$2 := (if p1$2 then $$3$11$2 else v90$2);
    call {:sourceloc_num 148} v91$1, v91$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p1$1, v82$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v86$1, v85$1), v84$1), v83$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v90$1, v89$1), v88$1), v87$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.0$1))), 1), 3)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$1), 1)), p1$2, v82$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v86$2, v85$2), v84$2), v83$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v90$2, v89$2), v88$2), v87$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.0$2))), 1), 3)), SI32_TO_FP32(BV32_SUB(BV16_SEXT32(v1$2), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$LocalBlock(p1$1, BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3), v91$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$LocalBlock(p1$2, BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3), v91$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)] := (if p1$1 then v91$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v2$1, BV32_MUL(4, BV16_SEXT32($ib.0$1))), 3)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3)] := (if p1$2 then v91$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v2$2, BV32_MUL(4, BV16_SEXT32($ib.0$2))), 3)]);
    $ib.0$1 := (if p1$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.0$1), group_size_x), 16, 0) else $ib.0$1);
    $ib.0$2 := (if p1$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.0$2), group_size_x), 16, 0) else $ib.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    v92$1 := BV32_ULT(local_id_y$1, 2);
    v92$2 := BV32_ULT(local_id_y$2, 2);
    p3$1 := (if v92$1 then v92$1 else p3$1);
    p3$2 := (if v92$2 then v92$2 else p3$2);
    v93$1 := (if p3$1 then BV32_MUL(BV32_ADD(group_size_y, local_id_y$1), BV16_SEXT32($SharedPitch)) else v93$1);
    v93$2 := (if p3$2 then BV32_MUL(BV32_ADD(group_size_y, local_id_y$2), BV16_SEXT32($SharedPitch)) else v93$2);
    $ib.1$1 := (if p3$1 then BV_EXTRACT(local_id_x$1, 16, 0) else $ib.1$1);
    $ib.1$2 := (if p3$2 then BV_EXTRACT(local_id_x$2, 16, 0) else $ib.1$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6 := _WRITE_HAS_OCCURRED_$$LocalBlock;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$LocalBlock$ghost$$6 == _WRITE_HAS_OCCURRED_$$LocalBlock ) ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> BV32_SLE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p4$2 ==> BV32_SLE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p4$1 ==> BV32_SGE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p4$2 ==> BV32_SGE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p4$1 ==> BV32_ULE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p4$2 ==> BV32_ULE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p4$1 ==> BV32_UGE($ib.1$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p4$2 ==> BV32_UGE($ib.1$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p4$1 ==> p4$1 ==> BV32_ULT(local_id_y$1, 2) )  && ( p4$2 ==> p4$2 ==> BV32_ULT(local_id_y$2, 2) ) ,  (  BV32_ULT(local_id_y$1, 2) && BV32_SLT(BV16_SEXT32($ib.1$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p4$1 )  && (  BV32_ULT(local_id_y$2, 2) && BV32_SLT(BV16_SEXT32($ib.1$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) ==> p4$2 ) ,  (  _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_ULT(local_id_y$1, 2) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:block_sourceloc} {:sourceloc_num 153} p4$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 154} {:thread 1} (if BV32_ULT(local_id_y$1, 2) ==> BV32_UREM(BV16_SEXT32($ib.1$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 154} {:thread 2} (if BV32_ULT(local_id_y$2, 2) ==> BV32_UREM(BV16_SEXT32($ib.1$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 155} {:thread 1} (if BV32_ULT(local_id_y$1, 2) ==> _WRITE_HAS_OCCURRED_$$LocalBlock ==> BV32_OR(BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v93$1), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, v93$1), 4), group_size_x) == local_id_x$1 then 1 else 0))), BV32_AND(BV1_ZEXT32((if BV32_ULT(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch))), 4), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) then 1 else 0)), BV1_ZEXT32((if BV32_UREM(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch))), 4), group_size_x) == local_id_x$1 then 1 else 0)))) != 0 then 1 else 0) != 0;
    v94$1 := (if p4$1 then BV32_SLT(BV16_SEXT32($ib.1$1), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v94$1);
    v94$2 := (if p4$2 then BV32_SLT(BV16_SEXT32($ib.1$2), BV32_ADD(BV16_SEXT32($BlockWidth), 2)) else v94$2);
    p5$1 := false;
    p5$2 := false;
    p5$1 := (if p4$1 && v94$1 then v94$1 else p5$1);
    p5$2 := (if p4$2 && v94$2 then v94$2 else p5$2);
    p4$1 := (if p4$1 && !v94$1 then v94$1 else p4$1);
    p4$2 := (if p4$2 && !v94$2 then v94$2 else p4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v95$1 := (if p5$1 then _HAVOC_int$1 else v95$1);
    v95$2 := (if p5$2 then _HAVOC_int$2 else v95$2);
    $$4$0$1 := (if p5$1 then v95$1 else $$4$0$1);
    $$4$0$2 := (if p5$2 then v95$2 else $$4$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v96$1 := (if p5$1 then _HAVOC_int$1 else v96$1);
    v96$2 := (if p5$2 then _HAVOC_int$2 else v96$2);
    $$4$1$1 := (if p5$1 then v96$1 else $$4$1$1);
    $$4$1$2 := (if p5$2 then v96$2 else $$4$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v97$1 := (if p5$1 then _HAVOC_int$1 else v97$1);
    v97$2 := (if p5$2 then _HAVOC_int$2 else v97$2);
    $$4$2$1 := (if p5$1 then v97$1 else $$4$2$1);
    $$4$2$2 := (if p5$2 then v97$2 else $$4$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v98$1 := (if p5$1 then _HAVOC_int$1 else v98$1);
    v98$2 := (if p5$2 then _HAVOC_int$2 else v98$2);
    $$4$3$1 := (if p5$1 then v98$1 else $$4$3$1);
    $$4$3$2 := (if p5$2 then v98$2 else $$4$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v99$1 := (if p5$1 then _HAVOC_int$1 else v99$1);
    v99$2 := (if p5$2 then _HAVOC_int$2 else v99$2);
    $$4$4$1 := (if p5$1 then v99$1 else $$4$4$1);
    $$4$4$2 := (if p5$2 then v99$2 else $$4$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v100$1 := (if p5$1 then _HAVOC_int$1 else v100$1);
    v100$2 := (if p5$2 then _HAVOC_int$2 else v100$2);
    $$4$5$1 := (if p5$1 then v100$1 else $$4$5$1);
    $$4$5$2 := (if p5$2 then v100$2 else $$4$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v101$1 := (if p5$1 then _HAVOC_int$1 else v101$1);
    v101$2 := (if p5$2 then _HAVOC_int$2 else v101$2);
    $$4$6$1 := (if p5$1 then v101$1 else $$4$6$1);
    $$4$6$2 := (if p5$2 then v101$2 else $$4$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v102$1 := (if p5$1 then _HAVOC_int$1 else v102$1);
    v102$2 := (if p5$2 then _HAVOC_int$2 else v102$2);
    $$4$7$1 := (if p5$1 then v102$1 else $$4$7$1);
    $$4$7$2 := (if p5$2 then v102$2 else $$4$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v103$1 := (if p5$1 then _HAVOC_int$1 else v103$1);
    v103$2 := (if p5$2 then _HAVOC_int$2 else v103$2);
    $$4$8$1 := (if p5$1 then v103$1 else $$4$8$1);
    $$4$8$2 := (if p5$2 then v103$2 else $$4$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v104$1 := (if p5$1 then _HAVOC_int$1 else v104$1);
    v104$2 := (if p5$2 then _HAVOC_int$2 else v104$2);
    $$4$9$1 := (if p5$1 then v104$1 else $$4$9$1);
    $$4$9$2 := (if p5$2 then v104$2 else $$4$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v105$1 := (if p5$1 then _HAVOC_int$1 else v105$1);
    v105$2 := (if p5$2 then _HAVOC_int$2 else v105$2);
    $$4$10$1 := (if p5$1 then v105$1 else $$4$10$1);
    $$4$10$2 := (if p5$2 then v105$2 else $$4$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v106$1 := (if p5$1 then _HAVOC_int$1 else v106$1);
    v106$2 := (if p5$2 then _HAVOC_int$2 else v106$2);
    $$4$11$1 := (if p5$1 then v106$1 else $$4$11$1);
    $$4$11$2 := (if p5$2 then v106$2 else $$4$11$2);
    v107$1 := (if p5$1 then $$4$0$1 else v107$1);
    v107$2 := (if p5$2 then $$4$0$2 else v107$2);
    v108$1 := (if p5$1 then $$4$4$1 else v108$1);
    v108$2 := (if p5$2 then $$4$4$2 else v108$2);
    v109$1 := (if p5$1 then $$4$5$1 else v109$1);
    v109$2 := (if p5$2 then $$4$5$2 else v109$2);
    v110$1 := (if p5$1 then $$4$6$1 else v110$1);
    v110$2 := (if p5$2 then $$4$6$2 else v110$2);
    v111$1 := (if p5$1 then $$4$7$1 else v111$1);
    v111$2 := (if p5$2 then $$4$7$2 else v111$2);
    v112$1 := (if p5$1 then $$4$8$1 else v112$1);
    v112$2 := (if p5$2 then $$4$8$2 else v112$2);
    v113$1 := (if p5$1 then $$4$9$1 else v113$1);
    v113$2 := (if p5$2 then $$4$9$2 else v113$2);
    v114$1 := (if p5$1 then $$4$10$1 else v114$1);
    v114$2 := (if p5$2 then $$4$10$2 else v114$2);
    v115$1 := (if p5$1 then $$4$11$1 else v115$1);
    v115$2 := (if p5$2 then $$4$11$2 else v115$2);
    call {:sourceloc_num 190} v116$1, v116$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v107$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$1, v110$1), v109$1), v108$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$1, v114$1), v113$1), v112$1), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v107$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$2, v110$2), v109$2), v108$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$2, v114$2), v113$2), v112$2), SI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 191} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), v116$1, $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 191} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 191} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), v116$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))] := (if p5$1 then v116$1 else $$LocalBlock[1bv1][BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1)))]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2)))] := (if p5$2 then v116$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2)))]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p5$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p5$2 then _HAVOC_int$2 else v117$2);
    $$5$0$1 := (if p5$1 then v117$1 else $$5$0$1);
    $$5$0$2 := (if p5$2 then v117$2 else $$5$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p5$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p5$2 then _HAVOC_int$2 else v118$2);
    $$5$1$1 := (if p5$1 then v118$1 else $$5$1$1);
    $$5$1$2 := (if p5$2 then v118$2 else $$5$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p5$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p5$2 then _HAVOC_int$2 else v119$2);
    $$5$2$1 := (if p5$1 then v119$1 else $$5$2$1);
    $$5$2$2 := (if p5$2 then v119$2 else $$5$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p5$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p5$2 then _HAVOC_int$2 else v120$2);
    $$5$3$1 := (if p5$1 then v120$1 else $$5$3$1);
    $$5$3$2 := (if p5$2 then v120$2 else $$5$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v121$1 := (if p5$1 then _HAVOC_int$1 else v121$1);
    v121$2 := (if p5$2 then _HAVOC_int$2 else v121$2);
    $$5$4$1 := (if p5$1 then v121$1 else $$5$4$1);
    $$5$4$2 := (if p5$2 then v121$2 else $$5$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v122$1 := (if p5$1 then _HAVOC_int$1 else v122$1);
    v122$2 := (if p5$2 then _HAVOC_int$2 else v122$2);
    $$5$5$1 := (if p5$1 then v122$1 else $$5$5$1);
    $$5$5$2 := (if p5$2 then v122$2 else $$5$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v123$1 := (if p5$1 then _HAVOC_int$1 else v123$1);
    v123$2 := (if p5$2 then _HAVOC_int$2 else v123$2);
    $$5$6$1 := (if p5$1 then v123$1 else $$5$6$1);
    $$5$6$2 := (if p5$2 then v123$2 else $$5$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p5$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p5$2 then _HAVOC_int$2 else v124$2);
    $$5$7$1 := (if p5$1 then v124$1 else $$5$7$1);
    $$5$7$2 := (if p5$2 then v124$2 else $$5$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v125$1 := (if p5$1 then _HAVOC_int$1 else v125$1);
    v125$2 := (if p5$2 then _HAVOC_int$2 else v125$2);
    $$5$8$1 := (if p5$1 then v125$1 else $$5$8$1);
    $$5$8$2 := (if p5$2 then v125$2 else $$5$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v126$1 := (if p5$1 then _HAVOC_int$1 else v126$1);
    v126$2 := (if p5$2 then _HAVOC_int$2 else v126$2);
    $$5$9$1 := (if p5$1 then v126$1 else $$5$9$1);
    $$5$9$2 := (if p5$2 then v126$2 else $$5$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v127$1 := (if p5$1 then _HAVOC_int$1 else v127$1);
    v127$2 := (if p5$2 then _HAVOC_int$2 else v127$2);
    $$5$10$1 := (if p5$1 then v127$1 else $$5$10$1);
    $$5$10$2 := (if p5$2 then v127$2 else $$5$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v128$1 := (if p5$1 then _HAVOC_int$1 else v128$1);
    v128$2 := (if p5$2 then _HAVOC_int$2 else v128$2);
    $$5$11$1 := (if p5$1 then v128$1 else $$5$11$1);
    $$5$11$2 := (if p5$2 then v128$2 else $$5$11$2);
    v129$1 := (if p5$1 then $$5$0$1 else v129$1);
    v129$2 := (if p5$2 then $$5$0$2 else v129$2);
    v130$1 := (if p5$1 then $$5$4$1 else v130$1);
    v130$2 := (if p5$2 then $$5$4$2 else v130$2);
    v131$1 := (if p5$1 then $$5$5$1 else v131$1);
    v131$2 := (if p5$2 then $$5$5$2 else v131$2);
    v132$1 := (if p5$1 then $$5$6$1 else v132$1);
    v132$2 := (if p5$2 then $$5$6$2 else v132$2);
    v133$1 := (if p5$1 then $$5$7$1 else v133$1);
    v133$2 := (if p5$2 then $$5$7$2 else v133$2);
    v134$1 := (if p5$1 then $$5$8$1 else v134$1);
    v134$2 := (if p5$2 then $$5$8$2 else v134$2);
    v135$1 := (if p5$1 then $$5$9$1 else v135$1);
    v135$2 := (if p5$2 then $$5$9$2 else v135$2);
    v136$1 := (if p5$1 then $$5$10$1 else v136$1);
    v136$2 := (if p5$2 then $$5$10$2 else v136$2);
    v137$1 := (if p5$1 then $$5$11$1 else v137$1);
    v137$2 := (if p5$2 then $$5$11$2 else v137$2);
    call {:sourceloc_num 225} v138$1, v138$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v129$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v133$1, v132$1), v131$1), v130$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$1, v136$1), v135$1), v134$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v129$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v133$2, v132$2), v131$2), v130$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$2, v136$2), v135$2), v134$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 1)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 226} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), v138$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 226} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 226} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), v138$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)] := (if p5$1 then v138$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)] := (if p5$2 then v138$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v139$1 := (if p5$1 then _HAVOC_int$1 else v139$1);
    v139$2 := (if p5$2 then _HAVOC_int$2 else v139$2);
    $$6$0$1 := (if p5$1 then v139$1 else $$6$0$1);
    $$6$0$2 := (if p5$2 then v139$2 else $$6$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v140$1 := (if p5$1 then _HAVOC_int$1 else v140$1);
    v140$2 := (if p5$2 then _HAVOC_int$2 else v140$2);
    $$6$1$1 := (if p5$1 then v140$1 else $$6$1$1);
    $$6$1$2 := (if p5$2 then v140$2 else $$6$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v141$1 := (if p5$1 then _HAVOC_int$1 else v141$1);
    v141$2 := (if p5$2 then _HAVOC_int$2 else v141$2);
    $$6$2$1 := (if p5$1 then v141$1 else $$6$2$1);
    $$6$2$2 := (if p5$2 then v141$2 else $$6$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v142$1 := (if p5$1 then _HAVOC_int$1 else v142$1);
    v142$2 := (if p5$2 then _HAVOC_int$2 else v142$2);
    $$6$3$1 := (if p5$1 then v142$1 else $$6$3$1);
    $$6$3$2 := (if p5$2 then v142$2 else $$6$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v143$1 := (if p5$1 then _HAVOC_int$1 else v143$1);
    v143$2 := (if p5$2 then _HAVOC_int$2 else v143$2);
    $$6$4$1 := (if p5$1 then v143$1 else $$6$4$1);
    $$6$4$2 := (if p5$2 then v143$2 else $$6$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v144$1 := (if p5$1 then _HAVOC_int$1 else v144$1);
    v144$2 := (if p5$2 then _HAVOC_int$2 else v144$2);
    $$6$5$1 := (if p5$1 then v144$1 else $$6$5$1);
    $$6$5$2 := (if p5$2 then v144$2 else $$6$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v145$1 := (if p5$1 then _HAVOC_int$1 else v145$1);
    v145$2 := (if p5$2 then _HAVOC_int$2 else v145$2);
    $$6$6$1 := (if p5$1 then v145$1 else $$6$6$1);
    $$6$6$2 := (if p5$2 then v145$2 else $$6$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v146$1 := (if p5$1 then _HAVOC_int$1 else v146$1);
    v146$2 := (if p5$2 then _HAVOC_int$2 else v146$2);
    $$6$7$1 := (if p5$1 then v146$1 else $$6$7$1);
    $$6$7$2 := (if p5$2 then v146$2 else $$6$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v147$1 := (if p5$1 then _HAVOC_int$1 else v147$1);
    v147$2 := (if p5$2 then _HAVOC_int$2 else v147$2);
    $$6$8$1 := (if p5$1 then v147$1 else $$6$8$1);
    $$6$8$2 := (if p5$2 then v147$2 else $$6$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v148$1 := (if p5$1 then _HAVOC_int$1 else v148$1);
    v148$2 := (if p5$2 then _HAVOC_int$2 else v148$2);
    $$6$9$1 := (if p5$1 then v148$1 else $$6$9$1);
    $$6$9$2 := (if p5$2 then v148$2 else $$6$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v149$1 := (if p5$1 then _HAVOC_int$1 else v149$1);
    v149$2 := (if p5$2 then _HAVOC_int$2 else v149$2);
    $$6$10$1 := (if p5$1 then v149$1 else $$6$10$1);
    $$6$10$2 := (if p5$2 then v149$2 else $$6$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v150$1 := (if p5$1 then _HAVOC_int$1 else v150$1);
    v150$2 := (if p5$2 then _HAVOC_int$2 else v150$2);
    $$6$11$1 := (if p5$1 then v150$1 else $$6$11$1);
    $$6$11$2 := (if p5$2 then v150$2 else $$6$11$2);
    v151$1 := (if p5$1 then $$6$0$1 else v151$1);
    v151$2 := (if p5$2 then $$6$0$2 else v151$2);
    v152$1 := (if p5$1 then $$6$4$1 else v152$1);
    v152$2 := (if p5$2 then $$6$4$2 else v152$2);
    v153$1 := (if p5$1 then $$6$5$1 else v153$1);
    v153$2 := (if p5$2 then $$6$5$2 else v153$2);
    v154$1 := (if p5$1 then $$6$6$1 else v154$1);
    v154$2 := (if p5$2 then $$6$6$2 else v154$2);
    v155$1 := (if p5$1 then $$6$7$1 else v155$1);
    v155$2 := (if p5$2 then $$6$7$2 else v155$2);
    v156$1 := (if p5$1 then $$6$8$1 else v156$1);
    v156$2 := (if p5$2 then $$6$8$2 else v156$2);
    v157$1 := (if p5$1 then $$6$9$1 else v157$1);
    v157$2 := (if p5$2 then $$6$9$2 else v157$2);
    v158$1 := (if p5$1 then $$6$10$1 else v158$1);
    v158$2 := (if p5$2 then $$6$10$2 else v158$2);
    v159$1 := (if p5$1 then $$6$11$1 else v159$1);
    v159$2 := (if p5$2 then $$6$11$2 else v159$2);
    call {:sourceloc_num 260} v160$1, v160$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v151$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v155$1, v154$1), v153$1), v152$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$1, v158$1), v157$1), v156$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 2)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v151$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v155$2, v154$2), v153$2), v152$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v159$2, v158$2), v157$2), v156$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 2)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 261} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2), v160$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 261} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 261} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2), v160$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)] := (if p5$1 then v160$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 2)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2)] := (if p5$2 then v160$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 2)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v161$1 := (if p5$1 then _HAVOC_int$1 else v161$1);
    v161$2 := (if p5$2 then _HAVOC_int$2 else v161$2);
    $$7$0$1 := (if p5$1 then v161$1 else $$7$0$1);
    $$7$0$2 := (if p5$2 then v161$2 else $$7$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v162$1 := (if p5$1 then _HAVOC_int$1 else v162$1);
    v162$2 := (if p5$2 then _HAVOC_int$2 else v162$2);
    $$7$1$1 := (if p5$1 then v162$1 else $$7$1$1);
    $$7$1$2 := (if p5$2 then v162$2 else $$7$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v163$1 := (if p5$1 then _HAVOC_int$1 else v163$1);
    v163$2 := (if p5$2 then _HAVOC_int$2 else v163$2);
    $$7$2$1 := (if p5$1 then v163$1 else $$7$2$1);
    $$7$2$2 := (if p5$2 then v163$2 else $$7$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v164$1 := (if p5$1 then _HAVOC_int$1 else v164$1);
    v164$2 := (if p5$2 then _HAVOC_int$2 else v164$2);
    $$7$3$1 := (if p5$1 then v164$1 else $$7$3$1);
    $$7$3$2 := (if p5$2 then v164$2 else $$7$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v165$1 := (if p5$1 then _HAVOC_int$1 else v165$1);
    v165$2 := (if p5$2 then _HAVOC_int$2 else v165$2);
    $$7$4$1 := (if p5$1 then v165$1 else $$7$4$1);
    $$7$4$2 := (if p5$2 then v165$2 else $$7$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v166$1 := (if p5$1 then _HAVOC_int$1 else v166$1);
    v166$2 := (if p5$2 then _HAVOC_int$2 else v166$2);
    $$7$5$1 := (if p5$1 then v166$1 else $$7$5$1);
    $$7$5$2 := (if p5$2 then v166$2 else $$7$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v167$1 := (if p5$1 then _HAVOC_int$1 else v167$1);
    v167$2 := (if p5$2 then _HAVOC_int$2 else v167$2);
    $$7$6$1 := (if p5$1 then v167$1 else $$7$6$1);
    $$7$6$2 := (if p5$2 then v167$2 else $$7$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v168$1 := (if p5$1 then _HAVOC_int$1 else v168$1);
    v168$2 := (if p5$2 then _HAVOC_int$2 else v168$2);
    $$7$7$1 := (if p5$1 then v168$1 else $$7$7$1);
    $$7$7$2 := (if p5$2 then v168$2 else $$7$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v169$1 := (if p5$1 then _HAVOC_int$1 else v169$1);
    v169$2 := (if p5$2 then _HAVOC_int$2 else v169$2);
    $$7$8$1 := (if p5$1 then v169$1 else $$7$8$1);
    $$7$8$2 := (if p5$2 then v169$2 else $$7$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v170$1 := (if p5$1 then _HAVOC_int$1 else v170$1);
    v170$2 := (if p5$2 then _HAVOC_int$2 else v170$2);
    $$7$9$1 := (if p5$1 then v170$1 else $$7$9$1);
    $$7$9$2 := (if p5$2 then v170$2 else $$7$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v171$1 := (if p5$1 then _HAVOC_int$1 else v171$1);
    v171$2 := (if p5$2 then _HAVOC_int$2 else v171$2);
    $$7$10$1 := (if p5$1 then v171$1 else $$7$10$1);
    $$7$10$2 := (if p5$2 then v171$2 else $$7$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v172$1 := (if p5$1 then _HAVOC_int$1 else v172$1);
    v172$2 := (if p5$2 then _HAVOC_int$2 else v172$2);
    $$7$11$1 := (if p5$1 then v172$1 else $$7$11$1);
    $$7$11$2 := (if p5$2 then v172$2 else $$7$11$2);
    v173$1 := (if p5$1 then $$7$0$1 else v173$1);
    v173$2 := (if p5$2 then $$7$0$2 else v173$2);
    v174$1 := (if p5$1 then $$7$4$1 else v174$1);
    v174$2 := (if p5$2 then $$7$4$2 else v174$2);
    v175$1 := (if p5$1 then $$7$5$1 else v175$1);
    v175$2 := (if p5$2 then $$7$5$2 else v175$2);
    v176$1 := (if p5$1 then $$7$6$1 else v176$1);
    v176$2 := (if p5$2 then $$7$6$2 else v176$2);
    v177$1 := (if p5$1 then $$7$7$1 else v177$1);
    v177$2 := (if p5$2 then $$7$7$2 else v177$2);
    v178$1 := (if p5$1 then $$7$8$1 else v178$1);
    v178$2 := (if p5$2 then $$7$8$2 else v178$2);
    v179$1 := (if p5$1 then $$7$9$1 else v179$1);
    v179$2 := (if p5$2 then $$7$9$2 else v179$2);
    v180$1 := (if p5$1 then $$7$10$1 else v180$1);
    v180$2 := (if p5$2 then $$7$10$2 else v180$2);
    v181$1 := (if p5$1 then $$7$11$1 else v181$1);
    v181$2 := (if p5$2 then $$7$11$2 else v181$2);
    call {:sourceloc_num 295} v182$1, v182$2 := $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(p5$1, v173$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v177$1, v176$1), v175$1), v174$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v181$1, v180$1), v179$1), v178$1), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$1), BV32_MUL(4, BV16_SEXT32($ib.1$1))), 1), 3)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$1), group_size_y), 1)), p5$2, v173$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v177$2, v176$2), v175$2), v174$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v181$2, v180$2), v179$2), v178$2), SI32_TO_FP32(BV32_ADD(BV32_SUB(BV32_ADD(BV16_SEXT32(v0$2), BV32_MUL(4, BV16_SEXT32($ib.1$2))), 1), 3)), UI32_TO_FP32(BV32_SUB(BV32_ADD(BV16_SEXT32(v1$2), group_size_y), 1)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 296} _LOG_WRITE_$$LocalBlock(p5$1, BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3), v182$1, $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 296} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 296} _CHECK_WRITE_$$LocalBlock(p5$2, BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3), v182$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$LocalBlock"} true;
    $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)] := (if p5$1 then v182$1 else $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v93$1, BV32_MUL(4, BV16_SEXT32($ib.1$1))), 3)]);
    $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3)] := (if p5$2 then v182$2 else $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v93$2, BV32_MUL(4, BV16_SEXT32($ib.1$2))), 3)]);
    $ib.1$1 := (if p5$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.1$1), group_size_x), 16, 0) else $ib.1$1);
    $ib.1$2 := (if p5$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.1$2), group_size_x), 16, 0) else $ib.1$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $6.backedge, __partitioned_block_$6.tail_0;

  __partitioned_block_$6.tail_0:
    assume !p4$1 && !p4$2;
    goto __partitioned_block_$6.tail_1;

  __partitioned_block_$6.tail_1:
    call {:sourceloc_num 300} $bugle_barrier_duplicated_0(-1, -1);
    v183$1 := BV_EXTRACT(BV32_ASHR(BV16_SEXT32(v0$1), 2), 16, 0);
    v183$2 := BV_EXTRACT(BV32_ASHR(BV16_SEXT32(v0$2), 2), 16, 0);
    v184$1 := BV32_MUL(local_id_y$1, BV16_SEXT32($SharedPitch));
    v184$2 := BV32_MUL(local_id_y$2, BV16_SEXT32($SharedPitch));
    $ib.2$1 := BV_EXTRACT(local_id_x$1, 16, 0);
    $ib.2$2 := BV_EXTRACT(local_id_x$2, 16, 0);
    p7$1 := true;
    p7$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$LocalBlock ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  ( p7$1 ==> BV32_SLE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p7$2 ==> BV32_SLE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p7$1 ==> BV32_SGE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p7$2 ==> BV32_SGE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p7$1 ==> BV32_ULE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p7$2 ==> BV32_ULE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  ( p7$1 ==> BV32_UGE($ib.2$1, BV_EXTRACT(local_id_x$1, 16, 0)) )  && ( p7$2 ==> BV32_UGE($ib.2$2, BV_EXTRACT(local_id_x$2, 16, 0)) ) ,  (  BV32_SLT(BV16_SEXT32($ib.2$1), BV16_SEXT32($BlockWidth)) ==> p7$1 )  && (  BV32_SLT(BV16_SEXT32($ib.2$2), BV16_SEXT32($BlockWidth)) ==> p7$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_SLE(BV32_MUL(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1), 16, 0)), BV16_ZEXT32($SobelPitch)), _WATCHED_OFFSET) ) ,  (  _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(BV_EXTRACT(BV32_ADD(BV32_MUL(BV32_ADD(group_id_y$1, 1), group_size_y), local_id_y$1), 16, 0)), BV16_ZEXT32($SobelPitch))) ) ,  (  _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 ) ,  (  _READ_HAS_OCCURRED_$$LocalBlock ==> _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == 0 mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 1) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 2) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 3) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 4) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1 || _WATCHED_OFFSET mod 1 == BV32_ADD(0, 5) mod 1 )  ); 


    assert {:block_sourceloc} {:sourceloc_num 301} p7$1 ==> true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 302} {:thread 1} (if BV32_UREM(BV16_SEXT32($ib.2$1), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 302} {:thread 2} (if BV32_UREM(BV16_SEXT32($ib.2$2), group_size_x) == local_id_x$2 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 303} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch))), 4), BV16_SEXT32(v183$1)), group_size_x) == local_id_x$1 then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 304} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_ULT(BV32_SUB(BV32_UDIV(BV32_SUB(_WATCHED_OFFSET, BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch))), 4), BV16_SEXT32(v183$1)), BV16_SEXT32($BlockWidth)) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 305} {:thread 1} (if _WRITE_HAS_OCCURRED_$$pSobelOriginal ==> BV32_ULT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV16_SEXT32(v1$1), 1), BV16_ZEXT32($SobelPitch))) then 1 else 0) != 0;
    v185$1 := (if p7$1 then BV32_SLT(BV16_SEXT32($ib.2$1), BV16_SEXT32($BlockWidth)) else v185$1);
    v185$2 := (if p7$2 then BV32_SLT(BV16_SEXT32($ib.2$2), BV16_SEXT32($BlockWidth)) else v185$2);
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
    p8$1 := (if p7$1 && v185$1 then v185$1 else p8$1);
    p8$2 := (if p7$2 && v185$2 then v185$2 else p8$2);
    p7$1 := (if p7$1 && !v185$1 then v185$1 else p7$1);
    p7$2 := (if p7$2 && !v185$2 then v185$2 else p7$2);
    call {:sourceloc} {:sourceloc_num 307} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 307} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 307} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v186$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))] else v186$1);
    v186$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch)))] else v186$2);
    call {:sourceloc} {:sourceloc_num 308} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 308} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 308} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v187$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)] else v187$1);
    v187$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 1)] else v187$2);
    call {:sourceloc} {:sourceloc_num 309} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 309} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 309} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v188$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)] else v188$1);
    v188$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 2)] else v188$2);
    call {:sourceloc} {:sourceloc_num 310} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch))]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 310} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 310} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v189$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch))] else v189$1);
    v189$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch))] else v189$2);
    call {:sourceloc} {:sourceloc_num 311} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 311} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 311} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v190$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 1)] else v190$1);
    v190$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 1)] else v190$2);
    call {:sourceloc} {:sourceloc_num 312} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 312} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 312} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v191$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 2)] else v191$1);
    v191$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 2)] else v191$2);
    call {:sourceloc} {:sourceloc_num 313} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 313} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 313} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v192$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))] else v192$1);
    v192$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch)))] else v192$2);
    call {:sourceloc} {:sourceloc_num 314} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 314} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 314} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v193$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)] else v193$1);
    v193$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 1)] else v193$2);
    call {:sourceloc} {:sourceloc_num 315} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 315} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 315} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v194$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)] else v194$1);
    v194$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 2)] else v194$2);
    call {:sourceloc_num 316} v195$1, v195$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v188$1), BV32_MUL(2, BV8_ZEXT32(v191$1))), BV8_ZEXT32(v194$1)), BV8_ZEXT32(v186$1)), BV32_MUL(2, BV8_ZEXT32(v189$1))), BV8_ZEXT32(v192$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v188$2), BV32_MUL(2, BV8_ZEXT32(v191$2))), BV8_ZEXT32(v194$2)), BV8_ZEXT32(v186$2)), BV32_MUL(2, BV8_ZEXT32(v189$2))), BV8_ZEXT32(v192$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 317} v196$1, v196$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v186$1), BV32_MUL(2, BV8_ZEXT32(v187$1))), BV8_ZEXT32(v188$1)), BV8_ZEXT32(v192$1)), BV32_MUL(2, BV8_ZEXT32(v193$1))), BV8_ZEXT32(v194$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v186$2), BV32_MUL(2, BV8_ZEXT32(v187$2))), BV8_ZEXT32(v188$2)), BV8_ZEXT32(v192$2)), BV32_MUL(2, BV8_ZEXT32(v193$2))), BV8_ZEXT32(v194$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v197$1 := (if p8$1 then FP32_TO_SI16(FMUL32($fScale, FADD32(v195$1, v196$1))) else v197$1);
    v197$2 := (if p8$2 then FP32_TO_SI16(FMUL32($fScale, FADD32(v195$2, v196$2))) else v197$2);
    v198$1 := (if p8$1 then BV32_SLT(BV16_SEXT32(v197$1), 0) else v198$1);
    v198$2 := (if p8$2 then BV32_SLT(BV16_SEXT32(v197$2), 0) else v198$2);
    p9$1 := (if p8$1 && v198$1 then v198$1 else p9$1);
    p9$2 := (if p8$2 && v198$2 then v198$2 else p9$2);
    p10$1 := (if p8$1 && !v198$1 then !v198$1 else p10$1);
    p10$2 := (if p8$2 && !v198$2 then !v198$2 else p10$2);
    $.01$1 := (if p9$1 then 0 else $.01$1);
    $.01$2 := (if p9$2 then 0 else $.01$2);
    v199$1 := (if p10$1 then BV32_SGT(BV16_SEXT32(v197$1), 255) else v199$1);
    v199$2 := (if p10$2 then BV32_SGT(BV16_SEXT32(v197$2), 255) else v199$2);
    p12$1 := (if p10$1 && v199$1 then v199$1 else p12$1);
    p12$2 := (if p10$2 && v199$2 then v199$2 else p12$2);
    p11$1 := (if p10$1 && !v199$1 then !v199$1 else p11$1);
    p11$2 := (if p10$2 && !v199$2 then !v199$2 else p11$2);
    $.01$1 := (if p11$1 then BV_EXTRACT(v197$1, 8, 0) else $.01$1);
    $.01$2 := (if p11$2 then BV_EXTRACT(v197$2, 8, 0) else $.01$2);
    $.01$1 := (if p12$1 then -1 else $.01$1);
    $.01$2 := (if p12$2 then -1 else $.01$2);
    $$out$0$1 := (if p8$1 then $.01$1 else $$out$0$1);
    $$out$0$2 := (if p8$2 then $.01$2 else $$out$0$2);
    call {:sourceloc} {:sourceloc_num 324} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 324} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 324} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v200$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)] else v200$1);
    v200$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 3)] else v200$2);
    call {:sourceloc} {:sourceloc_num 325} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 325} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 325} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v201$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 3)] else v201$1);
    v201$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 3)] else v201$2);
    call {:sourceloc} {:sourceloc_num 326} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 326} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 326} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v202$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)] else v202$1);
    v202$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 3)] else v202$2);
    call {:sourceloc_num 327} v203$1, v203$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v200$1), BV32_MUL(2, BV8_ZEXT32(v201$1))), BV8_ZEXT32(v202$1)), BV8_ZEXT32(v187$1)), BV32_MUL(2, BV8_ZEXT32(v190$1))), BV8_ZEXT32(v193$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v200$2), BV32_MUL(2, BV8_ZEXT32(v201$2))), BV8_ZEXT32(v202$2)), BV8_ZEXT32(v187$2)), BV32_MUL(2, BV8_ZEXT32(v190$2))), BV8_ZEXT32(v193$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 328} v204$1, v204$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v187$1), BV32_MUL(2, BV8_ZEXT32(v188$1))), BV8_ZEXT32(v200$1)), BV8_ZEXT32(v193$1)), BV32_MUL(2, BV8_ZEXT32(v194$1))), BV8_ZEXT32(v202$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v187$2), BV32_MUL(2, BV8_ZEXT32(v188$2))), BV8_ZEXT32(v200$2)), BV8_ZEXT32(v193$2)), BV32_MUL(2, BV8_ZEXT32(v194$2))), BV8_ZEXT32(v202$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v205$1 := (if p8$1 then FP32_TO_SI16(FMUL32($fScale, FADD32(v203$1, v204$1))) else v205$1);
    v205$2 := (if p8$2 then FP32_TO_SI16(FMUL32($fScale, FADD32(v203$2, v204$2))) else v205$2);
    v206$1 := (if p8$1 then BV32_SLT(BV16_SEXT32(v205$1), 0) else v206$1);
    v206$2 := (if p8$2 then BV32_SLT(BV16_SEXT32(v205$2), 0) else v206$2);
    p13$1 := (if p8$1 && v206$1 then v206$1 else p13$1);
    p13$2 := (if p8$2 && v206$2 then v206$2 else p13$2);
    p14$1 := (if p8$1 && !v206$1 then !v206$1 else p14$1);
    p14$2 := (if p8$2 && !v206$2 then !v206$2 else p14$2);
    $.03$1 := (if p13$1 then 0 else $.03$1);
    $.03$2 := (if p13$2 then 0 else $.03$2);
    v207$1 := (if p14$1 then BV32_SGT(BV16_SEXT32(v205$1), 255) else v207$1);
    v207$2 := (if p14$2 then BV32_SGT(BV16_SEXT32(v205$2), 255) else v207$2);
    p16$1 := (if p14$1 && v207$1 then v207$1 else p16$1);
    p16$2 := (if p14$2 && v207$2 then v207$2 else p16$2);
    p15$1 := (if p14$1 && !v207$1 then !v207$1 else p15$1);
    p15$2 := (if p14$2 && !v207$2 then !v207$2 else p15$2);
    $.03$1 := (if p15$1 then BV_EXTRACT(v205$1, 8, 0) else $.03$1);
    $.03$2 := (if p15$2 then BV_EXTRACT(v205$2, 8, 0) else $.03$2);
    $.03$1 := (if p16$1 then -1 else $.03$1);
    $.03$2 := (if p16$2 then -1 else $.03$2);
    $$out$1$1 := (if p8$1 then $.03$1 else $$out$1$1);
    $$out$1$2 := (if p8$2 then $.03$2 else $$out$1$2);
    call {:sourceloc} {:sourceloc_num 335} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 335} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 335} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v208$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)] else v208$1);
    v208$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 4)] else v208$2);
    call {:sourceloc} {:sourceloc_num 336} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 336} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 336} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v209$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 4)] else v209$1);
    v209$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 4)] else v209$2);
    call {:sourceloc} {:sourceloc_num 337} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 337} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 337} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v210$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)] else v210$1);
    v210$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 4)] else v210$2);
    call {:sourceloc_num 338} v211$1, v211$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v208$1), BV32_MUL(2, BV8_ZEXT32(v209$1))), BV8_ZEXT32(v210$1)), BV8_ZEXT32(v188$1)), BV32_MUL(2, BV8_ZEXT32(v191$1))), BV8_ZEXT32(v194$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v208$2), BV32_MUL(2, BV8_ZEXT32(v209$2))), BV8_ZEXT32(v210$2)), BV8_ZEXT32(v188$2)), BV32_MUL(2, BV8_ZEXT32(v191$2))), BV8_ZEXT32(v194$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 339} v212$1, v212$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v188$1), BV32_MUL(2, BV8_ZEXT32(v200$1))), BV8_ZEXT32(v208$1)), BV8_ZEXT32(v194$1)), BV32_MUL(2, BV8_ZEXT32(v202$1))), BV8_ZEXT32(v210$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v188$2), BV32_MUL(2, BV8_ZEXT32(v200$2))), BV8_ZEXT32(v208$2)), BV8_ZEXT32(v194$2)), BV32_MUL(2, BV8_ZEXT32(v202$2))), BV8_ZEXT32(v210$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v213$1 := (if p8$1 then FP32_TO_SI16(FMUL32($fScale, FADD32(v211$1, v212$1))) else v213$1);
    v213$2 := (if p8$2 then FP32_TO_SI16(FMUL32($fScale, FADD32(v211$2, v212$2))) else v213$2);
    v214$1 := (if p8$1 then BV32_SLT(BV16_SEXT32(v213$1), 0) else v214$1);
    v214$2 := (if p8$2 then BV32_SLT(BV16_SEXT32(v213$2), 0) else v214$2);
    p17$1 := (if p8$1 && v214$1 then v214$1 else p17$1);
    p17$2 := (if p8$2 && v214$2 then v214$2 else p17$2);
    p18$1 := (if p8$1 && !v214$1 then !v214$1 else p18$1);
    p18$2 := (if p8$2 && !v214$2 then !v214$2 else p18$2);
    $.02$1 := (if p17$1 then 0 else $.02$1);
    $.02$2 := (if p17$2 then 0 else $.02$2);
    v215$1 := (if p18$1 then BV32_SGT(BV16_SEXT32(v213$1), 255) else v215$1);
    v215$2 := (if p18$2 then BV32_SGT(BV16_SEXT32(v213$2), 255) else v215$2);
    p20$1 := (if p18$1 && v215$1 then v215$1 else p20$1);
    p20$2 := (if p18$2 && v215$2 then v215$2 else p20$2);
    p19$1 := (if p18$1 && !v215$1 then !v215$1 else p19$1);
    p19$2 := (if p18$2 && !v215$2 then !v215$2 else p19$2);
    $.02$1 := (if p19$1 then BV_EXTRACT(v213$1, 8, 0) else $.02$1);
    $.02$2 := (if p19$2 then BV_EXTRACT(v213$2, 8, 0) else $.02$2);
    $.02$1 := (if p20$1 then -1 else $.02$1);
    $.02$2 := (if p20$2 then -1 else $.02$2);
    $$out$2$1 := (if p8$1 then $.02$1 else $$out$2$1);
    $$out$2$2 := (if p8$2 then $.02$2 else $$out$2$2);
    call {:sourceloc} {:sourceloc_num 346} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 346} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 346} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v216$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)] else v216$1);
    v216$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(0, BV16_SEXT32($SharedPitch))), 5)] else v216$2);
    call {:sourceloc} {:sourceloc_num 347} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 347} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 347} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v217$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV16_SEXT32($SharedPitch)), 5)] else v217$1);
    v217$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV16_SEXT32($SharedPitch)), 5)] else v217$2);
    call {:sourceloc} {:sourceloc_num 348} _LOG_READ_$$LocalBlock(p8$1, BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 348} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 348} _CHECK_READ_$$LocalBlock(p8$2, BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5), $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$LocalBlock"} true;
    v218$1 := (if p8$1 then $$LocalBlock[1bv1][BV32_ADD(BV32_ADD(BV32_ADD(v184$1, BV32_MUL(4, BV16_SEXT32($ib.2$1))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)] else v218$1);
    v218$2 := (if p8$2 then $$LocalBlock[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_ADD(BV32_ADD(v184$2, BV32_MUL(4, BV16_SEXT32($ib.2$2))), BV32_MUL(2, BV16_SEXT32($SharedPitch))), 5)] else v218$2);
    call {:sourceloc_num 349} v219$1, v219$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v216$1), BV32_MUL(2, BV8_ZEXT32(v217$1))), BV8_ZEXT32(v218$1)), BV8_ZEXT32(v200$1)), BV32_MUL(2, BV8_ZEXT32(v201$1))), BV8_ZEXT32(v202$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v216$2), BV32_MUL(2, BV8_ZEXT32(v217$2))), BV8_ZEXT32(v218$2)), BV8_ZEXT32(v200$2)), BV32_MUL(2, BV8_ZEXT32(v201$2))), BV8_ZEXT32(v202$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    call {:sourceloc_num 350} v220$1, v220$2 := $abs(p8$1, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v200$1), BV32_MUL(2, BV8_ZEXT32(v208$1))), BV8_ZEXT32(v216$1)), BV8_ZEXT32(v202$1)), BV32_MUL(2, BV8_ZEXT32(v210$1))), BV8_ZEXT32(v218$1)), 16, 0))), p8$2, SI32_TO_FP32(BV16_SEXT32(BV_EXTRACT(BV32_SUB(BV32_SUB(BV32_SUB(BV32_ADD(BV32_ADD(BV8_ZEXT32(v200$2), BV32_MUL(2, BV8_ZEXT32(v208$2))), BV8_ZEXT32(v216$2)), BV8_ZEXT32(v202$2)), BV32_MUL(2, BV8_ZEXT32(v210$2))), BV8_ZEXT32(v218$2)), 16, 0))));
    assume {:captureState "call_return_state_0"} {:procedureName "$abs"} true;
    v221$1 := (if p8$1 then FP32_TO_SI16(FMUL32($fScale, FADD32(v219$1, v220$1))) else v221$1);
    v221$2 := (if p8$2 then FP32_TO_SI16(FMUL32($fScale, FADD32(v219$2, v220$2))) else v221$2);
    v222$1 := (if p8$1 then BV32_SLT(BV16_SEXT32(v221$1), 0) else v222$1);
    v222$2 := (if p8$2 then BV32_SLT(BV16_SEXT32(v221$2), 0) else v222$2);
    p21$1 := (if p8$1 && v222$1 then v222$1 else p21$1);
    p21$2 := (if p8$2 && v222$2 then v222$2 else p21$2);
    p22$1 := (if p8$1 && !v222$1 then !v222$1 else p22$1);
    p22$2 := (if p8$2 && !v222$2 then !v222$2 else p22$2);
    $.0$1 := (if p21$1 then 0 else $.0$1);
    $.0$2 := (if p21$2 then 0 else $.0$2);
    v223$1 := (if p22$1 then BV32_SGT(BV16_SEXT32(v221$1), 255) else v223$1);
    v223$2 := (if p22$2 then BV32_SGT(BV16_SEXT32(v221$2), 255) else v223$2);
    p24$1 := (if p22$1 && v223$1 then v223$1 else p24$1);
    p24$2 := (if p22$2 && v223$2 then v223$2 else p24$2);
    p23$1 := (if p22$1 && !v223$1 then !v223$1 else p23$1);
    p23$2 := (if p22$2 && !v223$2 then !v223$2 else p23$2);
    $.0$1 := (if p23$1 then BV_EXTRACT(v221$1, 8, 0) else $.0$1);
    $.0$2 := (if p23$2 then BV_EXTRACT(v221$2, 8, 0) else $.0$2);
    $.0$1 := (if p24$1 then -1 else $.0$1);
    $.0$2 := (if p24$2 then -1 else $.0$2);
    $$out$3$1 := (if p8$1 then $.0$1 else $$out$3$1);
    $$out$3$2 := (if p8$2 then $.0$2 else $$out$3$2);
    v224$1 := (if p8$1 then BV32_SLT(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), BV32_SDIV(BV16_SEXT32($w), 4)) else v224$1);
    v224$2 := (if p8$2 then BV32_SLT(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), BV32_SDIV(BV16_SEXT32($w), 4)) else v224$2);
    p26$1 := (if p8$1 && v224$1 then v224$1 else p26$1);
    p26$2 := (if p8$2 && v224$2 then v224$2 else p26$2);
    v225$1 := (if p26$1 then BV32_SLT(BV16_SEXT32(v1$1), BV16_SEXT32($h)) else v225$1);
    v225$2 := (if p26$2 then BV32_SLT(BV16_SEXT32(v1$2), BV16_SEXT32($h)) else v225$2);
    p28$1 := (if p26$1 && v225$1 then v225$1 else p28$1);
    p28$2 := (if p26$2 && v225$2 then v225$2 else p28$2);
    v226$1 := (if p28$1 then $$out$0$1 else v226$1);
    v226$2 := (if p28$2 then $$out$0$2 else v226$2);
    call {:sourceloc} {:sourceloc_num 360} _LOG_WRITE_$$pSobelOriginal(p28$1, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), v226$1, $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p28$2, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 360} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 360} _CHECK_WRITE_$$pSobelOriginal(p28$2, BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), v226$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))] := (if p28$1 then v226$1 else $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4))]);
    $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4))] := (if p28$2 then v226$2 else $$pSobelOriginal[BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4))]);
    v227$1 := (if p28$1 then $$out$1$1 else v227$1);
    v227$2 := (if p28$2 then $$out$1$2 else v227$2);
    call {:sourceloc} {:sourceloc_num 362} _LOG_WRITE_$$pSobelOriginal(p28$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1), v227$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 362} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 362} _CHECK_WRITE_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1), v227$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)] := (if p28$1 then v227$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 1)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1)] := (if p28$2 then v227$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 1)]);
    v228$1 := (if p28$1 then $$out$2$1 else v228$1);
    v228$2 := (if p28$2 then $$out$2$2 else v228$2);
    call {:sourceloc} {:sourceloc_num 364} _LOG_WRITE_$$pSobelOriginal(p28$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2), v228$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 364} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 364} _CHECK_WRITE_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2), v228$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)] := (if p28$1 then v228$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 2)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2)] := (if p28$2 then v228$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 2)]);
    v229$1 := (if p28$1 then $$out$3$1 else v229$1);
    v229$2 := (if p28$2 then $$out$3$2 else v229$2);
    call {:sourceloc} {:sourceloc_num 366} _LOG_WRITE_$$pSobelOriginal(p28$1, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3), v229$1, $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 366} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 366} _CHECK_WRITE_$$pSobelOriginal(p28$2, BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3), v229$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pSobelOriginal"} true;
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)] := (if p28$1 then v229$1 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$1), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$1), BV16_SEXT32($ib.2$1)), 4)), 3)]);
    $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3)] := (if p28$2 then v229$2 else $$pSobelOriginal[BV32_ADD(BV32_ADD(BV32_MUL(BV16_SEXT32(v1$2), BV16_ZEXT32($SobelPitch)), BV32_MUL(BV32_ADD(BV16_SEXT32(v183$2), BV16_SEXT32($ib.2$2)), 4)), 3)]);
    $ib.2$1 := (if p8$1 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.2$1), group_size_x), 16, 0) else $ib.2$1);
    $ib.2$2 := (if p8$2 then BV_EXTRACT(BV32_ADD(BV16_SEXT32($ib.2$2), group_size_x), 16, 0) else $ib.2$2);
    p7$1 := (if p8$1 then true else p7$1);
    p7$2 := (if p8$2 then true else p7$2);
    goto $11.backedge, __partitioned_block_$11.tail_0;

  __partitioned_block_$11.tail_0:
    assume !p7$1 && !p7$2;
    goto __partitioned_block_$11.tail_1;

  __partitioned_block_$11.tail_1:
    call {:sourceloc_num 370} $bugle_barrier_duplicated_1(-1, -1);
    return;

  $11.backedge:
    assume {:backedge} p7$1 || p7$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $11;

  $6.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $6;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $1;
}



procedure {:source_name "_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIhET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "abs"} $abs(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 4 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if num_groups_y == 128 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$LocalBlock, $$pSobelOriginal, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  modifies $$LocalBlock, $$pSobelOriginal, _TRACKING;



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

var $$out$0$1: int;

var $$out$0$2: int;

var $$out$1$1: int;

var $$out$1$2: int;

var $$out$2$1: int;

var $$out$2$2: int;

var $$out$3$1: int;

var $$out$3$2: int;

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





























const _WATCHED_VALUE_$$pSobelOriginal: int;

procedure {:inline 1} _LOG_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pSobelOriginal;



implementation {:inline 1} _LOG_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then true else _READ_HAS_OCCURRED_$$pSobelOriginal);
    return;
}



procedure _CHECK_READ_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal: bool;

procedure {:inline 1} _LOG_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pSobelOriginal, _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal;



implementation {:inline 1} _LOG_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then true else _WRITE_HAS_OCCURRED_$$pSobelOriginal);
    _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
    return;
}



procedure _CHECK_WRITE_$$pSobelOriginal(_P: bool, _offset: int, _value: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal != _value);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pSobelOriginal != _value);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pSobelOriginal;



implementation {:inline 1} _LOG_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pSobelOriginal := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pSobelOriginal);
    return;
}



procedure _CHECK_ATOMIC_$$pSobelOriginal(_P: bool, _offset: int);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);
  requires {:source_name "pSobelOriginal"} {:array "$$pSobelOriginal"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pSobelOriginal(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal := (if _P && _WRITE_HAS_OCCURRED_$$pSobelOriginal && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pSobelOriginal);
    return;
}



const _WATCHED_VALUE_$$tex: int;

procedure {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _READ_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_READ_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex: bool;

procedure {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$tex, _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _WRITE_HAS_OCCURRED_$$tex);
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



procedure _CHECK_WRITE_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_ATOMIC_$$tex(_P: bool, _offset: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



const _WATCHED_VALUE_$$LocalBlock: int;

procedure {:inline 1} _LOG_READ_$$LocalBlock(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$LocalBlock;



implementation {:inline 1} _LOG_READ_$$LocalBlock(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then true else _READ_HAS_OCCURRED_$$LocalBlock);
    return;
}



procedure _CHECK_READ_$$LocalBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$LocalBlock && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$LocalBlock: bool;

procedure {:inline 1} _LOG_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$LocalBlock, _WRITE_READ_BENIGN_FLAG_$$LocalBlock;



implementation {:inline 1} _LOG_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then true else _WRITE_HAS_OCCURRED_$$LocalBlock);
    _WRITE_READ_BENIGN_FLAG_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$LocalBlock);
    return;
}



procedure _CHECK_WRITE_$$LocalBlock(_P: bool, _offset: int, _value: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$LocalBlock != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$LocalBlock(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$LocalBlock;



implementation {:inline 1} _LOG_ATOMIC_$$LocalBlock(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$LocalBlock := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$LocalBlock);
    return;
}



procedure _CHECK_ATOMIC_$$LocalBlock(_P: bool, _offset: int);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "LocalBlock"} {:array "$$LocalBlock"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$LocalBlock;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$LocalBlock(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$LocalBlock := (if _P && _WRITE_HAS_OCCURRED_$$LocalBlock && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$LocalBlock);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
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
    havoc $$pSobelOriginal;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$LocalBlock;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$LocalBlock;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$LocalBlock;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$pSobelOriginal;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$pSobelOriginal;
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
    havoc $$pSobelOriginal;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$LocalBlock;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}
















