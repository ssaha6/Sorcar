type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "work"} {:global} $$work: [int]int;

axiom {:array_info "$$work"} {:global} {:elem_width 32} {:source_name "work"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$work: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$work: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$work: bool;

var {:source_name "reversed.i"} $$reversed.i$1: [int]int;

var {:source_name "reversed.i"} $$reversed.i$2: [int]int;

axiom {:array_info "$$reversed.i"} {:elem_width 32} {:source_name "reversed.i"} {:source_elem_width 32} {:source_dimensions "8"} true;

var {:source_name "data"} $$data$1: [int]int;

var {:source_name "data"} $$data$2: [int]int;

axiom {:array_info "$$data"} {:elem_width 32} {:source_name "data"} {:source_elem_width 64} {:source_dimensions "8"} true;

var {:source_name "reversed8"} $$reversed8$1: [int]int;

var {:source_name "reversed8"} $$reversed8$2: [int]int;

axiom {:array_info "$$reversed8"} {:elem_width 32} {:source_name "reversed8"} {:source_elem_width 32} {:source_dimensions "8"} true;

var {:source_name "reversed824"} $$reversed824$1: [int]int;

var {:source_name "reversed824"} $$reversed824$2: [int]int;

axiom {:array_info "$$reversed824"} {:elem_width 32} {:source_name "reversed824"} {:source_elem_width 32} {:source_dimensions "8"} true;

axiom {:array_info "$$ifft1D_512.reversed8"} {:elem_width 32} {:source_name "ifft1D_512.reversed8"} {:source_elem_width 32} {:source_dimensions "8"} true;

var {:source_name "smem"} {:group_shared} $$ifft1D_512.smem: [bv1][int]int;

axiom {:array_info "$$ifft1D_512.smem"} {:group_shared} {:elem_width 32} {:source_name "smem"} {:source_elem_width 32} {:source_dimensions "576"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ifft1D_512.smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem: bool;

axiom {:array_info "$$storex8.reversed"} {:elem_width 32} {:source_name "storex8.reversed"} {:source_elem_width 32} {:source_dimensions "8"} true;

axiom {:array_info "$$storey8.reversed"} {:elem_width 32} {:source_name "storey8.reversed"} {:source_elem_width 32} {:source_dimensions "8"} true;

axiom {:array_info "$$ifft1D_512.reversed81"} {:elem_width 32} {:source_name "ifft1D_512.reversed81"} {:source_elem_width 32} {:source_dimensions "8"} true;

axiom {:array_info "$$globalStores8.reversed"} {:elem_width 32} {:source_name "globalStores8.reversed"} {:source_elem_width 32} {:source_dimensions "8"} true;

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

function BV32_ASHR(int, int) : int;

function FADD32(int, int) : int;

function FCOS32(int) : int;

function FDIV32(int, int) : int;

function FDIV64(int, int) : int;

function FMUL32(int, int) : int;

function FMUL64(int, int) : int;

function FP64_CONV32(int) : int;

function FSIN32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP64(int) : int;

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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "ifft1D_512"} {:kernel} $ifft1D_512();
  requires $$ifft1D_512.reversed8$0$1 == 0;
  requires $$ifft1D_512.reversed8$0$2 == 0;
  requires $$ifft1D_512.reversed8$1$1 == 4;
  requires $$ifft1D_512.reversed8$1$2 == 4;
  requires $$ifft1D_512.reversed8$2$1 == 2;
  requires $$ifft1D_512.reversed8$2$2 == 2;
  requires $$ifft1D_512.reversed8$3$1 == 6;
  requires $$ifft1D_512.reversed8$3$2 == 6;
  requires $$ifft1D_512.reversed8$4$1 == 1;
  requires $$ifft1D_512.reversed8$4$2 == 1;
  requires $$ifft1D_512.reversed8$5$1 == 5;
  requires $$ifft1D_512.reversed8$5$2 == 5;
  requires $$ifft1D_512.reversed8$6$1 == 3;
  requires $$ifft1D_512.reversed8$6$2 == 3;
  requires $$ifft1D_512.reversed8$7$1 == 7;
  requires $$ifft1D_512.reversed8$7$2 == 7;
  requires $$storex8.reversed$0$1 == 0;
  requires $$storex8.reversed$0$2 == 0;
  requires $$storex8.reversed$1$1 == 4;
  requires $$storex8.reversed$1$2 == 4;
  requires $$storex8.reversed$2$1 == 2;
  requires $$storex8.reversed$2$2 == 2;
  requires $$storex8.reversed$3$1 == 6;
  requires $$storex8.reversed$3$2 == 6;
  requires $$storex8.reversed$4$1 == 1;
  requires $$storex8.reversed$4$2 == 1;
  requires $$storex8.reversed$5$1 == 5;
  requires $$storex8.reversed$5$2 == 5;
  requires $$storex8.reversed$6$1 == 3;
  requires $$storex8.reversed$6$2 == 3;
  requires $$storex8.reversed$7$1 == 7;
  requires $$storex8.reversed$7$2 == 7;
  requires $$storey8.reversed$0$1 == 0;
  requires $$storey8.reversed$0$2 == 0;
  requires $$storey8.reversed$1$1 == 4;
  requires $$storey8.reversed$1$2 == 4;
  requires $$storey8.reversed$2$1 == 2;
  requires $$storey8.reversed$2$2 == 2;
  requires $$storey8.reversed$3$1 == 6;
  requires $$storey8.reversed$3$2 == 6;
  requires $$storey8.reversed$4$1 == 1;
  requires $$storey8.reversed$4$2 == 1;
  requires $$storey8.reversed$5$1 == 5;
  requires $$storey8.reversed$5$2 == 5;
  requires $$storey8.reversed$6$1 == 3;
  requires $$storey8.reversed$6$2 == 3;
  requires $$storey8.reversed$7$1 == 7;
  requires $$storey8.reversed$7$2 == 7;
  requires $$ifft1D_512.reversed81$0$1 == 0;
  requires $$ifft1D_512.reversed81$0$2 == 0;
  requires $$ifft1D_512.reversed81$1$1 == 4;
  requires $$ifft1D_512.reversed81$1$2 == 4;
  requires $$ifft1D_512.reversed81$2$1 == 2;
  requires $$ifft1D_512.reversed81$2$2 == 2;
  requires $$ifft1D_512.reversed81$3$1 == 6;
  requires $$ifft1D_512.reversed81$3$2 == 6;
  requires $$ifft1D_512.reversed81$4$1 == 1;
  requires $$ifft1D_512.reversed81$4$2 == 1;
  requires $$ifft1D_512.reversed81$5$1 == 5;
  requires $$ifft1D_512.reversed81$5$2 == 5;
  requires $$ifft1D_512.reversed81$6$1 == 3;
  requires $$ifft1D_512.reversed81$6$2 == 3;
  requires $$ifft1D_512.reversed81$7$1 == 7;
  requires $$ifft1D_512.reversed81$7$2 == 7;
  requires $$globalStores8.reversed$0$1 == 0;
  requires $$globalStores8.reversed$0$2 == 0;
  requires $$globalStores8.reversed$1$1 == 4;
  requires $$globalStores8.reversed$1$2 == 4;
  requires $$globalStores8.reversed$2$1 == 2;
  requires $$globalStores8.reversed$2$2 == 2;
  requires $$globalStores8.reversed$3$1 == 6;
  requires $$globalStores8.reversed$3$2 == 6;
  requires $$globalStores8.reversed$4$1 == 1;
  requires $$globalStores8.reversed$4$2 == 1;
  requires $$globalStores8.reversed$5$1 == 5;
  requires $$globalStores8.reversed$5$2 == 5;
  requires $$globalStores8.reversed$6$1 == 3;
  requires $$globalStores8.reversed$6$2 == 3;
  requires $$globalStores8.reversed$7$1 == 7;
  requires $$globalStores8.reversed$7$2 == 7;
  requires !_READ_HAS_OCCURRED_$$work && !_WRITE_HAS_OCCURRED_$$work && !_ATOMIC_HAS_OCCURRED_$$work;
  requires !_READ_HAS_OCCURRED_$$ifft1D_512.smem && !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem && !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
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
  modifies $$ifft1D_512.smem, $$work, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _TRACKING, _WRITE_HAS_OCCURRED_$$work, _WRITE_READ_BENIGN_FLAG_$$work, _WRITE_READ_BENIGN_FLAG_$$work, _READ_HAS_OCCURRED_$$ifft1D_512.smem, _WRITE_HAS_OCCURRED_$$ifft1D_512.smem, _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem, _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem, _READ_HAS_OCCURRED_$$work;



implementation {:source_name "ifft1D_512"} {:kernel} $ifft1D_512()
{
  var $i.i.0: int;
  var $j.0: int;
  var $i.i51.0: int;
  var $i.i53.0: int;
  var $i.i48.0: int;
  var $i.i45.0: int;
  var $j25.0: int;
  var $i.i44.0: int;
  var $i.i42.0: int;
  var $i.i41.0: int;
  var $i.i39.0: int;
  var $i.0: int;
  var $i.i38.0: int;
  var v3$1: int;
  var v3$2: int;
  var v372: bool;
  var v4: bool;
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
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
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
  var v54$1: int;
  var v54$2: int;
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
  var v105$1: int;
  var v105$2: int;
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
  var v97: bool;
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
  var v106$1: int;
  var v106$2: int;
  var v111$1: int;
  var v111$2: int;
  var v107$1: int;
  var v107$2: int;
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v112$1: int;
  var v112$2: int;
  var v113: bool;
  var v114$1: int;
  var v114$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: int;
  var v116$2: int;
  var v117$1: int;
  var v117$2: int;
  var v118: bool;
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
  var v364$1: int;
  var v364$2: int;
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
  var v131: bool;
  var v132$1: int;
  var v132$2: int;
  var v133$1: int;
  var v133$2: int;
  var v134$1: int;
  var v134$2: int;
  var v135$1: int;
  var v135$2: int;
  var v136: bool;
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
  var v184$1: int;
  var v184$2: int;
  var v185$1: int;
  var v185$2: int;
  var v186$1: int;
  var v186$2: int;
  var v187$1: int;
  var v187$2: int;
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
  var v230: bool;
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
  var v244$1: int;
  var v244$2: int;
  var v240$1: int;
  var v240$2: int;
  var v241$1: int;
  var v241$2: int;
  var v242$1: int;
  var v242$2: int;
  var v243$1: int;
  var v243$2: int;
  var v245$1: int;
  var v245$2: int;
  var v246: bool;
  var v247$1: int;
  var v247$2: int;
  var v248$1: int;
  var v248$2: int;
  var v249$1: int;
  var v249$2: int;
  var v250$1: int;
  var v250$2: int;
  var v251: bool;
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
  var v264: bool;
  var v265$1: int;
  var v265$2: int;
  var v266$1: int;
  var v266$2: int;
  var v267$1: int;
  var v267$2: int;
  var v268$1: int;
  var v268$2: int;
  var v269: bool;
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
  var v284$1: int;
  var v284$2: int;
  var v285$1: int;
  var v285$2: int;
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
  var v318$1: int;
  var v318$2: int;
  var v319$1: int;
  var v319$2: int;
  var v320$1: int;
  var v320$2: int;
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
  var v333$1: int;
  var v333$2: int;
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
  var v342$1: int;
  var v342$2: int;
  var v343$1: int;
  var v343$2: int;
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
  var v355: bool;
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
  var v373$1: int;
  var v373$2: int;
  var v374$1: int;
  var v374$2: int;
  var v375$1: int;
  var v375$2: int;


  $0:
    v0$1 := local_id_x$1;
    v0$2 := local_id_x$2;
    v1$1 := BV32_ADD(BV32_MUL(group_id_x$1, 512), v0$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_x$2, 512), v0$2);
    v2$1 := BV32_ASHR(v0$1, 3);
    v2$2 := BV32_ASHR(v0$2, 3);
    v3$1 := BV32_AND(v0$1, 7);
    v3$2 := BV32_AND(v0$2, 7);
    $i.i.0 := 0;
    assume {:captureState "loop_entry_state_12_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_12"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b52 ==> _READ_HAS_OCCURRED_$$work ==> _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 64), 2) == BV32_ADD(BV32_MUL(BV32_MUL(0, 64), 2), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2)) mod BV32_MUL(BV32_MUL(1, 64), 2) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 64), 2) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(0, 64), 2), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2)), 1) mod BV32_MUL(BV32_MUL(1, 64), 2);
    assert {:tag "accessUpperBoundBlock"} _b51 ==> _READ_HAS_OCCURRED_$$work ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1), 512), local_id_x$1), 2));
    assert {:tag "accessLowerBoundBlock"} _b50 ==> _READ_HAS_OCCURRED_$$work ==> BV32_SLE(BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2), _WATCHED_OFFSET);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($i.i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($i.i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($i.i.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($i.i.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $i.i.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 1} true;
    v4 := BV32_SLT($i.i.0, 8);
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v4;
    v7$1 := $$data$1[0];
    v7$2 := $$data$2[0];
    v8$1 := $$data$1[1];
    v8$2 := $$data$2[1];
    v9$1 := $$data$1[8];
    v9$2 := $$data$2[8];
    v10$1 := $$data$1[9];
    v10$2 := $$data$2[9];
    $$data$1[0] := FADD32(v7$1, v9$1);
    $$data$2[0] := FADD32(v7$2, v9$2);
    $$data$1[1] := FADD32(v8$1, v10$1);
    $$data$2[1] := FADD32(v8$2, v10$2);
    v11$1 := $$data$1[8];
    v11$2 := $$data$2[8];
    v12$1 := $$data$1[9];
    v12$2 := $$data$2[9];
    $$data$1[8] := FSUB32(v7$1, v11$1);
    $$data$2[8] := FSUB32(v7$2, v11$2);
    $$data$1[9] := FSUB32(v8$1, v12$1);
    $$data$2[9] := FSUB32(v8$2, v12$2);
    v13$1 := $$data$1[2];
    v13$2 := $$data$2[2];
    v14$1 := $$data$1[3];
    v14$2 := $$data$2[3];
    v15$1 := $$data$1[10];
    v15$2 := $$data$2[10];
    v16$1 := $$data$1[11];
    v16$2 := $$data$2[11];
    $$data$1[2] := FADD32(v13$1, v15$1);
    $$data$2[2] := FADD32(v13$2, v15$2);
    $$data$1[3] := FADD32(v14$1, v16$1);
    $$data$2[3] := FADD32(v14$2, v16$2);
    v17$1 := $$data$1[10];
    v17$2 := $$data$2[10];
    v18$1 := $$data$1[11];
    v18$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v13$1, v17$1);
    $$data$2[10] := FSUB32(v13$2, v17$2);
    $$data$1[11] := FSUB32(v14$1, v18$1);
    $$data$2[11] := FSUB32(v14$2, v18$2);
    v19$1 := $$data$1[4];
    v19$2 := $$data$2[4];
    v20$1 := $$data$1[5];
    v20$2 := $$data$2[5];
    v21$1 := $$data$1[12];
    v21$2 := $$data$2[12];
    v22$1 := $$data$1[13];
    v22$2 := $$data$2[13];
    $$data$1[4] := FADD32(v19$1, v21$1);
    $$data$2[4] := FADD32(v19$2, v21$2);
    $$data$1[5] := FADD32(v20$1, v22$1);
    $$data$2[5] := FADD32(v20$2, v22$2);
    v23$1 := $$data$1[12];
    v23$2 := $$data$2[12];
    v24$1 := $$data$1[13];
    v24$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v19$1, v23$1);
    $$data$2[12] := FSUB32(v19$2, v23$2);
    $$data$1[13] := FSUB32(v20$1, v24$1);
    $$data$2[13] := FSUB32(v20$2, v24$2);
    v25$1 := $$data$1[6];
    v25$2 := $$data$2[6];
    v26$1 := $$data$1[7];
    v26$2 := $$data$2[7];
    v27$1 := $$data$1[14];
    v27$2 := $$data$2[14];
    v28$1 := $$data$1[15];
    v28$2 := $$data$2[15];
    $$data$1[6] := FADD32(v25$1, v27$1);
    $$data$2[6] := FADD32(v25$2, v27$2);
    $$data$1[7] := FADD32(v26$1, v28$1);
    $$data$2[7] := FADD32(v26$2, v28$2);
    v29$1 := $$data$1[14];
    v29$2 := $$data$2[14];
    v30$1 := $$data$1[15];
    v30$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v25$1, v29$1);
    $$data$2[14] := FSUB32(v25$2, v29$2);
    $$data$1[15] := FSUB32(v26$1, v30$1);
    $$data$2[15] := FSUB32(v26$2, v30$2);
    v31$1 := $$data$1[10];
    v31$2 := $$data$2[10];
    v32$1 := $$data$1[11];
    v32$2 := $$data$2[11];
    $$data$1[10] := FMUL32(1060439283, FADD32(FMUL32(v31$1, 1065353216), FSUB32(-2147483648, FMUL32(v32$1, 1065353216))));
    $$data$2[10] := FMUL32(1060439283, FADD32(FMUL32(v31$2, 1065353216), FSUB32(-2147483648, FMUL32(v32$2, 1065353216))));
    $$data$1[11] := FMUL32(1060439283, FADD32(FMUL32(v31$1, 1065353216), FMUL32(v32$1, 1065353216)));
    $$data$2[11] := FMUL32(1060439283, FADD32(FMUL32(v31$2, 1065353216), FMUL32(v32$2, 1065353216)));
    v33$1 := $$data$1[12];
    v33$2 := $$data$2[12];
    v34$1 := $$data$1[13];
    v34$2 := $$data$2[13];
    $$data$1[12] := FADD32(FMUL32(v33$1, 0), FSUB32(-2147483648, FMUL32(v34$1, 1065353216)));
    $$data$2[12] := FADD32(FMUL32(v33$2, 0), FSUB32(-2147483648, FMUL32(v34$2, 1065353216)));
    $$data$1[13] := FADD32(FMUL32(v33$1, 1065353216), FMUL32(v34$1, 0));
    $$data$2[13] := FADD32(FMUL32(v33$2, 1065353216), FMUL32(v34$2, 0));
    v35$1 := $$data$1[14];
    v35$2 := $$data$2[14];
    v36$1 := $$data$1[15];
    v36$2 := $$data$2[15];
    $$data$1[14] := FMUL32(1060439283, FADD32(FMUL32(v35$1, -1082130432), FSUB32(-2147483648, FMUL32(v36$1, 1065353216))));
    $$data$2[14] := FMUL32(1060439283, FADD32(FMUL32(v35$2, -1082130432), FSUB32(-2147483648, FMUL32(v36$2, 1065353216))));
    $$data$1[15] := FMUL32(1060439283, FADD32(FMUL32(v35$1, 1065353216), FMUL32(v36$1, -1082130432)));
    $$data$2[15] := FMUL32(1060439283, FADD32(FMUL32(v35$2, 1065353216), FMUL32(v36$2, -1082130432)));
    v37$1 := $$data$1[0];
    v37$2 := $$data$2[0];
    v38$1 := $$data$1[1];
    v38$2 := $$data$2[1];
    v39$1 := $$data$1[4];
    v39$2 := $$data$2[4];
    v40$1 := $$data$1[5];
    v40$2 := $$data$2[5];
    $$data$1[0] := FADD32(v37$1, v39$1);
    $$data$2[0] := FADD32(v37$2, v39$2);
    $$data$1[1] := FADD32(v38$1, v40$1);
    $$data$2[1] := FADD32(v38$2, v40$2);
    v41$1 := $$data$1[4];
    v41$2 := $$data$2[4];
    v42$1 := $$data$1[5];
    v42$2 := $$data$2[5];
    $$data$1[4] := FSUB32(v37$1, v41$1);
    $$data$2[4] := FSUB32(v37$2, v41$2);
    $$data$1[5] := FSUB32(v38$1, v42$1);
    $$data$2[5] := FSUB32(v38$2, v42$2);
    v43$1 := $$data$1[2];
    v43$2 := $$data$2[2];
    v44$1 := $$data$1[3];
    v44$2 := $$data$2[3];
    v45$1 := $$data$1[6];
    v45$2 := $$data$2[6];
    v46$1 := $$data$1[7];
    v46$2 := $$data$2[7];
    $$data$1[2] := FADD32(v43$1, v45$1);
    $$data$2[2] := FADD32(v43$2, v45$2);
    $$data$1[3] := FADD32(v44$1, v46$1);
    $$data$2[3] := FADD32(v44$2, v46$2);
    v47$1 := $$data$1[6];
    v47$2 := $$data$2[6];
    v48$1 := $$data$1[7];
    v48$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v43$1, v47$1);
    $$data$2[6] := FSUB32(v43$2, v47$2);
    $$data$1[7] := FSUB32(v44$1, v48$1);
    $$data$2[7] := FSUB32(v44$2, v48$2);
    v49$1 := $$data$1[6];
    v49$2 := $$data$2[6];
    v50$1 := $$data$1[7];
    v50$2 := $$data$2[7];
    $$data$1[6] := FADD32(FMUL32(v49$1, 0), FSUB32(-2147483648, FMUL32(v50$1, 1065353216)));
    $$data$2[6] := FADD32(FMUL32(v49$2, 0), FSUB32(-2147483648, FMUL32(v50$2, 1065353216)));
    $$data$1[7] := FADD32(FMUL32(v49$1, 1065353216), FMUL32(v50$1, 0));
    $$data$2[7] := FADD32(FMUL32(v49$2, 1065353216), FMUL32(v50$2, 0));
    v51$1 := $$data$1[0];
    v51$2 := $$data$2[0];
    v52$1 := $$data$1[1];
    v52$2 := $$data$2[1];
    v53$1 := $$data$1[2];
    v53$2 := $$data$2[2];
    v54$1 := $$data$1[3];
    v54$2 := $$data$2[3];
    $$data$1[0] := FADD32(v51$1, v53$1);
    $$data$2[0] := FADD32(v51$2, v53$2);
    $$data$1[1] := FADD32(v52$1, v54$1);
    $$data$2[1] := FADD32(v52$2, v54$2);
    v55$1 := $$data$1[2];
    v55$2 := $$data$2[2];
    v56$1 := $$data$1[3];
    v56$2 := $$data$2[3];
    $$data$1[2] := FSUB32(v51$1, v55$1);
    $$data$2[2] := FSUB32(v51$2, v55$2);
    $$data$1[3] := FSUB32(v52$1, v56$1);
    $$data$2[3] := FSUB32(v52$2, v56$2);
    v57$1 := $$data$1[4];
    v57$2 := $$data$2[4];
    v58$1 := $$data$1[5];
    v58$2 := $$data$2[5];
    v59$1 := $$data$1[6];
    v59$2 := $$data$2[6];
    v60$1 := $$data$1[7];
    v60$2 := $$data$2[7];
    $$data$1[4] := FADD32(v57$1, v59$1);
    $$data$2[4] := FADD32(v57$2, v59$2);
    $$data$1[5] := FADD32(v58$1, v60$1);
    $$data$2[5] := FADD32(v58$2, v60$2);
    v61$1 := $$data$1[6];
    v61$2 := $$data$2[6];
    v62$1 := $$data$1[7];
    v62$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v57$1, v61$1);
    $$data$2[6] := FSUB32(v57$2, v61$2);
    $$data$1[7] := FSUB32(v58$1, v62$1);
    $$data$2[7] := FSUB32(v58$2, v62$2);
    v63$1 := $$data$1[8];
    v63$2 := $$data$2[8];
    v64$1 := $$data$1[9];
    v64$2 := $$data$2[9];
    v65$1 := $$data$1[12];
    v65$2 := $$data$2[12];
    v66$1 := $$data$1[13];
    v66$2 := $$data$2[13];
    $$data$1[8] := FADD32(v63$1, v65$1);
    $$data$2[8] := FADD32(v63$2, v65$2);
    $$data$1[9] := FADD32(v64$1, v66$1);
    $$data$2[9] := FADD32(v64$2, v66$2);
    v67$1 := $$data$1[12];
    v67$2 := $$data$2[12];
    v68$1 := $$data$1[13];
    v68$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v63$1, v67$1);
    $$data$2[12] := FSUB32(v63$2, v67$2);
    $$data$1[13] := FSUB32(v64$1, v68$1);
    $$data$2[13] := FSUB32(v64$2, v68$2);
    v69$1 := $$data$1[10];
    v69$2 := $$data$2[10];
    v70$1 := $$data$1[11];
    v70$2 := $$data$2[11];
    v71$1 := $$data$1[14];
    v71$2 := $$data$2[14];
    v72$1 := $$data$1[15];
    v72$2 := $$data$2[15];
    $$data$1[10] := FADD32(v69$1, v71$1);
    $$data$2[10] := FADD32(v69$2, v71$2);
    $$data$1[11] := FADD32(v70$1, v72$1);
    $$data$2[11] := FADD32(v70$2, v72$2);
    v73$1 := $$data$1[14];
    v73$2 := $$data$2[14];
    v74$1 := $$data$1[15];
    v74$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v69$1, v73$1);
    $$data$2[14] := FSUB32(v69$2, v73$2);
    $$data$1[15] := FSUB32(v70$1, v74$1);
    $$data$2[15] := FSUB32(v70$2, v74$2);
    v75$1 := $$data$1[14];
    v75$2 := $$data$2[14];
    v76$1 := $$data$1[15];
    v76$2 := $$data$2[15];
    $$data$1[14] := FADD32(FMUL32(v75$1, 0), FSUB32(-2147483648, FMUL32(v76$1, 1065353216)));
    $$data$2[14] := FADD32(FMUL32(v75$2, 0), FSUB32(-2147483648, FMUL32(v76$2, 1065353216)));
    $$data$1[15] := FADD32(FMUL32(v75$1, 1065353216), FMUL32(v76$1, 0));
    $$data$2[15] := FADD32(FMUL32(v75$2, 1065353216), FMUL32(v76$2, 0));
    v77$1 := $$data$1[8];
    v77$2 := $$data$2[8];
    v78$1 := $$data$1[9];
    v78$2 := $$data$2[9];
    v79$1 := $$data$1[10];
    v79$2 := $$data$2[10];
    v80$1 := $$data$1[11];
    v80$2 := $$data$2[11];
    $$data$1[8] := FADD32(v77$1, v79$1);
    $$data$2[8] := FADD32(v77$2, v79$2);
    $$data$1[9] := FADD32(v78$1, v80$1);
    $$data$2[9] := FADD32(v78$2, v80$2);
    v81$1 := $$data$1[10];
    v81$2 := $$data$2[10];
    v82$1 := $$data$1[11];
    v82$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v77$1, v81$1);
    $$data$2[10] := FSUB32(v77$2, v81$2);
    $$data$1[11] := FSUB32(v78$1, v82$1);
    $$data$2[11] := FSUB32(v78$2, v82$2);
    v83$1 := $$data$1[12];
    v83$2 := $$data$2[12];
    v84$1 := $$data$1[13];
    v84$2 := $$data$2[13];
    v85$1 := $$data$1[14];
    v85$2 := $$data$2[14];
    v86$1 := $$data$1[15];
    v86$2 := $$data$2[15];
    $$data$1[12] := FADD32(v83$1, v85$1);
    $$data$2[12] := FADD32(v83$2, v85$2);
    $$data$1[13] := FADD32(v84$1, v86$1);
    $$data$2[13] := FADD32(v84$2, v86$2);
    v87$1 := $$data$1[14];
    v87$2 := $$data$2[14];
    v88$1 := $$data$1[15];
    v88$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v83$1, v87$1);
    $$data$2[14] := FSUB32(v83$2, v87$2);
    $$data$1[15] := FSUB32(v84$1, v88$1);
    $$data$2[15] := FSUB32(v84$2, v88$2);
    v89$1 := $$ifft1D_512.reversed8$0$1;
    v89$2 := $$ifft1D_512.reversed8$0$2;
    $$reversed8$1[0] := v89$1;
    $$reversed8$2[0] := v89$2;
    v90$1 := $$ifft1D_512.reversed8$1$1;
    v90$2 := $$ifft1D_512.reversed8$1$2;
    $$reversed8$1[1] := v90$1;
    $$reversed8$2[1] := v90$2;
    v91$1 := $$ifft1D_512.reversed8$2$1;
    v91$2 := $$ifft1D_512.reversed8$2$2;
    $$reversed8$1[2] := v91$1;
    $$reversed8$2[2] := v91$2;
    v92$1 := $$ifft1D_512.reversed8$3$1;
    v92$2 := $$ifft1D_512.reversed8$3$2;
    $$reversed8$1[3] := v92$1;
    $$reversed8$2[3] := v92$2;
    v93$1 := $$ifft1D_512.reversed8$4$1;
    v93$2 := $$ifft1D_512.reversed8$4$2;
    $$reversed8$1[4] := v93$1;
    $$reversed8$2[4] := v93$2;
    v94$1 := $$ifft1D_512.reversed8$5$1;
    v94$2 := $$ifft1D_512.reversed8$5$2;
    $$reversed8$1[5] := v94$1;
    $$reversed8$2[5] := v94$2;
    v95$1 := $$ifft1D_512.reversed8$6$1;
    v95$2 := $$ifft1D_512.reversed8$6$2;
    $$reversed8$1[6] := v95$1;
    $$reversed8$2[6] := v95$2;
    v96$1 := $$ifft1D_512.reversed8$7$1;
    v96$2 := $$ifft1D_512.reversed8$7$2;
    $$reversed8$1[7] := v96$1;
    $$reversed8$2[7] := v96$2;
    $j.0 := 1;
    assume {:captureState "loop_entry_state_11_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_11"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 164} true;
    v97 := BV32_SLT($j.0, 8);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v97;
    v104$1 := BV32_ADD(BV32_MUL(v2$1, 8), v3$1);
    v104$2 := BV32_ADD(BV32_MUL(v2$2, 8), v3$2);
    v105$1 := $$storex8.reversed$0$1;
    v105$2 := $$storex8.reversed$0$2;
    $$reversed.i$1[0] := v105$1;
    $$reversed.i$2[0] := v105$2;
    v106$1 := $$storex8.reversed$1$1;
    v106$2 := $$storex8.reversed$1$2;
    $$reversed.i$1[1] := v106$1;
    $$reversed.i$2[1] := v106$2;
    v107$1 := $$storex8.reversed$2$1;
    v107$2 := $$storex8.reversed$2$2;
    $$reversed.i$1[2] := v107$1;
    $$reversed.i$2[2] := v107$2;
    v108$1 := $$storex8.reversed$3$1;
    v108$2 := $$storex8.reversed$3$2;
    $$reversed.i$1[3] := v108$1;
    $$reversed.i$2[3] := v108$2;
    v109$1 := $$storex8.reversed$4$1;
    v109$2 := $$storex8.reversed$4$2;
    $$reversed.i$1[4] := v109$1;
    $$reversed.i$2[4] := v109$2;
    v110$1 := $$storex8.reversed$5$1;
    v110$2 := $$storex8.reversed$5$2;
    $$reversed.i$1[5] := v110$1;
    $$reversed.i$2[5] := v110$2;
    v111$1 := $$storex8.reversed$6$1;
    v111$2 := $$storex8.reversed$6$2;
    $$reversed.i$1[6] := v111$1;
    $$reversed.i$2[6] := v111$2;
    v112$1 := $$storex8.reversed$7$1;
    v112$2 := $$storex8.reversed$7$2;
    $$reversed.i$1[7] := v112$1;
    $$reversed.i$2[7] := v112$2;
    $i.i51.0 := 0;
    assume {:captureState "loop_entry_state_10_0"} true;
    goto $7;

  $7:
    assume {:captureState "loop_head_state_10"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b53 ==> _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($i.i51.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($i.i51.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($i.i51.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($i.i51.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b5 ==> $i.i51.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 189} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 190} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 66), 8) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 191} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 66) == 0 then 1 else 0) != 0;
    v113 := BV32_SLT($i.i51.0, 8);
    goto $truebb1, __partitioned_block_$falsebb1_0;

  __partitioned_block_$falsebb1_0:
    assume {:partition} !v113;
    goto __partitioned_block_$falsebb1_1;

  __partitioned_block_$falsebb1_1:
    call {:sourceloc_num 198} $bugle_barrier_duplicated_0(-1, 0);
    v117$1 := BV32_ADD(BV32_MUL(v3$1, 66), v2$1);
    v117$2 := BV32_ADD(BV32_MUL(v3$2, 66), v2$2);
    $i.i53.0 := 0;
    assume {:captureState "loop_entry_state_9_0"} true;
    goto $9;

  $9:
    assume {:captureState "loop_head_state_9"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b54 ==> _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b14 ==> BV32_UGE($i.i53.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b13 ==> BV32_ULE($i.i53.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b12 ==> BV32_SGE($i.i53.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b11 ==> BV32_SLE($i.i53.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b10 ==> $i.i53.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 199} true;
    v118 := BV32_SLT($i.i53.0, 8);
    goto $truebb2, __partitioned_block_$falsebb2_0;

  __partitioned_block_$falsebb2_0:
    assume {:partition} !v118;
    goto __partitioned_block_$falsebb2_1;

  __partitioned_block_$falsebb2_1:
    call {:sourceloc_num 207} $bugle_barrier_duplicated_1(-1, 0);
    v122$1 := BV32_ADD(BV32_MUL(v2$1, 8), v3$1);
    v122$2 := BV32_ADD(BV32_MUL(v2$2, 8), v3$2);
    v123$1 := $$storey8.reversed$0$1;
    v123$2 := $$storey8.reversed$0$2;
    $$reversed.i$1[0] := v123$1;
    $$reversed.i$2[0] := v123$2;
    v124$1 := $$storey8.reversed$1$1;
    v124$2 := $$storey8.reversed$1$2;
    $$reversed.i$1[1] := v124$1;
    $$reversed.i$2[1] := v124$2;
    v125$1 := $$storey8.reversed$2$1;
    v125$2 := $$storey8.reversed$2$2;
    $$reversed.i$1[2] := v125$1;
    $$reversed.i$2[2] := v125$2;
    v126$1 := $$storey8.reversed$3$1;
    v126$2 := $$storey8.reversed$3$2;
    $$reversed.i$1[3] := v126$1;
    $$reversed.i$2[3] := v126$2;
    v127$1 := $$storey8.reversed$4$1;
    v127$2 := $$storey8.reversed$4$2;
    $$reversed.i$1[4] := v127$1;
    $$reversed.i$2[4] := v127$2;
    v128$1 := $$storey8.reversed$5$1;
    v128$2 := $$storey8.reversed$5$2;
    $$reversed.i$1[5] := v128$1;
    $$reversed.i$2[5] := v128$2;
    v129$1 := $$storey8.reversed$6$1;
    v129$2 := $$storey8.reversed$6$2;
    $$reversed.i$1[6] := v129$1;
    $$reversed.i$2[6] := v129$2;
    v130$1 := $$storey8.reversed$7$1;
    v130$2 := $$storey8.reversed$7$2;
    $$reversed.i$1[7] := v130$1;
    $$reversed.i$2[7] := v130$2;
    $i.i48.0 := 0;
    assume {:captureState "loop_entry_state_8_0"} true;
    goto $11;

  $11:
    assume {:captureState "loop_head_state_8"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b55 ==> _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b19 ==> BV32_UGE($i.i48.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b18 ==> BV32_ULE($i.i48.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b17 ==> BV32_SGE($i.i48.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b16 ==> BV32_SLE($i.i48.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b15 ==> $i.i48.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 224} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 225} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 66), 8) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 226} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 66) == 0 then 1 else 0) != 0;
    v131 := BV32_SLT($i.i48.0, 8);
    goto $truebb3, __partitioned_block_$falsebb3_0;

  __partitioned_block_$falsebb3_0:
    assume {:partition} !v131;
    goto __partitioned_block_$falsebb3_1;

  __partitioned_block_$falsebb3_1:
    call {:sourceloc_num 233} $bugle_barrier_duplicated_2(-1, 0);
    v135$1 := BV32_ADD(BV32_MUL(v3$1, 66), v2$1);
    v135$2 := BV32_ADD(BV32_MUL(v3$2, 66), v2$2);
    $i.i45.0 := 0;
    assume {:captureState "loop_entry_state_7_0"} true;
    goto $13;

  $13:
    assume {:captureState "loop_head_state_7"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b56 ==> _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b24 ==> BV32_UGE($i.i45.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b23 ==> BV32_ULE($i.i45.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b22 ==> BV32_SGE($i.i45.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b21 ==> BV32_SLE($i.i45.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b20 ==> $i.i45.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 234} true;
    v136 := BV32_SLT($i.i45.0, 8);
    goto $truebb4, __partitioned_block_$falsebb4_0;

  __partitioned_block_$falsebb4_0:
    assume {:partition} !v136;
    goto __partitioned_block_$falsebb4_1;

  __partitioned_block_$falsebb4_1:
    call {:sourceloc_num 242} $bugle_barrier_duplicated_3(-1, 0);
    v140$1 := $$data$1[0];
    v140$2 := $$data$2[0];
    v141$1 := $$data$1[1];
    v141$2 := $$data$2[1];
    v142$1 := $$data$1[8];
    v142$2 := $$data$2[8];
    v143$1 := $$data$1[9];
    v143$2 := $$data$2[9];
    $$data$1[0] := FADD32(v140$1, v142$1);
    $$data$2[0] := FADD32(v140$2, v142$2);
    $$data$1[1] := FADD32(v141$1, v143$1);
    $$data$2[1] := FADD32(v141$2, v143$2);
    v144$1 := $$data$1[8];
    v144$2 := $$data$2[8];
    v145$1 := $$data$1[9];
    v145$2 := $$data$2[9];
    $$data$1[8] := FSUB32(v140$1, v144$1);
    $$data$2[8] := FSUB32(v140$2, v144$2);
    $$data$1[9] := FSUB32(v141$1, v145$1);
    $$data$2[9] := FSUB32(v141$2, v145$2);
    v146$1 := $$data$1[2];
    v146$2 := $$data$2[2];
    v147$1 := $$data$1[3];
    v147$2 := $$data$2[3];
    v148$1 := $$data$1[10];
    v148$2 := $$data$2[10];
    v149$1 := $$data$1[11];
    v149$2 := $$data$2[11];
    $$data$1[2] := FADD32(v146$1, v148$1);
    $$data$2[2] := FADD32(v146$2, v148$2);
    $$data$1[3] := FADD32(v147$1, v149$1);
    $$data$2[3] := FADD32(v147$2, v149$2);
    v150$1 := $$data$1[10];
    v150$2 := $$data$2[10];
    v151$1 := $$data$1[11];
    v151$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v146$1, v150$1);
    $$data$2[10] := FSUB32(v146$2, v150$2);
    $$data$1[11] := FSUB32(v147$1, v151$1);
    $$data$2[11] := FSUB32(v147$2, v151$2);
    v152$1 := $$data$1[4];
    v152$2 := $$data$2[4];
    v153$1 := $$data$1[5];
    v153$2 := $$data$2[5];
    v154$1 := $$data$1[12];
    v154$2 := $$data$2[12];
    v155$1 := $$data$1[13];
    v155$2 := $$data$2[13];
    $$data$1[4] := FADD32(v152$1, v154$1);
    $$data$2[4] := FADD32(v152$2, v154$2);
    $$data$1[5] := FADD32(v153$1, v155$1);
    $$data$2[5] := FADD32(v153$2, v155$2);
    v156$1 := $$data$1[12];
    v156$2 := $$data$2[12];
    v157$1 := $$data$1[13];
    v157$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v152$1, v156$1);
    $$data$2[12] := FSUB32(v152$2, v156$2);
    $$data$1[13] := FSUB32(v153$1, v157$1);
    $$data$2[13] := FSUB32(v153$2, v157$2);
    v158$1 := $$data$1[6];
    v158$2 := $$data$2[6];
    v159$1 := $$data$1[7];
    v159$2 := $$data$2[7];
    v160$1 := $$data$1[14];
    v160$2 := $$data$2[14];
    v161$1 := $$data$1[15];
    v161$2 := $$data$2[15];
    $$data$1[6] := FADD32(v158$1, v160$1);
    $$data$2[6] := FADD32(v158$2, v160$2);
    $$data$1[7] := FADD32(v159$1, v161$1);
    $$data$2[7] := FADD32(v159$2, v161$2);
    v162$1 := $$data$1[14];
    v162$2 := $$data$2[14];
    v163$1 := $$data$1[15];
    v163$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v158$1, v162$1);
    $$data$2[14] := FSUB32(v158$2, v162$2);
    $$data$1[15] := FSUB32(v159$1, v163$1);
    $$data$2[15] := FSUB32(v159$2, v163$2);
    v164$1 := $$data$1[10];
    v164$2 := $$data$2[10];
    v165$1 := $$data$1[11];
    v165$2 := $$data$2[11];
    $$data$1[10] := FMUL32(1060439283, FADD32(FMUL32(v164$1, 1065353216), FSUB32(-2147483648, FMUL32(v165$1, 1065353216))));
    $$data$2[10] := FMUL32(1060439283, FADD32(FMUL32(v164$2, 1065353216), FSUB32(-2147483648, FMUL32(v165$2, 1065353216))));
    $$data$1[11] := FMUL32(1060439283, FADD32(FMUL32(v164$1, 1065353216), FMUL32(v165$1, 1065353216)));
    $$data$2[11] := FMUL32(1060439283, FADD32(FMUL32(v164$2, 1065353216), FMUL32(v165$2, 1065353216)));
    v166$1 := $$data$1[12];
    v166$2 := $$data$2[12];
    v167$1 := $$data$1[13];
    v167$2 := $$data$2[13];
    $$data$1[12] := FADD32(FMUL32(v166$1, 0), FSUB32(-2147483648, FMUL32(v167$1, 1065353216)));
    $$data$2[12] := FADD32(FMUL32(v166$2, 0), FSUB32(-2147483648, FMUL32(v167$2, 1065353216)));
    $$data$1[13] := FADD32(FMUL32(v166$1, 1065353216), FMUL32(v167$1, 0));
    $$data$2[13] := FADD32(FMUL32(v166$2, 1065353216), FMUL32(v167$2, 0));
    v168$1 := $$data$1[14];
    v168$2 := $$data$2[14];
    v169$1 := $$data$1[15];
    v169$2 := $$data$2[15];
    $$data$1[14] := FMUL32(1060439283, FADD32(FMUL32(v168$1, -1082130432), FSUB32(-2147483648, FMUL32(v169$1, 1065353216))));
    $$data$2[14] := FMUL32(1060439283, FADD32(FMUL32(v168$2, -1082130432), FSUB32(-2147483648, FMUL32(v169$2, 1065353216))));
    $$data$1[15] := FMUL32(1060439283, FADD32(FMUL32(v168$1, 1065353216), FMUL32(v169$1, -1082130432)));
    $$data$2[15] := FMUL32(1060439283, FADD32(FMUL32(v168$2, 1065353216), FMUL32(v169$2, -1082130432)));
    v170$1 := $$data$1[0];
    v170$2 := $$data$2[0];
    v171$1 := $$data$1[1];
    v171$2 := $$data$2[1];
    v172$1 := $$data$1[4];
    v172$2 := $$data$2[4];
    v173$1 := $$data$1[5];
    v173$2 := $$data$2[5];
    $$data$1[0] := FADD32(v170$1, v172$1);
    $$data$2[0] := FADD32(v170$2, v172$2);
    $$data$1[1] := FADD32(v171$1, v173$1);
    $$data$2[1] := FADD32(v171$2, v173$2);
    v174$1 := $$data$1[4];
    v174$2 := $$data$2[4];
    v175$1 := $$data$1[5];
    v175$2 := $$data$2[5];
    $$data$1[4] := FSUB32(v170$1, v174$1);
    $$data$2[4] := FSUB32(v170$2, v174$2);
    $$data$1[5] := FSUB32(v171$1, v175$1);
    $$data$2[5] := FSUB32(v171$2, v175$2);
    v176$1 := $$data$1[2];
    v176$2 := $$data$2[2];
    v177$1 := $$data$1[3];
    v177$2 := $$data$2[3];
    v178$1 := $$data$1[6];
    v178$2 := $$data$2[6];
    v179$1 := $$data$1[7];
    v179$2 := $$data$2[7];
    $$data$1[2] := FADD32(v176$1, v178$1);
    $$data$2[2] := FADD32(v176$2, v178$2);
    $$data$1[3] := FADD32(v177$1, v179$1);
    $$data$2[3] := FADD32(v177$2, v179$2);
    v180$1 := $$data$1[6];
    v180$2 := $$data$2[6];
    v181$1 := $$data$1[7];
    v181$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v176$1, v180$1);
    $$data$2[6] := FSUB32(v176$2, v180$2);
    $$data$1[7] := FSUB32(v177$1, v181$1);
    $$data$2[7] := FSUB32(v177$2, v181$2);
    v182$1 := $$data$1[6];
    v182$2 := $$data$2[6];
    v183$1 := $$data$1[7];
    v183$2 := $$data$2[7];
    $$data$1[6] := FADD32(FMUL32(v182$1, 0), FSUB32(-2147483648, FMUL32(v183$1, 1065353216)));
    $$data$2[6] := FADD32(FMUL32(v182$2, 0), FSUB32(-2147483648, FMUL32(v183$2, 1065353216)));
    $$data$1[7] := FADD32(FMUL32(v182$1, 1065353216), FMUL32(v183$1, 0));
    $$data$2[7] := FADD32(FMUL32(v182$2, 1065353216), FMUL32(v183$2, 0));
    v184$1 := $$data$1[0];
    v184$2 := $$data$2[0];
    v185$1 := $$data$1[1];
    v185$2 := $$data$2[1];
    v186$1 := $$data$1[2];
    v186$2 := $$data$2[2];
    v187$1 := $$data$1[3];
    v187$2 := $$data$2[3];
    $$data$1[0] := FADD32(v184$1, v186$1);
    $$data$2[0] := FADD32(v184$2, v186$2);
    $$data$1[1] := FADD32(v185$1, v187$1);
    $$data$2[1] := FADD32(v185$2, v187$2);
    v188$1 := $$data$1[2];
    v188$2 := $$data$2[2];
    v189$1 := $$data$1[3];
    v189$2 := $$data$2[3];
    $$data$1[2] := FSUB32(v184$1, v188$1);
    $$data$2[2] := FSUB32(v184$2, v188$2);
    $$data$1[3] := FSUB32(v185$1, v189$1);
    $$data$2[3] := FSUB32(v185$2, v189$2);
    v190$1 := $$data$1[4];
    v190$2 := $$data$2[4];
    v191$1 := $$data$1[5];
    v191$2 := $$data$2[5];
    v192$1 := $$data$1[6];
    v192$2 := $$data$2[6];
    v193$1 := $$data$1[7];
    v193$2 := $$data$2[7];
    $$data$1[4] := FADD32(v190$1, v192$1);
    $$data$2[4] := FADD32(v190$2, v192$2);
    $$data$1[5] := FADD32(v191$1, v193$1);
    $$data$2[5] := FADD32(v191$2, v193$2);
    v194$1 := $$data$1[6];
    v194$2 := $$data$2[6];
    v195$1 := $$data$1[7];
    v195$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v190$1, v194$1);
    $$data$2[6] := FSUB32(v190$2, v194$2);
    $$data$1[7] := FSUB32(v191$1, v195$1);
    $$data$2[7] := FSUB32(v191$2, v195$2);
    v196$1 := $$data$1[8];
    v196$2 := $$data$2[8];
    v197$1 := $$data$1[9];
    v197$2 := $$data$2[9];
    v198$1 := $$data$1[12];
    v198$2 := $$data$2[12];
    v199$1 := $$data$1[13];
    v199$2 := $$data$2[13];
    $$data$1[8] := FADD32(v196$1, v198$1);
    $$data$2[8] := FADD32(v196$2, v198$2);
    $$data$1[9] := FADD32(v197$1, v199$1);
    $$data$2[9] := FADD32(v197$2, v199$2);
    v200$1 := $$data$1[12];
    v200$2 := $$data$2[12];
    v201$1 := $$data$1[13];
    v201$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v196$1, v200$1);
    $$data$2[12] := FSUB32(v196$2, v200$2);
    $$data$1[13] := FSUB32(v197$1, v201$1);
    $$data$2[13] := FSUB32(v197$2, v201$2);
    v202$1 := $$data$1[10];
    v202$2 := $$data$2[10];
    v203$1 := $$data$1[11];
    v203$2 := $$data$2[11];
    v204$1 := $$data$1[14];
    v204$2 := $$data$2[14];
    v205$1 := $$data$1[15];
    v205$2 := $$data$2[15];
    $$data$1[10] := FADD32(v202$1, v204$1);
    $$data$2[10] := FADD32(v202$2, v204$2);
    $$data$1[11] := FADD32(v203$1, v205$1);
    $$data$2[11] := FADD32(v203$2, v205$2);
    v206$1 := $$data$1[14];
    v206$2 := $$data$2[14];
    v207$1 := $$data$1[15];
    v207$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v202$1, v206$1);
    $$data$2[14] := FSUB32(v202$2, v206$2);
    $$data$1[15] := FSUB32(v203$1, v207$1);
    $$data$2[15] := FSUB32(v203$2, v207$2);
    v208$1 := $$data$1[14];
    v208$2 := $$data$2[14];
    v209$1 := $$data$1[15];
    v209$2 := $$data$2[15];
    $$data$1[14] := FADD32(FMUL32(v208$1, 0), FSUB32(-2147483648, FMUL32(v209$1, 1065353216)));
    $$data$2[14] := FADD32(FMUL32(v208$2, 0), FSUB32(-2147483648, FMUL32(v209$2, 1065353216)));
    $$data$1[15] := FADD32(FMUL32(v208$1, 1065353216), FMUL32(v209$1, 0));
    $$data$2[15] := FADD32(FMUL32(v208$2, 1065353216), FMUL32(v209$2, 0));
    v210$1 := $$data$1[8];
    v210$2 := $$data$2[8];
    v211$1 := $$data$1[9];
    v211$2 := $$data$2[9];
    v212$1 := $$data$1[10];
    v212$2 := $$data$2[10];
    v213$1 := $$data$1[11];
    v213$2 := $$data$2[11];
    $$data$1[8] := FADD32(v210$1, v212$1);
    $$data$2[8] := FADD32(v210$2, v212$2);
    $$data$1[9] := FADD32(v211$1, v213$1);
    $$data$2[9] := FADD32(v211$2, v213$2);
    v214$1 := $$data$1[10];
    v214$2 := $$data$2[10];
    v215$1 := $$data$1[11];
    v215$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v210$1, v214$1);
    $$data$2[10] := FSUB32(v210$2, v214$2);
    $$data$1[11] := FSUB32(v211$1, v215$1);
    $$data$2[11] := FSUB32(v211$2, v215$2);
    v216$1 := $$data$1[12];
    v216$2 := $$data$2[12];
    v217$1 := $$data$1[13];
    v217$2 := $$data$2[13];
    v218$1 := $$data$1[14];
    v218$2 := $$data$2[14];
    v219$1 := $$data$1[15];
    v219$2 := $$data$2[15];
    $$data$1[12] := FADD32(v216$1, v218$1);
    $$data$2[12] := FADD32(v216$2, v218$2);
    $$data$1[13] := FADD32(v217$1, v219$1);
    $$data$2[13] := FADD32(v217$2, v219$2);
    v220$1 := $$data$1[14];
    v220$2 := $$data$2[14];
    v221$1 := $$data$1[15];
    v221$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v216$1, v220$1);
    $$data$2[14] := FSUB32(v216$2, v220$2);
    $$data$1[15] := FSUB32(v217$1, v221$1);
    $$data$2[15] := FSUB32(v217$2, v221$2);
    v222$1 := $$ifft1D_512.reversed81$0$1;
    v222$2 := $$ifft1D_512.reversed81$0$2;
    $$reversed824$1[0] := v222$1;
    $$reversed824$2[0] := v222$2;
    v223$1 := $$ifft1D_512.reversed81$1$1;
    v223$2 := $$ifft1D_512.reversed81$1$2;
    $$reversed824$1[1] := v223$1;
    $$reversed824$2[1] := v223$2;
    v224$1 := $$ifft1D_512.reversed81$2$1;
    v224$2 := $$ifft1D_512.reversed81$2$2;
    $$reversed824$1[2] := v224$1;
    $$reversed824$2[2] := v224$2;
    v225$1 := $$ifft1D_512.reversed81$3$1;
    v225$2 := $$ifft1D_512.reversed81$3$2;
    $$reversed824$1[3] := v225$1;
    $$reversed824$2[3] := v225$2;
    v226$1 := $$ifft1D_512.reversed81$4$1;
    v226$2 := $$ifft1D_512.reversed81$4$2;
    $$reversed824$1[4] := v226$1;
    $$reversed824$2[4] := v226$2;
    v227$1 := $$ifft1D_512.reversed81$5$1;
    v227$2 := $$ifft1D_512.reversed81$5$2;
    $$reversed824$1[5] := v227$1;
    $$reversed824$2[5] := v227$2;
    v228$1 := $$ifft1D_512.reversed81$6$1;
    v228$2 := $$ifft1D_512.reversed81$6$2;
    $$reversed824$1[6] := v228$1;
    $$reversed824$2[6] := v228$2;
    v229$1 := $$ifft1D_512.reversed81$7$1;
    v229$2 := $$ifft1D_512.reversed81$7$2;
    $$reversed824$1[7] := v229$1;
    $$reversed824$2[7] := v229$2;
    $j25.0 := 1;
    assume {:captureState "loop_entry_state_6_0"} true;
    goto $15;

  $15:
    assume {:captureState "loop_head_state_6"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 399} true;
    v230 := BV32_SLT($j25.0, 8);
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v230;
    v237$1 := BV32_ADD(BV32_MUL(v2$1, 8), v3$1);
    v237$2 := BV32_ADD(BV32_MUL(v2$2, 8), v3$2);
    v238$1 := $$storex8.reversed$0$1;
    v238$2 := $$storex8.reversed$0$2;
    $$reversed.i$1[0] := v238$1;
    $$reversed.i$2[0] := v238$2;
    v239$1 := $$storex8.reversed$1$1;
    v239$2 := $$storex8.reversed$1$2;
    $$reversed.i$1[1] := v239$1;
    $$reversed.i$2[1] := v239$2;
    v240$1 := $$storex8.reversed$2$1;
    v240$2 := $$storex8.reversed$2$2;
    $$reversed.i$1[2] := v240$1;
    $$reversed.i$2[2] := v240$2;
    v241$1 := $$storex8.reversed$3$1;
    v241$2 := $$storex8.reversed$3$2;
    $$reversed.i$1[3] := v241$1;
    $$reversed.i$2[3] := v241$2;
    v242$1 := $$storex8.reversed$4$1;
    v242$2 := $$storex8.reversed$4$2;
    $$reversed.i$1[4] := v242$1;
    $$reversed.i$2[4] := v242$2;
    v243$1 := $$storex8.reversed$5$1;
    v243$2 := $$storex8.reversed$5$2;
    $$reversed.i$1[5] := v243$1;
    $$reversed.i$2[5] := v243$2;
    v244$1 := $$storex8.reversed$6$1;
    v244$2 := $$storex8.reversed$6$2;
    $$reversed.i$1[6] := v244$1;
    $$reversed.i$2[6] := v244$2;
    v245$1 := $$storex8.reversed$7$1;
    v245$2 := $$storex8.reversed$7$2;
    $$reversed.i$1[7] := v245$1;
    $$reversed.i$2[7] := v245$2;
    $i.i44.0 := 0;
    assume {:captureState "loop_entry_state_5_0"} true;
    goto $19;

  $19:
    assume {:captureState "loop_head_state_5"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b57 ==> _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b29 ==> BV32_UGE($i.i44.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b28 ==> BV32_ULE($i.i44.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b27 ==> BV32_SGE($i.i44.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b26 ==> BV32_SLE($i.i44.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b25 ==> $i.i44.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 424} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 425} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 72), 8) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 426} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 72) == 0 then 1 else 0) != 0;
    v246 := BV32_SLT($i.i44.0, 8);
    goto $truebb6, __partitioned_block_$falsebb6_0;

  __partitioned_block_$falsebb6_0:
    assume {:partition} !v246;
    goto __partitioned_block_$falsebb6_1;

  __partitioned_block_$falsebb6_1:
    call {:sourceloc_num 433} $bugle_barrier_duplicated_4(-1, 0);
    v250$1 := BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 8), 9), v3$1);
    v250$2 := BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 8), 9), v3$2);
    $i.i42.0 := 0;
    assume {:captureState "loop_entry_state_4_0"} true;
    goto $21;

  $21:
    assume {:captureState "loop_head_state_4"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b58 ==> _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b34 ==> BV32_UGE($i.i42.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b33 ==> BV32_ULE($i.i42.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b32 ==> BV32_SGE($i.i42.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b31 ==> BV32_SLE($i.i42.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b30 ==> $i.i42.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 434} true;
    v251 := BV32_SLT($i.i42.0, 8);
    goto $truebb7, __partitioned_block_$falsebb7_0;

  __partitioned_block_$falsebb7_0:
    assume {:partition} !v251;
    goto __partitioned_block_$falsebb7_1;

  __partitioned_block_$falsebb7_1:
    call {:sourceloc_num 442} $bugle_barrier_duplicated_5(-1, 0);
    v255$1 := BV32_ADD(BV32_MUL(v2$1, 8), v3$1);
    v255$2 := BV32_ADD(BV32_MUL(v2$2, 8), v3$2);
    v256$1 := $$storey8.reversed$0$1;
    v256$2 := $$storey8.reversed$0$2;
    $$reversed.i$1[0] := v256$1;
    $$reversed.i$2[0] := v256$2;
    v257$1 := $$storey8.reversed$1$1;
    v257$2 := $$storey8.reversed$1$2;
    $$reversed.i$1[1] := v257$1;
    $$reversed.i$2[1] := v257$2;
    v258$1 := $$storey8.reversed$2$1;
    v258$2 := $$storey8.reversed$2$2;
    $$reversed.i$1[2] := v258$1;
    $$reversed.i$2[2] := v258$2;
    v259$1 := $$storey8.reversed$3$1;
    v259$2 := $$storey8.reversed$3$2;
    $$reversed.i$1[3] := v259$1;
    $$reversed.i$2[3] := v259$2;
    v260$1 := $$storey8.reversed$4$1;
    v260$2 := $$storey8.reversed$4$2;
    $$reversed.i$1[4] := v260$1;
    $$reversed.i$2[4] := v260$2;
    v261$1 := $$storey8.reversed$5$1;
    v261$2 := $$storey8.reversed$5$2;
    $$reversed.i$1[5] := v261$1;
    $$reversed.i$2[5] := v261$2;
    v262$1 := $$storey8.reversed$6$1;
    v262$2 := $$storey8.reversed$6$2;
    $$reversed.i$1[6] := v262$1;
    $$reversed.i$2[6] := v262$2;
    v263$1 := $$storey8.reversed$7$1;
    v263$2 := $$storey8.reversed$7$2;
    $$reversed.i$1[7] := v263$1;
    $$reversed.i$2[7] := v263$2;
    $i.i41.0 := 0;
    assume {:captureState "loop_entry_state_3_0"} true;
    goto $23;

  $23:
    assume {:captureState "loop_head_state_3"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b59 ==> _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b39 ==> BV32_UGE($i.i41.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b38 ==> BV32_ULE($i.i41.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b37 ==> BV32_SGE($i.i41.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b36 ==> BV32_SLE($i.i41.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b35 ==> $i.i41.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 459} true;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 460} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_ULT(BV32_UDIV(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 72), 8) then 1 else 0) != 0;
    assert {:do_not_predicate} {:originated_from_invariant} {:sourceloc_num 461} {:thread 1} (if _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> BV32_UREM(BV32_SUB(BV32_UDIV(BV32_MUL(4, _WATCHED_OFFSET), 4), local_id_x$1), 72) == 0 then 1 else 0) != 0;
    v264 := BV32_SLT($i.i41.0, 8);
    goto $truebb8, __partitioned_block_$falsebb8_0;

  __partitioned_block_$falsebb8_0:
    assume {:partition} !v264;
    goto __partitioned_block_$falsebb8_1;

  __partitioned_block_$falsebb8_1:
    call {:sourceloc_num 468} $bugle_barrier_duplicated_6(-1, 0);
    v268$1 := BV32_ADD(BV32_MUL(BV32_MUL(v2$1, 8), 9), v3$1);
    v268$2 := BV32_ADD(BV32_MUL(BV32_MUL(v2$2, 8), 9), v3$2);
    $i.i39.0 := 0;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $25;

  $25:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b60 ==> _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b44 ==> BV32_UGE($i.i39.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b43 ==> BV32_ULE($i.i39.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b42 ==> BV32_SGE($i.i39.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b41 ==> BV32_SLE($i.i39.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b40 ==> $i.i39.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 469} true;
    v269 := BV32_SLT($i.i39.0, 8);
    goto $truebb9, $falsebb9;

  $falsebb9:
    assume {:partition} !v269;
    v273$1 := $$data$1[0];
    v273$2 := $$data$2[0];
    v274$1 := $$data$1[1];
    v274$2 := $$data$2[1];
    v275$1 := $$data$1[8];
    v275$2 := $$data$2[8];
    v276$1 := $$data$1[9];
    v276$2 := $$data$2[9];
    $$data$1[0] := FADD32(v273$1, v275$1);
    $$data$2[0] := FADD32(v273$2, v275$2);
    $$data$1[1] := FADD32(v274$1, v276$1);
    $$data$2[1] := FADD32(v274$2, v276$2);
    v277$1 := $$data$1[8];
    v277$2 := $$data$2[8];
    v278$1 := $$data$1[9];
    v278$2 := $$data$2[9];
    $$data$1[8] := FSUB32(v273$1, v277$1);
    $$data$2[8] := FSUB32(v273$2, v277$2);
    $$data$1[9] := FSUB32(v274$1, v278$1);
    $$data$2[9] := FSUB32(v274$2, v278$2);
    v279$1 := $$data$1[2];
    v279$2 := $$data$2[2];
    v280$1 := $$data$1[3];
    v280$2 := $$data$2[3];
    v281$1 := $$data$1[10];
    v281$2 := $$data$2[10];
    v282$1 := $$data$1[11];
    v282$2 := $$data$2[11];
    $$data$1[2] := FADD32(v279$1, v281$1);
    $$data$2[2] := FADD32(v279$2, v281$2);
    $$data$1[3] := FADD32(v280$1, v282$1);
    $$data$2[3] := FADD32(v280$2, v282$2);
    v283$1 := $$data$1[10];
    v283$2 := $$data$2[10];
    v284$1 := $$data$1[11];
    v284$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v279$1, v283$1);
    $$data$2[10] := FSUB32(v279$2, v283$2);
    $$data$1[11] := FSUB32(v280$1, v284$1);
    $$data$2[11] := FSUB32(v280$2, v284$2);
    v285$1 := $$data$1[4];
    v285$2 := $$data$2[4];
    v286$1 := $$data$1[5];
    v286$2 := $$data$2[5];
    v287$1 := $$data$1[12];
    v287$2 := $$data$2[12];
    v288$1 := $$data$1[13];
    v288$2 := $$data$2[13];
    $$data$1[4] := FADD32(v285$1, v287$1);
    $$data$2[4] := FADD32(v285$2, v287$2);
    $$data$1[5] := FADD32(v286$1, v288$1);
    $$data$2[5] := FADD32(v286$2, v288$2);
    v289$1 := $$data$1[12];
    v289$2 := $$data$2[12];
    v290$1 := $$data$1[13];
    v290$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v285$1, v289$1);
    $$data$2[12] := FSUB32(v285$2, v289$2);
    $$data$1[13] := FSUB32(v286$1, v290$1);
    $$data$2[13] := FSUB32(v286$2, v290$2);
    v291$1 := $$data$1[6];
    v291$2 := $$data$2[6];
    v292$1 := $$data$1[7];
    v292$2 := $$data$2[7];
    v293$1 := $$data$1[14];
    v293$2 := $$data$2[14];
    v294$1 := $$data$1[15];
    v294$2 := $$data$2[15];
    $$data$1[6] := FADD32(v291$1, v293$1);
    $$data$2[6] := FADD32(v291$2, v293$2);
    $$data$1[7] := FADD32(v292$1, v294$1);
    $$data$2[7] := FADD32(v292$2, v294$2);
    v295$1 := $$data$1[14];
    v295$2 := $$data$2[14];
    v296$1 := $$data$1[15];
    v296$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v291$1, v295$1);
    $$data$2[14] := FSUB32(v291$2, v295$2);
    $$data$1[15] := FSUB32(v292$1, v296$1);
    $$data$2[15] := FSUB32(v292$2, v296$2);
    v297$1 := $$data$1[10];
    v297$2 := $$data$2[10];
    v298$1 := $$data$1[11];
    v298$2 := $$data$2[11];
    $$data$1[10] := FMUL32(1060439283, FADD32(FMUL32(v297$1, 1065353216), FSUB32(-2147483648, FMUL32(v298$1, 1065353216))));
    $$data$2[10] := FMUL32(1060439283, FADD32(FMUL32(v297$2, 1065353216), FSUB32(-2147483648, FMUL32(v298$2, 1065353216))));
    $$data$1[11] := FMUL32(1060439283, FADD32(FMUL32(v297$1, 1065353216), FMUL32(v298$1, 1065353216)));
    $$data$2[11] := FMUL32(1060439283, FADD32(FMUL32(v297$2, 1065353216), FMUL32(v298$2, 1065353216)));
    v299$1 := $$data$1[12];
    v299$2 := $$data$2[12];
    v300$1 := $$data$1[13];
    v300$2 := $$data$2[13];
    $$data$1[12] := FADD32(FMUL32(v299$1, 0), FSUB32(-2147483648, FMUL32(v300$1, 1065353216)));
    $$data$2[12] := FADD32(FMUL32(v299$2, 0), FSUB32(-2147483648, FMUL32(v300$2, 1065353216)));
    $$data$1[13] := FADD32(FMUL32(v299$1, 1065353216), FMUL32(v300$1, 0));
    $$data$2[13] := FADD32(FMUL32(v299$2, 1065353216), FMUL32(v300$2, 0));
    v301$1 := $$data$1[14];
    v301$2 := $$data$2[14];
    v302$1 := $$data$1[15];
    v302$2 := $$data$2[15];
    $$data$1[14] := FMUL32(1060439283, FADD32(FMUL32(v301$1, -1082130432), FSUB32(-2147483648, FMUL32(v302$1, 1065353216))));
    $$data$2[14] := FMUL32(1060439283, FADD32(FMUL32(v301$2, -1082130432), FSUB32(-2147483648, FMUL32(v302$2, 1065353216))));
    $$data$1[15] := FMUL32(1060439283, FADD32(FMUL32(v301$1, 1065353216), FMUL32(v302$1, -1082130432)));
    $$data$2[15] := FMUL32(1060439283, FADD32(FMUL32(v301$2, 1065353216), FMUL32(v302$2, -1082130432)));
    v303$1 := $$data$1[0];
    v303$2 := $$data$2[0];
    v304$1 := $$data$1[1];
    v304$2 := $$data$2[1];
    v305$1 := $$data$1[4];
    v305$2 := $$data$2[4];
    v306$1 := $$data$1[5];
    v306$2 := $$data$2[5];
    $$data$1[0] := FADD32(v303$1, v305$1);
    $$data$2[0] := FADD32(v303$2, v305$2);
    $$data$1[1] := FADD32(v304$1, v306$1);
    $$data$2[1] := FADD32(v304$2, v306$2);
    v307$1 := $$data$1[4];
    v307$2 := $$data$2[4];
    v308$1 := $$data$1[5];
    v308$2 := $$data$2[5];
    $$data$1[4] := FSUB32(v303$1, v307$1);
    $$data$2[4] := FSUB32(v303$2, v307$2);
    $$data$1[5] := FSUB32(v304$1, v308$1);
    $$data$2[5] := FSUB32(v304$2, v308$2);
    v309$1 := $$data$1[2];
    v309$2 := $$data$2[2];
    v310$1 := $$data$1[3];
    v310$2 := $$data$2[3];
    v311$1 := $$data$1[6];
    v311$2 := $$data$2[6];
    v312$1 := $$data$1[7];
    v312$2 := $$data$2[7];
    $$data$1[2] := FADD32(v309$1, v311$1);
    $$data$2[2] := FADD32(v309$2, v311$2);
    $$data$1[3] := FADD32(v310$1, v312$1);
    $$data$2[3] := FADD32(v310$2, v312$2);
    v313$1 := $$data$1[6];
    v313$2 := $$data$2[6];
    v314$1 := $$data$1[7];
    v314$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v309$1, v313$1);
    $$data$2[6] := FSUB32(v309$2, v313$2);
    $$data$1[7] := FSUB32(v310$1, v314$1);
    $$data$2[7] := FSUB32(v310$2, v314$2);
    v315$1 := $$data$1[6];
    v315$2 := $$data$2[6];
    v316$1 := $$data$1[7];
    v316$2 := $$data$2[7];
    $$data$1[6] := FADD32(FMUL32(v315$1, 0), FSUB32(-2147483648, FMUL32(v316$1, 1065353216)));
    $$data$2[6] := FADD32(FMUL32(v315$2, 0), FSUB32(-2147483648, FMUL32(v316$2, 1065353216)));
    $$data$1[7] := FADD32(FMUL32(v315$1, 1065353216), FMUL32(v316$1, 0));
    $$data$2[7] := FADD32(FMUL32(v315$2, 1065353216), FMUL32(v316$2, 0));
    v317$1 := $$data$1[0];
    v317$2 := $$data$2[0];
    v318$1 := $$data$1[1];
    v318$2 := $$data$2[1];
    v319$1 := $$data$1[2];
    v319$2 := $$data$2[2];
    v320$1 := $$data$1[3];
    v320$2 := $$data$2[3];
    $$data$1[0] := FADD32(v317$1, v319$1);
    $$data$2[0] := FADD32(v317$2, v319$2);
    $$data$1[1] := FADD32(v318$1, v320$1);
    $$data$2[1] := FADD32(v318$2, v320$2);
    v321$1 := $$data$1[2];
    v321$2 := $$data$2[2];
    v322$1 := $$data$1[3];
    v322$2 := $$data$2[3];
    $$data$1[2] := FSUB32(v317$1, v321$1);
    $$data$2[2] := FSUB32(v317$2, v321$2);
    $$data$1[3] := FSUB32(v318$1, v322$1);
    $$data$2[3] := FSUB32(v318$2, v322$2);
    v323$1 := $$data$1[4];
    v323$2 := $$data$2[4];
    v324$1 := $$data$1[5];
    v324$2 := $$data$2[5];
    v325$1 := $$data$1[6];
    v325$2 := $$data$2[6];
    v326$1 := $$data$1[7];
    v326$2 := $$data$2[7];
    $$data$1[4] := FADD32(v323$1, v325$1);
    $$data$2[4] := FADD32(v323$2, v325$2);
    $$data$1[5] := FADD32(v324$1, v326$1);
    $$data$2[5] := FADD32(v324$2, v326$2);
    v327$1 := $$data$1[6];
    v327$2 := $$data$2[6];
    v328$1 := $$data$1[7];
    v328$2 := $$data$2[7];
    $$data$1[6] := FSUB32(v323$1, v327$1);
    $$data$2[6] := FSUB32(v323$2, v327$2);
    $$data$1[7] := FSUB32(v324$1, v328$1);
    $$data$2[7] := FSUB32(v324$2, v328$2);
    v329$1 := $$data$1[8];
    v329$2 := $$data$2[8];
    v330$1 := $$data$1[9];
    v330$2 := $$data$2[9];
    v331$1 := $$data$1[12];
    v331$2 := $$data$2[12];
    v332$1 := $$data$1[13];
    v332$2 := $$data$2[13];
    $$data$1[8] := FADD32(v329$1, v331$1);
    $$data$2[8] := FADD32(v329$2, v331$2);
    $$data$1[9] := FADD32(v330$1, v332$1);
    $$data$2[9] := FADD32(v330$2, v332$2);
    v333$1 := $$data$1[12];
    v333$2 := $$data$2[12];
    v334$1 := $$data$1[13];
    v334$2 := $$data$2[13];
    $$data$1[12] := FSUB32(v329$1, v333$1);
    $$data$2[12] := FSUB32(v329$2, v333$2);
    $$data$1[13] := FSUB32(v330$1, v334$1);
    $$data$2[13] := FSUB32(v330$2, v334$2);
    v335$1 := $$data$1[10];
    v335$2 := $$data$2[10];
    v336$1 := $$data$1[11];
    v336$2 := $$data$2[11];
    v337$1 := $$data$1[14];
    v337$2 := $$data$2[14];
    v338$1 := $$data$1[15];
    v338$2 := $$data$2[15];
    $$data$1[10] := FADD32(v335$1, v337$1);
    $$data$2[10] := FADD32(v335$2, v337$2);
    $$data$1[11] := FADD32(v336$1, v338$1);
    $$data$2[11] := FADD32(v336$2, v338$2);
    v339$1 := $$data$1[14];
    v339$2 := $$data$2[14];
    v340$1 := $$data$1[15];
    v340$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v335$1, v339$1);
    $$data$2[14] := FSUB32(v335$2, v339$2);
    $$data$1[15] := FSUB32(v336$1, v340$1);
    $$data$2[15] := FSUB32(v336$2, v340$2);
    v341$1 := $$data$1[14];
    v341$2 := $$data$2[14];
    v342$1 := $$data$1[15];
    v342$2 := $$data$2[15];
    $$data$1[14] := FADD32(FMUL32(v341$1, 0), FSUB32(-2147483648, FMUL32(v342$1, 1065353216)));
    $$data$2[14] := FADD32(FMUL32(v341$2, 0), FSUB32(-2147483648, FMUL32(v342$2, 1065353216)));
    $$data$1[15] := FADD32(FMUL32(v341$1, 1065353216), FMUL32(v342$1, 0));
    $$data$2[15] := FADD32(FMUL32(v341$2, 1065353216), FMUL32(v342$2, 0));
    v343$1 := $$data$1[8];
    v343$2 := $$data$2[8];
    v344$1 := $$data$1[9];
    v344$2 := $$data$2[9];
    v345$1 := $$data$1[10];
    v345$2 := $$data$2[10];
    v346$1 := $$data$1[11];
    v346$2 := $$data$2[11];
    $$data$1[8] := FADD32(v343$1, v345$1);
    $$data$2[8] := FADD32(v343$2, v345$2);
    $$data$1[9] := FADD32(v344$1, v346$1);
    $$data$2[9] := FADD32(v344$2, v346$2);
    v347$1 := $$data$1[10];
    v347$2 := $$data$2[10];
    v348$1 := $$data$1[11];
    v348$2 := $$data$2[11];
    $$data$1[10] := FSUB32(v343$1, v347$1);
    $$data$2[10] := FSUB32(v343$2, v347$2);
    $$data$1[11] := FSUB32(v344$1, v348$1);
    $$data$2[11] := FSUB32(v344$2, v348$2);
    v349$1 := $$data$1[12];
    v349$2 := $$data$2[12];
    v350$1 := $$data$1[13];
    v350$2 := $$data$2[13];
    v351$1 := $$data$1[14];
    v351$2 := $$data$2[14];
    v352$1 := $$data$1[15];
    v352$2 := $$data$2[15];
    $$data$1[12] := FADD32(v349$1, v351$1);
    $$data$2[12] := FADD32(v349$2, v351$2);
    $$data$1[13] := FADD32(v350$1, v352$1);
    $$data$2[13] := FADD32(v350$2, v352$2);
    v353$1 := $$data$1[14];
    v353$2 := $$data$2[14];
    v354$1 := $$data$1[15];
    v354$2 := $$data$2[15];
    $$data$1[14] := FSUB32(v349$1, v353$1);
    $$data$2[14] := FSUB32(v349$2, v353$2);
    $$data$1[15] := FSUB32(v350$1, v354$1);
    $$data$2[15] := FSUB32(v350$2, v354$2);
    $i.0 := 0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $27;

  $27:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:block_sourceloc} {:sourceloc_num 617} true;
    v355 := BV32_SLT($i.0, 8);
    goto $truebb10, $falsebb10;

  $falsebb10:
    assume {:partition} !v355;
    v364$1 := $$globalStores8.reversed$0$1;
    v364$2 := $$globalStores8.reversed$0$2;
    $$reversed.i$1[0] := v364$1;
    $$reversed.i$2[0] := v364$2;
    v365$1 := $$globalStores8.reversed$1$1;
    v365$2 := $$globalStores8.reversed$1$2;
    $$reversed.i$1[1] := v365$1;
    $$reversed.i$2[1] := v365$2;
    v366$1 := $$globalStores8.reversed$2$1;
    v366$2 := $$globalStores8.reversed$2$2;
    $$reversed.i$1[2] := v366$1;
    $$reversed.i$2[2] := v366$2;
    v367$1 := $$globalStores8.reversed$3$1;
    v367$2 := $$globalStores8.reversed$3$2;
    $$reversed.i$1[3] := v367$1;
    $$reversed.i$2[3] := v367$2;
    v368$1 := $$globalStores8.reversed$4$1;
    v368$2 := $$globalStores8.reversed$4$2;
    $$reversed.i$1[4] := v368$1;
    $$reversed.i$2[4] := v368$2;
    v369$1 := $$globalStores8.reversed$5$1;
    v369$2 := $$globalStores8.reversed$5$2;
    $$reversed.i$1[5] := v369$1;
    $$reversed.i$2[5] := v369$2;
    v370$1 := $$globalStores8.reversed$6$1;
    v370$2 := $$globalStores8.reversed$6$2;
    $$reversed.i$1[6] := v370$1;
    $$reversed.i$2[6] := v370$2;
    v371$1 := $$globalStores8.reversed$7$1;
    v371$2 := $$globalStores8.reversed$7$2;
    $$reversed.i$1[7] := v371$1;
    $$reversed.i$2[7] := v371$2;
    $i.i38.0 := 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $31;

  $31:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b63 ==> _WRITE_HAS_OCCURRED_$$work ==> _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 64), 2) == BV32_ADD(BV32_MUL(BV32_MUL(0, 64), 2), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2)) mod BV32_MUL(BV32_MUL(1, 64), 2) || _WATCHED_OFFSET mod BV32_MUL(BV32_MUL(1, 64), 2) == BV32_ADD(BV32_ADD(BV32_MUL(BV32_MUL(0, 64), 2), BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2)), 1) mod BV32_MUL(BV32_MUL(1, 64), 2);
    assert {:tag "accessUpperBoundBlock"} _b62 ==> _WRITE_HAS_OCCURRED_$$work ==> BV32_SLT(_WATCHED_OFFSET, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(group_id_x$1, 1), 512), local_id_x$1), 2));
    assert {:tag "accessLowerBoundBlock"} _b61 ==> _WRITE_HAS_OCCURRED_$$work ==> BV32_SLE(BV32_MUL(BV32_ADD(BV32_MUL(group_id_x$1, 512), local_id_x$1), 2), _WATCHED_OFFSET);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$ifft1D_512.smem ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b49 ==> BV32_UGE($i.i38.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b48 ==> BV32_ULE($i.i38.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b47 ==> BV32_SGE($i.i38.0, 0);
    assert {:tag "loopBound"} {:thread 1} _b46 ==> BV32_SLE($i.i38.0, 0);
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b45 ==> $i.i38.0 mod 1 == 0 mod 1;
    assert {:block_sourceloc} {:sourceloc_num 649} true;
    v372 := BV32_SLT($i.i38.0, 8);
    goto $truebb11, $falsebb11;

  $falsebb11:
    assume {:partition} !v372;
    return;

  $truebb11:
    assume {:partition} v372;
    v373$1 := $$reversed.i$1[$i.i38.0];
    v373$2 := $$reversed.i$2[$i.i38.0];
    v374$1 := $$data$1[BV32_MUL(v373$1, 2)];
    v374$2 := $$data$2[BV32_MUL(v373$2, 2)];
    v375$1 := $$data$1[BV32_ADD(BV32_MUL(v373$1, 2), 1)];
    v375$2 := $$data$2[BV32_ADD(BV32_MUL(v373$2, 2), 1)];
    call {:sourceloc} {:sourceloc_num 654} _LOG_WRITE_$$work(true, BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), v374$1, $$work[BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$work(true, BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 654} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 654} _CHECK_WRITE_$$work(true, BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), v374$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$work"} true;
    $$work[BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2))] := v374$1;
    $$work[BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2))] := v374$2;
    call {:sourceloc} {:sourceloc_num 655} _LOG_WRITE_$$work(true, BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1), v375$1, $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$work(true, BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 655} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 655} _CHECK_WRITE_$$work(true, BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1), v375$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$work"} true;
    $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1)] := v375$1;
    $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i38.0, 64), 2)), 1)] := v375$2;
    $i.i38.0 := BV32_ADD($i.i38.0, 1);
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $31;

  $truebb10:
    assume {:partition} v355;
    v356$1 := $$data$1[BV32_MUL($i.0, 2)];
    v356$2 := $$data$2[BV32_MUL($i.0, 2)];
    v357$1 := $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v357$2 := $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v358$1 := $$data$1[BV32_MUL($i.0, 2)];
    v358$2 := $$data$2[BV32_MUL($i.0, 2)];
    v359$1 := $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v359$2 := $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    $$data$1[BV32_MUL($i.0, 2)] := FDIV32(v356$1, 1140850688);
    $$data$2[BV32_MUL($i.0, 2)] := FDIV32(v356$2, 1140850688);
    $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)] := v359$1;
    $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)] := v359$2;
    v360$1 := $$data$1[BV32_MUL($i.0, 2)];
    v360$2 := $$data$2[BV32_MUL($i.0, 2)];
    v361$1 := $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v361$2 := $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v362$1 := $$data$1[BV32_MUL($i.0, 2)];
    v362$2 := $$data$2[BV32_MUL($i.0, 2)];
    v363$1 := $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    v363$2 := $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)];
    $$data$1[BV32_MUL($i.0, 2)] := v362$1;
    $$data$2[BV32_MUL($i.0, 2)] := v362$2;
    $$data$1[BV32_ADD(BV32_MUL($i.0, 2), 1)] := FDIV32(v361$1, 1140850688);
    $$data$2[BV32_ADD(BV32_MUL($i.0, 2), 1)] := FDIV32(v361$2, 1140850688);
    $i.0 := BV32_ADD($i.0, 1);
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $27;

  $truebb9:
    assume {:partition} v269;
    call {:sourceloc} {:sourceloc_num 471} _LOG_READ_$$ifft1D_512.smem(true, BV32_ADD(v268$1, BV32_MUL($i.i39.0, 8)), $$ifft1D_512.smem[1bv1][BV32_ADD(v268$1, BV32_MUL($i.i39.0, 8))]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 471} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 471} _CHECK_READ_$$ifft1D_512.smem(true, BV32_ADD(v268$2, BV32_MUL($i.i39.0, 8)), $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v268$2, BV32_MUL($i.i39.0, 8))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ifft1D_512.smem"} true;
    v270$1 := $$ifft1D_512.smem[1bv1][BV32_ADD(v268$1, BV32_MUL($i.i39.0, 8))];
    v270$2 := $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v268$2, BV32_MUL($i.i39.0, 8))];
    v271$1 := $$data$1[BV32_MUL($i.i39.0, 2)];
    v271$2 := $$data$2[BV32_MUL($i.i39.0, 2)];
    v272$1 := $$data$1[BV32_ADD(BV32_MUL($i.i39.0, 2), 1)];
    v272$2 := $$data$2[BV32_ADD(BV32_MUL($i.i39.0, 2), 1)];
    $$data$1[BV32_MUL($i.i39.0, 2)] := v271$1;
    $$data$2[BV32_MUL($i.i39.0, 2)] := v271$2;
    $$data$1[BV32_ADD(BV32_MUL($i.i39.0, 2), 1)] := v270$1;
    $$data$2[BV32_ADD(BV32_MUL($i.i39.0, 2), 1)] := v270$2;
    $i.i39.0 := BV32_ADD($i.i39.0, 1);
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $25;

  $truebb8:
    assume {:partition} v264;
    v265$1 := $$reversed.i$1[$i.i41.0];
    v265$2 := $$reversed.i$2[$i.i41.0];
    v266$1 := $$data$1[BV32_MUL(v265$1, 2)];
    v266$2 := $$data$2[BV32_MUL(v265$2, 2)];
    v267$1 := $$data$1[BV32_ADD(BV32_MUL(v265$1, 2), 1)];
    v267$2 := $$data$2[BV32_ADD(BV32_MUL(v265$2, 2), 1)];
    call {:sourceloc} {:sourceloc_num 466} _LOG_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v255$1, BV32_MUL($i.i41.0, 72)), v267$1, $$ifft1D_512.smem[1bv1][BV32_ADD(v255$1, BV32_MUL($i.i41.0, 72))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(true, BV32_ADD(v255$2, BV32_MUL($i.i41.0, 72)));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 466} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 466} _CHECK_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v255$2, BV32_MUL($i.i41.0, 72)), v267$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ifft1D_512.smem"} true;
    $$ifft1D_512.smem[1bv1][BV32_ADD(v255$1, BV32_MUL($i.i41.0, 72))] := v267$1;
    $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v255$2, BV32_MUL($i.i41.0, 72))] := v267$2;
    $i.i41.0 := BV32_ADD($i.i41.0, 1);
    assume {:captureState "loop_back_edge_state_3_0"} true;
    goto $23;

  $truebb7:
    assume {:partition} v251;
    call {:sourceloc} {:sourceloc_num 436} _LOG_READ_$$ifft1D_512.smem(true, BV32_ADD(v250$1, BV32_MUL($i.i42.0, 8)), $$ifft1D_512.smem[1bv1][BV32_ADD(v250$1, BV32_MUL($i.i42.0, 8))]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 436} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 436} _CHECK_READ_$$ifft1D_512.smem(true, BV32_ADD(v250$2, BV32_MUL($i.i42.0, 8)), $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v250$2, BV32_MUL($i.i42.0, 8))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ifft1D_512.smem"} true;
    v252$1 := $$ifft1D_512.smem[1bv1][BV32_ADD(v250$1, BV32_MUL($i.i42.0, 8))];
    v252$2 := $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v250$2, BV32_MUL($i.i42.0, 8))];
    v253$1 := $$data$1[BV32_MUL($i.i42.0, 2)];
    v253$2 := $$data$2[BV32_MUL($i.i42.0, 2)];
    v254$1 := $$data$1[BV32_ADD(BV32_MUL($i.i42.0, 2), 1)];
    v254$2 := $$data$2[BV32_ADD(BV32_MUL($i.i42.0, 2), 1)];
    $$data$1[BV32_MUL($i.i42.0, 2)] := v252$1;
    $$data$2[BV32_MUL($i.i42.0, 2)] := v252$2;
    $$data$1[BV32_ADD(BV32_MUL($i.i42.0, 2), 1)] := v254$1;
    $$data$2[BV32_ADD(BV32_MUL($i.i42.0, 2), 1)] := v254$2;
    $i.i42.0 := BV32_ADD($i.i42.0, 1);
    assume {:captureState "loop_back_edge_state_4_0"} true;
    goto $21;

  $truebb6:
    assume {:partition} v246;
    v247$1 := $$reversed.i$1[$i.i44.0];
    v247$2 := $$reversed.i$2[$i.i44.0];
    v248$1 := $$data$1[BV32_MUL(v247$1, 2)];
    v248$2 := $$data$2[BV32_MUL(v247$2, 2)];
    v249$1 := $$data$1[BV32_ADD(BV32_MUL(v247$1, 2), 1)];
    v249$2 := $$data$2[BV32_ADD(BV32_MUL(v247$2, 2), 1)];
    call {:sourceloc} {:sourceloc_num 431} _LOG_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v237$1, BV32_MUL($i.i44.0, 72)), v248$1, $$ifft1D_512.smem[1bv1][BV32_ADD(v237$1, BV32_MUL($i.i44.0, 72))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(true, BV32_ADD(v237$2, BV32_MUL($i.i44.0, 72)));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 431} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 431} _CHECK_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v237$2, BV32_MUL($i.i44.0, 72)), v248$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ifft1D_512.smem"} true;
    $$ifft1D_512.smem[1bv1][BV32_ADD(v237$1, BV32_MUL($i.i44.0, 72))] := v248$1;
    $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v237$2, BV32_MUL($i.i44.0, 72))] := v248$2;
    $i.i44.0 := BV32_ADD($i.i44.0, 1);
    assume {:captureState "loop_back_edge_state_5_0"} true;
    goto $19;

  $truebb5:
    assume {:partition} v230;
    v231$1 := $$data$1[BV32_MUL($j25.0, 2)];
    v231$2 := $$data$2[BV32_MUL($j25.0, 2)];
    v232$1 := $$data$1[BV32_ADD(BV32_MUL($j25.0, 2), 1)];
    v232$2 := $$data$2[BV32_ADD(BV32_MUL($j25.0, 2), 1)];
    v233$1 := $$reversed824$1[$j25.0];
    v233$2 := $$reversed824$2[$j25.0];
    v234$1 := FP64_CONV32(FMUL64(FDIV64(FMUL64(4618760256179416344, SI32_TO_FP64(v233$1)), 4634204016564240384), SI32_TO_FP64(v2$1)));
    v234$2 := FP64_CONV32(FMUL64(FDIV64(FMUL64(4618760256179416344, SI32_TO_FP64(v233$2)), 4634204016564240384), SI32_TO_FP64(v2$2)));
    v235$1 := FCOS32(v234$1);
    v235$2 := FCOS32(v234$2);
    v236$1 := FSIN32(v234$1);
    v236$2 := FSIN32(v234$2);
    $$data$1[BV32_MUL($j25.0, 2)] := FADD32(FMUL32(v231$1, v235$1), FSUB32(-2147483648, FMUL32(v232$1, v236$1)));
    $$data$2[BV32_MUL($j25.0, 2)] := FADD32(FMUL32(v231$2, v235$2), FSUB32(-2147483648, FMUL32(v232$2, v236$2)));
    $$data$1[BV32_ADD(BV32_MUL($j25.0, 2), 1)] := FADD32(FMUL32(v231$1, v236$1), FMUL32(v232$1, v235$1));
    $$data$2[BV32_ADD(BV32_MUL($j25.0, 2), 1)] := FADD32(FMUL32(v231$2, v236$2), FMUL32(v232$2, v235$2));
    $j25.0 := BV32_ADD($j25.0, 1);
    assume {:captureState "loop_back_edge_state_6_0"} true;
    goto $15;

  $truebb4:
    assume {:partition} v136;
    call {:sourceloc} {:sourceloc_num 236} _LOG_READ_$$ifft1D_512.smem(true, BV32_ADD(v135$1, BV32_MUL($i.i45.0, 8)), $$ifft1D_512.smem[1bv1][BV32_ADD(v135$1, BV32_MUL($i.i45.0, 8))]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 236} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 236} _CHECK_READ_$$ifft1D_512.smem(true, BV32_ADD(v135$2, BV32_MUL($i.i45.0, 8)), $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v135$2, BV32_MUL($i.i45.0, 8))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ifft1D_512.smem"} true;
    v137$1 := $$ifft1D_512.smem[1bv1][BV32_ADD(v135$1, BV32_MUL($i.i45.0, 8))];
    v137$2 := $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v135$2, BV32_MUL($i.i45.0, 8))];
    v138$1 := $$data$1[BV32_MUL($i.i45.0, 2)];
    v138$2 := $$data$2[BV32_MUL($i.i45.0, 2)];
    v139$1 := $$data$1[BV32_ADD(BV32_MUL($i.i45.0, 2), 1)];
    v139$2 := $$data$2[BV32_ADD(BV32_MUL($i.i45.0, 2), 1)];
    $$data$1[BV32_MUL($i.i45.0, 2)] := v138$1;
    $$data$2[BV32_MUL($i.i45.0, 2)] := v138$2;
    $$data$1[BV32_ADD(BV32_MUL($i.i45.0, 2), 1)] := v137$1;
    $$data$2[BV32_ADD(BV32_MUL($i.i45.0, 2), 1)] := v137$2;
    $i.i45.0 := BV32_ADD($i.i45.0, 1);
    assume {:captureState "loop_back_edge_state_7_0"} true;
    goto $13;

  $truebb3:
    assume {:partition} v131;
    v132$1 := $$reversed.i$1[$i.i48.0];
    v132$2 := $$reversed.i$2[$i.i48.0];
    v133$1 := $$data$1[BV32_MUL(v132$1, 2)];
    v133$2 := $$data$2[BV32_MUL(v132$2, 2)];
    v134$1 := $$data$1[BV32_ADD(BV32_MUL(v132$1, 2), 1)];
    v134$2 := $$data$2[BV32_ADD(BV32_MUL(v132$2, 2), 1)];
    call {:sourceloc} {:sourceloc_num 231} _LOG_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v122$1, BV32_MUL($i.i48.0, 66)), v134$1, $$ifft1D_512.smem[1bv1][BV32_ADD(v122$1, BV32_MUL($i.i48.0, 66))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(true, BV32_ADD(v122$2, BV32_MUL($i.i48.0, 66)));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 231} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 231} _CHECK_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v122$2, BV32_MUL($i.i48.0, 66)), v134$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ifft1D_512.smem"} true;
    $$ifft1D_512.smem[1bv1][BV32_ADD(v122$1, BV32_MUL($i.i48.0, 66))] := v134$1;
    $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v122$2, BV32_MUL($i.i48.0, 66))] := v134$2;
    $i.i48.0 := BV32_ADD($i.i48.0, 1);
    assume {:captureState "loop_back_edge_state_8_0"} true;
    goto $11;

  $truebb2:
    assume {:partition} v118;
    call {:sourceloc} {:sourceloc_num 201} _LOG_READ_$$ifft1D_512.smem(true, BV32_ADD(v117$1, BV32_MUL($i.i53.0, 8)), $$ifft1D_512.smem[1bv1][BV32_ADD(v117$1, BV32_MUL($i.i53.0, 8))]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 201} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 201} _CHECK_READ_$$ifft1D_512.smem(true, BV32_ADD(v117$2, BV32_MUL($i.i53.0, 8)), $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v117$2, BV32_MUL($i.i53.0, 8))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$ifft1D_512.smem"} true;
    v119$1 := $$ifft1D_512.smem[1bv1][BV32_ADD(v117$1, BV32_MUL($i.i53.0, 8))];
    v119$2 := $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v117$2, BV32_MUL($i.i53.0, 8))];
    v120$1 := $$data$1[BV32_MUL($i.i53.0, 2)];
    v120$2 := $$data$2[BV32_MUL($i.i53.0, 2)];
    v121$1 := $$data$1[BV32_ADD(BV32_MUL($i.i53.0, 2), 1)];
    v121$2 := $$data$2[BV32_ADD(BV32_MUL($i.i53.0, 2), 1)];
    $$data$1[BV32_MUL($i.i53.0, 2)] := v119$1;
    $$data$2[BV32_MUL($i.i53.0, 2)] := v119$2;
    $$data$1[BV32_ADD(BV32_MUL($i.i53.0, 2), 1)] := v121$1;
    $$data$2[BV32_ADD(BV32_MUL($i.i53.0, 2), 1)] := v121$2;
    $i.i53.0 := BV32_ADD($i.i53.0, 1);
    assume {:captureState "loop_back_edge_state_9_0"} true;
    goto $9;

  $truebb1:
    assume {:partition} v113;
    v114$1 := $$reversed.i$1[$i.i51.0];
    v114$2 := $$reversed.i$2[$i.i51.0];
    v115$1 := $$data$1[BV32_MUL(v114$1, 2)];
    v115$2 := $$data$2[BV32_MUL(v114$2, 2)];
    v116$1 := $$data$1[BV32_ADD(BV32_MUL(v114$1, 2), 1)];
    v116$2 := $$data$2[BV32_ADD(BV32_MUL(v114$2, 2), 1)];
    call {:sourceloc} {:sourceloc_num 196} _LOG_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v104$1, BV32_MUL($i.i51.0, 66)), v115$1, $$ifft1D_512.smem[1bv1][BV32_ADD(v104$1, BV32_MUL($i.i51.0, 66))]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(true, BV32_ADD(v104$2, BV32_MUL($i.i51.0, 66)));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 196} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 196} _CHECK_WRITE_$$ifft1D_512.smem(true, BV32_ADD(v104$2, BV32_MUL($i.i51.0, 66)), v115$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$ifft1D_512.smem"} true;
    $$ifft1D_512.smem[1bv1][BV32_ADD(v104$1, BV32_MUL($i.i51.0, 66))] := v115$1;
    $$ifft1D_512.smem[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(v104$2, BV32_MUL($i.i51.0, 66))] := v115$2;
    $i.i51.0 := BV32_ADD($i.i51.0, 1);
    assume {:captureState "loop_back_edge_state_10_0"} true;
    goto $7;

  $truebb0:
    assume {:partition} v97;
    v98$1 := $$data$1[BV32_MUL($j.0, 2)];
    v98$2 := $$data$2[BV32_MUL($j.0, 2)];
    v99$1 := $$data$1[BV32_ADD(BV32_MUL($j.0, 2), 1)];
    v99$2 := $$data$2[BV32_ADD(BV32_MUL($j.0, 2), 1)];
    v100$1 := $$reversed8$1[$j.0];
    v100$2 := $$reversed8$2[$j.0];
    v101$1 := FP64_CONV32(FMUL64(FDIV64(FMUL64(4618760256179416344, SI32_TO_FP64(v100$1)), 4647714815446351872), SI32_TO_FP64(v0$1)));
    v101$2 := FP64_CONV32(FMUL64(FDIV64(FMUL64(4618760256179416344, SI32_TO_FP64(v100$2)), 4647714815446351872), SI32_TO_FP64(v0$2)));
    v102$1 := FCOS32(v101$1);
    v102$2 := FCOS32(v101$2);
    v103$1 := FSIN32(v101$1);
    v103$2 := FSIN32(v101$2);
    $$data$1[BV32_MUL($j.0, 2)] := FADD32(FMUL32(v98$1, v102$1), FSUB32(-2147483648, FMUL32(v99$1, v103$1)));
    $$data$2[BV32_MUL($j.0, 2)] := FADD32(FMUL32(v98$2, v102$2), FSUB32(-2147483648, FMUL32(v99$2, v103$2)));
    $$data$1[BV32_ADD(BV32_MUL($j.0, 2), 1)] := FADD32(FMUL32(v98$1, v103$1), FMUL32(v99$1, v102$1));
    $$data$2[BV32_ADD(BV32_MUL($j.0, 2), 1)] := FADD32(FMUL32(v98$2, v103$2), FMUL32(v99$2, v102$2));
    $j.0 := BV32_ADD($j.0, 1);
    assume {:captureState "loop_back_edge_state_11_0"} true;
    goto $3;

  $truebb:
    assume {:partition} v4;
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$work(true, BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), $$work[BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2))]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$work(true, BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), $$work[BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2))]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$work"} true;
    v5$1 := $$work[BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2))];
    v5$2 := $$work[BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2))];
    call {:sourceloc} {:sourceloc_num 4} _LOG_READ_$$work(true, BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1), $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 4} _CHECK_READ_$$work(true, BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1), $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$work"} true;
    v6$1 := $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$1, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1)];
    v6$2 := $$work[BV32_ADD(BV32_ADD(BV32_MUL(v1$2, 2), BV32_MUL(BV32_MUL($i.i.0, 64), 2)), 1)];
    $$data$1[BV32_MUL($i.i.0, 2)] := v5$1;
    $$data$2[BV32_MUL($i.i.0, 2)] := v5$2;
    $$data$1[BV32_ADD(BV32_MUL($i.i.0, 2), 1)] := v6$1;
    $$data$2[BV32_ADD(BV32_MUL($i.i.0, 2), 1)] := v6$2;
    $i.i.0 := BV32_ADD($i.i.0, 1);
    assume {:captureState "loop_back_edge_state_12_0"} true;
    goto $1;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 64 then 1 else 0) != 0;

axiom (if num_groups_x == 128 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_2($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_3($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_4($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_5($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_6($0: int, $1: int);
  requires $1 == 0;
  modifies $$ifft1D_512.smem, $$work, _TRACKING;



var $$ifft1D_512.reversed8$0$1: int;

var $$ifft1D_512.reversed8$0$2: int;

var $$ifft1D_512.reversed8$1$1: int;

var $$ifft1D_512.reversed8$1$2: int;

var $$ifft1D_512.reversed8$2$1: int;

var $$ifft1D_512.reversed8$2$2: int;

var $$ifft1D_512.reversed8$3$1: int;

var $$ifft1D_512.reversed8$3$2: int;

var $$ifft1D_512.reversed8$4$1: int;

var $$ifft1D_512.reversed8$4$2: int;

var $$ifft1D_512.reversed8$5$1: int;

var $$ifft1D_512.reversed8$5$2: int;

var $$ifft1D_512.reversed8$6$1: int;

var $$ifft1D_512.reversed8$6$2: int;

var $$ifft1D_512.reversed8$7$1: int;

var $$ifft1D_512.reversed8$7$2: int;

var $$storex8.reversed$0$1: int;

var $$storex8.reversed$0$2: int;

var $$storex8.reversed$1$1: int;

var $$storex8.reversed$1$2: int;

var $$storex8.reversed$2$1: int;

var $$storex8.reversed$2$2: int;

var $$storex8.reversed$3$1: int;

var $$storex8.reversed$3$2: int;

var $$storex8.reversed$4$1: int;

var $$storex8.reversed$4$2: int;

var $$storex8.reversed$5$1: int;

var $$storex8.reversed$5$2: int;

var $$storex8.reversed$6$1: int;

var $$storex8.reversed$6$2: int;

var $$storex8.reversed$7$1: int;

var $$storex8.reversed$7$2: int;

var $$storey8.reversed$0$1: int;

var $$storey8.reversed$0$2: int;

var $$storey8.reversed$1$1: int;

var $$storey8.reversed$1$2: int;

var $$storey8.reversed$2$1: int;

var $$storey8.reversed$2$2: int;

var $$storey8.reversed$3$1: int;

var $$storey8.reversed$3$2: int;

var $$storey8.reversed$4$1: int;

var $$storey8.reversed$4$2: int;

var $$storey8.reversed$5$1: int;

var $$storey8.reversed$5$2: int;

var $$storey8.reversed$6$1: int;

var $$storey8.reversed$6$2: int;

var $$storey8.reversed$7$1: int;

var $$storey8.reversed$7$2: int;

var $$ifft1D_512.reversed81$0$1: int;

var $$ifft1D_512.reversed81$0$2: int;

var $$ifft1D_512.reversed81$1$1: int;

var $$ifft1D_512.reversed81$1$2: int;

var $$ifft1D_512.reversed81$2$1: int;

var $$ifft1D_512.reversed81$2$2: int;

var $$ifft1D_512.reversed81$3$1: int;

var $$ifft1D_512.reversed81$3$2: int;

var $$ifft1D_512.reversed81$4$1: int;

var $$ifft1D_512.reversed81$4$2: int;

var $$ifft1D_512.reversed81$5$1: int;

var $$ifft1D_512.reversed81$5$2: int;

var $$ifft1D_512.reversed81$6$1: int;

var $$ifft1D_512.reversed81$6$2: int;

var $$ifft1D_512.reversed81$7$1: int;

var $$ifft1D_512.reversed81$7$2: int;

var $$globalStores8.reversed$0$1: int;

var $$globalStores8.reversed$0$2: int;

var $$globalStores8.reversed$1$1: int;

var $$globalStores8.reversed$1$2: int;

var $$globalStores8.reversed$2$1: int;

var $$globalStores8.reversed$2$2: int;

var $$globalStores8.reversed$3$1: int;

var $$globalStores8.reversed$3$2: int;

var $$globalStores8.reversed$4$1: int;

var $$globalStores8.reversed$4$2: int;

var $$globalStores8.reversed$5$1: int;

var $$globalStores8.reversed$5$2: int;

var $$globalStores8.reversed$6$1: int;

var $$globalStores8.reversed$6$2: int;

var $$globalStores8.reversed$7$1: int;

var $$globalStores8.reversed$7$2: int;

const {:existential true} _b0: bool;

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b1: bool;

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

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

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const _WATCHED_VALUE_$$work: int;

procedure {:inline 1} _LOG_READ_$$work(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$work;



implementation {:inline 1} _LOG_READ_$$work(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$work := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work == _value then true else _READ_HAS_OCCURRED_$$work);
    return;
}



procedure _CHECK_READ_$$work(_P: bool, _offset: int, _value: int);
  requires {:source_name "work"} {:array "$$work"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$work);
  requires {:source_name "work"} {:array "$$work"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$work: bool;

procedure {:inline 1} _LOG_WRITE_$$work(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$work, _WRITE_READ_BENIGN_FLAG_$$work;



implementation {:inline 1} _LOG_WRITE_$$work(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$work := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work == _value then true else _WRITE_HAS_OCCURRED_$$work);
    _WRITE_READ_BENIGN_FLAG_$$work := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$work);
    return;
}



procedure _CHECK_WRITE_$$work(_P: bool, _offset: int, _value: int);
  requires {:source_name "work"} {:array "$$work"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work != _value);
  requires {:source_name "work"} {:array "$$work"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$work != _value);
  requires {:source_name "work"} {:array "$$work"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$work(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$work;



implementation {:inline 1} _LOG_ATOMIC_$$work(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$work := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$work);
    return;
}



procedure _CHECK_ATOMIC_$$work(_P: bool, _offset: int);
  requires {:source_name "work"} {:array "$$work"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset);
  requires {:source_name "work"} {:array "$$work"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$work(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$work;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$work(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$work := (if _P && _WRITE_HAS_OCCURRED_$$work && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$work);
    return;
}



const _WATCHED_VALUE_$$ifft1D_512.smem: int;

procedure {:inline 1} _LOG_READ_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ifft1D_512.smem;



implementation {:inline 1} _LOG_READ_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ifft1D_512.smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ifft1D_512.smem == _value then true else _READ_HAS_OCCURRED_$$ifft1D_512.smem);
    return;
}



procedure _CHECK_READ_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem: bool;

procedure {:inline 1} _LOG_WRITE_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ifft1D_512.smem, _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem;



implementation {:inline 1} _LOG_WRITE_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ifft1D_512.smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ifft1D_512.smem == _value then true else _WRITE_HAS_OCCURRED_$$ifft1D_512.smem);
    _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ifft1D_512.smem == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem);
    return;
}



procedure _CHECK_WRITE_$$ifft1D_512.smem(_P: bool, _offset: int, _value: int);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ifft1D_512.smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ifft1D_512.smem != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$ifft1D_512.smem(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;



implementation {:inline 1} _LOG_ATOMIC_$$ifft1D_512.smem(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem);
    return;
}



procedure _CHECK_ATOMIC_$$ifft1D_512.smem(_P: bool, _offset: int);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "smem"} {:array "$$ifft1D_512.smem"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem := (if _P && _WRITE_HAS_OCCURRED_$$ifft1D_512.smem && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ifft1D_512.smem);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_2($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_3($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_4($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_5($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_6($0: int, $1: int)
{

  __BarrierImpl:
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$ifft1D_512.smem;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$ifft1D_512.smem;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$work;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$work;
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
    havoc $$work;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$ifft1D_512.smem;
    goto anon3;

  anon7_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;
