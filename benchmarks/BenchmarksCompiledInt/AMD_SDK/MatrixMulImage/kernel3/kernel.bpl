type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$matrixA"} {:global} {:elem_width 32} {:source_name "matrixA"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixA: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixA: bool;

axiom {:array_info "$$matrixB"} {:global} {:elem_width 32} {:source_name "matrixB"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixB: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixB: bool;

var {:source_name "matrixC"} {:global} $$matrixC: [int]int;

axiom {:array_info "$$matrixC"} {:global} {:elem_width 32} {:source_name "matrixC"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$matrixC: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$matrixC: bool;

var {:source_name "imageSampler"} {:constant} $$imageSampler$1: [int]int;

var {:source_name "imageSampler"} {:constant} $$imageSampler$2: [int]int;

axiom {:array_info "$$imageSampler"} {:constant} {:elem_width 32} {:source_name "imageSampler"} {:source_elem_width 32} {:source_dimensions "1"} true;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FMUL32(int, int) : int;

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

function {:inline true} BV32_SHL(x: int, y: int) : int
{
  (if x >= 0 && y == 1 then x * 2 else BV32_SHL_UF(x, y))
}

function BV32_SHL_UF(int, int) : int;

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "mmmKernel3"} {:kernel} $mmmKernel3($widthA: int, $widthB: int);
  requires $$imageSampler$1[0] == 7;
  requires $$imageSampler$2[0] == 7;
  requires !_READ_HAS_OCCURRED_$$matrixA && !_WRITE_HAS_OCCURRED_$$matrixA && !_ATOMIC_HAS_OCCURRED_$$matrixA;
  requires !_READ_HAS_OCCURRED_$$matrixB && !_WRITE_HAS_OCCURRED_$$matrixB && !_ATOMIC_HAS_OCCURRED_$$matrixB;
  requires !_READ_HAS_OCCURRED_$$matrixC && !_WRITE_HAS_OCCURRED_$$matrixC && !_ATOMIC_HAS_OCCURRED_$$matrixC;
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
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:source_name "mmmKernel3"} {:kernel} $mmmKernel3($widthA: int, $widthB: int)
{
  var $0: int;
  var $1: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $4: int;
  var $5: int;
  var $6$1: int;
  var $6$2: int;
  var $7$1: int;
  var $7$2: int;
  var $8: int;
  var $9: int;
  var $10$1: int;
  var $10$2: int;
  var $11$1: int;
  var $11$2: int;
  var $12: int;
  var $13: int;
  var $14$1: int;
  var $14$2: int;
  var $15$1: int;
  var $15$2: int;
  var $16: int;
  var $17: int;
  var $18$1: int;
  var $18$2: int;
  var $19$1: int;
  var $19$2: int;
  var $20: int;
  var $21: int;
  var $22$1: int;
  var $22$2: int;
  var $23$1: int;
  var $23$2: int;
  var $24: int;
  var $25: int;
  var $26$1: int;
  var $26$2: int;
  var $27$1: int;
  var $27$2: int;
  var $28: int;
  var $29: int;
  var $30$1: int;
  var $30$2: int;
  var $31$1: int;
  var $31$2: int;
  var $32$1: int;
  var $32$2: int;
  var $33$1: int;
  var $33$2: int;
  var $34: int;
  var $35: int;
  var $36$1: int;
  var $36$2: int;
  var $37$1: int;
  var $37$2: int;
  var $38: int;
  var $39: int;
  var $40$1: int;
  var $40$2: int;
  var $41$1: int;
  var $41$2: int;
  var $42: int;
  var $43: int;
  var $44$1: int;
  var $44$2: int;
  var $45$1: int;
  var $45$2: int;
  var $46: int;
  var $47: int;
  var $sum0.0$1: int;
  var $sum0.0$2: int;
  var $sum1.0$1: int;
  var $sum1.0$2: int;
  var $sum2.0$1: int;
  var $sum2.0$2: int;
  var $sum3.0$1: int;
  var $sum3.0$2: int;
  var $sum4.0$1: int;
  var $sum4.0$2: int;
  var $sum5.0$1: int;
  var $sum5.0$2: int;
  var $sum6.0$1: int;
  var $sum6.0$2: int;
  var $sum7.0$1: int;
  var $sum7.0$2: int;
  var $i.0: int;
  var $48: int;
  var $49: int;
  var $50$1: int;
  var $50$2: int;
  var $51$1: int;
  var $51$2: int;
  var $52: int;
  var $53: int;
  var $54$1: int;
  var $54$2: int;
  var $55$1: int;
  var $55$2: int;
  var $56: int;
  var $57: int;
  var $58$1: int;
  var $58$2: int;
  var $59$1: int;
  var $59$2: int;
  var $60: int;
  var $61: int;
  var $62$1: int;
  var $62$2: int;
  var $63$1: int;
  var $63$2: int;
  var $64$1: int;
  var $64$2: int;
  var $65$1: int;
  var $65$2: int;
  var $66: int;
  var $67: int;
  var $68$1: int;
  var $68$2: int;
  var $69$1: int;
  var $69$2: int;
  var $70: int;
  var $71: int;
  var $72$1: int;
  var $72$2: int;
  var $73$1: int;
  var $73$2: int;
  var $74: int;
  var $75: int;
  var $76$1: int;
  var $76$2: int;
  var $77$1: int;
  var $77$2: int;
  var $78: int;
  var $79: int;
  var $80: int;
  var $81: int;
  var $82$1: int;
  var $82$2: int;
  var $83$1: int;
  var $83$2: int;
  var $84: int;
  var $85: int;
  var $86$1: int;
  var $86$2: int;
  var $87$1: int;
  var $87$2: int;
  var $88: int;
  var $89: int;
  var $90$1: int;
  var $90$2: int;
  var $91$1: int;
  var $91$2: int;
  var $92: int;
  var $93: int;
  var $94$1: int;
  var $94$2: int;
  var $95$1: int;
  var $95$2: int;
  var v215$1: int;
  var v215$2: int;
  var v1$1: int;
  var v1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v4$1: int;
  var v4$2: int;
  var v3$1: int;
  var v3$2: int;
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
  var v11: int;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: bool;
  var v13$2: bool;
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
  var v19: int;
  var v20$1: bool;
  var v20$2: bool;
  var v21$1: bool;
  var v21$2: bool;
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
  var v27: int;
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
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
  var v35: int;
  var v36$1: bool;
  var v36$2: bool;
  var v37$1: bool;
  var v37$2: bool;
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
  var v43: int;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
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
  var v51: int;
  var v52$1: bool;
  var v52$2: bool;
  var v53$1: bool;
  var v53$2: bool;
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
  var v59: int;
  var v60$1: bool;
  var v60$2: bool;
  var v61$1: bool;
  var v61$2: bool;
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
  var v67: int;
  var v68$1: bool;
  var v68$2: bool;
  var v69$1: bool;
  var v69$2: bool;
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
  var v75$1: bool;
  var v75$2: bool;
  var v76$1: bool;
  var v76$2: bool;
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
  var v82$1: bool;
  var v82$2: bool;
  var v83$1: bool;
  var v83$2: bool;
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
  var v89$1: bool;
  var v89$2: bool;
  var v90$1: bool;
  var v90$2: bool;
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
  var v96$1: bool;
  var v96$2: bool;
  var v97$1: bool;
  var v97$2: bool;
  var v98$1: int;
  var v98$2: int;
  var v99$1: int;
  var v99$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102: bool;
  var v103: int;
  var v105: int;
  var v104: int;
  var v106: int;
  var v107$1: int;
  var v107$2: int;
  var v108: bool;
  var v109: bool;
  var v110$1: bool;
  var v110$2: bool;
  var v111$1: bool;
  var v111$2: bool;
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
  var v117: bool;
  var v118: bool;
  var v119$1: bool;
  var v119$2: bool;
  var v120$1: bool;
  var v120$2: bool;
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
  var v126: bool;
  var v127: bool;
  var v128$1: bool;
  var v128$2: bool;
  var v129$1: bool;
  var v129$2: bool;
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
  var v135: bool;
  var v136: bool;
  var v137$1: bool;
  var v137$2: bool;
  var v138$1: bool;
  var v138$2: bool;
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
  var v144$1: bool;
  var v144$2: bool;
  var v145$1: bool;
  var v145$2: bool;
  var v146: bool;
  var v147: bool;
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
  var v153$1: bool;
  var v153$2: bool;
  var v154$1: bool;
  var v154$2: bool;
  var v155: bool;
  var v156: bool;
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
  var v162$1: bool;
  var v162$2: bool;
  var v163$1: bool;
  var v163$2: bool;
  var v164: bool;
  var v165: bool;
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
  var v171$1: bool;
  var v171$2: bool;
  var v172$1: bool;
  var v172$2: bool;
  var v173: bool;
  var v174: bool;
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
  var v180: bool;
  var v181: bool;
  var v182$1: bool;
  var v182$2: bool;
  var v183$1: bool;
  var v183$2: bool;
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
  var v189: bool;
  var v190: bool;
  var v191$1: bool;
  var v191$2: bool;
  var v192$1: bool;
  var v192$2: bool;
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
  var v198: bool;
  var v199: bool;
  var v200$1: bool;
  var v200$2: bool;
  var v201$1: bool;
  var v201$2: bool;
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
  var v207: bool;
  var v208: bool;
  var v209$1: bool;
  var v209$2: bool;
  var v210$1: bool;
  var v210$2: bool;
  var v211$1: int;
  var v211$2: int;
  var v212$1: int;
  var v212$2: int;
  var v213$1: int;
  var v213$2: int;
  var v214$1: int;
  var v214$2: int;
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
  var p48$1: bool;
  var p48$2: bool;
  var p49$1: bool;
  var p49$2: bool;
  var p50$1: bool;
  var p50$2: bool;
  var p51$1: bool;
  var p51$2: bool;
  var p52$1: bool;
  var p52$2: bool;
  var p53$1: bool;
  var p53$2: bool;
  var p54$1: bool;
  var p54$2: bool;
  var p55$1: bool;
  var p55$2: bool;
  var p56$1: bool;
  var p56$2: bool;
  var p57$1: bool;
  var p57$2: bool;
  var p58$1: bool;
  var p58$2: bool;
  var p59$1: bool;
  var p59$2: bool;
  var p60$1: bool;
  var p60$2: bool;
  var p61$1: bool;
  var p61$2: bool;
  var p62$1: bool;
  var p62$2: bool;
  var p63$1: bool;
  var p63$2: bool;
  var p64$1: bool;
  var p64$2: bool;
  var p65$1: bool;
  var p65$2: bool;
  var p66$1: bool;
  var p66$2: bool;
  var p67$1: bool;
  var p67$2: bool;
  var p68$1: bool;
  var p68$2: bool;
  var p69$1: bool;
  var p69$2: bool;
  var p70$1: bool;
  var p70$2: bool;
  var p71$1: bool;
  var p71$2: bool;
  var p72$1: bool;
  var p72$2: bool;
  var p73$1: bool;
  var p73$2: bool;
  var p74$1: bool;
  var p74$2: bool;
  var p75$1: bool;
  var p75$2: bool;
  var p76$1: bool;
  var p76$2: bool;
  var p77$1: bool;
  var p77$2: bool;
  var p78$1: bool;
  var p78$2: bool;
  var p79$1: bool;
  var p79$2: bool;
  var p80$1: bool;
  var p80$2: bool;
  var p81$1: bool;
  var p81$2: bool;
  var p82$1: bool;
  var p82$2: bool;
  var p83$1: bool;
  var p83$2: bool;
  var p84$1: bool;
  var p84$2: bool;
  var p85$1: bool;
  var p85$2: bool;
  var p86$1: bool;
  var p86$2: bool;
  var p87$1: bool;
  var p87$2: bool;
  var p88$1: bool;
  var p88$2: bool;
  var p89$1: bool;
  var p89$2: bool;
  var p90$1: bool;
  var p90$2: bool;
  var p91$1: bool;
  var p91$2: bool;
  var p92$1: bool;
  var p92$2: bool;
  var p93$1: bool;
  var p93$2: bool;
  var p94$1: bool;
  var p94$2: bool;
  var p95$1: bool;
  var p95$2: bool;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := BV32_SHL(v1$1, 3);
    v2$2 := BV32_SHL(v1$2, 3);
    v3$1 := BV32_ADD(v2$1, 1);
    v3$2 := BV32_ADD(v2$2, 1);
    v4$1 := BV32_ADD(v2$1, 2);
    v4$2 := BV32_ADD(v2$2, 2);
    v5$1 := BV32_ADD(v2$1, 3);
    v5$2 := BV32_ADD(v2$2, 3);
    v6$1 := BV32_ADD(v2$1, 4);
    v6$2 := BV32_ADD(v2$2, 4);
    v7$1 := BV32_ADD(v2$1, 5);
    v7$2 := BV32_ADD(v2$2, 5);
    v8$1 := BV32_ADD(v2$1, 6);
    v8$2 := BV32_ADD(v2$2, 6);
    v9$1 := BV32_ADD(v2$1, 7);
    v9$2 := BV32_ADD(v2$2, 7);
    v10$1 := $$imageSampler$1[0];
    v10$2 := $$imageSampler$2[0];
    v11 := 0;
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
    assume {:partition} true;
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} true;
    $1 := v11;
    goto $5;

  $5:
    $0 := $1;
    goto $6;

  $6:
    v12$1 := BV32_SLT(v2$1, 0);
    v12$2 := BV32_SLT(v2$2, 0);
    p0$1 := (if v12$1 then v12$1 else p0$1);
    p0$2 := (if v12$2 then v12$2 else p0$2);
    p1$1 := (if !v12$1 then !v12$1 else p1$1);
    p1$2 := (if !v12$2 then !v12$2 else p1$2);
    $2$1 := (if p0$1 then 0 else $2$1);
    $2$2 := (if p0$2 then 0 else $2$2);
    v13$1 := (if p1$1 then BV32_SGE(v2$1, 8192) else v13$1);
    v13$2 := (if p1$2 then BV32_SGE(v2$2, 8192) else v13$2);
    p2$1 := (if p1$1 && v13$1 then v13$1 else p2$1);
    p2$2 := (if p1$2 && v13$2 then v13$2 else p2$2);
    p3$1 := (if p1$1 && !v13$1 then !v13$1 else p3$1);
    p3$2 := (if p1$2 && !v13$2 then !v13$2 else p3$2);
    $3$1 := (if p2$1 then 8191 else $3$1);
    $3$2 := (if p2$2 then 8191 else $3$2);
    $3$1 := (if p3$1 then v2$1 else $3$1);
    $3$2 := (if p3$2 then v2$2 else $3$2);
    $2$1 := (if p1$1 then $3$1 else $2$1);
    $2$2 := (if p1$2 then $3$2 else $2$2);
    havoc v14$1, v14$2;
    havoc v15$1, v15$2;
    havoc v16$1, v16$2;
    havoc v17$1, v17$2;
    v18$1 := $$imageSampler$1[0];
    v18$2 := $$imageSampler$2[0];
    v19 := 0;
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} true;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} true;
    $5 := v19;
    goto $16;

  $16:
    $4 := $5;
    goto $17;

  $17:
    v20$1 := BV32_SLT(v3$1, 0);
    v20$2 := BV32_SLT(v3$2, 0);
    p4$1 := (if v20$1 then v20$1 else p4$1);
    p4$2 := (if v20$2 then v20$2 else p4$2);
    p5$1 := (if !v20$1 then !v20$1 else p5$1);
    p5$2 := (if !v20$2 then !v20$2 else p5$2);
    $6$1 := (if p4$1 then 0 else $6$1);
    $6$2 := (if p4$2 then 0 else $6$2);
    v21$1 := (if p5$1 then BV32_SGE(v3$1, 8192) else v21$1);
    v21$2 := (if p5$2 then BV32_SGE(v3$2, 8192) else v21$2);
    p6$1 := (if p5$1 && v21$1 then v21$1 else p6$1);
    p6$2 := (if p5$2 && v21$2 then v21$2 else p6$2);
    p7$1 := (if p5$1 && !v21$1 then !v21$1 else p7$1);
    p7$2 := (if p5$2 && !v21$2 then !v21$2 else p7$2);
    $7$1 := (if p6$1 then 8191 else $7$1);
    $7$2 := (if p6$2 then 8191 else $7$2);
    $7$1 := (if p7$1 then v3$1 else $7$1);
    $7$2 := (if p7$2 then v3$2 else $7$2);
    $6$1 := (if p5$1 then $7$1 else $6$1);
    $6$2 := (if p5$2 then $7$2 else $6$2);
    havoc v22$1, v22$2;
    havoc v23$1, v23$2;
    havoc v24$1, v24$2;
    havoc v25$1, v25$2;
    v26$1 := $$imageSampler$1[0];
    v26$2 := $$imageSampler$2[0];
    v27 := 0;
    goto $truebb7, $falsebb7;

  $falsebb7:
    assume {:partition} true;
    goto $truebb8, $falsebb8;

  $falsebb8:
    assume {:partition} true;
    $9 := v27;
    goto $27;

  $27:
    $8 := $9;
    goto $28;

  $28:
    v28$1 := BV32_SLT(v4$1, 0);
    v28$2 := BV32_SLT(v4$2, 0);
    p8$1 := (if v28$1 then v28$1 else p8$1);
    p8$2 := (if v28$2 then v28$2 else p8$2);
    p9$1 := (if !v28$1 then !v28$1 else p9$1);
    p9$2 := (if !v28$2 then !v28$2 else p9$2);
    $10$1 := (if p8$1 then 0 else $10$1);
    $10$2 := (if p8$2 then 0 else $10$2);
    v29$1 := (if p9$1 then BV32_SGE(v4$1, 8192) else v29$1);
    v29$2 := (if p9$2 then BV32_SGE(v4$2, 8192) else v29$2);
    p10$1 := (if p9$1 && v29$1 then v29$1 else p10$1);
    p10$2 := (if p9$2 && v29$2 then v29$2 else p10$2);
    p11$1 := (if p9$1 && !v29$1 then !v29$1 else p11$1);
    p11$2 := (if p9$2 && !v29$2 then !v29$2 else p11$2);
    $11$1 := (if p10$1 then 8191 else $11$1);
    $11$2 := (if p10$2 then 8191 else $11$2);
    $11$1 := (if p11$1 then v4$1 else $11$1);
    $11$2 := (if p11$2 then v4$2 else $11$2);
    $10$1 := (if p9$1 then $11$1 else $10$1);
    $10$2 := (if p9$2 then $11$2 else $10$2);
    havoc v30$1, v30$2;
    havoc v31$1, v31$2;
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    v34$1 := $$imageSampler$1[0];
    v34$2 := $$imageSampler$2[0];
    v35 := 0;
    goto $truebb11, $falsebb11;

  $falsebb11:
    assume {:partition} true;
    goto $truebb12, $falsebb12;

  $falsebb12:
    assume {:partition} true;
    $13 := v35;
    goto $38;

  $38:
    $12 := $13;
    goto $39;

  $39:
    v36$1 := BV32_SLT(v5$1, 0);
    v36$2 := BV32_SLT(v5$2, 0);
    p12$1 := (if v36$1 then v36$1 else p12$1);
    p12$2 := (if v36$2 then v36$2 else p12$2);
    p13$1 := (if !v36$1 then !v36$1 else p13$1);
    p13$2 := (if !v36$2 then !v36$2 else p13$2);
    $14$1 := (if p12$1 then 0 else $14$1);
    $14$2 := (if p12$2 then 0 else $14$2);
    v37$1 := (if p13$1 then BV32_SGE(v5$1, 8192) else v37$1);
    v37$2 := (if p13$2 then BV32_SGE(v5$2, 8192) else v37$2);
    p14$1 := (if p13$1 && v37$1 then v37$1 else p14$1);
    p14$2 := (if p13$2 && v37$2 then v37$2 else p14$2);
    p15$1 := (if p13$1 && !v37$1 then !v37$1 else p15$1);
    p15$2 := (if p13$2 && !v37$2 then !v37$2 else p15$2);
    $15$1 := (if p14$1 then 8191 else $15$1);
    $15$2 := (if p14$2 then 8191 else $15$2);
    $15$1 := (if p15$1 then v5$1 else $15$1);
    $15$2 := (if p15$2 then v5$2 else $15$2);
    $14$1 := (if p13$1 then $15$1 else $14$1);
    $14$2 := (if p13$2 then $15$2 else $14$2);
    havoc v38$1, v38$2;
    havoc v39$1, v39$2;
    havoc v40$1, v40$2;
    havoc v41$1, v41$2;
    v42$1 := $$imageSampler$1[0];
    v42$2 := $$imageSampler$2[0];
    v43 := 0;
    goto $truebb15, $falsebb15;

  $falsebb15:
    assume {:partition} true;
    goto $truebb16, $falsebb16;

  $falsebb16:
    assume {:partition} true;
    $17 := v43;
    goto $49;

  $49:
    $16 := $17;
    goto $50;

  $50:
    v44$1 := BV32_SLT(v6$1, 0);
    v44$2 := BV32_SLT(v6$2, 0);
    p16$1 := (if v44$1 then v44$1 else p16$1);
    p16$2 := (if v44$2 then v44$2 else p16$2);
    p17$1 := (if !v44$1 then !v44$1 else p17$1);
    p17$2 := (if !v44$2 then !v44$2 else p17$2);
    $18$1 := (if p16$1 then 0 else $18$1);
    $18$2 := (if p16$2 then 0 else $18$2);
    v45$1 := (if p17$1 then BV32_SGE(v6$1, 8192) else v45$1);
    v45$2 := (if p17$2 then BV32_SGE(v6$2, 8192) else v45$2);
    p18$1 := (if p17$1 && v45$1 then v45$1 else p18$1);
    p18$2 := (if p17$2 && v45$2 then v45$2 else p18$2);
    p19$1 := (if p17$1 && !v45$1 then !v45$1 else p19$1);
    p19$2 := (if p17$2 && !v45$2 then !v45$2 else p19$2);
    $19$1 := (if p18$1 then 8191 else $19$1);
    $19$2 := (if p18$2 then 8191 else $19$2);
    $19$1 := (if p19$1 then v6$1 else $19$1);
    $19$2 := (if p19$2 then v6$2 else $19$2);
    $18$1 := (if p17$1 then $19$1 else $18$1);
    $18$2 := (if p17$2 then $19$2 else $18$2);
    havoc v46$1, v46$2;
    havoc v47$1, v47$2;
    havoc v48$1, v48$2;
    havoc v49$1, v49$2;
    v50$1 := $$imageSampler$1[0];
    v50$2 := $$imageSampler$2[0];
    v51 := 0;
    goto $truebb19, $falsebb19;

  $falsebb19:
    assume {:partition} true;
    goto $truebb20, $falsebb20;

  $falsebb20:
    assume {:partition} true;
    $21 := v51;
    goto $60;

  $60:
    $20 := $21;
    goto $61;

  $61:
    v52$1 := BV32_SLT(v7$1, 0);
    v52$2 := BV32_SLT(v7$2, 0);
    p20$1 := (if v52$1 then v52$1 else p20$1);
    p20$2 := (if v52$2 then v52$2 else p20$2);
    p21$1 := (if !v52$1 then !v52$1 else p21$1);
    p21$2 := (if !v52$2 then !v52$2 else p21$2);
    $22$1 := (if p20$1 then 0 else $22$1);
    $22$2 := (if p20$2 then 0 else $22$2);
    v53$1 := (if p21$1 then BV32_SGE(v7$1, 8192) else v53$1);
    v53$2 := (if p21$2 then BV32_SGE(v7$2, 8192) else v53$2);
    p22$1 := (if p21$1 && v53$1 then v53$1 else p22$1);
    p22$2 := (if p21$2 && v53$2 then v53$2 else p22$2);
    p23$1 := (if p21$1 && !v53$1 then !v53$1 else p23$1);
    p23$2 := (if p21$2 && !v53$2 then !v53$2 else p23$2);
    $23$1 := (if p22$1 then 8191 else $23$1);
    $23$2 := (if p22$2 then 8191 else $23$2);
    $23$1 := (if p23$1 then v7$1 else $23$1);
    $23$2 := (if p23$2 then v7$2 else $23$2);
    $22$1 := (if p21$1 then $23$1 else $22$1);
    $22$2 := (if p21$2 then $23$2 else $22$2);
    havoc v54$1, v54$2;
    havoc v55$1, v55$2;
    havoc v56$1, v56$2;
    havoc v57$1, v57$2;
    v58$1 := $$imageSampler$1[0];
    v58$2 := $$imageSampler$2[0];
    v59 := 0;
    goto $truebb23, $falsebb23;

  $falsebb23:
    assume {:partition} true;
    goto $truebb24, $falsebb24;

  $falsebb24:
    assume {:partition} true;
    $25 := v59;
    goto $71;

  $71:
    $24 := $25;
    goto $72;

  $72:
    v60$1 := BV32_SLT(v8$1, 0);
    v60$2 := BV32_SLT(v8$2, 0);
    p24$1 := (if v60$1 then v60$1 else p24$1);
    p24$2 := (if v60$2 then v60$2 else p24$2);
    p25$1 := (if !v60$1 then !v60$1 else p25$1);
    p25$2 := (if !v60$2 then !v60$2 else p25$2);
    $26$1 := (if p24$1 then 0 else $26$1);
    $26$2 := (if p24$2 then 0 else $26$2);
    v61$1 := (if p25$1 then BV32_SGE(v8$1, 8192) else v61$1);
    v61$2 := (if p25$2 then BV32_SGE(v8$2, 8192) else v61$2);
    p26$1 := (if p25$1 && v61$1 then v61$1 else p26$1);
    p26$2 := (if p25$2 && v61$2 then v61$2 else p26$2);
    p27$1 := (if p25$1 && !v61$1 then !v61$1 else p27$1);
    p27$2 := (if p25$2 && !v61$2 then !v61$2 else p27$2);
    $27$1 := (if p26$1 then 8191 else $27$1);
    $27$2 := (if p26$2 then 8191 else $27$2);
    $27$1 := (if p27$1 then v8$1 else $27$1);
    $27$2 := (if p27$2 then v8$2 else $27$2);
    $26$1 := (if p25$1 then $27$1 else $26$1);
    $26$2 := (if p25$2 then $27$2 else $26$2);
    havoc v62$1, v62$2;
    havoc v63$1, v63$2;
    havoc v64$1, v64$2;
    havoc v65$1, v65$2;
    v66$1 := $$imageSampler$1[0];
    v66$2 := $$imageSampler$2[0];
    v67 := 0;
    goto $truebb27, $falsebb27;

  $falsebb27:
    assume {:partition} true;
    goto $truebb28, $falsebb28;

  $falsebb28:
    assume {:partition} true;
    $29 := v67;
    goto $82;

  $82:
    $28 := $29;
    goto $83;

  $83:
    v68$1 := BV32_SLT(v9$1, 0);
    v68$2 := BV32_SLT(v9$2, 0);
    p28$1 := (if v68$1 then v68$1 else p28$1);
    p28$2 := (if v68$2 then v68$2 else p28$2);
    p29$1 := (if !v68$1 then !v68$1 else p29$1);
    p29$2 := (if !v68$2 then !v68$2 else p29$2);
    $30$1 := (if p28$1 then 0 else $30$1);
    $30$2 := (if p28$2 then 0 else $30$2);
    v69$1 := (if p29$1 then BV32_SGE(v9$1, 8192) else v69$1);
    v69$2 := (if p29$2 then BV32_SGE(v9$2, 8192) else v69$2);
    p30$1 := (if p29$1 && v69$1 then v69$1 else p30$1);
    p30$2 := (if p29$2 && v69$2 then v69$2 else p30$2);
    p31$1 := (if p29$1 && !v69$1 then !v69$1 else p31$1);
    p31$2 := (if p29$2 && !v69$2 then !v69$2 else p31$2);
    $31$1 := (if p30$1 then 8191 else $31$1);
    $31$2 := (if p30$2 then 8191 else $31$2);
    $31$1 := (if p31$1 then v9$1 else $31$1);
    $31$2 := (if p31$2 then v9$2 else $31$2);
    $30$1 := (if p29$1 then $31$1 else $30$1);
    $30$2 := (if p29$2 then $31$2 else $30$2);
    havoc v70$1, v70$2;
    havoc v71$1, v71$2;
    havoc v72$1, v72$2;
    havoc v73$1, v73$2;
    v74$1 := $$imageSampler$1[0];
    v74$2 := $$imageSampler$2[0];
    v75$1 := BV32_SLT(v0$1, 0);
    v75$2 := BV32_SLT(v0$2, 0);
    p32$1 := (if v75$1 then v75$1 else p32$1);
    p32$2 := (if v75$2 then v75$2 else p32$2);
    p33$1 := (if !v75$1 then !v75$1 else p33$1);
    p33$2 := (if !v75$2 then !v75$2 else p33$2);
    $32$1 := (if p32$1 then 0 else $32$1);
    $32$2 := (if p32$2 then 0 else $32$2);
    v76$1 := (if p33$1 then BV32_SGE(v0$1, 8192) else v76$1);
    v76$2 := (if p33$2 then BV32_SGE(v0$2, 8192) else v76$2);
    p34$1 := (if p33$1 && v76$1 then v76$1 else p34$1);
    p34$2 := (if p33$2 && v76$2 then v76$2 else p34$2);
    p35$1 := (if p33$1 && !v76$1 then !v76$1 else p35$1);
    p35$2 := (if p33$2 && !v76$2 then !v76$2 else p35$2);
    $33$1 := (if p34$1 then 8191 else $33$1);
    $33$2 := (if p34$2 then 8191 else $33$2);
    $33$1 := (if p35$1 then v0$1 else $33$1);
    $33$2 := (if p35$2 then v0$2 else $33$2);
    $32$1 := (if p33$1 then $33$1 else $32$1);
    $32$2 := (if p33$2 then $33$2 else $32$2);
    goto $truebb33, $falsebb33;

  $falsebb33:
    assume {:partition} true;
    goto $truebb34, $falsebb34;

  $falsebb34:
    assume {:partition} true;
    $35 := 0;
    goto $99;

  $99:
    $34 := $35;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit77;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit77:
    havoc v77$1, v77$2;
    havoc v78$1, v78$2;
    havoc v79$1, v79$2;
    havoc v80$1, v80$2;
    v81$1 := $$imageSampler$1[0];
    v81$2 := $$imageSampler$2[0];
    v82$1 := BV32_SLT(v0$1, 0);
    v82$2 := BV32_SLT(v0$2, 0);
    p36$1 := (if v82$1 then v82$1 else p36$1);
    p36$2 := (if v82$2 then v82$2 else p36$2);
    p37$1 := (if !v82$1 then !v82$1 else p37$1);
    p37$2 := (if !v82$2 then !v82$2 else p37$2);
    $36$1 := (if p36$1 then 0 else $36$1);
    $36$2 := (if p36$2 then 0 else $36$2);
    v83$1 := (if p37$1 then BV32_SGE(v0$1, 8192) else v83$1);
    v83$2 := (if p37$2 then BV32_SGE(v0$2, 8192) else v83$2);
    p38$1 := (if p37$1 && v83$1 then v83$1 else p38$1);
    p38$2 := (if p37$2 && v83$2 then v83$2 else p38$2);
    p39$1 := (if p37$1 && !v83$1 then !v83$1 else p39$1);
    p39$2 := (if p37$2 && !v83$2 then !v83$2 else p39$2);
    $37$1 := (if p38$1 then 8191 else $37$1);
    $37$2 := (if p38$2 then 8191 else $37$2);
    $37$1 := (if p39$1 then v0$1 else $37$1);
    $37$2 := (if p39$2 then v0$2 else $37$2);
    $36$1 := (if p37$1 then $37$1 else $36$1);
    $36$2 := (if p37$2 then $37$2 else $36$2);
    goto $truebb37, $falsebb37;

  $falsebb37:
    assume {:partition} true;
    goto $truebb38, $falsebb38;

  $falsebb38:
    assume {:partition} true;
    $39 := 1;
    goto $110;

  $110:
    $38 := $39;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit74;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit74:
    havoc v84$1, v84$2;
    havoc v85$1, v85$2;
    havoc v86$1, v86$2;
    havoc v87$1, v87$2;
    v88$1 := $$imageSampler$1[0];
    v88$2 := $$imageSampler$2[0];
    v89$1 := BV32_SLT(v0$1, 0);
    v89$2 := BV32_SLT(v0$2, 0);
    p40$1 := (if v89$1 then v89$1 else p40$1);
    p40$2 := (if v89$2 then v89$2 else p40$2);
    p41$1 := (if !v89$1 then !v89$1 else p41$1);
    p41$2 := (if !v89$2 then !v89$2 else p41$2);
    $40$1 := (if p40$1 then 0 else $40$1);
    $40$2 := (if p40$2 then 0 else $40$2);
    v90$1 := (if p41$1 then BV32_SGE(v0$1, 8192) else v90$1);
    v90$2 := (if p41$2 then BV32_SGE(v0$2, 8192) else v90$2);
    p42$1 := (if p41$1 && v90$1 then v90$1 else p42$1);
    p42$2 := (if p41$2 && v90$2 then v90$2 else p42$2);
    p43$1 := (if p41$1 && !v90$1 then !v90$1 else p43$1);
    p43$2 := (if p41$2 && !v90$2 then !v90$2 else p43$2);
    $41$1 := (if p42$1 then 8191 else $41$1);
    $41$2 := (if p42$2 then 8191 else $41$2);
    $41$1 := (if p43$1 then v0$1 else $41$1);
    $41$2 := (if p43$2 then v0$2 else $41$2);
    $40$1 := (if p41$1 then $41$1 else $40$1);
    $40$2 := (if p41$2 then $41$2 else $40$2);
    goto $truebb41, $falsebb41;

  $falsebb41:
    assume {:partition} true;
    goto $truebb42, $falsebb42;

  $falsebb42:
    assume {:partition} true;
    $43 := 2;
    goto $121;

  $121:
    $42 := $43;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit71;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit71:
    havoc v91$1, v91$2;
    havoc v92$1, v92$2;
    havoc v93$1, v93$2;
    havoc v94$1, v94$2;
    v95$1 := $$imageSampler$1[0];
    v95$2 := $$imageSampler$2[0];
    v96$1 := BV32_SLT(v0$1, 0);
    v96$2 := BV32_SLT(v0$2, 0);
    p44$1 := (if v96$1 then v96$1 else p44$1);
    p44$2 := (if v96$2 then v96$2 else p44$2);
    p45$1 := (if !v96$1 then !v96$1 else p45$1);
    p45$2 := (if !v96$2 then !v96$2 else p45$2);
    $44$1 := (if p44$1 then 0 else $44$1);
    $44$2 := (if p44$2 then 0 else $44$2);
    v97$1 := (if p45$1 then BV32_SGE(v0$1, 8192) else v97$1);
    v97$2 := (if p45$2 then BV32_SGE(v0$2, 8192) else v97$2);
    p46$1 := (if p45$1 && v97$1 then v97$1 else p46$1);
    p46$2 := (if p45$2 && v97$2 then v97$2 else p46$2);
    p47$1 := (if p45$1 && !v97$1 then !v97$1 else p47$1);
    p47$2 := (if p45$2 && !v97$2 then !v97$2 else p47$2);
    $45$1 := (if p46$1 then 8191 else $45$1);
    $45$2 := (if p46$2 then 8191 else $45$2);
    $45$1 := (if p47$1 then v0$1 else $45$1);
    $45$2 := (if p47$2 then v0$2 else $45$2);
    $44$1 := (if p45$1 then $45$1 else $44$1);
    $44$2 := (if p45$2 then $45$2 else $44$2);
    goto $truebb45, $falsebb45;

  $falsebb45:
    assume {:partition} true;
    goto $truebb46, $falsebb46;

  $falsebb46:
    assume {:partition} true;
    $47 := 3;
    goto $132;

  $132:
    $46 := $47;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit68;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit68:
    havoc v98$1, v98$2;
    havoc v99$1, v99$2;
    havoc v100$1, v100$2;
    havoc v101$1, v101$2;
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $sum4.0$1, $sum5.0$1, $sum6.0$1, $sum7.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v17$1, v101$1), FADD32(FMUL32(v16$1, v94$1), FADD32(FMUL32(v15$1, v87$1), FMUL32(v14$1, v80$1)))), FADD32(FMUL32(v17$1, v100$1), FADD32(FMUL32(v16$1, v93$1), FADD32(FMUL32(v15$1, v86$1), FMUL32(v14$1, v79$1))))), FADD32(FMUL32(v17$1, v99$1), FADD32(FMUL32(v16$1, v92$1), FADD32(FMUL32(v15$1, v85$1), FMUL32(v14$1, v78$1))))), FADD32(FMUL32(v17$1, v98$1), FADD32(FMUL32(v16$1, v91$1), FADD32(FMUL32(v15$1, v84$1), FMUL32(v14$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v25$1, v101$1), FADD32(FMUL32(v24$1, v94$1), FADD32(FMUL32(v23$1, v87$1), FMUL32(v22$1, v80$1)))), FADD32(FMUL32(v25$1, v100$1), FADD32(FMUL32(v24$1, v93$1), FADD32(FMUL32(v23$1, v86$1), FMUL32(v22$1, v79$1))))), FADD32(FMUL32(v25$1, v99$1), FADD32(FMUL32(v24$1, v92$1), FADD32(FMUL32(v23$1, v85$1), FMUL32(v22$1, v78$1))))), FADD32(FMUL32(v25$1, v98$1), FADD32(FMUL32(v24$1, v91$1), FADD32(FMUL32(v23$1, v84$1), FMUL32(v22$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v33$1, v101$1), FADD32(FMUL32(v32$1, v94$1), FADD32(FMUL32(v31$1, v87$1), FMUL32(v30$1, v80$1)))), FADD32(FMUL32(v33$1, v100$1), FADD32(FMUL32(v32$1, v93$1), FADD32(FMUL32(v31$1, v86$1), FMUL32(v30$1, v79$1))))), FADD32(FMUL32(v33$1, v99$1), FADD32(FMUL32(v32$1, v92$1), FADD32(FMUL32(v31$1, v85$1), FMUL32(v30$1, v78$1))))), FADD32(FMUL32(v33$1, v98$1), FADD32(FMUL32(v32$1, v91$1), FADD32(FMUL32(v31$1, v84$1), FMUL32(v30$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v41$1, v101$1), FADD32(FMUL32(v40$1, v94$1), FADD32(FMUL32(v39$1, v87$1), FMUL32(v38$1, v80$1)))), FADD32(FMUL32(v41$1, v100$1), FADD32(FMUL32(v40$1, v93$1), FADD32(FMUL32(v39$1, v86$1), FMUL32(v38$1, v79$1))))), FADD32(FMUL32(v41$1, v99$1), FADD32(FMUL32(v40$1, v92$1), FADD32(FMUL32(v39$1, v85$1), FMUL32(v38$1, v78$1))))), FADD32(FMUL32(v41$1, v98$1), FADD32(FMUL32(v40$1, v91$1), FADD32(FMUL32(v39$1, v84$1), FMUL32(v38$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v49$1, v101$1), FADD32(FMUL32(v48$1, v94$1), FADD32(FMUL32(v47$1, v87$1), FMUL32(v46$1, v80$1)))), FADD32(FMUL32(v49$1, v100$1), FADD32(FMUL32(v48$1, v93$1), FADD32(FMUL32(v47$1, v86$1), FMUL32(v46$1, v79$1))))), FADD32(FMUL32(v49$1, v99$1), FADD32(FMUL32(v48$1, v92$1), FADD32(FMUL32(v47$1, v85$1), FMUL32(v46$1, v78$1))))), FADD32(FMUL32(v49$1, v98$1), FADD32(FMUL32(v48$1, v91$1), FADD32(FMUL32(v47$1, v84$1), FMUL32(v46$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v57$1, v101$1), FADD32(FMUL32(v56$1, v94$1), FADD32(FMUL32(v55$1, v87$1), FMUL32(v54$1, v80$1)))), FADD32(FMUL32(v57$1, v100$1), FADD32(FMUL32(v56$1, v93$1), FADD32(FMUL32(v55$1, v86$1), FMUL32(v54$1, v79$1))))), FADD32(FMUL32(v57$1, v99$1), FADD32(FMUL32(v56$1, v92$1), FADD32(FMUL32(v55$1, v85$1), FMUL32(v54$1, v78$1))))), FADD32(FMUL32(v57$1, v98$1), FADD32(FMUL32(v56$1, v91$1), FADD32(FMUL32(v55$1, v84$1), FMUL32(v54$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v65$1, v101$1), FADD32(FMUL32(v64$1, v94$1), FADD32(FMUL32(v63$1, v87$1), FMUL32(v62$1, v80$1)))), FADD32(FMUL32(v65$1, v100$1), FADD32(FMUL32(v64$1, v93$1), FADD32(FMUL32(v63$1, v86$1), FMUL32(v62$1, v79$1))))), FADD32(FMUL32(v65$1, v99$1), FADD32(FMUL32(v64$1, v92$1), FADD32(FMUL32(v63$1, v85$1), FMUL32(v62$1, v78$1))))), FADD32(FMUL32(v65$1, v98$1), FADD32(FMUL32(v64$1, v91$1), FADD32(FMUL32(v63$1, v84$1), FMUL32(v62$1, v77$1))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v73$1, v101$1), FADD32(FMUL32(v72$1, v94$1), FADD32(FMUL32(v71$1, v87$1), FMUL32(v70$1, v80$1)))), FADD32(FMUL32(v73$1, v100$1), FADD32(FMUL32(v72$1, v93$1), FADD32(FMUL32(v71$1, v86$1), FMUL32(v70$1, v79$1))))), FADD32(FMUL32(v73$1, v99$1), FADD32(FMUL32(v72$1, v92$1), FADD32(FMUL32(v71$1, v85$1), FMUL32(v70$1, v78$1))))), FADD32(FMUL32(v73$1, v98$1), FADD32(FMUL32(v72$1, v91$1), FADD32(FMUL32(v71$1, v84$1), FMUL32(v70$1, v77$1))))), 4;
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2, $sum4.0$2, $sum5.0$2, $sum6.0$2, $sum7.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v17$2, v101$2), FADD32(FMUL32(v16$2, v94$2), FADD32(FMUL32(v15$2, v87$2), FMUL32(v14$2, v80$2)))), FADD32(FMUL32(v17$2, v100$2), FADD32(FMUL32(v16$2, v93$2), FADD32(FMUL32(v15$2, v86$2), FMUL32(v14$2, v79$2))))), FADD32(FMUL32(v17$2, v99$2), FADD32(FMUL32(v16$2, v92$2), FADD32(FMUL32(v15$2, v85$2), FMUL32(v14$2, v78$2))))), FADD32(FMUL32(v17$2, v98$2), FADD32(FMUL32(v16$2, v91$2), FADD32(FMUL32(v15$2, v84$2), FMUL32(v14$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v25$2, v101$2), FADD32(FMUL32(v24$2, v94$2), FADD32(FMUL32(v23$2, v87$2), FMUL32(v22$2, v80$2)))), FADD32(FMUL32(v25$2, v100$2), FADD32(FMUL32(v24$2, v93$2), FADD32(FMUL32(v23$2, v86$2), FMUL32(v22$2, v79$2))))), FADD32(FMUL32(v25$2, v99$2), FADD32(FMUL32(v24$2, v92$2), FADD32(FMUL32(v23$2, v85$2), FMUL32(v22$2, v78$2))))), FADD32(FMUL32(v25$2, v98$2), FADD32(FMUL32(v24$2, v91$2), FADD32(FMUL32(v23$2, v84$2), FMUL32(v22$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v33$2, v101$2), FADD32(FMUL32(v32$2, v94$2), FADD32(FMUL32(v31$2, v87$2), FMUL32(v30$2, v80$2)))), FADD32(FMUL32(v33$2, v100$2), FADD32(FMUL32(v32$2, v93$2), FADD32(FMUL32(v31$2, v86$2), FMUL32(v30$2, v79$2))))), FADD32(FMUL32(v33$2, v99$2), FADD32(FMUL32(v32$2, v92$2), FADD32(FMUL32(v31$2, v85$2), FMUL32(v30$2, v78$2))))), FADD32(FMUL32(v33$2, v98$2), FADD32(FMUL32(v32$2, v91$2), FADD32(FMUL32(v31$2, v84$2), FMUL32(v30$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v41$2, v101$2), FADD32(FMUL32(v40$2, v94$2), FADD32(FMUL32(v39$2, v87$2), FMUL32(v38$2, v80$2)))), FADD32(FMUL32(v41$2, v100$2), FADD32(FMUL32(v40$2, v93$2), FADD32(FMUL32(v39$2, v86$2), FMUL32(v38$2, v79$2))))), FADD32(FMUL32(v41$2, v99$2), FADD32(FMUL32(v40$2, v92$2), FADD32(FMUL32(v39$2, v85$2), FMUL32(v38$2, v78$2))))), FADD32(FMUL32(v41$2, v98$2), FADD32(FMUL32(v40$2, v91$2), FADD32(FMUL32(v39$2, v84$2), FMUL32(v38$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v49$2, v101$2), FADD32(FMUL32(v48$2, v94$2), FADD32(FMUL32(v47$2, v87$2), FMUL32(v46$2, v80$2)))), FADD32(FMUL32(v49$2, v100$2), FADD32(FMUL32(v48$2, v93$2), FADD32(FMUL32(v47$2, v86$2), FMUL32(v46$2, v79$2))))), FADD32(FMUL32(v49$2, v99$2), FADD32(FMUL32(v48$2, v92$2), FADD32(FMUL32(v47$2, v85$2), FMUL32(v46$2, v78$2))))), FADD32(FMUL32(v49$2, v98$2), FADD32(FMUL32(v48$2, v91$2), FADD32(FMUL32(v47$2, v84$2), FMUL32(v46$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v57$2, v101$2), FADD32(FMUL32(v56$2, v94$2), FADD32(FMUL32(v55$2, v87$2), FMUL32(v54$2, v80$2)))), FADD32(FMUL32(v57$2, v100$2), FADD32(FMUL32(v56$2, v93$2), FADD32(FMUL32(v55$2, v86$2), FMUL32(v54$2, v79$2))))), FADD32(FMUL32(v57$2, v99$2), FADD32(FMUL32(v56$2, v92$2), FADD32(FMUL32(v55$2, v85$2), FMUL32(v54$2, v78$2))))), FADD32(FMUL32(v57$2, v98$2), FADD32(FMUL32(v56$2, v91$2), FADD32(FMUL32(v55$2, v84$2), FMUL32(v54$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v65$2, v101$2), FADD32(FMUL32(v64$2, v94$2), FADD32(FMUL32(v63$2, v87$2), FMUL32(v62$2, v80$2)))), FADD32(FMUL32(v65$2, v100$2), FADD32(FMUL32(v64$2, v93$2), FADD32(FMUL32(v63$2, v86$2), FMUL32(v62$2, v79$2))))), FADD32(FMUL32(v65$2, v99$2), FADD32(FMUL32(v64$2, v92$2), FADD32(FMUL32(v63$2, v85$2), FMUL32(v62$2, v78$2))))), FADD32(FMUL32(v65$2, v98$2), FADD32(FMUL32(v64$2, v91$2), FADD32(FMUL32(v63$2, v84$2), FMUL32(v62$2, v77$2))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v73$2, v101$2), FADD32(FMUL32(v72$2, v94$2), FADD32(FMUL32(v71$2, v87$2), FMUL32(v70$2, v80$2)))), FADD32(FMUL32(v73$2, v100$2), FADD32(FMUL32(v72$2, v93$2), FADD32(FMUL32(v71$2, v86$2), FMUL32(v70$2, v79$2))))), FADD32(FMUL32(v73$2, v99$2), FADD32(FMUL32(v72$2, v92$2), FADD32(FMUL32(v71$2, v85$2), FMUL32(v70$2, v78$2))))), FADD32(FMUL32(v73$2, v98$2), FADD32(FMUL32(v72$2, v91$2), FADD32(FMUL32(v71$2, v84$2), FMUL32(v70$2, v77$2)))));
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $133;

  $133:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 205} true;
    v102 := BV32_ULT($i.0, $widthA);
    p48$1 := false;
    p48$2 := false;
    p49$1 := false;
    p49$2 := false;
    p50$1 := false;
    p50$2 := false;
    p51$1 := false;
    p51$2 := false;
    p52$1 := false;
    p52$2 := false;
    p53$1 := false;
    p53$2 := false;
    p54$1 := false;
    p54$2 := false;
    p55$1 := false;
    p55$2 := false;
    p56$1 := false;
    p56$2 := false;
    p57$1 := false;
    p57$2 := false;
    p58$1 := false;
    p58$2 := false;
    p59$1 := false;
    p59$2 := false;
    p60$1 := false;
    p60$2 := false;
    p61$1 := false;
    p61$2 := false;
    p62$1 := false;
    p62$2 := false;
    p63$1 := false;
    p63$2 := false;
    p64$1 := false;
    p64$2 := false;
    p65$1 := false;
    p65$2 := false;
    p66$1 := false;
    p66$2 := false;
    p67$1 := false;
    p67$2 := false;
    p68$1 := false;
    p68$2 := false;
    p69$1 := false;
    p69$2 := false;
    p70$1 := false;
    p70$2 := false;
    p71$1 := false;
    p71$2 := false;
    p72$1 := false;
    p72$2 := false;
    p73$1 := false;
    p73$2 := false;
    p74$1 := false;
    p74$2 := false;
    p75$1 := false;
    p75$2 := false;
    p76$1 := false;
    p76$2 := false;
    p77$1 := false;
    p77$2 := false;
    p78$1 := false;
    p78$2 := false;
    p79$1 := false;
    p79$2 := false;
    p80$1 := false;
    p80$2 := false;
    p81$1 := false;
    p81$2 := false;
    p82$1 := false;
    p82$2 := false;
    p83$1 := false;
    p83$2 := false;
    p84$1 := false;
    p84$2 := false;
    p85$1 := false;
    p85$2 := false;
    p86$1 := false;
    p86$2 := false;
    p87$1 := false;
    p87$2 := false;
    p88$1 := false;
    p88$2 := false;
    p89$1 := false;
    p89$2 := false;
    p90$1 := false;
    p90$2 := false;
    p91$1 := false;
    p91$2 := false;
    p92$1 := false;
    p92$2 := false;
    p93$1 := false;
    p93$2 := false;
    p94$1 := false;
    p94$2 := false;
    p95$1 := false;
    p95$2 := false;
    goto $truebb47, $falsebb47;

  $falsebb47:
    assume {:partition} !v102;
    v215$1 := BV32_MUL(v1$1, 8);
    v215$2 := BV32_MUL(v1$2, 8);
    call {:sourceloc} {:sourceloc_num 413} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), BV_EXTRACT($sum0.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 413} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 413} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), BV_EXTRACT($sum0.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4)] := BV_EXTRACT($sum0.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4)] := BV_EXTRACT($sum0.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 414} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 1), BV_EXTRACT($sum0.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 414} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 414} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 1), BV_EXTRACT($sum0.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 1)] := BV_EXTRACT($sum0.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 1)] := BV_EXTRACT($sum0.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 415} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 2), BV_EXTRACT($sum0.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 415} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 415} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 2), BV_EXTRACT($sum0.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 2)] := BV_EXTRACT($sum0.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 2)] := BV_EXTRACT($sum0.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 416} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 3), BV_EXTRACT($sum0.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 416} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 416} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 3), BV_EXTRACT($sum0.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$1, 8192), v0$1), 4), 3)] := BV_EXTRACT($sum0.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v215$2, 8192), v0$2), 4), 3)] := BV_EXTRACT($sum0.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 417} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), BV_EXTRACT($sum1.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 417} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 417} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), BV_EXTRACT($sum1.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4)] := BV_EXTRACT($sum1.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4)] := BV_EXTRACT($sum1.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 418} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 1), BV_EXTRACT($sum1.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 418} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 418} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 1), BV_EXTRACT($sum1.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum1.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum1.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 419} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 2), BV_EXTRACT($sum1.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 419} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 419} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 2), BV_EXTRACT($sum1.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum1.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum1.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 420} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 3), BV_EXTRACT($sum1.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 420} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 420} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 3), BV_EXTRACT($sum1.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 1), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum1.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 1), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum1.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 421} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), BV_EXTRACT($sum2.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 421} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 421} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), BV_EXTRACT($sum2.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4)] := BV_EXTRACT($sum2.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4)] := BV_EXTRACT($sum2.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 422} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 1), BV_EXTRACT($sum2.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 422} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 422} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 1), BV_EXTRACT($sum2.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum2.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum2.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 423} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 2), BV_EXTRACT($sum2.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 423} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 423} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 2), BV_EXTRACT($sum2.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum2.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum2.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 424} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 3), BV_EXTRACT($sum2.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 424} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 424} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 3), BV_EXTRACT($sum2.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 2), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum2.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 2), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum2.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 425} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), BV_EXTRACT($sum3.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 425} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 425} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), BV_EXTRACT($sum3.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4)] := BV_EXTRACT($sum3.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4)] := BV_EXTRACT($sum3.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 426} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 1), BV_EXTRACT($sum3.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 426} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 426} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 1), BV_EXTRACT($sum3.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum3.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum3.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 427} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 2), BV_EXTRACT($sum3.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 427} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 427} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 2), BV_EXTRACT($sum3.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum3.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum3.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 428} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 3), BV_EXTRACT($sum3.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 428} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 428} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 3), BV_EXTRACT($sum3.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 3), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum3.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 3), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum3.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 429} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), BV_EXTRACT($sum4.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 429} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 429} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), BV_EXTRACT($sum4.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4)] := BV_EXTRACT($sum4.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4)] := BV_EXTRACT($sum4.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 430} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 1), BV_EXTRACT($sum4.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 430} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 430} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 1), BV_EXTRACT($sum4.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum4.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum4.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 431} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 2), BV_EXTRACT($sum4.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 431} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 431} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 2), BV_EXTRACT($sum4.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum4.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum4.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 432} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 3), BV_EXTRACT($sum4.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 432} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 432} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 3), BV_EXTRACT($sum4.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 4), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum4.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 4), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum4.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 433} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), BV_EXTRACT($sum5.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 433} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 433} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), BV_EXTRACT($sum5.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4)] := BV_EXTRACT($sum5.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4)] := BV_EXTRACT($sum5.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 434} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 1), BV_EXTRACT($sum5.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 434} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 434} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 1), BV_EXTRACT($sum5.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum5.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum5.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 435} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 2), BV_EXTRACT($sum5.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 435} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 435} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 2), BV_EXTRACT($sum5.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum5.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum5.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 436} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 3), BV_EXTRACT($sum5.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 436} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 436} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 3), BV_EXTRACT($sum5.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 5), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum5.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 5), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum5.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 437} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), BV_EXTRACT($sum6.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 437} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 437} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), BV_EXTRACT($sum6.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4)] := BV_EXTRACT($sum6.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4)] := BV_EXTRACT($sum6.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 438} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 1), BV_EXTRACT($sum6.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 438} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 438} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 1), BV_EXTRACT($sum6.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum6.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum6.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 439} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 2), BV_EXTRACT($sum6.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 439} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 439} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 2), BV_EXTRACT($sum6.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum6.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum6.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 440} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 3), BV_EXTRACT($sum6.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 440} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 440} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 3), BV_EXTRACT($sum6.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 6), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum6.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 6), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum6.0$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 441} _LOG_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), BV_EXTRACT($sum7.0$1, 32, 0), $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 441} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 441} _CHECK_WRITE_$$matrixC(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), BV_EXTRACT($sum7.0$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4)] := BV_EXTRACT($sum7.0$1, 32, 0);
    $$matrixC[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4)] := BV_EXTRACT($sum7.0$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 442} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 1), BV_EXTRACT($sum7.0$1, 64, 32), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 442} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 442} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 1), BV_EXTRACT($sum7.0$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 1)] := BV_EXTRACT($sum7.0$1, 64, 32);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 1)] := BV_EXTRACT($sum7.0$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 443} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 2), BV_EXTRACT($sum7.0$1, 96, 64), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 443} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 443} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 2), BV_EXTRACT($sum7.0$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 2)] := BV_EXTRACT($sum7.0$1, 96, 64);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 2)] := BV_EXTRACT($sum7.0$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 444} _LOG_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 3), BV_EXTRACT($sum7.0$1, 128, 96), $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 444} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 444} _CHECK_WRITE_$$matrixC(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 3), BV_EXTRACT($sum7.0$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$matrixC"} true;
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$1, 7), 8192), v0$1), 4), 3)] := BV_EXTRACT($sum7.0$1, 128, 96);
    $$matrixC[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(v215$2, 7), 8192), v0$2), 4), 3)] := BV_EXTRACT($sum7.0$2, 128, 96);
    return;

  $truebb47:
    assume {:partition} v102;
    v103 := BV32_ASHR($i.0, 2);
    v104 := BV32_ADD($i.0, 1);
    v105 := BV32_ADD($i.0, 2);
    v106 := BV32_ADD($i.0, 3);
    v107$1 := $$imageSampler$1[0];
    v107$2 := $$imageSampler$2[0];
    v108 := BV32_SLT(v103, 0);
    goto $truebb48, $falsebb48;

  $falsebb48:
    assume {:partition} !v108;
    v109 := BV32_SGE(v103, 8192);
    goto $truebb49, $falsebb49;

  $falsebb49:
    assume {:partition} !v109;
    $49 := v103;
    goto $139;

  $139:
    $48 := $49;
    goto $140;

  $140:
    v110$1 := BV32_SLT(v2$1, 0);
    v110$2 := BV32_SLT(v2$2, 0);
    p48$1 := (if v110$1 then v110$1 else p48$1);
    p48$2 := (if v110$2 then v110$2 else p48$2);
    p49$1 := (if !v110$1 then !v110$1 else p49$1);
    p49$2 := (if !v110$2 then !v110$2 else p49$2);
    $50$1 := (if p48$1 then 0 else $50$1);
    $50$2 := (if p48$2 then 0 else $50$2);
    v111$1 := (if p49$1 then BV32_SGE(v2$1, 8192) else v111$1);
    v111$2 := (if p49$2 then BV32_SGE(v2$2, 8192) else v111$2);
    p51$1 := (if p49$1 && v111$1 then v111$1 else p51$1);
    p51$2 := (if p49$2 && v111$2 then v111$2 else p51$2);
    p50$1 := (if p49$1 && !v111$1 then !v111$1 else p50$1);
    p50$2 := (if p49$2 && !v111$2 then !v111$2 else p50$2);
    $51$1 := (if p50$1 then v2$1 else $51$1);
    $51$2 := (if p50$2 then v2$2 else $51$2);
    $51$1 := (if p51$1 then 8191 else $51$1);
    $51$2 := (if p51$2 then 8191 else $51$2);
    $50$1 := (if p49$1 then $51$1 else $50$1);
    $50$2 := (if p49$2 then $51$2 else $50$2);
    havoc v112$1, v112$2;
    havoc v113$1, v113$2;
    havoc v114$1, v114$2;
    havoc v115$1, v115$2;
    v116$1 := $$imageSampler$1[0];
    v116$2 := $$imageSampler$2[0];
    v117 := BV32_SLT(v103, 0);
    goto $truebb52, $falsebb52;

  $falsebb52:
    assume {:partition} !v117;
    v118 := BV32_SGE(v103, 8192);
    goto $truebb53, $falsebb53;

  $falsebb53:
    assume {:partition} !v118;
    $53 := v103;
    goto $150;

  $150:
    $52 := $53;
    goto $151;

  $151:
    v119$1 := BV32_SLT(v3$1, 0);
    v119$2 := BV32_SLT(v3$2, 0);
    p52$1 := (if v119$1 then v119$1 else p52$1);
    p52$2 := (if v119$2 then v119$2 else p52$2);
    p53$1 := (if !v119$1 then !v119$1 else p53$1);
    p53$2 := (if !v119$2 then !v119$2 else p53$2);
    $54$1 := (if p52$1 then 0 else $54$1);
    $54$2 := (if p52$2 then 0 else $54$2);
    v120$1 := (if p53$1 then BV32_SGE(v3$1, 8192) else v120$1);
    v120$2 := (if p53$2 then BV32_SGE(v3$2, 8192) else v120$2);
    p55$1 := (if p53$1 && v120$1 then v120$1 else p55$1);
    p55$2 := (if p53$2 && v120$2 then v120$2 else p55$2);
    p54$1 := (if p53$1 && !v120$1 then !v120$1 else p54$1);
    p54$2 := (if p53$2 && !v120$2 then !v120$2 else p54$2);
    $55$1 := (if p54$1 then v3$1 else $55$1);
    $55$2 := (if p54$2 then v3$2 else $55$2);
    $55$1 := (if p55$1 then 8191 else $55$1);
    $55$2 := (if p55$2 then 8191 else $55$2);
    $54$1 := (if p53$1 then $55$1 else $54$1);
    $54$2 := (if p53$2 then $55$2 else $54$2);
    havoc v121$1, v121$2;
    havoc v122$1, v122$2;
    havoc v123$1, v123$2;
    havoc v124$1, v124$2;
    v125$1 := $$imageSampler$1[0];
    v125$2 := $$imageSampler$2[0];
    v126 := BV32_SLT(v103, 0);
    goto $truebb56, $falsebb56;

  $falsebb56:
    assume {:partition} !v126;
    v127 := BV32_SGE(v103, 8192);
    goto $truebb57, $falsebb57;

  $falsebb57:
    assume {:partition} !v127;
    $57 := v103;
    goto $161;

  $161:
    $56 := $57;
    goto $162;

  $162:
    v128$1 := BV32_SLT(v4$1, 0);
    v128$2 := BV32_SLT(v4$2, 0);
    p56$1 := (if v128$1 then v128$1 else p56$1);
    p56$2 := (if v128$2 then v128$2 else p56$2);
    p57$1 := (if !v128$1 then !v128$1 else p57$1);
    p57$2 := (if !v128$2 then !v128$2 else p57$2);
    $58$1 := (if p56$1 then 0 else $58$1);
    $58$2 := (if p56$2 then 0 else $58$2);
    v129$1 := (if p57$1 then BV32_SGE(v4$1, 8192) else v129$1);
    v129$2 := (if p57$2 then BV32_SGE(v4$2, 8192) else v129$2);
    p59$1 := (if p57$1 && v129$1 then v129$1 else p59$1);
    p59$2 := (if p57$2 && v129$2 then v129$2 else p59$2);
    p58$1 := (if p57$1 && !v129$1 then !v129$1 else p58$1);
    p58$2 := (if p57$2 && !v129$2 then !v129$2 else p58$2);
    $59$1 := (if p58$1 then v4$1 else $59$1);
    $59$2 := (if p58$2 then v4$2 else $59$2);
    $59$1 := (if p59$1 then 8191 else $59$1);
    $59$2 := (if p59$2 then 8191 else $59$2);
    $58$1 := (if p57$1 then $59$1 else $58$1);
    $58$2 := (if p57$2 then $59$2 else $58$2);
    havoc v130$1, v130$2;
    havoc v131$1, v131$2;
    havoc v132$1, v132$2;
    havoc v133$1, v133$2;
    v134$1 := $$imageSampler$1[0];
    v134$2 := $$imageSampler$2[0];
    v135 := BV32_SLT(v103, 0);
    goto $truebb60, $falsebb60;

  $falsebb60:
    assume {:partition} !v135;
    v136 := BV32_SGE(v103, 8192);
    goto $truebb61, $falsebb61;

  $falsebb61:
    assume {:partition} !v136;
    $61 := v103;
    goto $172;

  $172:
    $60 := $61;
    goto $173;

  $173:
    v137$1 := BV32_SLT(v5$1, 0);
    v137$2 := BV32_SLT(v5$2, 0);
    p60$1 := (if v137$1 then v137$1 else p60$1);
    p60$2 := (if v137$2 then v137$2 else p60$2);
    p61$1 := (if !v137$1 then !v137$1 else p61$1);
    p61$2 := (if !v137$2 then !v137$2 else p61$2);
    $62$1 := (if p60$1 then 0 else $62$1);
    $62$2 := (if p60$2 then 0 else $62$2);
    v138$1 := (if p61$1 then BV32_SGE(v5$1, 8192) else v138$1);
    v138$2 := (if p61$2 then BV32_SGE(v5$2, 8192) else v138$2);
    p63$1 := (if p61$1 && v138$1 then v138$1 else p63$1);
    p63$2 := (if p61$2 && v138$2 then v138$2 else p63$2);
    p62$1 := (if p61$1 && !v138$1 then !v138$1 else p62$1);
    p62$2 := (if p61$2 && !v138$2 then !v138$2 else p62$2);
    $63$1 := (if p62$1 then v5$1 else $63$1);
    $63$2 := (if p62$2 then v5$2 else $63$2);
    $63$1 := (if p63$1 then 8191 else $63$1);
    $63$2 := (if p63$2 then 8191 else $63$2);
    $62$1 := (if p61$1 then $63$1 else $62$1);
    $62$2 := (if p61$2 then $63$2 else $62$2);
    havoc v139$1, v139$2;
    havoc v140$1, v140$2;
    havoc v141$1, v141$2;
    havoc v142$1, v142$2;
    v143$1 := $$imageSampler$1[0];
    v143$2 := $$imageSampler$2[0];
    v144$1 := BV32_SLT(v0$1, 0);
    v144$2 := BV32_SLT(v0$2, 0);
    p64$1 := (if v144$1 then v144$1 else p64$1);
    p64$2 := (if v144$2 then v144$2 else p64$2);
    p65$1 := (if !v144$1 then !v144$1 else p65$1);
    p65$2 := (if !v144$2 then !v144$2 else p65$2);
    $64$1 := (if p64$1 then 0 else $64$1);
    $64$2 := (if p64$2 then 0 else $64$2);
    v145$1 := (if p65$1 then BV32_SGE(v0$1, 8192) else v145$1);
    v145$2 := (if p65$2 then BV32_SGE(v0$2, 8192) else v145$2);
    p67$1 := (if p65$1 && v145$1 then v145$1 else p67$1);
    p67$2 := (if p65$2 && v145$2 then v145$2 else p67$2);
    p66$1 := (if p65$1 && !v145$1 then !v145$1 else p66$1);
    p66$2 := (if p65$2 && !v145$2 then !v145$2 else p66$2);
    $65$1 := (if p66$1 then v0$1 else $65$1);
    $65$2 := (if p66$2 then v0$2 else $65$2);
    $65$1 := (if p67$1 then 8191 else $65$1);
    $65$2 := (if p67$2 then 8191 else $65$2);
    $64$1 := (if p65$1 then $65$1 else $64$1);
    $64$2 := (if p65$2 then $65$2 else $64$2);
    v146 := BV32_SLT($i.0, 0);
    goto $truebb66, $falsebb66;

  $falsebb66:
    assume {:partition} !v146;
    v147 := BV32_SGE($i.0, 8192);
    goto $truebb67, $falsebb67;

  $falsebb67:
    assume {:partition} !v147;
    $67 := $i.0;
    goto $189;

  $189:
    $66 := $67;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit45;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit45:
    havoc v148$1, v148$2;
    havoc v149$1, v149$2;
    havoc v150$1, v150$2;
    havoc v151$1, v151$2;
    v152$1 := $$imageSampler$1[0];
    v152$2 := $$imageSampler$2[0];
    v153$1 := BV32_SLT(v0$1, 0);
    v153$2 := BV32_SLT(v0$2, 0);
    p68$1 := (if v153$1 then v153$1 else p68$1);
    p68$2 := (if v153$2 then v153$2 else p68$2);
    p69$1 := (if !v153$1 then !v153$1 else p69$1);
    p69$2 := (if !v153$2 then !v153$2 else p69$2);
    $68$1 := (if p68$1 then 0 else $68$1);
    $68$2 := (if p68$2 then 0 else $68$2);
    v154$1 := (if p69$1 then BV32_SGE(v0$1, 8192) else v154$1);
    v154$2 := (if p69$2 then BV32_SGE(v0$2, 8192) else v154$2);
    p71$1 := (if p69$1 && v154$1 then v154$1 else p71$1);
    p71$2 := (if p69$2 && v154$2 then v154$2 else p71$2);
    p70$1 := (if p69$1 && !v154$1 then !v154$1 else p70$1);
    p70$2 := (if p69$2 && !v154$2 then !v154$2 else p70$2);
    $69$1 := (if p70$1 then v0$1 else $69$1);
    $69$2 := (if p70$2 then v0$2 else $69$2);
    $69$1 := (if p71$1 then 8191 else $69$1);
    $69$2 := (if p71$2 then 8191 else $69$2);
    $68$1 := (if p69$1 then $69$1 else $68$1);
    $68$2 := (if p69$2 then $69$2 else $68$2);
    v155 := BV32_SLT(v104, 0);
    goto $truebb70, $falsebb70;

  $falsebb70:
    assume {:partition} !v155;
    v156 := BV32_SGE(v104, 8192);
    goto $truebb71, $falsebb71;

  $falsebb71:
    assume {:partition} !v156;
    $71 := v104;
    goto $200;

  $200:
    $70 := $71;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit42;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit42:
    havoc v157$1, v157$2;
    havoc v158$1, v158$2;
    havoc v159$1, v159$2;
    havoc v160$1, v160$2;
    v161$1 := $$imageSampler$1[0];
    v161$2 := $$imageSampler$2[0];
    v162$1 := BV32_SLT(v0$1, 0);
    v162$2 := BV32_SLT(v0$2, 0);
    p72$1 := (if v162$1 then v162$1 else p72$1);
    p72$2 := (if v162$2 then v162$2 else p72$2);
    p73$1 := (if !v162$1 then !v162$1 else p73$1);
    p73$2 := (if !v162$2 then !v162$2 else p73$2);
    $72$1 := (if p72$1 then 0 else $72$1);
    $72$2 := (if p72$2 then 0 else $72$2);
    v163$1 := (if p73$1 then BV32_SGE(v0$1, 8192) else v163$1);
    v163$2 := (if p73$2 then BV32_SGE(v0$2, 8192) else v163$2);
    p75$1 := (if p73$1 && v163$1 then v163$1 else p75$1);
    p75$2 := (if p73$2 && v163$2 then v163$2 else p75$2);
    p74$1 := (if p73$1 && !v163$1 then !v163$1 else p74$1);
    p74$2 := (if p73$2 && !v163$2 then !v163$2 else p74$2);
    $73$1 := (if p74$1 then v0$1 else $73$1);
    $73$2 := (if p74$2 then v0$2 else $73$2);
    $73$1 := (if p75$1 then 8191 else $73$1);
    $73$2 := (if p75$2 then 8191 else $73$2);
    $72$1 := (if p73$1 then $73$1 else $72$1);
    $72$2 := (if p73$2 then $73$2 else $72$2);
    v164 := BV32_SLT(v105, 0);
    goto $truebb74, $falsebb74;

  $falsebb74:
    assume {:partition} !v164;
    v165 := BV32_SGE(v105, 8192);
    goto $truebb75, $falsebb75;

  $falsebb75:
    assume {:partition} !v165;
    $75 := v105;
    goto $211;

  $211:
    $74 := $75;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit39;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit39:
    havoc v166$1, v166$2;
    havoc v167$1, v167$2;
    havoc v168$1, v168$2;
    havoc v169$1, v169$2;
    v170$1 := $$imageSampler$1[0];
    v170$2 := $$imageSampler$2[0];
    v171$1 := BV32_SLT(v0$1, 0);
    v171$2 := BV32_SLT(v0$2, 0);
    p76$1 := (if v171$1 then v171$1 else p76$1);
    p76$2 := (if v171$2 then v171$2 else p76$2);
    p77$1 := (if !v171$1 then !v171$1 else p77$1);
    p77$2 := (if !v171$2 then !v171$2 else p77$2);
    $76$1 := (if p76$1 then 0 else $76$1);
    $76$2 := (if p76$2 then 0 else $76$2);
    v172$1 := (if p77$1 then BV32_SGE(v0$1, 8192) else v172$1);
    v172$2 := (if p77$2 then BV32_SGE(v0$2, 8192) else v172$2);
    p79$1 := (if p77$1 && v172$1 then v172$1 else p79$1);
    p79$2 := (if p77$2 && v172$2 then v172$2 else p79$2);
    p78$1 := (if p77$1 && !v172$1 then !v172$1 else p78$1);
    p78$2 := (if p77$2 && !v172$2 then !v172$2 else p78$2);
    $77$1 := (if p78$1 then v0$1 else $77$1);
    $77$2 := (if p78$2 then v0$2 else $77$2);
    $77$1 := (if p79$1 then 8191 else $77$1);
    $77$2 := (if p79$2 then 8191 else $77$2);
    $76$1 := (if p77$1 then $77$1 else $76$1);
    $76$2 := (if p77$2 then $77$2 else $76$2);
    v173 := BV32_SLT(v106, 0);
    goto $truebb78, $falsebb78;

  $falsebb78:
    assume {:partition} !v173;
    v174 := BV32_SGE(v106, 8192);
    goto $truebb79, $falsebb79;

  $falsebb79:
    assume {:partition} !v174;
    $79 := v106;
    goto $222;

  $222:
    $78 := $79;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit36;

  $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit36:
    havoc v175$1, v175$2;
    havoc v176$1, v176$2;
    havoc v177$1, v177$2;
    havoc v178$1, v178$2;
    v179$1 := $$imageSampler$1[0];
    v179$2 := $$imageSampler$2[0];
    v180 := BV32_SLT(v103, 0);
    goto $truebb80, $falsebb80;

  $falsebb80:
    assume {:partition} !v180;
    v181 := BV32_SGE(v103, 8192);
    goto $truebb81, $falsebb81;

  $falsebb81:
    assume {:partition} !v181;
    $81 := v103;
    goto $227;

  $227:
    $80 := $81;
    goto $228;

  $228:
    v182$1 := BV32_SLT(v6$1, 0);
    v182$2 := BV32_SLT(v6$2, 0);
    p80$1 := (if v182$1 then v182$1 else p80$1);
    p80$2 := (if v182$2 then v182$2 else p80$2);
    p81$1 := (if !v182$1 then !v182$1 else p81$1);
    p81$2 := (if !v182$2 then !v182$2 else p81$2);
    $82$1 := (if p80$1 then 0 else $82$1);
    $82$2 := (if p80$2 then 0 else $82$2);
    v183$1 := (if p81$1 then BV32_SGE(v6$1, 8192) else v183$1);
    v183$2 := (if p81$2 then BV32_SGE(v6$2, 8192) else v183$2);
    p83$1 := (if p81$1 && v183$1 then v183$1 else p83$1);
    p83$2 := (if p81$2 && v183$2 then v183$2 else p83$2);
    p82$1 := (if p81$1 && !v183$1 then !v183$1 else p82$1);
    p82$2 := (if p81$2 && !v183$2 then !v183$2 else p82$2);
    $83$1 := (if p82$1 then v6$1 else $83$1);
    $83$2 := (if p82$2 then v6$2 else $83$2);
    $83$1 := (if p83$1 then 8191 else $83$1);
    $83$2 := (if p83$2 then 8191 else $83$2);
    $82$1 := (if p81$1 then $83$1 else $82$1);
    $82$2 := (if p81$2 then $83$2 else $82$2);
    havoc v184$1, v184$2;
    havoc v185$1, v185$2;
    havoc v186$1, v186$2;
    havoc v187$1, v187$2;
    v188$1 := $$imageSampler$1[0];
    v188$2 := $$imageSampler$2[0];
    v189 := BV32_SLT(v103, 0);
    goto $truebb84, $falsebb84;

  $falsebb84:
    assume {:partition} !v189;
    v190 := BV32_SGE(v103, 8192);
    goto $truebb85, $falsebb85;

  $falsebb85:
    assume {:partition} !v190;
    $85 := v103;
    goto $238;

  $238:
    $84 := $85;
    goto $239;

  $239:
    v191$1 := BV32_SLT(v7$1, 0);
    v191$2 := BV32_SLT(v7$2, 0);
    p84$1 := (if v191$1 then v191$1 else p84$1);
    p84$2 := (if v191$2 then v191$2 else p84$2);
    p85$1 := (if !v191$1 then !v191$1 else p85$1);
    p85$2 := (if !v191$2 then !v191$2 else p85$2);
    $86$1 := (if p84$1 then 0 else $86$1);
    $86$2 := (if p84$2 then 0 else $86$2);
    v192$1 := (if p85$1 then BV32_SGE(v7$1, 8192) else v192$1);
    v192$2 := (if p85$2 then BV32_SGE(v7$2, 8192) else v192$2);
    p87$1 := (if p85$1 && v192$1 then v192$1 else p87$1);
    p87$2 := (if p85$2 && v192$2 then v192$2 else p87$2);
    p86$1 := (if p85$1 && !v192$1 then !v192$1 else p86$1);
    p86$2 := (if p85$2 && !v192$2 then !v192$2 else p86$2);
    $87$1 := (if p86$1 then v7$1 else $87$1);
    $87$2 := (if p86$2 then v7$2 else $87$2);
    $87$1 := (if p87$1 then 8191 else $87$1);
    $87$2 := (if p87$2 then 8191 else $87$2);
    $86$1 := (if p85$1 then $87$1 else $86$1);
    $86$2 := (if p85$2 then $87$2 else $86$2);
    havoc v193$1, v193$2;
    havoc v194$1, v194$2;
    havoc v195$1, v195$2;
    havoc v196$1, v196$2;
    v197$1 := $$imageSampler$1[0];
    v197$2 := $$imageSampler$2[0];
    v198 := BV32_SLT(v103, 0);
    goto $truebb88, $falsebb88;

  $falsebb88:
    assume {:partition} !v198;
    v199 := BV32_SGE(v103, 8192);
    goto $truebb89, $falsebb89;

  $falsebb89:
    assume {:partition} !v199;
    $89 := v103;
    goto $249;

  $249:
    $88 := $89;
    goto $250;

  $250:
    v200$1 := BV32_SLT(v8$1, 0);
    v200$2 := BV32_SLT(v8$2, 0);
    p88$1 := (if v200$1 then v200$1 else p88$1);
    p88$2 := (if v200$2 then v200$2 else p88$2);
    p89$1 := (if !v200$1 then !v200$1 else p89$1);
    p89$2 := (if !v200$2 then !v200$2 else p89$2);
    $90$1 := (if p88$1 then 0 else $90$1);
    $90$2 := (if p88$2 then 0 else $90$2);
    v201$1 := (if p89$1 then BV32_SGE(v8$1, 8192) else v201$1);
    v201$2 := (if p89$2 then BV32_SGE(v8$2, 8192) else v201$2);
    p91$1 := (if p89$1 && v201$1 then v201$1 else p91$1);
    p91$2 := (if p89$2 && v201$2 then v201$2 else p91$2);
    p90$1 := (if p89$1 && !v201$1 then !v201$1 else p90$1);
    p90$2 := (if p89$2 && !v201$2 then !v201$2 else p90$2);
    $91$1 := (if p90$1 then v8$1 else $91$1);
    $91$2 := (if p90$2 then v8$2 else $91$2);
    $91$1 := (if p91$1 then 8191 else $91$1);
    $91$2 := (if p91$2 then 8191 else $91$2);
    $90$1 := (if p89$1 then $91$1 else $90$1);
    $90$2 := (if p89$2 then $91$2 else $90$2);
    havoc v202$1, v202$2;
    havoc v203$1, v203$2;
    havoc v204$1, v204$2;
    havoc v205$1, v205$2;
    v206$1 := $$imageSampler$1[0];
    v206$2 := $$imageSampler$2[0];
    v207 := BV32_SLT(v103, 0);
    goto $truebb92, $falsebb92;

  $falsebb92:
    assume {:partition} !v207;
    v208 := BV32_SGE(v103, 8192);
    goto $truebb93, $falsebb93;

  $falsebb93:
    assume {:partition} !v208;
    $93 := v103;
    goto $260;

  $260:
    $92 := $93;
    goto $261;

  $261:
    v209$1 := BV32_SLT(v9$1, 0);
    v209$2 := BV32_SLT(v9$2, 0);
    p92$1 := (if v209$1 then v209$1 else p92$1);
    p92$2 := (if v209$2 then v209$2 else p92$2);
    p93$1 := (if !v209$1 then !v209$1 else p93$1);
    p93$2 := (if !v209$2 then !v209$2 else p93$2);
    $94$1 := (if p92$1 then 0 else $94$1);
    $94$2 := (if p92$2 then 0 else $94$2);
    v210$1 := (if p93$1 then BV32_SGE(v9$1, 8192) else v210$1);
    v210$2 := (if p93$2 then BV32_SGE(v9$2, 8192) else v210$2);
    p95$1 := (if p93$1 && v210$1 then v210$1 else p95$1);
    p95$2 := (if p93$2 && v210$2 then v210$2 else p95$2);
    p94$1 := (if p93$1 && !v210$1 then !v210$1 else p94$1);
    p94$2 := (if p93$2 && !v210$2 then !v210$2 else p94$2);
    $95$1 := (if p94$1 then v9$1 else $95$1);
    $95$2 := (if p94$2 then v9$2 else $95$2);
    $95$1 := (if p95$1 then 8191 else $95$1);
    $95$2 := (if p95$2 then 8191 else $95$2);
    $94$1 := (if p93$1 then $95$1 else $94$1);
    $94$2 := (if p93$2 then $95$2 else $94$2);
    havoc v211$1, v211$2;
    havoc v212$1, v212$2;
    havoc v213$1, v213$2;
    havoc v214$1, v214$2;
    $sum0.0$1, $sum1.0$1, $sum2.0$1, $sum3.0$1, $sum4.0$1, $sum5.0$1, $sum6.0$1, $sum7.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v115$1, v178$1), FADD32(FMUL32(v114$1, v169$1), FADD32(FMUL32(v113$1, v160$1), FADD32(FMUL32(v112$1, v151$1), BV_EXTRACT($sum0.0$1, 128, 96))))), FADD32(FMUL32(v115$1, v177$1), FADD32(FMUL32(v114$1, v168$1), FADD32(FMUL32(v113$1, v159$1), FADD32(FMUL32(v112$1, v150$1), BV_EXTRACT($sum0.0$1, 96, 64)))))), FADD32(FMUL32(v115$1, v176$1), FADD32(FMUL32(v114$1, v167$1), FADD32(FMUL32(v113$1, v158$1), FADD32(FMUL32(v112$1, v149$1), BV_EXTRACT($sum0.0$1, 64, 32)))))), FADD32(FMUL32(v115$1, v175$1), FADD32(FMUL32(v114$1, v166$1), FADD32(FMUL32(v113$1, v157$1), FADD32(FMUL32(v112$1, v148$1), BV_EXTRACT($sum0.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v124$1, v178$1), FADD32(FMUL32(v123$1, v169$1), FADD32(FMUL32(v122$1, v160$1), FADD32(FMUL32(v121$1, v151$1), BV_EXTRACT($sum1.0$1, 128, 96))))), FADD32(FMUL32(v124$1, v177$1), FADD32(FMUL32(v123$1, v168$1), FADD32(FMUL32(v122$1, v159$1), FADD32(FMUL32(v121$1, v150$1), BV_EXTRACT($sum1.0$1, 96, 64)))))), FADD32(FMUL32(v124$1, v176$1), FADD32(FMUL32(v123$1, v167$1), FADD32(FMUL32(v122$1, v158$1), FADD32(FMUL32(v121$1, v149$1), BV_EXTRACT($sum1.0$1, 64, 32)))))), FADD32(FMUL32(v124$1, v175$1), FADD32(FMUL32(v123$1, v166$1), FADD32(FMUL32(v122$1, v157$1), FADD32(FMUL32(v121$1, v148$1), BV_EXTRACT($sum1.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v133$1, v178$1), FADD32(FMUL32(v132$1, v169$1), FADD32(FMUL32(v131$1, v160$1), FADD32(FMUL32(v130$1, v151$1), BV_EXTRACT($sum2.0$1, 128, 96))))), FADD32(FMUL32(v133$1, v177$1), FADD32(FMUL32(v132$1, v168$1), FADD32(FMUL32(v131$1, v159$1), FADD32(FMUL32(v130$1, v150$1), BV_EXTRACT($sum2.0$1, 96, 64)))))), FADD32(FMUL32(v133$1, v176$1), FADD32(FMUL32(v132$1, v167$1), FADD32(FMUL32(v131$1, v158$1), FADD32(FMUL32(v130$1, v149$1), BV_EXTRACT($sum2.0$1, 64, 32)))))), FADD32(FMUL32(v133$1, v175$1), FADD32(FMUL32(v132$1, v166$1), FADD32(FMUL32(v131$1, v157$1), FADD32(FMUL32(v130$1, v148$1), BV_EXTRACT($sum2.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v142$1, v178$1), FADD32(FMUL32(v141$1, v169$1), FADD32(FMUL32(v140$1, v160$1), FADD32(FMUL32(v139$1, v151$1), BV_EXTRACT($sum3.0$1, 128, 96))))), FADD32(FMUL32(v142$1, v177$1), FADD32(FMUL32(v141$1, v168$1), FADD32(FMUL32(v140$1, v159$1), FADD32(FMUL32(v139$1, v150$1), BV_EXTRACT($sum3.0$1, 96, 64)))))), FADD32(FMUL32(v142$1, v176$1), FADD32(FMUL32(v141$1, v167$1), FADD32(FMUL32(v140$1, v158$1), FADD32(FMUL32(v139$1, v149$1), BV_EXTRACT($sum3.0$1, 64, 32)))))), FADD32(FMUL32(v142$1, v175$1), FADD32(FMUL32(v141$1, v166$1), FADD32(FMUL32(v140$1, v157$1), FADD32(FMUL32(v139$1, v148$1), BV_EXTRACT($sum3.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v187$1, v178$1), FADD32(FMUL32(v186$1, v169$1), FADD32(FMUL32(v185$1, v160$1), FADD32(FMUL32(v184$1, v151$1), BV_EXTRACT($sum4.0$1, 128, 96))))), FADD32(FMUL32(v187$1, v177$1), FADD32(FMUL32(v186$1, v168$1), FADD32(FMUL32(v185$1, v159$1), FADD32(FMUL32(v184$1, v150$1), BV_EXTRACT($sum4.0$1, 96, 64)))))), FADD32(FMUL32(v187$1, v176$1), FADD32(FMUL32(v186$1, v167$1), FADD32(FMUL32(v185$1, v158$1), FADD32(FMUL32(v184$1, v149$1), BV_EXTRACT($sum4.0$1, 64, 32)))))), FADD32(FMUL32(v187$1, v175$1), FADD32(FMUL32(v186$1, v166$1), FADD32(FMUL32(v185$1, v157$1), FADD32(FMUL32(v184$1, v148$1), BV_EXTRACT($sum4.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v196$1, v178$1), FADD32(FMUL32(v195$1, v169$1), FADD32(FMUL32(v194$1, v160$1), FADD32(FMUL32(v193$1, v151$1), BV_EXTRACT($sum5.0$1, 128, 96))))), FADD32(FMUL32(v196$1, v177$1), FADD32(FMUL32(v195$1, v168$1), FADD32(FMUL32(v194$1, v159$1), FADD32(FMUL32(v193$1, v150$1), BV_EXTRACT($sum5.0$1, 96, 64)))))), FADD32(FMUL32(v196$1, v176$1), FADD32(FMUL32(v195$1, v167$1), FADD32(FMUL32(v194$1, v158$1), FADD32(FMUL32(v193$1, v149$1), BV_EXTRACT($sum5.0$1, 64, 32)))))), FADD32(FMUL32(v196$1, v175$1), FADD32(FMUL32(v195$1, v166$1), FADD32(FMUL32(v194$1, v157$1), FADD32(FMUL32(v193$1, v148$1), BV_EXTRACT($sum5.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v205$1, v178$1), FADD32(FMUL32(v204$1, v169$1), FADD32(FMUL32(v203$1, v160$1), FADD32(FMUL32(v202$1, v151$1), BV_EXTRACT($sum6.0$1, 128, 96))))), FADD32(FMUL32(v205$1, v177$1), FADD32(FMUL32(v204$1, v168$1), FADD32(FMUL32(v203$1, v159$1), FADD32(FMUL32(v202$1, v150$1), BV_EXTRACT($sum6.0$1, 96, 64)))))), FADD32(FMUL32(v205$1, v176$1), FADD32(FMUL32(v204$1, v167$1), FADD32(FMUL32(v203$1, v158$1), FADD32(FMUL32(v202$1, v149$1), BV_EXTRACT($sum6.0$1, 64, 32)))))), FADD32(FMUL32(v205$1, v175$1), FADD32(FMUL32(v204$1, v166$1), FADD32(FMUL32(v203$1, v157$1), FADD32(FMUL32(v202$1, v148$1), BV_EXTRACT($sum6.0$1, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v214$1, v178$1), FADD32(FMUL32(v213$1, v169$1), FADD32(FMUL32(v212$1, v160$1), FADD32(FMUL32(v211$1, v151$1), BV_EXTRACT($sum7.0$1, 128, 96))))), FADD32(FMUL32(v214$1, v177$1), FADD32(FMUL32(v213$1, v168$1), FADD32(FMUL32(v212$1, v159$1), FADD32(FMUL32(v211$1, v150$1), BV_EXTRACT($sum7.0$1, 96, 64)))))), FADD32(FMUL32(v214$1, v176$1), FADD32(FMUL32(v213$1, v167$1), FADD32(FMUL32(v212$1, v158$1), FADD32(FMUL32(v211$1, v149$1), BV_EXTRACT($sum7.0$1, 64, 32)))))), FADD32(FMUL32(v214$1, v175$1), FADD32(FMUL32(v213$1, v166$1), FADD32(FMUL32(v212$1, v157$1), FADD32(FMUL32(v211$1, v148$1), BV_EXTRACT($sum7.0$1, 32, 0)))))), BV32_ADD($i.0, 4);
    $sum0.0$2, $sum1.0$2, $sum2.0$2, $sum3.0$2, $sum4.0$2, $sum5.0$2, $sum6.0$2, $sum7.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v115$2, v178$2), FADD32(FMUL32(v114$2, v169$2), FADD32(FMUL32(v113$2, v160$2), FADD32(FMUL32(v112$2, v151$2), BV_EXTRACT($sum0.0$2, 128, 96))))), FADD32(FMUL32(v115$2, v177$2), FADD32(FMUL32(v114$2, v168$2), FADD32(FMUL32(v113$2, v159$2), FADD32(FMUL32(v112$2, v150$2), BV_EXTRACT($sum0.0$2, 96, 64)))))), FADD32(FMUL32(v115$2, v176$2), FADD32(FMUL32(v114$2, v167$2), FADD32(FMUL32(v113$2, v158$2), FADD32(FMUL32(v112$2, v149$2), BV_EXTRACT($sum0.0$2, 64, 32)))))), FADD32(FMUL32(v115$2, v175$2), FADD32(FMUL32(v114$2, v166$2), FADD32(FMUL32(v113$2, v157$2), FADD32(FMUL32(v112$2, v148$2), BV_EXTRACT($sum0.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v124$2, v178$2), FADD32(FMUL32(v123$2, v169$2), FADD32(FMUL32(v122$2, v160$2), FADD32(FMUL32(v121$2, v151$2), BV_EXTRACT($sum1.0$2, 128, 96))))), FADD32(FMUL32(v124$2, v177$2), FADD32(FMUL32(v123$2, v168$2), FADD32(FMUL32(v122$2, v159$2), FADD32(FMUL32(v121$2, v150$2), BV_EXTRACT($sum1.0$2, 96, 64)))))), FADD32(FMUL32(v124$2, v176$2), FADD32(FMUL32(v123$2, v167$2), FADD32(FMUL32(v122$2, v158$2), FADD32(FMUL32(v121$2, v149$2), BV_EXTRACT($sum1.0$2, 64, 32)))))), FADD32(FMUL32(v124$2, v175$2), FADD32(FMUL32(v123$2, v166$2), FADD32(FMUL32(v122$2, v157$2), FADD32(FMUL32(v121$2, v148$2), BV_EXTRACT($sum1.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v133$2, v178$2), FADD32(FMUL32(v132$2, v169$2), FADD32(FMUL32(v131$2, v160$2), FADD32(FMUL32(v130$2, v151$2), BV_EXTRACT($sum2.0$2, 128, 96))))), FADD32(FMUL32(v133$2, v177$2), FADD32(FMUL32(v132$2, v168$2), FADD32(FMUL32(v131$2, v159$2), FADD32(FMUL32(v130$2, v150$2), BV_EXTRACT($sum2.0$2, 96, 64)))))), FADD32(FMUL32(v133$2, v176$2), FADD32(FMUL32(v132$2, v167$2), FADD32(FMUL32(v131$2, v158$2), FADD32(FMUL32(v130$2, v149$2), BV_EXTRACT($sum2.0$2, 64, 32)))))), FADD32(FMUL32(v133$2, v175$2), FADD32(FMUL32(v132$2, v166$2), FADD32(FMUL32(v131$2, v157$2), FADD32(FMUL32(v130$2, v148$2), BV_EXTRACT($sum2.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v142$2, v178$2), FADD32(FMUL32(v141$2, v169$2), FADD32(FMUL32(v140$2, v160$2), FADD32(FMUL32(v139$2, v151$2), BV_EXTRACT($sum3.0$2, 128, 96))))), FADD32(FMUL32(v142$2, v177$2), FADD32(FMUL32(v141$2, v168$2), FADD32(FMUL32(v140$2, v159$2), FADD32(FMUL32(v139$2, v150$2), BV_EXTRACT($sum3.0$2, 96, 64)))))), FADD32(FMUL32(v142$2, v176$2), FADD32(FMUL32(v141$2, v167$2), FADD32(FMUL32(v140$2, v158$2), FADD32(FMUL32(v139$2, v149$2), BV_EXTRACT($sum3.0$2, 64, 32)))))), FADD32(FMUL32(v142$2, v175$2), FADD32(FMUL32(v141$2, v166$2), FADD32(FMUL32(v140$2, v157$2), FADD32(FMUL32(v139$2, v148$2), BV_EXTRACT($sum3.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v187$2, v178$2), FADD32(FMUL32(v186$2, v169$2), FADD32(FMUL32(v185$2, v160$2), FADD32(FMUL32(v184$2, v151$2), BV_EXTRACT($sum4.0$2, 128, 96))))), FADD32(FMUL32(v187$2, v177$2), FADD32(FMUL32(v186$2, v168$2), FADD32(FMUL32(v185$2, v159$2), FADD32(FMUL32(v184$2, v150$2), BV_EXTRACT($sum4.0$2, 96, 64)))))), FADD32(FMUL32(v187$2, v176$2), FADD32(FMUL32(v186$2, v167$2), FADD32(FMUL32(v185$2, v158$2), FADD32(FMUL32(v184$2, v149$2), BV_EXTRACT($sum4.0$2, 64, 32)))))), FADD32(FMUL32(v187$2, v175$2), FADD32(FMUL32(v186$2, v166$2), FADD32(FMUL32(v185$2, v157$2), FADD32(FMUL32(v184$2, v148$2), BV_EXTRACT($sum4.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v196$2, v178$2), FADD32(FMUL32(v195$2, v169$2), FADD32(FMUL32(v194$2, v160$2), FADD32(FMUL32(v193$2, v151$2), BV_EXTRACT($sum5.0$2, 128, 96))))), FADD32(FMUL32(v196$2, v177$2), FADD32(FMUL32(v195$2, v168$2), FADD32(FMUL32(v194$2, v159$2), FADD32(FMUL32(v193$2, v150$2), BV_EXTRACT($sum5.0$2, 96, 64)))))), FADD32(FMUL32(v196$2, v176$2), FADD32(FMUL32(v195$2, v167$2), FADD32(FMUL32(v194$2, v158$2), FADD32(FMUL32(v193$2, v149$2), BV_EXTRACT($sum5.0$2, 64, 32)))))), FADD32(FMUL32(v196$2, v175$2), FADD32(FMUL32(v195$2, v166$2), FADD32(FMUL32(v194$2, v157$2), FADD32(FMUL32(v193$2, v148$2), BV_EXTRACT($sum5.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v205$2, v178$2), FADD32(FMUL32(v204$2, v169$2), FADD32(FMUL32(v203$2, v160$2), FADD32(FMUL32(v202$2, v151$2), BV_EXTRACT($sum6.0$2, 128, 96))))), FADD32(FMUL32(v205$2, v177$2), FADD32(FMUL32(v204$2, v168$2), FADD32(FMUL32(v203$2, v159$2), FADD32(FMUL32(v202$2, v150$2), BV_EXTRACT($sum6.0$2, 96, 64)))))), FADD32(FMUL32(v205$2, v176$2), FADD32(FMUL32(v204$2, v167$2), FADD32(FMUL32(v203$2, v158$2), FADD32(FMUL32(v202$2, v149$2), BV_EXTRACT($sum6.0$2, 64, 32)))))), FADD32(FMUL32(v205$2, v175$2), FADD32(FMUL32(v204$2, v166$2), FADD32(FMUL32(v203$2, v157$2), FADD32(FMUL32(v202$2, v148$2), BV_EXTRACT($sum6.0$2, 32, 0)))))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v214$2, v178$2), FADD32(FMUL32(v213$2, v169$2), FADD32(FMUL32(v212$2, v160$2), FADD32(FMUL32(v211$2, v151$2), BV_EXTRACT($sum7.0$2, 128, 96))))), FADD32(FMUL32(v214$2, v177$2), FADD32(FMUL32(v213$2, v168$2), FADD32(FMUL32(v212$2, v159$2), FADD32(FMUL32(v211$2, v150$2), BV_EXTRACT($sum7.0$2, 96, 64)))))), FADD32(FMUL32(v214$2, v176$2), FADD32(FMUL32(v213$2, v167$2), FADD32(FMUL32(v212$2, v158$2), FADD32(FMUL32(v211$2, v149$2), BV_EXTRACT($sum7.0$2, 64, 32)))))), FADD32(FMUL32(v214$2, v175$2), FADD32(FMUL32(v213$2, v166$2), FADD32(FMUL32(v212$2, v157$2), FADD32(FMUL32(v211$2, v148$2), BV_EXTRACT($sum7.0$2, 32, 0))))));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $133;

  $truebb93:
    assume {:partition} v208;
    $93 := 8191;
    goto $260;

  $truebb92:
    assume {:partition} v207;
    $92 := 0;
    goto $261;

  $truebb89:
    assume {:partition} v199;
    $89 := 8191;
    goto $249;

  $truebb88:
    assume {:partition} v198;
    $88 := 0;
    goto $250;

  $truebb85:
    assume {:partition} v190;
    $85 := 8191;
    goto $238;

  $truebb84:
    assume {:partition} v189;
    $84 := 0;
    goto $239;

  $truebb81:
    assume {:partition} v181;
    $81 := 8191;
    goto $227;

  $truebb80:
    assume {:partition} v180;
    $80 := 0;
    goto $228;

  $truebb79:
    assume {:partition} v174;
    $79 := 8191;
    goto $222;

  $truebb78:
    assume {:partition} v173;
    $78 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit36;

  $truebb75:
    assume {:partition} v165;
    $75 := 8191;
    goto $211;

  $truebb74:
    assume {:partition} v164;
    $74 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit39;

  $truebb71:
    assume {:partition} v156;
    $71 := 8191;
    goto $200;

  $truebb70:
    assume {:partition} v155;
    $70 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit42;

  $truebb67:
    assume {:partition} v147;
    $67 := 8191;
    goto $189;

  $truebb66:
    assume {:partition} v146;
    $66 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit45;

  $truebb61:
    assume {:partition} v136;
    $61 := 8191;
    goto $172;

  $truebb60:
    assume {:partition} v135;
    $60 := 0;
    goto $173;

  $truebb57:
    assume {:partition} v127;
    $57 := 8191;
    goto $161;

  $truebb56:
    assume {:partition} v126;
    $56 := 0;
    goto $162;

  $truebb53:
    assume {:partition} v118;
    $53 := 8191;
    goto $150;

  $truebb52:
    assume {:partition} v117;
    $52 := 0;
    goto $151;

  $truebb49:
    assume {:partition} v109;
    $49 := 8191;
    goto $139;

  $truebb48:
    assume {:partition} v108;
    $48 := 0;
    goto $140;

  $truebb46:
    assume {:partition} false;
    $47 := 8191;
    goto $132;

  $truebb45:
    assume {:partition} false;
    $46 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit68;

  $truebb42:
    assume {:partition} false;
    $43 := 8191;
    goto $121;

  $truebb41:
    assume {:partition} false;
    $42 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit71;

  $truebb38:
    assume {:partition} false;
    $39 := 8191;
    goto $110;

  $truebb37:
    assume {:partition} false;
    $38 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit74;

  $truebb34:
    assume {:partition} false;
    $35 := 8191;
    goto $99;

  $truebb33:
    assume {:partition} false;
    $34 := 0;
    goto $_Z11read_imagefPU3AS1Dv4_j11ocl_samplerDv2_i.exit77;

  $truebb28:
    assume {:partition} false;
    $29 := 8191;
    goto $82;

  $truebb27:
    assume {:partition} false;
    $28 := 0;
    goto $83;

  $truebb24:
    assume {:partition} false;
    $25 := 8191;
    goto $71;

  $truebb23:
    assume {:partition} false;
    $24 := 0;
    goto $72;

  $truebb20:
    assume {:partition} false;
    $21 := 8191;
    goto $60;

  $truebb19:
    assume {:partition} false;
    $20 := 0;
    goto $61;

  $truebb16:
    assume {:partition} false;
    $17 := 8191;
    goto $49;

  $truebb15:
    assume {:partition} false;
    $16 := 0;
    goto $50;

  $truebb12:
    assume {:partition} false;
    $13 := 8191;
    goto $38;

  $truebb11:
    assume {:partition} false;
    $12 := 0;
    goto $39;

  $truebb8:
    assume {:partition} false;
    $9 := 8191;
    goto $27;

  $truebb7:
    assume {:partition} false;
    $8 := 0;
    goto $28;

  $truebb4:
    assume {:partition} false;
    $5 := 8191;
    goto $16;

  $truebb3:
    assume {:partition} false;
    $4 := 0;
    goto $17;

  $truebb0:
    assume {:partition} false;
    $1 := 8191;
    goto $5;

  $truebb:
    assume {:partition} false;
    $0 := 0;
    goto $6;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if num_groups_x == 8 then 1 else 0) != 0;

axiom (if num_groups_y == 4 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$matrixA: int;

procedure {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_READ_$$matrixA(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _READ_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_READ_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixA);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixA: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixA, _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _LOG_WRITE_$$matrixA(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then true else _WRITE_HAS_OCCURRED_$$matrixA);
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



procedure _CHECK_WRITE_$$matrixA(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixA != _value);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixA;



implementation {:inline 1} _LOG_ATOMIC_$$matrixA(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixA := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixA);
    return;
}



procedure _CHECK_ATOMIC_$$matrixA(_P: bool, _offset: int);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixA"} {:array "$$matrixA"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixA;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixA(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixA := (if _P && _WRITE_HAS_OCCURRED_$$matrixA && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixA);
    return;
}



const _WATCHED_VALUE_$$matrixB: int;

procedure {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_READ_$$matrixB(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _READ_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_READ_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixB);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixB: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixB, _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _LOG_WRITE_$$matrixB(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then true else _WRITE_HAS_OCCURRED_$$matrixB);
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



procedure _CHECK_WRITE_$$matrixB(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixB != _value);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixB;



implementation {:inline 1} _LOG_ATOMIC_$$matrixB(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixB := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixB);
    return;
}



procedure _CHECK_ATOMIC_$$matrixB(_P: bool, _offset: int);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixB"} {:array "$$matrixB"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixB;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixB(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixB := (if _P && _WRITE_HAS_OCCURRED_$$matrixB && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixB);
    return;
}



const _WATCHED_VALUE_$$matrixC: int;

procedure {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_READ_$$matrixC(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _READ_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_READ_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$matrixC);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$matrixC: bool;

procedure {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$matrixC, _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _LOG_WRITE_$$matrixC(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then true else _WRITE_HAS_OCCURRED_$$matrixC);
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



procedure _CHECK_WRITE_$$matrixC(_P: bool, _offset: int, _value: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$matrixC != _value);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$matrixC;



implementation {:inline 1} _LOG_ATOMIC_$$matrixC(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$matrixC := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$matrixC);
    return;
}



procedure _CHECK_ATOMIC_$$matrixC(_P: bool, _offset: int);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);
  requires {:source_name "matrixC"} {:array "$$matrixC"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$matrixC;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$matrixC(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$matrixC := (if _P && _WRITE_HAS_OCCURRED_$$matrixC && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$matrixC);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}
