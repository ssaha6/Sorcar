type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "d_Dst"} {:global} $$d_Dst: [int]int;

axiom {:array_info "$$d_Dst"} {:global} {:elem_width 32} {:source_name "d_Dst"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Dst: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Dst: bool;

axiom {:array_info "$$d_Src"} {:global} {:elem_width 32} {:source_name "d_Src"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d_Src: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d_Src: bool;

axiom {:array_info "$$D1"} {:elem_width 32} {:source_name "D1"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$D2"} {:elem_width 32} {:source_name "D2"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$twiddle"} {:elem_width 32} {:source_name "twiddle"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$D15"} {:elem_width 32} {:source_name "D15"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$D26"} {:elem_width 32} {:source_name "D26"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$twiddle7"} {:elem_width 32} {:source_name "twiddle7"} {:source_elem_width 64} {:source_dimensions "1"} true;

axiom {:array_info "$$texComplexA"} {:global} {:elem_width 8} {:source_name "texComplexA"} {:source_elem_width 128} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$texComplexA: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$texComplexA: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$texComplexA: bool;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_UGT(x: int, y: int) : bool
{
  x > y
}

procedure BV32_CTLZ(isZeroUndef: bool, _P$1: bool, val$1: int, _P$2: bool, val$2: int) returns (count$1: int, count$2: int);
  requires _P$1 ==> isZeroUndef == false;
  requires _P$2 ==> isZeroUndef == false;



procedure {:source_name "spPreprocess2D_kernel"} {:kernel} $_Z21spPreprocess2D_kernelP6float2S0_jjjjf($DY: int, $DX: int, $threadCount: int, $padding: int, $phaseBase: int);
  requires {:sourceloc_num 0} {:thread 1} (if $DY == 2048 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $DX == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $threadCount == 1048576 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $padding == 16 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d_Dst && !_WRITE_HAS_OCCURRED_$$d_Dst && !_ATOMIC_HAS_OCCURRED_$$d_Dst;
  requires !_READ_HAS_OCCURRED_$$d_Src && !_WRITE_HAS_OCCURRED_$$d_Src && !_ATOMIC_HAS_OCCURRED_$$d_Src;
  requires !_READ_HAS_OCCURRED_$$texComplexA && !_WRITE_HAS_OCCURRED_$$texComplexA && !_ATOMIC_HAS_OCCURRED_$$texComplexA;
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
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:source_name "spPreprocess2D_kernel"} {:kernel} $_Z21spPreprocess2D_kernelP6float2S0_jjjjf($DY: int, $DX: int, $threadCount: int, $padding: int, $phaseBase: int)
{
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $4$1: int;
  var $4$2: int;
  var v1$1: bool;
  var v1$2: bool;
  var v92$1: int;
  var v92$2: int;
  var v0$1: int;
  var v0$2: int;
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
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v12$1: int;
  var v12$2: int;
  var v11$1: int;
  var v11$2: int;
  var v13$1: bool;
  var v13$2: bool;
  var v14$1: int;
  var v14$2: int;
  var v15$1: bool;
  var v15$2: bool;
  var v16$1: bool;
  var v16$2: bool;
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
  var v52$1: int;
  var v52$2: int;
  var v53$1: int;
  var v53$2: int;
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
  var v51$1: int;
  var v51$2: int;
  var v50$1: int;
  var v50$2: int;
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
  var v110$1: bool;
  var v110$2: bool;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v111$1: bool;
  var v111$2: bool;
  var v112$1: int;
  var v112$2: int;
  var v113$1: bool;
  var v113$2: bool;
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v120$1: int;
  var v120$2: int;
  var v116$1: int;
  var v116$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118$1: int;
  var v118$2: int;
  var v119$1: int;
  var v119$2: int;
  var v128$1: int;
  var v128$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_UGE(v0$1, $threadCount);
    v1$2 := BV32_UGE(v0$2, $threadCount);
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
    p1$1 := (if !v1$1 then !v1$1 else p1$1);
    p1$2 := (if !v1$2 then !v1$2 else p1$2);
    v2$1 := (if p1$1 then BV32_UDIV($DX, 2) else v2$1);
    v2$2 := (if p1$2 then BV32_UDIV($DX, 2) else v2$2);
    v3$1 := (if p1$1 then BV32_AND(v0$1, BV32_SUB(v2$1, 1)) else v3$1);
    v3$2 := (if p1$2 then BV32_AND(v0$2, BV32_SUB(v2$2, 1)) else v3$2);
    call v4$1, v4$2 := BV32_CTLZ(false, p1$1, BV32_AND(v2$1, BV32_SUB(0, v2$1)), p1$2, BV32_AND(v2$2, BV32_SUB(0, v2$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "BV32_CTLZ"} true;
    v5$1 := (if p1$1 then BV32_LSHR(v0$1, BV32_SUB(BV32_SUB(32, v4$1), 1)) else v5$1);
    v5$2 := (if p1$2 then BV32_LSHR(v0$2, BV32_SUB(BV32_SUB(32, v4$2), 1)) else v5$2);
    v6$1 := (if p1$1 then BV32_AND(v5$1, BV32_SUB($DY, 1)) else v6$1);
    v6$2 := (if p1$2 then BV32_AND(v5$2, BV32_SUB($DY, 1)) else v6$2);
    call v7$1, v7$2 := BV32_CTLZ(false, p1$1, BV32_AND($DY, BV32_SUB(0, $DY)), p1$2, BV32_AND($DY, BV32_SUB(0, $DY)));
    assume {:captureState "call_return_state_0"} {:procedureName "BV32_CTLZ"} true;
    v8$1 := (if p1$1 then BV32_LSHR(v5$1, BV32_SUB(BV32_SUB(32, v7$1), 1)) else v8$1);
    v8$2 := (if p1$2 then BV32_LSHR(v5$2, BV32_SUB(BV32_SUB(32, v7$2), 1)) else v8$2);
    v9$1 := (if p1$1 then v3$1 == 0 else v9$1);
    v9$2 := (if p1$2 then v3$2 == 0 else v9$2);
    p2$1 := (if p1$1 && v9$1 then v9$1 else p2$1);
    p2$2 := (if p1$2 && v9$2 then v9$2 else p2$2);
    p6$1 := (if p1$1 && !v9$1 then !v9$1 else p6$1);
    p6$2 := (if p1$2 && !v9$2 then !v9$2 else p6$2);
    v10$1 := (if p2$1 then BV32_UGT(v6$1, BV32_UDIV($DY, 2)) else v10$1);
    v10$2 := (if p2$2 then BV32_UGT(v6$2, BV32_UDIV($DY, 2)) else v10$2);
    p6$1 := (if p2$1 && !v10$1 then !v10$1 else p6$1);
    p6$2 := (if p2$2 && !v10$2 then !v10$2 else p6$2);
    p6$1 := (if p4$1 then true else p6$1);
    p6$2 := (if p4$2 then true else p6$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    v11$1 := (if p6$1 then BV32_MUL(BV32_MUL(v8$1, $DY), BV32_ADD($DX, $padding)) else v11$1);
    v11$2 := (if p6$2 then BV32_MUL(BV32_MUL(v8$2, $DY), BV32_ADD($DX, $padding)) else v11$2);
    v12$1 := (if p6$1 then BV32_MUL(BV32_MUL(v8$1, $DY), $DX) else v12$1);
    v12$2 := (if p6$2 then BV32_MUL(BV32_MUL(v8$2, $DY), $DX) else v12$2);
    v13$1 := (if p6$1 then v6$1 != 0 else v13$1);
    v13$2 := (if p6$2 then v6$2 != 0 else v13$2);
    p7$1 := (if p6$1 && v13$1 then v13$1 else p7$1);
    p7$2 := (if p6$2 && v13$2 then v13$2 else p7$2);
    p8$1 := (if p6$1 && !v13$1 then !v13$1 else p8$1);
    p8$2 := (if p6$2 && !v13$2 then !v13$2 else p8$2);
    $0$1 := (if p7$1 then BV32_SUB($DY, v6$1) else $0$1);
    $0$2 := (if p7$2 then BV32_SUB($DY, v6$2) else $0$2);
    $0$1 := (if p8$1 then v6$1 else $0$1);
    $0$2 := (if p8$2 then v6$2 else $0$2);
    v14$1 := (if p6$1 then BV32_ADD(BV32_ADD(v12$1, BV32_MUL(v6$1, $DX)), v3$1) else v14$1);
    v14$2 := (if p6$2 then BV32_ADD(BV32_ADD(v12$2, BV32_MUL(v6$2, $DX)), v3$2) else v14$2);
    v15$1 := (if p6$1 then v6$1 != 0 else v15$1);
    v15$2 := (if p6$2 then v6$2 != 0 else v15$2);
    p9$1 := (if p6$1 && v15$1 then v15$1 else p9$1);
    p9$2 := (if p6$2 && v15$2 then v15$2 else p9$2);
    p10$1 := (if p6$1 && !v15$1 then !v15$1 else p10$1);
    p10$2 := (if p6$2 && !v15$2 then !v15$2 else p10$2);
    $1$1 := (if p9$1 then BV32_SUB($DY, v6$1) else $1$1);
    $1$2 := (if p9$2 then BV32_SUB($DY, v6$2) else $1$2);
    $1$1 := (if p10$1 then v6$1 else $1$1);
    $1$2 := (if p10$2 then v6$2 else $1$2);
    v16$1 := (if p6$1 then v3$1 != 0 else v16$1);
    v16$2 := (if p6$2 then v3$2 != 0 else v16$2);
    p11$1 := (if p6$1 && v16$1 then v16$1 else p11$1);
    p11$2 := (if p6$2 && v16$2 then v16$2 else p11$2);
    p12$1 := (if p6$1 && !v16$1 then !v16$1 else p12$1);
    p12$2 := (if p6$2 && !v16$2 then !v16$2 else p12$2);
    $2$1 := (if p11$1 then BV32_SUB($DX, v3$1) else $2$1);
    $2$2 := (if p11$2 then BV32_SUB($DX, v3$2) else $2$2);
    $2$1 := (if p12$1 then v3$1 else $2$1);
    $2$2 := (if p12$2 then v3$2 else $2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v17$1 := (if p6$1 then _HAVOC_int$1 else v17$1);
    v17$2 := (if p6$2 then _HAVOC_int$2 else v17$2);
    $$0$0$1 := (if p6$1 then v17$1 else $$0$0$1);
    $$0$0$2 := (if p6$2 then v17$2 else $$0$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v18$1 := (if p6$1 then _HAVOC_int$1 else v18$1);
    v18$2 := (if p6$2 then _HAVOC_int$2 else v18$2);
    $$0$1$1 := (if p6$1 then v18$1 else $$0$1$1);
    $$0$1$2 := (if p6$2 then v18$2 else $$0$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v19$1 := (if p6$1 then _HAVOC_int$1 else v19$1);
    v19$2 := (if p6$2 then _HAVOC_int$2 else v19$2);
    $$0$2$1 := (if p6$1 then v19$1 else $$0$2$1);
    $$0$2$2 := (if p6$2 then v19$2 else $$0$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v20$1 := (if p6$1 then _HAVOC_int$1 else v20$1);
    v20$2 := (if p6$2 then _HAVOC_int$2 else v20$2);
    $$0$3$1 := (if p6$1 then v20$1 else $$0$3$1);
    $$0$3$2 := (if p6$2 then v20$2 else $$0$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v21$1 := (if p6$1 then _HAVOC_int$1 else v21$1);
    v21$2 := (if p6$2 then _HAVOC_int$2 else v21$2);
    $$0$4$1 := (if p6$1 then v21$1 else $$0$4$1);
    $$0$4$2 := (if p6$2 then v21$2 else $$0$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v22$1 := (if p6$1 then _HAVOC_int$1 else v22$1);
    v22$2 := (if p6$2 then _HAVOC_int$2 else v22$2);
    $$0$5$1 := (if p6$1 then v22$1 else $$0$5$1);
    $$0$5$2 := (if p6$2 then v22$2 else $$0$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v23$1 := (if p6$1 then _HAVOC_int$1 else v23$1);
    v23$2 := (if p6$2 then _HAVOC_int$2 else v23$2);
    $$0$6$1 := (if p6$1 then v23$1 else $$0$6$1);
    $$0$6$2 := (if p6$2 then v23$2 else $$0$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v24$1 := (if p6$1 then _HAVOC_int$1 else v24$1);
    v24$2 := (if p6$2 then _HAVOC_int$2 else v24$2);
    $$0$7$1 := (if p6$1 then v24$1 else $$0$7$1);
    $$0$7$2 := (if p6$2 then v24$2 else $$0$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v25$1 := (if p6$1 then _HAVOC_int$1 else v25$1);
    v25$2 := (if p6$2 then _HAVOC_int$2 else v25$2);
    $$0$8$1 := (if p6$1 then v25$1 else $$0$8$1);
    $$0$8$2 := (if p6$2 then v25$2 else $$0$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v26$1 := (if p6$1 then _HAVOC_int$1 else v26$1);
    v26$2 := (if p6$2 then _HAVOC_int$2 else v26$2);
    $$0$9$1 := (if p6$1 then v26$1 else $$0$9$1);
    $$0$9$2 := (if p6$2 then v26$2 else $$0$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v27$1 := (if p6$1 then _HAVOC_int$1 else v27$1);
    v27$2 := (if p6$2 then _HAVOC_int$2 else v27$2);
    $$0$10$1 := (if p6$1 then v27$1 else $$0$10$1);
    $$0$10$2 := (if p6$2 then v27$2 else $$0$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v28$1 := (if p6$1 then _HAVOC_int$1 else v28$1);
    v28$2 := (if p6$2 then _HAVOC_int$2 else v28$2);
    $$0$11$1 := (if p6$1 then v28$1 else $$0$11$1);
    $$0$11$2 := (if p6$2 then v28$2 else $$0$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v29$1 := (if p6$1 then _HAVOC_int$1 else v29$1);
    v29$2 := (if p6$2 then _HAVOC_int$2 else v29$2);
    $$0$12$1 := (if p6$1 then v29$1 else $$0$12$1);
    $$0$12$2 := (if p6$2 then v29$2 else $$0$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v30$1 := (if p6$1 then _HAVOC_int$1 else v30$1);
    v30$2 := (if p6$2 then _HAVOC_int$2 else v30$2);
    $$0$13$1 := (if p6$1 then v30$1 else $$0$13$1);
    $$0$13$2 := (if p6$2 then v30$2 else $$0$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v31$1 := (if p6$1 then _HAVOC_int$1 else v31$1);
    v31$2 := (if p6$2 then _HAVOC_int$2 else v31$2);
    $$0$14$1 := (if p6$1 then v31$1 else $$0$14$1);
    $$0$14$2 := (if p6$2 then v31$2 else $$0$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v32$1 := (if p6$1 then _HAVOC_int$1 else v32$1);
    v32$2 := (if p6$2 then _HAVOC_int$2 else v32$2);
    $$0$15$1 := (if p6$1 then v32$1 else $$0$15$1);
    $$0$15$2 := (if p6$2 then v32$2 else $$0$15$2);
    v33$1 := (if p6$1 then $$0$0$1 else v33$1);
    v33$2 := (if p6$2 then $$0$0$2 else v33$2);
    v34$1 := (if p6$1 then $$0$1$1 else v34$1);
    v34$2 := (if p6$2 then $$0$1$2 else v34$2);
    v35$1 := (if p6$1 then $$0$2$1 else v35$1);
    v35$2 := (if p6$2 then $$0$2$2 else v35$2);
    v36$1 := (if p6$1 then $$0$3$1 else v36$1);
    v36$2 := (if p6$2 then $$0$3$2 else v36$2);
    v37$1 := (if p6$1 then $$0$4$1 else v37$1);
    v37$2 := (if p6$2 then $$0$4$2 else v37$2);
    v38$1 := (if p6$1 then $$0$5$1 else v38$1);
    v38$2 := (if p6$2 then $$0$5$2 else v38$2);
    v39$1 := (if p6$1 then $$0$6$1 else v39$1);
    v39$2 := (if p6$2 then $$0$6$2 else v39$2);
    v40$1 := (if p6$1 then $$0$7$1 else v40$1);
    v40$2 := (if p6$2 then $$0$7$2 else v40$2);
    v41$1 := (if p6$1 then $$0$8$1 else v41$1);
    v41$2 := (if p6$2 then $$0$8$2 else v41$2);
    v42$1 := (if p6$1 then $$0$9$1 else v42$1);
    v42$2 := (if p6$2 then $$0$9$2 else v42$2);
    v43$1 := (if p6$1 then $$0$10$1 else v43$1);
    v43$2 := (if p6$2 then $$0$10$2 else v43$2);
    v44$1 := (if p6$1 then $$0$11$1 else v44$1);
    v44$2 := (if p6$2 then $$0$11$2 else v44$2);
    v45$1 := (if p6$1 then $$0$12$1 else v45$1);
    v45$2 := (if p6$2 then $$0$12$2 else v45$2);
    v46$1 := (if p6$1 then $$0$13$1 else v46$1);
    v46$2 := (if p6$2 then $$0$13$2 else v46$2);
    v47$1 := (if p6$1 then $$0$14$1 else v47$1);
    v47$2 := (if p6$2 then $$0$14$2 else v47$2);
    v48$1 := (if p6$1 then $$0$15$1 else v48$1);
    v48$2 := (if p6$2 then $$0$15$2 else v48$2);
    call {:sourceloc_num 67} v49$1, v49$2 := $_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(p6$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$1, v39$1), v38$1), v37$1), v36$1), v35$1), v34$1), v33$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v44$1, v43$1), v42$1), v41$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$1, v47$1), v46$1), v45$1), BV32_ADD(BV32_ADD(v11$1, BV32_MUL(v6$1, BV32_ADD($DX, $padding))), v3$1), p6$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v40$2, v39$2), v38$2), v37$2), v36$2), v35$2), v34$2), v33$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v44$2, v43$2), v42$2), v41$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$2, v47$2), v46$2), v45$2), BV32_ADD(BV32_ADD(v11$2, BV32_MUL(v6$2, BV32_ADD($DX, $padding))), v3$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$D1$0$1 := (if p6$1 then BV_EXTRACT(v49$1, 32, 0) else $$D1$0$1);
    $$D1$0$2 := (if p6$2 then BV_EXTRACT(v49$2, 32, 0) else $$D1$0$2);
    $$D1$1$1 := (if p6$1 then BV_EXTRACT(v49$1, 64, 32) else $$D1$1$1);
    $$D1$1$2 := (if p6$2 then BV_EXTRACT(v49$2, 64, 32) else $$D1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v50$1 := (if p6$1 then _HAVOC_int$1 else v50$1);
    v50$2 := (if p6$2 then _HAVOC_int$2 else v50$2);
    $$1$0$1 := (if p6$1 then v50$1 else $$1$0$1);
    $$1$0$2 := (if p6$2 then v50$2 else $$1$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v51$1 := (if p6$1 then _HAVOC_int$1 else v51$1);
    v51$2 := (if p6$2 then _HAVOC_int$2 else v51$2);
    $$1$1$1 := (if p6$1 then v51$1 else $$1$1$1);
    $$1$1$2 := (if p6$2 then v51$2 else $$1$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v52$1 := (if p6$1 then _HAVOC_int$1 else v52$1);
    v52$2 := (if p6$2 then _HAVOC_int$2 else v52$2);
    $$1$2$1 := (if p6$1 then v52$1 else $$1$2$1);
    $$1$2$2 := (if p6$2 then v52$2 else $$1$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v53$1 := (if p6$1 then _HAVOC_int$1 else v53$1);
    v53$2 := (if p6$2 then _HAVOC_int$2 else v53$2);
    $$1$3$1 := (if p6$1 then v53$1 else $$1$3$1);
    $$1$3$2 := (if p6$2 then v53$2 else $$1$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v54$1 := (if p6$1 then _HAVOC_int$1 else v54$1);
    v54$2 := (if p6$2 then _HAVOC_int$2 else v54$2);
    $$1$4$1 := (if p6$1 then v54$1 else $$1$4$1);
    $$1$4$2 := (if p6$2 then v54$2 else $$1$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v55$1 := (if p6$1 then _HAVOC_int$1 else v55$1);
    v55$2 := (if p6$2 then _HAVOC_int$2 else v55$2);
    $$1$5$1 := (if p6$1 then v55$1 else $$1$5$1);
    $$1$5$2 := (if p6$2 then v55$2 else $$1$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v56$1 := (if p6$1 then _HAVOC_int$1 else v56$1);
    v56$2 := (if p6$2 then _HAVOC_int$2 else v56$2);
    $$1$6$1 := (if p6$1 then v56$1 else $$1$6$1);
    $$1$6$2 := (if p6$2 then v56$2 else $$1$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v57$1 := (if p6$1 then _HAVOC_int$1 else v57$1);
    v57$2 := (if p6$2 then _HAVOC_int$2 else v57$2);
    $$1$7$1 := (if p6$1 then v57$1 else $$1$7$1);
    $$1$7$2 := (if p6$2 then v57$2 else $$1$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v58$1 := (if p6$1 then _HAVOC_int$1 else v58$1);
    v58$2 := (if p6$2 then _HAVOC_int$2 else v58$2);
    $$1$8$1 := (if p6$1 then v58$1 else $$1$8$1);
    $$1$8$2 := (if p6$2 then v58$2 else $$1$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v59$1 := (if p6$1 then _HAVOC_int$1 else v59$1);
    v59$2 := (if p6$2 then _HAVOC_int$2 else v59$2);
    $$1$9$1 := (if p6$1 then v59$1 else $$1$9$1);
    $$1$9$2 := (if p6$2 then v59$2 else $$1$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v60$1 := (if p6$1 then _HAVOC_int$1 else v60$1);
    v60$2 := (if p6$2 then _HAVOC_int$2 else v60$2);
    $$1$10$1 := (if p6$1 then v60$1 else $$1$10$1);
    $$1$10$2 := (if p6$2 then v60$2 else $$1$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v61$1 := (if p6$1 then _HAVOC_int$1 else v61$1);
    v61$2 := (if p6$2 then _HAVOC_int$2 else v61$2);
    $$1$11$1 := (if p6$1 then v61$1 else $$1$11$1);
    $$1$11$2 := (if p6$2 then v61$2 else $$1$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v62$1 := (if p6$1 then _HAVOC_int$1 else v62$1);
    v62$2 := (if p6$2 then _HAVOC_int$2 else v62$2);
    $$1$12$1 := (if p6$1 then v62$1 else $$1$12$1);
    $$1$12$2 := (if p6$2 then v62$2 else $$1$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v63$1 := (if p6$1 then _HAVOC_int$1 else v63$1);
    v63$2 := (if p6$2 then _HAVOC_int$2 else v63$2);
    $$1$13$1 := (if p6$1 then v63$1 else $$1$13$1);
    $$1$13$2 := (if p6$2 then v63$2 else $$1$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v64$1 := (if p6$1 then _HAVOC_int$1 else v64$1);
    v64$2 := (if p6$2 then _HAVOC_int$2 else v64$2);
    $$1$14$1 := (if p6$1 then v64$1 else $$1$14$1);
    $$1$14$2 := (if p6$2 then v64$2 else $$1$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v65$1 := (if p6$1 then _HAVOC_int$1 else v65$1);
    v65$2 := (if p6$2 then _HAVOC_int$2 else v65$2);
    $$1$15$1 := (if p6$1 then v65$1 else $$1$15$1);
    $$1$15$2 := (if p6$2 then v65$2 else $$1$15$2);
    v66$1 := (if p6$1 then $$1$0$1 else v66$1);
    v66$2 := (if p6$2 then $$1$0$2 else v66$2);
    v67$1 := (if p6$1 then $$1$1$1 else v67$1);
    v67$2 := (if p6$2 then $$1$1$2 else v67$2);
    v68$1 := (if p6$1 then $$1$2$1 else v68$1);
    v68$2 := (if p6$2 then $$1$2$2 else v68$2);
    v69$1 := (if p6$1 then $$1$3$1 else v69$1);
    v69$2 := (if p6$2 then $$1$3$2 else v69$2);
    v70$1 := (if p6$1 then $$1$4$1 else v70$1);
    v70$2 := (if p6$2 then $$1$4$2 else v70$2);
    v71$1 := (if p6$1 then $$1$5$1 else v71$1);
    v71$2 := (if p6$2 then $$1$5$2 else v71$2);
    v72$1 := (if p6$1 then $$1$6$1 else v72$1);
    v72$2 := (if p6$2 then $$1$6$2 else v72$2);
    v73$1 := (if p6$1 then $$1$7$1 else v73$1);
    v73$2 := (if p6$2 then $$1$7$2 else v73$2);
    v74$1 := (if p6$1 then $$1$8$1 else v74$1);
    v74$2 := (if p6$2 then $$1$8$2 else v74$2);
    v75$1 := (if p6$1 then $$1$9$1 else v75$1);
    v75$2 := (if p6$2 then $$1$9$2 else v75$2);
    v76$1 := (if p6$1 then $$1$10$1 else v76$1);
    v76$2 := (if p6$2 then $$1$10$2 else v76$2);
    v77$1 := (if p6$1 then $$1$11$1 else v77$1);
    v77$2 := (if p6$2 then $$1$11$2 else v77$2);
    v78$1 := (if p6$1 then $$1$12$1 else v78$1);
    v78$2 := (if p6$2 then $$1$12$2 else v78$2);
    v79$1 := (if p6$1 then $$1$13$1 else v79$1);
    v79$2 := (if p6$2 then $$1$13$2 else v79$2);
    v80$1 := (if p6$1 then $$1$14$1 else v80$1);
    v80$2 := (if p6$2 then $$1$14$2 else v80$2);
    v81$1 := (if p6$1 then $$1$15$1 else v81$1);
    v81$2 := (if p6$2 then $$1$15$2 else v81$2);
    call {:sourceloc_num 118} v82$1, v82$2 := $_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(p6$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$1, v72$1), v71$1), v70$1), v69$1), v68$1), v67$1), v66$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$1, v76$1), v75$1), v74$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v81$1, v80$1), v79$1), v78$1), BV32_ADD(BV32_ADD(v11$1, BV32_MUL($0$1, BV32_ADD($DX, $padding))), BV32_SUB($DX, v3$1)), p6$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v73$2, v72$2), v71$2), v70$2), v69$2), v68$2), v67$2), v66$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v77$2, v76$2), v75$2), v74$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v81$2, v80$2), v79$2), v78$2), BV32_ADD(BV32_ADD(v11$2, BV32_MUL($0$2, BV32_ADD($DX, $padding))), BV32_SUB($DX, v3$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$D2$0$1 := (if p6$1 then BV_EXTRACT(v82$1, 32, 0) else $$D2$0$1);
    $$D2$0$2 := (if p6$2 then BV_EXTRACT(v82$2, 32, 0) else $$D2$0$2);
    $$D2$1$1 := (if p6$1 then BV_EXTRACT(v82$1, 64, 32) else $$D2$1$1);
    $$D2$1$2 := (if p6$2 then BV_EXTRACT(v82$2, 64, 32) else $$D2$1$2);
    v83$1 := (if p6$1 then FMUL32($phaseBase, UI32_TO_FP32(v3$1)) else v83$1);
    v83$2 := (if p6$2 then FMUL32($phaseBase, UI32_TO_FP32(v3$2)) else v83$2);
    call {:sourceloc_num 121} v84$1, v84$2 := $sinf(p6$1, v83$1, p6$2, v83$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$sinf"} true;
    $$twiddle$1$1 := (if p6$1 then v84$1 else $$twiddle$1$1);
    $$twiddle$1$2 := (if p6$2 then v84$2 else $$twiddle$1$2);
    call {:sourceloc_num 123} v85$1, v85$2 := $cosf(p6$1, v83$1, p6$2, v83$2);
    assume {:captureState "call_return_state_0"} {:procedureName "$cosf"} true;
    $$twiddle$0$1 := (if p6$1 then v85$1 else $$twiddle$0$1);
    $$twiddle$0$2 := (if p6$2 then v85$2 else $$twiddle$0$2);
    v86$1 := (if p6$1 then $$D1$0$1 else v86$1);
    v86$2 := (if p6$2 then $$D1$0$2 else v86$2);
    v87$1 := (if p6$1 then $$D2$0$1 else v87$1);
    v87$2 := (if p6$2 then $$D2$0$2 else v87$2);
    v88$1 := (if p6$1 then FADD32(v86$1, v87$1) else v88$1);
    v88$2 := (if p6$2 then FADD32(v86$2, v87$2) else v88$2);
    v89$1 := (if p6$1 then $$D1$1$1 else v89$1);
    v89$2 := (if p6$2 then $$D1$1$2 else v89$2);
    v90$1 := (if p6$1 then $$D2$1$1 else v90$1);
    v90$2 := (if p6$2 then $$D2$1$2 else v90$2);
    v91$1 := (if p6$1 then FSUB32(v89$1, v90$1) else v91$1);
    v91$2 := (if p6$2 then FSUB32(v89$2, v90$2) else v91$2);
    v92$1 := (if p6$1 then $$D1$1$1 else v92$1);
    v92$2 := (if p6$2 then $$D1$1$2 else v92$2);
    v93$1 := (if p6$1 then $$D2$1$1 else v93$1);
    v93$2 := (if p6$2 then $$D2$1$2 else v93$2);
    v94$1 := (if p6$1 then FADD32(v92$1, v93$1) else v94$1);
    v94$2 := (if p6$2 then FADD32(v92$2, v93$2) else v94$2);
    v95$1 := (if p6$1 then $$D1$0$1 else v95$1);
    v95$2 := (if p6$2 then $$D1$0$2 else v95$2);
    v96$1 := (if p6$1 then $$D2$0$1 else v96$1);
    v96$2 := (if p6$2 then $$D2$0$2 else v96$2);
    v97$1 := (if p6$1 then FSUB32(v95$1, v96$1) else v97$1);
    v97$2 := (if p6$2 then FSUB32(v95$2, v96$2) else v97$2);
    v98$1 := (if p6$1 then $$twiddle$0$1 else v98$1);
    v98$2 := (if p6$2 then $$twiddle$0$2 else v98$2);
    v99$1 := (if p6$1 then $$twiddle$1$1 else v99$1);
    v99$2 := (if p6$2 then $$twiddle$1$2 else v99$2);
    $$D1$0$1 := (if p6$1 then FSUB32(v88$1, FSUB32(FMUL32(v94$1, v98$1), FMUL32(v97$1, v99$1))) else $$D1$0$1);
    $$D1$0$2 := (if p6$2 then FSUB32(v88$2, FSUB32(FMUL32(v94$2, v98$2), FMUL32(v97$2, v99$2))) else $$D1$0$2);
    v100$1 := (if p6$1 then $$twiddle$0$1 else v100$1);
    v100$2 := (if p6$2 then $$twiddle$0$2 else v100$2);
    v101$1 := (if p6$1 then $$twiddle$1$1 else v101$1);
    v101$2 := (if p6$2 then $$twiddle$1$2 else v101$2);
    $$D1$1$1 := (if p6$1 then FADD32(FADD32(FMUL32(v97$1, v100$1), FMUL32(v94$1, v101$1)), v91$1) else $$D1$1$1);
    $$D1$1$2 := (if p6$2 then FADD32(FADD32(FMUL32(v97$2, v100$2), FMUL32(v94$2, v101$2)), v91$2) else $$D1$1$2);
    v102$1 := (if p6$1 then $$twiddle$0$1 else v102$1);
    v102$2 := (if p6$2 then $$twiddle$0$2 else v102$2);
    v103$1 := (if p6$1 then $$twiddle$1$1 else v103$1);
    v103$2 := (if p6$2 then $$twiddle$1$2 else v103$2);
    $$D2$0$1 := (if p6$1 then FADD32(v88$1, FSUB32(FMUL32(v94$1, v102$1), FMUL32(v97$1, v103$1))) else $$D2$0$1);
    $$D2$0$2 := (if p6$2 then FADD32(v88$2, FSUB32(FMUL32(v94$2, v102$2), FMUL32(v97$2, v103$2))) else $$D2$0$2);
    v104$1 := (if p6$1 then $$twiddle$0$1 else v104$1);
    v104$2 := (if p6$2 then $$twiddle$0$2 else v104$2);
    v105$1 := (if p6$1 then $$twiddle$1$1 else v105$1);
    v105$2 := (if p6$2 then $$twiddle$1$2 else v105$2);
    $$D2$1$1 := (if p6$1 then FSUB32(FADD32(FMUL32(v97$1, v104$1), FMUL32(v94$1, v105$1)), v91$1) else $$D2$1$1);
    $$D2$1$2 := (if p6$2 then FSUB32(FADD32(FMUL32(v97$2, v104$2), FMUL32(v94$2, v105$2)), v91$2) else $$D2$1$2);
    v106$1 := (if p6$1 then $$D1$0$1 else v106$1);
    v106$2 := (if p6$2 then $$D1$0$2 else v106$2);
    call {:sourceloc} {:sourceloc_num 146} _LOG_WRITE_$$d_Dst(p6$1, BV32_MUL(v14$1, 2), v106$1, $$d_Dst[BV32_MUL(v14$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p6$2, BV32_MUL(v14$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 146} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 146} _CHECK_WRITE_$$d_Dst(p6$2, BV32_MUL(v14$2, 2), v106$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(v14$1, 2)] := (if p6$1 then v106$1 else $$d_Dst[BV32_MUL(v14$1, 2)]);
    $$d_Dst[BV32_MUL(v14$2, 2)] := (if p6$2 then v106$2 else $$d_Dst[BV32_MUL(v14$2, 2)]);
    v107$1 := (if p6$1 then $$D1$1$1 else v107$1);
    v107$2 := (if p6$2 then $$D1$1$2 else v107$2);
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$d_Dst(p6$1, BV32_ADD(BV32_MUL(v14$1, 2), 1), v107$1, $$d_Dst[BV32_ADD(BV32_MUL(v14$1, 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p6$2, BV32_ADD(BV32_MUL(v14$2, 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$d_Dst(p6$2, BV32_ADD(BV32_MUL(v14$2, 2), 1), v107$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v14$1, 2), 1)] := (if p6$1 then v107$1 else $$d_Dst[BV32_ADD(BV32_MUL(v14$1, 2), 1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(v14$2, 2), 1)] := (if p6$2 then v107$2 else $$d_Dst[BV32_ADD(BV32_MUL(v14$2, 2), 1)]);
    v108$1 := (if p6$1 then $$D2$0$1 else v108$1);
    v108$2 := (if p6$2 then $$D2$0$2 else v108$2);
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$d_Dst(p6$1, BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2), v108$1, $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p6$2, BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$d_Dst(p6$2, BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2), v108$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2)] := (if p6$1 then v108$1 else $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2)]);
    $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2)] := (if p6$2 then v108$2 else $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2)]);
    v109$1 := (if p6$1 then $$D2$1$1 else v109$1);
    v109$2 := (if p6$2 then $$D2$1$2 else v109$2);
    call {:sourceloc} {:sourceloc_num 152} _LOG_WRITE_$$d_Dst(p6$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2), 1), v109$1, $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 152} _CHECK_WRITE_$$d_Dst(p6$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2), 1), v109$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2), 1)] := (if p6$1 then v109$1 else $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($1$1, $DX)), $2$1), 2), 1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2), 1)] := (if p6$2 then v109$2 else $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($1$2, $DX)), $2$2), 2), 1)]);
    v110$1 := (if p6$1 then v3$1 == 0 else v110$1);
    v110$2 := (if p6$2 then v3$2 == 0 else v110$2);
    p13$1 := (if p6$1 && v110$1 then v110$1 else p13$1);
    p13$2 := (if p6$2 && v110$2 then v110$2 else p13$2);
    v111$1 := (if p13$1 then v6$1 != 0 else v111$1);
    v111$2 := (if p13$2 then v6$2 != 0 else v111$2);
    p14$1 := (if p13$1 && v111$1 then v111$1 else p14$1);
    p14$2 := (if p13$2 && v111$2 then v111$2 else p14$2);
    p15$1 := (if p13$1 && !v111$1 then !v111$1 else p15$1);
    p15$2 := (if p13$2 && !v111$2 then !v111$2 else p15$2);
    $3$1 := (if p14$1 then BV32_SUB($DY, v6$1) else $3$1);
    $3$2 := (if p14$2 then BV32_SUB($DY, v6$2) else $3$2);
    $3$1 := (if p15$1 then v6$1 else $3$1);
    $3$2 := (if p15$2 then v6$2 else $3$2);
    v112$1 := (if p13$1 then BV32_ADD(BV32_ADD(v12$1, BV32_MUL(v6$1, $DX)), BV32_UDIV($DX, 2)) else v112$1);
    v112$2 := (if p13$2 then BV32_ADD(BV32_ADD(v12$2, BV32_MUL(v6$2, $DX)), BV32_UDIV($DX, 2)) else v112$2);
    v113$1 := (if p13$1 then v6$1 != 0 else v113$1);
    v113$2 := (if p13$2 then v6$2 != 0 else v113$2);
    p16$1 := (if p13$1 && v113$1 then v113$1 else p16$1);
    p16$2 := (if p13$2 && v113$2 then v113$2 else p16$2);
    p17$1 := (if p13$1 && !v113$1 then !v113$1 else p17$1);
    p17$2 := (if p13$2 && !v113$2 then !v113$2 else p17$2);
    $4$1 := (if p16$1 then BV32_SUB($DY, v6$1) else $4$1);
    $4$2 := (if p16$2 then BV32_SUB($DY, v6$2) else $4$2);
    $4$1 := (if p17$1 then v6$1 else $4$1);
    $4$2 := (if p17$2 then v6$2 else $4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v114$1 := (if p13$1 then _HAVOC_int$1 else v114$1);
    v114$2 := (if p13$2 then _HAVOC_int$2 else v114$2);
    $$2$0$1 := (if p13$1 then v114$1 else $$2$0$1);
    $$2$0$2 := (if p13$2 then v114$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v115$1 := (if p13$1 then _HAVOC_int$1 else v115$1);
    v115$2 := (if p13$2 then _HAVOC_int$2 else v115$2);
    $$2$1$1 := (if p13$1 then v115$1 else $$2$1$1);
    $$2$1$2 := (if p13$2 then v115$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v116$1 := (if p13$1 then _HAVOC_int$1 else v116$1);
    v116$2 := (if p13$2 then _HAVOC_int$2 else v116$2);
    $$2$2$1 := (if p13$1 then v116$1 else $$2$2$1);
    $$2$2$2 := (if p13$2 then v116$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v117$1 := (if p13$1 then _HAVOC_int$1 else v117$1);
    v117$2 := (if p13$2 then _HAVOC_int$2 else v117$2);
    $$2$3$1 := (if p13$1 then v117$1 else $$2$3$1);
    $$2$3$2 := (if p13$2 then v117$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v118$1 := (if p13$1 then _HAVOC_int$1 else v118$1);
    v118$2 := (if p13$2 then _HAVOC_int$2 else v118$2);
    $$2$4$1 := (if p13$1 then v118$1 else $$2$4$1);
    $$2$4$2 := (if p13$2 then v118$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v119$1 := (if p13$1 then _HAVOC_int$1 else v119$1);
    v119$2 := (if p13$2 then _HAVOC_int$2 else v119$2);
    $$2$5$1 := (if p13$1 then v119$1 else $$2$5$1);
    $$2$5$2 := (if p13$2 then v119$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v120$1 := (if p13$1 then _HAVOC_int$1 else v120$1);
    v120$2 := (if p13$2 then _HAVOC_int$2 else v120$2);
    $$2$6$1 := (if p13$1 then v120$1 else $$2$6$1);
    $$2$6$2 := (if p13$2 then v120$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v121$1 := (if p13$1 then _HAVOC_int$1 else v121$1);
    v121$2 := (if p13$2 then _HAVOC_int$2 else v121$2);
    $$2$7$1 := (if p13$1 then v121$1 else $$2$7$1);
    $$2$7$2 := (if p13$2 then v121$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v122$1 := (if p13$1 then _HAVOC_int$1 else v122$1);
    v122$2 := (if p13$2 then _HAVOC_int$2 else v122$2);
    $$2$8$1 := (if p13$1 then v122$1 else $$2$8$1);
    $$2$8$2 := (if p13$2 then v122$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v123$1 := (if p13$1 then _HAVOC_int$1 else v123$1);
    v123$2 := (if p13$2 then _HAVOC_int$2 else v123$2);
    $$2$9$1 := (if p13$1 then v123$1 else $$2$9$1);
    $$2$9$2 := (if p13$2 then v123$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v124$1 := (if p13$1 then _HAVOC_int$1 else v124$1);
    v124$2 := (if p13$2 then _HAVOC_int$2 else v124$2);
    $$2$10$1 := (if p13$1 then v124$1 else $$2$10$1);
    $$2$10$2 := (if p13$2 then v124$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v125$1 := (if p13$1 then _HAVOC_int$1 else v125$1);
    v125$2 := (if p13$2 then _HAVOC_int$2 else v125$2);
    $$2$11$1 := (if p13$1 then v125$1 else $$2$11$1);
    $$2$11$2 := (if p13$2 then v125$2 else $$2$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v126$1 := (if p13$1 then _HAVOC_int$1 else v126$1);
    v126$2 := (if p13$2 then _HAVOC_int$2 else v126$2);
    $$2$12$1 := (if p13$1 then v126$1 else $$2$12$1);
    $$2$12$2 := (if p13$2 then v126$2 else $$2$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v127$1 := (if p13$1 then _HAVOC_int$1 else v127$1);
    v127$2 := (if p13$2 then _HAVOC_int$2 else v127$2);
    $$2$13$1 := (if p13$1 then v127$1 else $$2$13$1);
    $$2$13$2 := (if p13$2 then v127$2 else $$2$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v128$1 := (if p13$1 then _HAVOC_int$1 else v128$1);
    v128$2 := (if p13$2 then _HAVOC_int$2 else v128$2);
    $$2$14$1 := (if p13$1 then v128$1 else $$2$14$1);
    $$2$14$2 := (if p13$2 then v128$2 else $$2$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v129$1 := (if p13$1 then _HAVOC_int$1 else v129$1);
    v129$2 := (if p13$2 then _HAVOC_int$2 else v129$2);
    $$2$15$1 := (if p13$1 then v129$1 else $$2$15$1);
    $$2$15$2 := (if p13$2 then v129$2 else $$2$15$2);
    v130$1 := (if p13$1 then $$2$0$1 else v130$1);
    v130$2 := (if p13$2 then $$2$0$2 else v130$2);
    v131$1 := (if p13$1 then $$2$1$1 else v131$1);
    v131$2 := (if p13$2 then $$2$1$2 else v131$2);
    v132$1 := (if p13$1 then $$2$2$1 else v132$1);
    v132$2 := (if p13$2 then $$2$2$2 else v132$2);
    v133$1 := (if p13$1 then $$2$3$1 else v133$1);
    v133$2 := (if p13$2 then $$2$3$2 else v133$2);
    v134$1 := (if p13$1 then $$2$4$1 else v134$1);
    v134$2 := (if p13$2 then $$2$4$2 else v134$2);
    v135$1 := (if p13$1 then $$2$5$1 else v135$1);
    v135$2 := (if p13$2 then $$2$5$2 else v135$2);
    v136$1 := (if p13$1 then $$2$6$1 else v136$1);
    v136$2 := (if p13$2 then $$2$6$2 else v136$2);
    v137$1 := (if p13$1 then $$2$7$1 else v137$1);
    v137$2 := (if p13$2 then $$2$7$2 else v137$2);
    v138$1 := (if p13$1 then $$2$8$1 else v138$1);
    v138$2 := (if p13$2 then $$2$8$2 else v138$2);
    v139$1 := (if p13$1 then $$2$9$1 else v139$1);
    v139$2 := (if p13$2 then $$2$9$2 else v139$2);
    v140$1 := (if p13$1 then $$2$10$1 else v140$1);
    v140$2 := (if p13$2 then $$2$10$2 else v140$2);
    v141$1 := (if p13$1 then $$2$11$1 else v141$1);
    v141$2 := (if p13$2 then $$2$11$2 else v141$2);
    v142$1 := (if p13$1 then $$2$12$1 else v142$1);
    v142$2 := (if p13$2 then $$2$12$2 else v142$2);
    v143$1 := (if p13$1 then $$2$13$1 else v143$1);
    v143$2 := (if p13$2 then $$2$13$2 else v143$2);
    v144$1 := (if p13$1 then $$2$14$1 else v144$1);
    v144$2 := (if p13$2 then $$2$14$2 else v144$2);
    v145$1 := (if p13$1 then $$2$15$1 else v145$1);
    v145$2 := (if p13$2 then $$2$15$2 else v145$2);
    call {:sourceloc_num 208} v146$1, v146$2 := $_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(p13$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$1, v136$1), v135$1), v134$1), v133$1), v132$1), v131$1), v130$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v141$1, v140$1), v139$1), v138$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v145$1, v144$1), v143$1), v142$1), BV32_ADD(BV32_ADD(v11$1, BV32_MUL(v6$1, BV32_ADD($DX, $padding))), BV32_UDIV($DX, 2)), p13$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v137$2, v136$2), v135$2), v134$2), v133$2), v132$2), v131$2), v130$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v141$2, v140$2), v139$2), v138$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v145$2, v144$2), v143$2), v142$2), BV32_ADD(BV32_ADD(v11$2, BV32_MUL(v6$2, BV32_ADD($DX, $padding))), BV32_UDIV($DX, 2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$D15$0$1 := (if p13$1 then BV_EXTRACT(v146$1, 32, 0) else $$D15$0$1);
    $$D15$0$2 := (if p13$2 then BV_EXTRACT(v146$2, 32, 0) else $$D15$0$2);
    $$D15$1$1 := (if p13$1 then BV_EXTRACT(v146$1, 64, 32) else $$D15$1$1);
    $$D15$1$2 := (if p13$2 then BV_EXTRACT(v146$2, 64, 32) else $$D15$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v147$1 := (if p13$1 then _HAVOC_int$1 else v147$1);
    v147$2 := (if p13$2 then _HAVOC_int$2 else v147$2);
    $$3$0$1 := (if p13$1 then v147$1 else $$3$0$1);
    $$3$0$2 := (if p13$2 then v147$2 else $$3$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v148$1 := (if p13$1 then _HAVOC_int$1 else v148$1);
    v148$2 := (if p13$2 then _HAVOC_int$2 else v148$2);
    $$3$1$1 := (if p13$1 then v148$1 else $$3$1$1);
    $$3$1$2 := (if p13$2 then v148$2 else $$3$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v149$1 := (if p13$1 then _HAVOC_int$1 else v149$1);
    v149$2 := (if p13$2 then _HAVOC_int$2 else v149$2);
    $$3$2$1 := (if p13$1 then v149$1 else $$3$2$1);
    $$3$2$2 := (if p13$2 then v149$2 else $$3$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v150$1 := (if p13$1 then _HAVOC_int$1 else v150$1);
    v150$2 := (if p13$2 then _HAVOC_int$2 else v150$2);
    $$3$3$1 := (if p13$1 then v150$1 else $$3$3$1);
    $$3$3$2 := (if p13$2 then v150$2 else $$3$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v151$1 := (if p13$1 then _HAVOC_int$1 else v151$1);
    v151$2 := (if p13$2 then _HAVOC_int$2 else v151$2);
    $$3$4$1 := (if p13$1 then v151$1 else $$3$4$1);
    $$3$4$2 := (if p13$2 then v151$2 else $$3$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v152$1 := (if p13$1 then _HAVOC_int$1 else v152$1);
    v152$2 := (if p13$2 then _HAVOC_int$2 else v152$2);
    $$3$5$1 := (if p13$1 then v152$1 else $$3$5$1);
    $$3$5$2 := (if p13$2 then v152$2 else $$3$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v153$1 := (if p13$1 then _HAVOC_int$1 else v153$1);
    v153$2 := (if p13$2 then _HAVOC_int$2 else v153$2);
    $$3$6$1 := (if p13$1 then v153$1 else $$3$6$1);
    $$3$6$2 := (if p13$2 then v153$2 else $$3$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v154$1 := (if p13$1 then _HAVOC_int$1 else v154$1);
    v154$2 := (if p13$2 then _HAVOC_int$2 else v154$2);
    $$3$7$1 := (if p13$1 then v154$1 else $$3$7$1);
    $$3$7$2 := (if p13$2 then v154$2 else $$3$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v155$1 := (if p13$1 then _HAVOC_int$1 else v155$1);
    v155$2 := (if p13$2 then _HAVOC_int$2 else v155$2);
    $$3$8$1 := (if p13$1 then v155$1 else $$3$8$1);
    $$3$8$2 := (if p13$2 then v155$2 else $$3$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v156$1 := (if p13$1 then _HAVOC_int$1 else v156$1);
    v156$2 := (if p13$2 then _HAVOC_int$2 else v156$2);
    $$3$9$1 := (if p13$1 then v156$1 else $$3$9$1);
    $$3$9$2 := (if p13$2 then v156$2 else $$3$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v157$1 := (if p13$1 then _HAVOC_int$1 else v157$1);
    v157$2 := (if p13$2 then _HAVOC_int$2 else v157$2);
    $$3$10$1 := (if p13$1 then v157$1 else $$3$10$1);
    $$3$10$2 := (if p13$2 then v157$2 else $$3$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v158$1 := (if p13$1 then _HAVOC_int$1 else v158$1);
    v158$2 := (if p13$2 then _HAVOC_int$2 else v158$2);
    $$3$11$1 := (if p13$1 then v158$1 else $$3$11$1);
    $$3$11$2 := (if p13$2 then v158$2 else $$3$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v159$1 := (if p13$1 then _HAVOC_int$1 else v159$1);
    v159$2 := (if p13$2 then _HAVOC_int$2 else v159$2);
    $$3$12$1 := (if p13$1 then v159$1 else $$3$12$1);
    $$3$12$2 := (if p13$2 then v159$2 else $$3$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v160$1 := (if p13$1 then _HAVOC_int$1 else v160$1);
    v160$2 := (if p13$2 then _HAVOC_int$2 else v160$2);
    $$3$13$1 := (if p13$1 then v160$1 else $$3$13$1);
    $$3$13$2 := (if p13$2 then v160$2 else $$3$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v161$1 := (if p13$1 then _HAVOC_int$1 else v161$1);
    v161$2 := (if p13$2 then _HAVOC_int$2 else v161$2);
    $$3$14$1 := (if p13$1 then v161$1 else $$3$14$1);
    $$3$14$2 := (if p13$2 then v161$2 else $$3$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v162$1 := (if p13$1 then _HAVOC_int$1 else v162$1);
    v162$2 := (if p13$2 then _HAVOC_int$2 else v162$2);
    $$3$15$1 := (if p13$1 then v162$1 else $$3$15$1);
    $$3$15$2 := (if p13$2 then v162$2 else $$3$15$2);
    v163$1 := (if p13$1 then $$3$0$1 else v163$1);
    v163$2 := (if p13$2 then $$3$0$2 else v163$2);
    v164$1 := (if p13$1 then $$3$1$1 else v164$1);
    v164$2 := (if p13$2 then $$3$1$2 else v164$2);
    v165$1 := (if p13$1 then $$3$2$1 else v165$1);
    v165$2 := (if p13$2 then $$3$2$2 else v165$2);
    v166$1 := (if p13$1 then $$3$3$1 else v166$1);
    v166$2 := (if p13$2 then $$3$3$2 else v166$2);
    v167$1 := (if p13$1 then $$3$4$1 else v167$1);
    v167$2 := (if p13$2 then $$3$4$2 else v167$2);
    v168$1 := (if p13$1 then $$3$5$1 else v168$1);
    v168$2 := (if p13$2 then $$3$5$2 else v168$2);
    v169$1 := (if p13$1 then $$3$6$1 else v169$1);
    v169$2 := (if p13$2 then $$3$6$2 else v169$2);
    v170$1 := (if p13$1 then $$3$7$1 else v170$1);
    v170$2 := (if p13$2 then $$3$7$2 else v170$2);
    v171$1 := (if p13$1 then $$3$8$1 else v171$1);
    v171$2 := (if p13$2 then $$3$8$2 else v171$2);
    v172$1 := (if p13$1 then $$3$9$1 else v172$1);
    v172$2 := (if p13$2 then $$3$9$2 else v172$2);
    v173$1 := (if p13$1 then $$3$10$1 else v173$1);
    v173$2 := (if p13$2 then $$3$10$2 else v173$2);
    v174$1 := (if p13$1 then $$3$11$1 else v174$1);
    v174$2 := (if p13$2 then $$3$11$2 else v174$2);
    v175$1 := (if p13$1 then $$3$12$1 else v175$1);
    v175$2 := (if p13$2 then $$3$12$2 else v175$2);
    v176$1 := (if p13$1 then $$3$13$1 else v176$1);
    v176$2 := (if p13$2 then $$3$13$2 else v176$2);
    v177$1 := (if p13$1 then $$3$14$1 else v177$1);
    v177$2 := (if p13$2 then $$3$14$2 else v177$2);
    v178$1 := (if p13$1 then $$3$15$1 else v178$1);
    v178$2 := (if p13$2 then $$3$15$2 else v178$2);
    call {:sourceloc_num 259} v179$1, v179$2 := $_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(p13$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v170$1, v169$1), v168$1), v167$1), v166$1), v165$1), v164$1), v163$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v174$1, v173$1), v172$1), v171$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v178$1, v177$1), v176$1), v175$1), BV32_ADD(BV32_ADD(v11$1, BV32_MUL($3$1, BV32_ADD($DX, $padding))), BV32_UDIV($DX, 2)), p13$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v170$2, v169$2), v168$2), v167$2), v166$2), v165$2), v164$2), v163$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v174$2, v173$2), v172$2), v171$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v178$2, v177$2), v176$2), v175$2), BV32_ADD(BV32_ADD(v11$2, BV32_MUL($3$2, BV32_ADD($DX, $padding))), BV32_UDIV($DX, 2)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} true;
    $$D26$0$1 := (if p13$1 then BV_EXTRACT(v179$1, 32, 0) else $$D26$0$1);
    $$D26$0$2 := (if p13$2 then BV_EXTRACT(v179$2, 32, 0) else $$D26$0$2);
    $$D26$1$1 := (if p13$1 then BV_EXTRACT(v179$1, 64, 32) else $$D26$1$1);
    $$D26$1$2 := (if p13$2 then BV_EXTRACT(v179$2, 64, 32) else $$D26$1$2);
    $$twiddle7$0$1 := (if p13$1 then 0 else $$twiddle7$0$1);
    $$twiddle7$0$2 := (if p13$2 then 0 else $$twiddle7$0$2);
    $$twiddle7$1$1 := (if p13$1 then (if FLT32(0, $phaseBase) then 1065353216 else -1082130432) else $$twiddle7$1$1);
    $$twiddle7$1$2 := (if p13$2 then (if FLT32(0, $phaseBase) then 1065353216 else -1082130432) else $$twiddle7$1$2);
    v180$1 := (if p13$1 then $$D15$0$1 else v180$1);
    v180$2 := (if p13$2 then $$D15$0$2 else v180$2);
    v181$1 := (if p13$1 then $$D26$0$1 else v181$1);
    v181$2 := (if p13$2 then $$D26$0$2 else v181$2);
    v182$1 := (if p13$1 then FADD32(v180$1, v181$1) else v182$1);
    v182$2 := (if p13$2 then FADD32(v180$2, v181$2) else v182$2);
    v183$1 := (if p13$1 then $$D15$1$1 else v183$1);
    v183$2 := (if p13$2 then $$D15$1$2 else v183$2);
    v184$1 := (if p13$1 then $$D26$1$1 else v184$1);
    v184$2 := (if p13$2 then $$D26$1$2 else v184$2);
    v185$1 := (if p13$1 then FSUB32(v183$1, v184$1) else v185$1);
    v185$2 := (if p13$2 then FSUB32(v183$2, v184$2) else v185$2);
    v186$1 := (if p13$1 then $$D15$1$1 else v186$1);
    v186$2 := (if p13$2 then $$D15$1$2 else v186$2);
    v187$1 := (if p13$1 then $$D26$1$1 else v187$1);
    v187$2 := (if p13$2 then $$D26$1$2 else v187$2);
    v188$1 := (if p13$1 then FADD32(v186$1, v187$1) else v188$1);
    v188$2 := (if p13$2 then FADD32(v186$2, v187$2) else v188$2);
    v189$1 := (if p13$1 then $$D15$0$1 else v189$1);
    v189$2 := (if p13$2 then $$D15$0$2 else v189$2);
    v190$1 := (if p13$1 then $$D26$0$1 else v190$1);
    v190$2 := (if p13$2 then $$D26$0$2 else v190$2);
    v191$1 := (if p13$1 then FSUB32(v189$1, v190$1) else v191$1);
    v191$2 := (if p13$2 then FSUB32(v189$2, v190$2) else v191$2);
    v192$1 := (if p13$1 then $$twiddle7$0$1 else v192$1);
    v192$2 := (if p13$2 then $$twiddle7$0$2 else v192$2);
    v193$1 := (if p13$1 then $$twiddle7$1$1 else v193$1);
    v193$2 := (if p13$2 then $$twiddle7$1$2 else v193$2);
    $$D15$0$1 := (if p13$1 then FSUB32(v182$1, FSUB32(FMUL32(v188$1, v192$1), FMUL32(v191$1, v193$1))) else $$D15$0$1);
    $$D15$0$2 := (if p13$2 then FSUB32(v182$2, FSUB32(FMUL32(v188$2, v192$2), FMUL32(v191$2, v193$2))) else $$D15$0$2);
    v194$1 := (if p13$1 then $$twiddle7$0$1 else v194$1);
    v194$2 := (if p13$2 then $$twiddle7$0$2 else v194$2);
    v195$1 := (if p13$1 then $$twiddle7$1$1 else v195$1);
    v195$2 := (if p13$2 then $$twiddle7$1$2 else v195$2);
    $$D15$1$1 := (if p13$1 then FADD32(FADD32(FMUL32(v191$1, v194$1), FMUL32(v188$1, v195$1)), v185$1) else $$D15$1$1);
    $$D15$1$2 := (if p13$2 then FADD32(FADD32(FMUL32(v191$2, v194$2), FMUL32(v188$2, v195$2)), v185$2) else $$D15$1$2);
    v196$1 := (if p13$1 then $$twiddle7$0$1 else v196$1);
    v196$2 := (if p13$2 then $$twiddle7$0$2 else v196$2);
    v197$1 := (if p13$1 then $$twiddle7$1$1 else v197$1);
    v197$2 := (if p13$2 then $$twiddle7$1$2 else v197$2);
    $$D26$0$1 := (if p13$1 then FADD32(v182$1, FSUB32(FMUL32(v188$1, v196$1), FMUL32(v191$1, v197$1))) else $$D26$0$1);
    $$D26$0$2 := (if p13$2 then FADD32(v182$2, FSUB32(FMUL32(v188$2, v196$2), FMUL32(v191$2, v197$2))) else $$D26$0$2);
    v198$1 := (if p13$1 then $$twiddle7$0$1 else v198$1);
    v198$2 := (if p13$2 then $$twiddle7$0$2 else v198$2);
    v199$1 := (if p13$1 then $$twiddle7$1$1 else v199$1);
    v199$2 := (if p13$2 then $$twiddle7$1$2 else v199$2);
    $$D26$1$1 := (if p13$1 then FSUB32(FADD32(FMUL32(v191$1, v198$1), FMUL32(v188$1, v199$1)), v185$1) else $$D26$1$1);
    $$D26$1$2 := (if p13$2 then FSUB32(FADD32(FMUL32(v191$2, v198$2), FMUL32(v188$2, v199$2)), v185$2) else $$D26$1$2);
    v200$1 := (if p13$1 then $$D15$0$1 else v200$1);
    v200$2 := (if p13$2 then $$D15$0$2 else v200$2);
    call {:sourceloc} {:sourceloc_num 285} _LOG_WRITE_$$d_Dst(p13$1, BV32_MUL(v112$1, 2), v200$1, $$d_Dst[BV32_MUL(v112$1, 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p13$2, BV32_MUL(v112$2, 2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 285} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 285} _CHECK_WRITE_$$d_Dst(p13$2, BV32_MUL(v112$2, 2), v200$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(v112$1, 2)] := (if p13$1 then v200$1 else $$d_Dst[BV32_MUL(v112$1, 2)]);
    $$d_Dst[BV32_MUL(v112$2, 2)] := (if p13$2 then v200$2 else $$d_Dst[BV32_MUL(v112$2, 2)]);
    v201$1 := (if p13$1 then $$D15$1$1 else v201$1);
    v201$2 := (if p13$2 then $$D15$1$2 else v201$2);
    call {:sourceloc} {:sourceloc_num 287} _LOG_WRITE_$$d_Dst(p13$1, BV32_ADD(BV32_MUL(v112$1, 2), 1), v201$1, $$d_Dst[BV32_ADD(BV32_MUL(v112$1, 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p13$2, BV32_ADD(BV32_MUL(v112$2, 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 287} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 287} _CHECK_WRITE_$$d_Dst(p13$2, BV32_ADD(BV32_MUL(v112$2, 2), 1), v201$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(v112$1, 2), 1)] := (if p13$1 then v201$1 else $$d_Dst[BV32_ADD(BV32_MUL(v112$1, 2), 1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(v112$2, 2), 1)] := (if p13$2 then v201$2 else $$d_Dst[BV32_ADD(BV32_MUL(v112$2, 2), 1)]);
    v202$1 := (if p13$1 then $$D26$0$1 else v202$1);
    v202$2 := (if p13$2 then $$D26$0$2 else v202$2);
    call {:sourceloc} {:sourceloc_num 289} _LOG_WRITE_$$d_Dst(p13$1, BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2), v202$1, $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p13$2, BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 289} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 289} _CHECK_WRITE_$$d_Dst(p13$2, BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2), v202$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2)] := (if p13$1 then v202$1 else $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2)]);
    $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2)] := (if p13$2 then v202$2 else $$d_Dst[BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2)]);
    v203$1 := (if p13$1 then $$D26$1$1 else v203$1);
    v203$2 := (if p13$2 then $$D26$1$2 else v203$2);
    call {:sourceloc} {:sourceloc_num 291} _LOG_WRITE_$$d_Dst(p13$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2), 1), v203$1, $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(p13$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2), 1));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 291} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 291} _CHECK_WRITE_$$d_Dst(p13$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2), 1), v203$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$d_Dst"} true;
    $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2), 1)] := (if p13$1 then v203$1 else $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$1, BV32_MUL($4$1, $DX)), BV32_UDIV($DX, 2)), 2), 1)]);
    $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2), 1)] := (if p13$2 then v203$2 else $$d_Dst[BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD(v12$2, BV32_MUL($4$2, $DX)), BV32_UDIV($DX, 2)), 2), 1)]);
    return;
}



procedure {:source_name "_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi"} $_Z10tex1DfetchI6float2ET_7textureIS1_Li1EL19cudaTextureReadMode0EEi(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "sinf"} $sinf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "cosf"} $cosf(_P$1: bool, $0$1: int, _P$2: bool, $0$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 4096 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$D1$0$1: int;

var $$D1$0$2: int;

var $$D1$1$1: int;

var $$D1$1$2: int;

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

var $$0$12$1: int;

var $$0$12$2: int;

var $$0$13$1: int;

var $$0$13$2: int;

var $$0$14$1: int;

var $$0$14$2: int;

var $$0$15$1: int;

var $$0$15$2: int;

var $$D2$0$1: int;

var $$D2$0$2: int;

var $$D2$1$1: int;

var $$D2$1$2: int;

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

var $$1$12$1: int;

var $$1$12$2: int;

var $$1$13$1: int;

var $$1$13$2: int;

var $$1$14$1: int;

var $$1$14$2: int;

var $$1$15$1: int;

var $$1$15$2: int;

var $$twiddle$1$1: int;

var $$twiddle$1$2: int;

var $$twiddle$0$1: int;

var $$twiddle$0$2: int;

var $$D15$0$1: int;

var $$D15$0$2: int;

var $$D15$1$1: int;

var $$D15$1$2: int;

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

var $$2$12$1: int;

var $$2$12$2: int;

var $$2$13$1: int;

var $$2$13$2: int;

var $$2$14$1: int;

var $$2$14$2: int;

var $$2$15$1: int;

var $$2$15$2: int;

var $$D26$0$1: int;

var $$D26$0$2: int;

var $$D26$1$1: int;

var $$D26$1$2: int;

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

var $$3$12$1: int;

var $$3$12$2: int;

var $$3$13$1: int;

var $$3$13$2: int;

var $$3$14$1: int;

var $$3$14$2: int;

var $$3$15$1: int;

var $$3$15$2: int;

var $$twiddle7$0$1: int;

var $$twiddle7$0$2: int;

var $$twiddle7$1$1: int;

var $$twiddle7$1$2: int;

const _WATCHED_VALUE_$$d_Dst: int;

procedure {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_READ_$$d_Dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _READ_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_READ_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Dst);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Dst: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Dst, _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _LOG_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then true else _WRITE_HAS_OCCURRED_$$d_Dst);
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



procedure _CHECK_WRITE_$$d_Dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Dst != _value);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Dst;



implementation {:inline 1} _LOG_ATOMIC_$$d_Dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Dst);
    return;
}



procedure _CHECK_ATOMIC_$$d_Dst(_P: bool, _offset: int);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Dst"} {:array "$$d_Dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Dst := (if _P && _WRITE_HAS_OCCURRED_$$d_Dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Dst);
    return;
}



const _WATCHED_VALUE_$$d_Src: int;

procedure {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_READ_$$d_Src(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _READ_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_READ_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d_Src);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d_Src: bool;

procedure {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d_Src, _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _LOG_WRITE_$$d_Src(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then true else _WRITE_HAS_OCCURRED_$$d_Src);
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



procedure _CHECK_WRITE_$$d_Src(_P: bool, _offset: int, _value: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d_Src != _value);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d_Src;



implementation {:inline 1} _LOG_ATOMIC_$$d_Src(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d_Src := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d_Src);
    return;
}



procedure _CHECK_ATOMIC_$$d_Src(_P: bool, _offset: int);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);
  requires {:source_name "d_Src"} {:array "$$d_Src"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d_Src;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d_Src(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d_Src := (if _P && _WRITE_HAS_OCCURRED_$$d_Src && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d_Src);
    return;
}



const _WATCHED_VALUE_$$texComplexA: int;

procedure {:inline 1} _LOG_READ_$$texComplexA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$texComplexA;



implementation {:inline 1} _LOG_READ_$$texComplexA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$texComplexA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texComplexA == _value then true else _READ_HAS_OCCURRED_$$texComplexA);
    return;
}



procedure _CHECK_READ_$$texComplexA(_P: bool, _offset: int, _value: int);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$texComplexA);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$texComplexA: bool;

procedure {:inline 1} _LOG_WRITE_$$texComplexA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$texComplexA, _WRITE_READ_BENIGN_FLAG_$$texComplexA;



implementation {:inline 1} _LOG_WRITE_$$texComplexA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$texComplexA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texComplexA == _value then true else _WRITE_HAS_OCCURRED_$$texComplexA);
    _WRITE_READ_BENIGN_FLAG_$$texComplexA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texComplexA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$texComplexA);
    return;
}



procedure _CHECK_WRITE_$$texComplexA(_P: bool, _offset: int, _value: int);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texComplexA != _value);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$texComplexA != _value);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$texComplexA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$texComplexA;



implementation {:inline 1} _LOG_ATOMIC_$$texComplexA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$texComplexA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$texComplexA);
    return;
}



procedure _CHECK_ATOMIC_$$texComplexA(_P: bool, _offset: int);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset);
  requires {:source_name "texComplexA"} {:array "$$texComplexA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texComplexA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$texComplexA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$texComplexA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$texComplexA := (if _P && _WRITE_HAS_OCCURRED_$$texComplexA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$texComplexA);
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
