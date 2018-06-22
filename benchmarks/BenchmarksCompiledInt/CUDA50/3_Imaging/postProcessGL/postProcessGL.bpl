type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "g_odata"} {:global} $$g_odata: [int]int;

axiom {:array_info "$$g_odata"} {:global} {:elem_width 32} {:source_name "g_odata"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$g_odata: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$g_odata: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$1"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i9"} {:elem_width 32} {:source_name "res.i9"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$2"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$3"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$4"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i8"} {:elem_width 32} {:source_name "res.i8"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$5"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$6"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$7"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i7"} {:elem_width 32} {:source_name "res.i7"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$8"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$9"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$10"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i6"} {:elem_width 32} {:source_name "res.i6"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$11"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$12"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$13"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i5"} {:elem_width 32} {:source_name "res.i5"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$14"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$15"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$16"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i4"} {:elem_width 32} {:source_name "res.i4"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$17"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$18"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$19"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i3"} {:elem_width 32} {:source_name "res.i3"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$20"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$21"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$22"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i2"} {:elem_width 32} {:source_name "res.i2"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$23"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$24"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$25"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$res.i"} {:elem_width 32} {:source_name "res.i"} {:source_elem_width 128} {:source_dimensions "1"} true;

axiom {:array_info "$$26"} {:elem_width 8} {:source_name ""} {:source_elem_width 192} {:source_dimensions "1"} true;

axiom {:array_info "$$27"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$28"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$29"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$30"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$31"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$32"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$33"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$34"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$35"} {:elem_width 8} {:source_name ""} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$pixel"} {:elem_width 8} {:source_name "pixel"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:source_name "sdata"} {:group_shared} $$sdata: [bv1][int]int;

axiom {:array_info "$$sdata"} {:group_shared} {:elem_width 8} {:source_name "sdata"} {:source_elem_width 32} {:source_dimensions "0"} true;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$sdata: bool;

var {:race_checking} {:group_shared} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$sdata: bool;

axiom {:array_info "$$inTex"} {:global} {:elem_width 8} {:source_name "inTex"} {:source_elem_width 192} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$inTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$inTex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 192} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$inTex: bool;

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

function FP32_TO_UI8(int) : int;

function SI32_TO_FP32(int) : int;

function UI8_TO_FP32(int) : int;

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

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

procedure {:source_name "cudaProcess"} {:kernel} $_Z11cudaProcessPjiiiiff($imgw: int, $imgh: int, $tilew: int, $r: int, $threshold: int, $highlight: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imgw == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tilew == 32 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $r == 8 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$g_odata && !_WRITE_HAS_OCCURRED_$$g_odata && !_ATOMIC_HAS_OCCURRED_$$g_odata;
  requires !_READ_HAS_OCCURRED_$$inTex && !_WRITE_HAS_OCCURRED_$$inTex && !_ATOMIC_HAS_OCCURRED_$$inTex;
  requires !_READ_HAS_OCCURRED_$$sdata && !_WRITE_HAS_OCCURRED_$$sdata && !_ATOMIC_HAS_OCCURRED_$$sdata;
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
  modifies $$sdata, _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata, $$g_odata, _TRACKING, _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata, _READ_HAS_OCCURRED_$$sdata;



implementation {:source_name "cudaProcess"} {:kernel} $_Z11cudaProcessPjiiiiff($imgw: int, $imgh: int, $tilew: int, $r: int, $threshold: int, $highlight: int)
{
  var $rsum.0$1: int;
  var $rsum.0$2: int;
  var $gsum.0$1: int;
  var $gsum.0$2: int;
  var $bsum.0$1: int;
  var $bsum.0$2: int;
  var $samples.0: int;
  var $dy.0: int;
  var $rsum.1$1: int;
  var $rsum.1$2: int;
  var $gsum.1$1: int;
  var $gsum.1$2: int;
  var $bsum.1$1: int;
  var $bsum.1$2: int;
  var $samples.1: int;
  var $dx.0: int;
  var $rsum.2$1: int;
  var $rsum.2$2: int;
  var $gsum.2$1: int;
  var $gsum.2$2: int;
  var $bsum.2$1: int;
  var $bsum.2$2: int;
  var $samples.2: int;
  var $r1.0$1: int;
  var $r1.0$2: int;
  var $g.0$1: int;
  var $g.0$2: int;
  var $b.0$1: int;
  var $b.0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: int;
  var v6$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v4$1: int;
  var v4$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v45$1: int;
  var v45$2: int;
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
  var v67$1: bool;
  var v67$2: bool;
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
  var v82$1: int;
  var v82$2: int;
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
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: int;
  var v102$2: int;
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
  var v182$1: int;
  var v182$2: int;
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
  var v198$1: bool;
  var v198$2: bool;
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
  var v213$1: int;
  var v213$2: int;
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
  var v231$1: int;
  var v231$2: int;
  var v232$1: int;
  var v232$2: int;
  var v233$1: int;
  var v233$2: int;
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
  var v313$1: int;
  var v313$2: int;
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
  var v329$1: bool;
  var v329$2: bool;
  var v330$1: bool;
  var v330$2: bool;
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
  var v345$1: int;
  var v345$2: int;
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
  var v363$1: int;
  var v363$2: int;
  var v364$1: int;
  var v364$2: int;
  var v365$1: int;
  var v365$2: int;
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
  var v445$1: int;
  var v445$2: int;
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
  var v544$1: int;
  var v544$2: int;
  var v545$1: int;
  var v545$2: int;
  var v546$1: int;
  var v546$2: int;
  var v547$1: int;
  var v547$2: int;
  var v548$1: int;
  var v548$2: int;
  var v549$1: int;
  var v549$2: int;
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
  var v459$1: int;
  var v459$2: int;
  var v460$1: int;
  var v460$2: int;
  var v461$1: int;
  var v461$2: int;
  var v462$1: int;
  var v462$2: int;
  var v463$1: int;
  var v463$2: int;
  var v464$1: int;
  var v464$2: int;
  var v465$1: int;
  var v465$2: int;
  var v466$1: int;
  var v466$2: int;
  var v467$1: int;
  var v467$2: int;
  var v468$1: int;
  var v468$2: int;
  var v469$1: int;
  var v469$2: int;
  var v470$1: int;
  var v470$2: int;
  var v471$1: int;
  var v471$2: int;
  var v472$1: int;
  var v472$2: int;
  var v473$1: int;
  var v473$2: int;
  var v474$1: int;
  var v474$2: int;
  var v475$1: int;
  var v475$2: int;
  var v476$1: int;
  var v476$2: int;
  var v477$1: int;
  var v477$2: int;
  var v478$1: int;
  var v478$2: int;
  var v479$1: int;
  var v479$2: int;
  var v480$1: int;
  var v480$2: int;
  var v481$1: int;
  var v481$2: int;
  var v482$1: int;
  var v482$2: int;
  var v483$1: int;
  var v483$2: int;
  var v484$1: int;
  var v484$2: int;
  var v485$1: int;
  var v485$2: int;
  var v486$1: int;
  var v486$2: int;
  var v487$1: int;
  var v487$2: int;
  var v488$1: int;
  var v488$2: int;
  var v489$1: int;
  var v489$2: int;
  var v490$1: int;
  var v490$2: int;
  var v491$1: int;
  var v491$2: int;
  var v492$1: int;
  var v492$2: int;
  var v493$1: int;
  var v493$2: int;
  var v494$1: int;
  var v494$2: int;
  var v495$1: int;
  var v495$2: int;
  var v496$1: int;
  var v496$2: int;
  var v497$1: int;
  var v497$2: int;
  var v498$1: int;
  var v498$2: int;
  var v499$1: int;
  var v499$2: int;
  var v500$1: int;
  var v500$2: int;
  var v501$1: int;
  var v501$2: int;
  var v502$1: int;
  var v502$2: int;
  var v503$1: int;
  var v503$2: int;
  var v504$1: int;
  var v504$2: int;
  var v505$1: int;
  var v505$2: int;
  var v506$1: int;
  var v506$2: int;
  var v507$1: int;
  var v507$2: int;
  var v508$1: int;
  var v508$2: int;
  var v509$1: int;
  var v509$2: int;
  var v510$1: int;
  var v510$2: int;
  var v511$1: int;
  var v511$2: int;
  var v512$1: int;
  var v512$2: int;
  var v513$1: int;
  var v513$2: int;
  var v514$1: int;
  var v514$2: int;
  var v515$1: int;
  var v515$2: int;
  var v516$1: int;
  var v516$2: int;
  var v517$1: int;
  var v517$2: int;
  var v518$1: int;
  var v518$2: int;
  var v519$1: int;
  var v519$2: int;
  var v520$1: int;
  var v520$2: int;
  var v521$1: int;
  var v521$2: int;
  var v522$1: int;
  var v522$2: int;
  var v523$1: int;
  var v523$2: int;
  var v524$1: int;
  var v524$2: int;
  var v525$1: int;
  var v525$2: int;
  var v542$1: int;
  var v542$2: int;
  var v543$1: int;
  var v543$2: int;
  var v526$1: int;
  var v526$2: int;
  var v527$1: int;
  var v527$2: int;
  var v528$1: int;
  var v528$2: int;
  var v529$1: int;
  var v529$2: int;
  var v530$1: int;
  var v530$2: int;
  var v531$1: int;
  var v531$2: int;
  var v532$1: int;
  var v532$2: int;
  var v533$1: int;
  var v533$2: int;
  var v534$1: int;
  var v534$2: int;
  var v535$1: int;
  var v535$2: int;
  var v536$1: int;
  var v536$2: int;
  var v537$1: int;
  var v537$2: int;
  var v538$1: int;
  var v538$2: int;
  var v539$1: int;
  var v539$2: int;
  var v540$1: int;
  var v540$2: int;
  var v541$1: int;
  var v541$2: int;
  var v550$1: int;
  var v550$2: int;
  var v551$1: int;
  var v551$2: int;
  var v552$1: int;
  var v552$2: int;
  var v553$1: int;
  var v553$2: int;
  var v554$1: int;
  var v554$2: int;
  var v555$1: int;
  var v555$2: int;
  var v556$1: int;
  var v556$2: int;
  var v557$1: int;
  var v557$2: int;
  var v558$1: int;
  var v558$2: int;
  var v559$1: int;
  var v559$2: int;
  var v560$1: int;
  var v560$2: int;
  var v561$1: int;
  var v561$2: int;
  var v562$1: int;
  var v562$2: int;
  var v563$1: int;
  var v563$2: int;
  var v564$1: int;
  var v564$2: int;
  var v565$1: int;
  var v565$2: int;
  var v566$1: int;
  var v566$2: int;
  var v567$1: int;
  var v567$2: int;
  var v568$1: int;
  var v568$2: int;
  var v569$1: int;
  var v569$2: int;
  var v570$1: int;
  var v570$2: int;
  var v571$1: int;
  var v571$2: int;
  var v572$1: int;
  var v572$2: int;
  var v573$1: int;
  var v573$2: int;
  var v574$1: int;
  var v574$2: int;
  var v575$1: int;
  var v575$2: int;
  var v576$1: int;
  var v576$2: int;
  var v577$1: int;
  var v577$2: int;
  var v578$1: int;
  var v578$2: int;
  var v579$1: int;
  var v579$2: int;
  var v580$1: int;
  var v580$2: int;
  var v581$1: int;
  var v581$2: int;
  var v582$1: int;
  var v582$2: int;
  var v583$1: int;
  var v583$2: int;
  var v584$1: int;
  var v584$2: int;
  var v585$1: int;
  var v585$2: int;
  var v586$1: int;
  var v586$2: int;
  var v587$1: int;
  var v587$2: int;
  var v588$1: int;
  var v588$2: int;
  var v589$1: int;
  var v589$2: int;
  var v590$1: int;
  var v590$2: int;
  var v591: bool;
  var v592: bool;
  var v593$1: int;
  var v593$2: int;
  var v594$1: int;
  var v594$2: int;
  var v595$1: int;
  var v595$2: int;
  var v596$1: int;
  var v596$2: int;
  var v597: int;
  var v598: int;
  var v599: bool;
  var v600$1: int;
  var v600$2: int;
  var v601$1: int;
  var v601$2: int;
  var v602$1: int;
  var v602$2: int;
  var v603$1: int;
  var v603$2: int;
  var v604$1: int;
  var v604$2: int;
  var v605$1: int;
  var v605$2: int;
  var v606$1: bool;
  var v606$2: bool;
  var v607$1: int;
  var v607$2: int;
  var v608$1: int;
  var v608$2: int;
  var v609$1: int;
  var v609$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  __partitioned_block_$0_0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    havoc v2$1, v2$2;
    $$26$0$1 := v2$1;
    $$26$0$2 := v2$2;
    havoc v3$1, v3$2;
    $$26$1$1 := v3$1;
    $$26$1$2 := v3$2;
    havoc v4$1, v4$2;
    $$26$2$1 := v4$1;
    $$26$2$2 := v4$2;
    havoc v5$1, v5$2;
    $$26$3$1 := v5$1;
    $$26$3$2 := v5$2;
    havoc v6$1, v6$2;
    $$26$4$1 := v6$1;
    $$26$4$2 := v6$2;
    havoc v7$1, v7$2;
    $$26$5$1 := v7$1;
    $$26$5$2 := v7$2;
    havoc v8$1, v8$2;
    $$26$6$1 := v8$1;
    $$26$6$2 := v8$2;
    havoc v9$1, v9$2;
    $$26$7$1 := v9$1;
    $$26$7$2 := v9$2;
    havoc v10$1, v10$2;
    $$26$8$1 := v10$1;
    $$26$8$2 := v10$2;
    havoc v11$1, v11$2;
    $$26$9$1 := v11$1;
    $$26$9$2 := v11$2;
    havoc v12$1, v12$2;
    $$26$10$1 := v12$1;
    $$26$10$2 := v12$2;
    havoc v13$1, v13$2;
    $$26$11$1 := v13$1;
    $$26$11$2 := v13$2;
    havoc v14$1, v14$2;
    $$26$12$1 := v14$1;
    $$26$12$2 := v14$2;
    havoc v15$1, v15$2;
    $$26$13$1 := v15$1;
    $$26$13$2 := v15$2;
    havoc v16$1, v16$2;
    $$26$14$1 := v16$1;
    $$26$14$2 := v16$2;
    havoc v17$1, v17$2;
    $$26$15$1 := v17$1;
    $$26$15$2 := v17$2;
    havoc v18$1, v18$2;
    $$26$16$1 := v18$1;
    $$26$16$2 := v18$2;
    havoc v19$1, v19$2;
    $$26$17$1 := v19$1;
    $$26$17$2 := v19$2;
    havoc v20$1, v20$2;
    $$26$18$1 := v20$1;
    $$26$18$2 := v20$2;
    havoc v21$1, v21$2;
    $$26$19$1 := v21$1;
    $$26$19$2 := v21$2;
    havoc v22$1, v22$2;
    $$26$20$1 := v22$1;
    $$26$20$2 := v22$2;
    havoc v23$1, v23$2;
    $$26$21$1 := v23$1;
    $$26$21$2 := v23$2;
    havoc v24$1, v24$2;
    $$26$22$1 := v24$1;
    $$26$22$2 := v24$2;
    havoc v25$1, v25$2;
    $$26$23$1 := v25$1;
    $$26$23$2 := v25$2;
    v26$1 := $$26$0$1;
    v26$2 := $$26$0$2;
    v27$1 := $$26$1$1;
    v27$2 := $$26$1$2;
    v28$1 := $$26$2$1;
    v28$2 := $$26$2$2;
    v29$1 := $$26$3$1;
    v29$2 := $$26$3$2;
    v30$1 := $$26$4$1;
    v30$2 := $$26$4$2;
    v31$1 := $$26$5$1;
    v31$2 := $$26$5$2;
    v32$1 := $$26$6$1;
    v32$2 := $$26$6$2;
    v33$1 := $$26$7$1;
    v33$2 := $$26$7$2;
    v34$1 := $$26$8$1;
    v34$2 := $$26$8$2;
    v35$1 := $$26$9$1;
    v35$2 := $$26$9$2;
    v36$1 := $$26$10$1;
    v36$2 := $$26$10$2;
    v37$1 := $$26$11$1;
    v37$2 := $$26$11$2;
    v38$1 := $$26$12$1;
    v38$2 := $$26$12$2;
    v39$1 := $$26$13$1;
    v39$2 := $$26$13$2;
    v40$1 := $$26$14$1;
    v40$2 := $$26$14$2;
    v41$1 := $$26$15$1;
    v41$2 := $$26$15$2;
    v42$1 := $$26$16$1;
    v42$2 := $$26$16$2;
    v43$1 := $$26$17$1;
    v43$2 := $$26$17$2;
    v44$1 := $$26$18$1;
    v44$2 := $$26$18$2;
    v45$1 := $$26$19$1;
    v45$2 := $$26$19$2;
    v46$1 := $$26$20$1;
    v46$2 := $$26$20$2;
    v47$1 := $$26$21$1;
    v47$2 := $$26$21$2;
    v48$1 := $$26$22$1;
    v48$2 := $$26$22$2;
    v49$1 := $$26$23$1;
    v49$2 := $$26$23$2;
    call {:sourceloc_num 76} v50$1, v50$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(true, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v41$1, v40$1), v39$1), v38$1), v37$1), v36$1), v35$1), v34$1), v33$1), v32$1), v31$1), v30$1), v29$1), v28$1), v27$1), v26$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v45$1, v44$1), v43$1), v42$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v49$1, v48$1), v47$1), v46$1), SI32_TO_FP32(v0$1), SI32_TO_FP32(v1$1), true, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v41$2, v40$2), v39$2), v38$2), v37$2), v36$2), v35$2), v34$2), v33$2), v32$2), v31$2), v30$2), v29$2), v28$2), v27$2), v26$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v45$2, v44$2), v43$2), v42$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v49$2, v48$2), v47$2), v46$2), SI32_TO_FP32(v0$2), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i$0$1 := BV_EXTRACT(v50$1, 32, 0);
    $$res.i$0$2 := BV_EXTRACT(v50$2, 32, 0);
    $$res.i$1$1 := BV_EXTRACT(v50$1, 64, 32);
    $$res.i$1$2 := BV_EXTRACT(v50$2, 64, 32);
    $$res.i$2$1 := BV_EXTRACT(v50$1, 96, 64);
    $$res.i$2$2 := BV_EXTRACT(v50$2, 96, 64);
    $$res.i$3$1 := BV_EXTRACT(v50$1, 128, 96);
    $$res.i$3$2 := BV_EXTRACT(v50$2, 128, 96);
    v51$1 := $$res.i$0$1;
    v51$2 := $$res.i$0$2;
    v52$1 := $$res.i$1$1;
    v52$2 := $$res.i$1$2;
    v53$1 := $$res.i$2$1;
    v53$2 := $$res.i$2$2;
    v54$1 := $$res.i$3$1;
    v54$2 := $$res.i$3$2;
    $$24$0$1 := FP32_TO_UI8(FMUL32(v51$1, 1132396544));
    $$24$0$2 := FP32_TO_UI8(FMUL32(v51$2, 1132396544));
    $$24$1$1 := FP32_TO_UI8(FMUL32(v52$1, 1132396544));
    $$24$1$2 := FP32_TO_UI8(FMUL32(v52$2, 1132396544));
    $$24$2$1 := FP32_TO_UI8(FMUL32(v53$1, 1132396544));
    $$24$2$2 := FP32_TO_UI8(FMUL32(v53$2, 1132396544));
    $$24$3$1 := FP32_TO_UI8(FMUL32(v54$1, 1132396544));
    $$24$3$2 := FP32_TO_UI8(FMUL32(v54$2, 1132396544));
    v55$1 := $$24$0$1;
    v55$2 := $$24$0$2;
    v56$1 := $$24$1$1;
    v56$2 := $$24$1$2;
    v57$1 := $$24$2$1;
    v57$2 := $$24$2$2;
    v58$1 := $$24$3$1;
    v58$2 := $$24$3$2;
    $$25$0$1 := v55$1;
    $$25$0$2 := v55$2;
    $$25$1$1 := v56$1;
    $$25$1$2 := v56$2;
    $$25$2$1 := v57$1;
    $$25$2$2 := v57$2;
    $$25$3$1 := v58$1;
    $$25$3$2 := v58$2;
    v59$1 := $$25$0$1;
    v59$2 := $$25$0$2;
    v60$1 := $$25$1$1;
    v60$2 := $$25$1$2;
    v61$1 := $$25$2$1;
    v61$2 := $$25$2$2;
    v62$1 := $$25$3$1;
    v62$2 := $$25$3$2;
    $$27$0$1 := v59$1;
    $$27$0$2 := v59$2;
    $$27$1$1 := v60$1;
    $$27$1$2 := v60$2;
    $$27$2$1 := v61$1;
    $$27$2$2 := v61$2;
    $$27$3$1 := v62$1;
    $$27$3$2 := v62$2;
    v63$1 := $$27$0$1;
    v63$2 := $$27$0$2;
    call {:sourceloc} {:sourceloc_num 106} _LOG_WRITE_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), v63$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 106} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 106} _CHECK_WRITE_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), v63$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4)] := v63$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4)] := v63$2;
    v64$1 := $$27$1$1;
    v64$2 := $$27$1$2;
    call {:sourceloc} {:sourceloc_num 108} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1), v64$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 108} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 108} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1), v64$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)] := v64$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1)] := v64$2;
    v65$1 := $$27$2$1;
    v65$2 := $$27$2$2;
    call {:sourceloc} {:sourceloc_num 110} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2), v65$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 110} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 110} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2), v65$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)] := v65$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2)] := v65$2;
    v66$1 := $$27$3$1;
    v66$2 := $$27$3$2;
    call {:sourceloc} {:sourceloc_num 112} _LOG_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3), v66$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 112} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 112} _CHECK_WRITE_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3), v66$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)] := v66$1;
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3)] := v66$2;
    v67$1 := BV32_ULT(local_id_x$1, $r);
    v67$2 := BV32_ULT(local_id_x$2, $r);
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
    p0$1 := (if v67$1 then v67$1 else p0$1);
    p0$2 := (if v67$2 then v67$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v68$1 := (if p0$1 then _HAVOC_int$1 else v68$1);
    v68$2 := (if p0$2 then _HAVOC_int$2 else v68$2);
    $$23$0$1 := (if p0$1 then v68$1 else $$23$0$1);
    $$23$0$2 := (if p0$2 then v68$2 else $$23$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v69$1 := (if p0$1 then _HAVOC_int$1 else v69$1);
    v69$2 := (if p0$2 then _HAVOC_int$2 else v69$2);
    $$23$1$1 := (if p0$1 then v69$1 else $$23$1$1);
    $$23$1$2 := (if p0$2 then v69$2 else $$23$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v70$1 := (if p0$1 then _HAVOC_int$1 else v70$1);
    v70$2 := (if p0$2 then _HAVOC_int$2 else v70$2);
    $$23$2$1 := (if p0$1 then v70$1 else $$23$2$1);
    $$23$2$2 := (if p0$2 then v70$2 else $$23$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v71$1 := (if p0$1 then _HAVOC_int$1 else v71$1);
    v71$2 := (if p0$2 then _HAVOC_int$2 else v71$2);
    $$23$3$1 := (if p0$1 then v71$1 else $$23$3$1);
    $$23$3$2 := (if p0$2 then v71$2 else $$23$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v72$1 := (if p0$1 then _HAVOC_int$1 else v72$1);
    v72$2 := (if p0$2 then _HAVOC_int$2 else v72$2);
    $$23$4$1 := (if p0$1 then v72$1 else $$23$4$1);
    $$23$4$2 := (if p0$2 then v72$2 else $$23$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v73$1 := (if p0$1 then _HAVOC_int$1 else v73$1);
    v73$2 := (if p0$2 then _HAVOC_int$2 else v73$2);
    $$23$5$1 := (if p0$1 then v73$1 else $$23$5$1);
    $$23$5$2 := (if p0$2 then v73$2 else $$23$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v74$1 := (if p0$1 then _HAVOC_int$1 else v74$1);
    v74$2 := (if p0$2 then _HAVOC_int$2 else v74$2);
    $$23$6$1 := (if p0$1 then v74$1 else $$23$6$1);
    $$23$6$2 := (if p0$2 then v74$2 else $$23$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v75$1 := (if p0$1 then _HAVOC_int$1 else v75$1);
    v75$2 := (if p0$2 then _HAVOC_int$2 else v75$2);
    $$23$7$1 := (if p0$1 then v75$1 else $$23$7$1);
    $$23$7$2 := (if p0$2 then v75$2 else $$23$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v76$1 := (if p0$1 then _HAVOC_int$1 else v76$1);
    v76$2 := (if p0$2 then _HAVOC_int$2 else v76$2);
    $$23$8$1 := (if p0$1 then v76$1 else $$23$8$1);
    $$23$8$2 := (if p0$2 then v76$2 else $$23$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v77$1 := (if p0$1 then _HAVOC_int$1 else v77$1);
    v77$2 := (if p0$2 then _HAVOC_int$2 else v77$2);
    $$23$9$1 := (if p0$1 then v77$1 else $$23$9$1);
    $$23$9$2 := (if p0$2 then v77$2 else $$23$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v78$1 := (if p0$1 then _HAVOC_int$1 else v78$1);
    v78$2 := (if p0$2 then _HAVOC_int$2 else v78$2);
    $$23$10$1 := (if p0$1 then v78$1 else $$23$10$1);
    $$23$10$2 := (if p0$2 then v78$2 else $$23$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v79$1 := (if p0$1 then _HAVOC_int$1 else v79$1);
    v79$2 := (if p0$2 then _HAVOC_int$2 else v79$2);
    $$23$11$1 := (if p0$1 then v79$1 else $$23$11$1);
    $$23$11$2 := (if p0$2 then v79$2 else $$23$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v80$1 := (if p0$1 then _HAVOC_int$1 else v80$1);
    v80$2 := (if p0$2 then _HAVOC_int$2 else v80$2);
    $$23$12$1 := (if p0$1 then v80$1 else $$23$12$1);
    $$23$12$2 := (if p0$2 then v80$2 else $$23$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v81$1 := (if p0$1 then _HAVOC_int$1 else v81$1);
    v81$2 := (if p0$2 then _HAVOC_int$2 else v81$2);
    $$23$13$1 := (if p0$1 then v81$1 else $$23$13$1);
    $$23$13$2 := (if p0$2 then v81$2 else $$23$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v82$1 := (if p0$1 then _HAVOC_int$1 else v82$1);
    v82$2 := (if p0$2 then _HAVOC_int$2 else v82$2);
    $$23$14$1 := (if p0$1 then v82$1 else $$23$14$1);
    $$23$14$2 := (if p0$2 then v82$2 else $$23$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v83$1 := (if p0$1 then _HAVOC_int$1 else v83$1);
    v83$2 := (if p0$2 then _HAVOC_int$2 else v83$2);
    $$23$15$1 := (if p0$1 then v83$1 else $$23$15$1);
    $$23$15$2 := (if p0$2 then v83$2 else $$23$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v84$1 := (if p0$1 then _HAVOC_int$1 else v84$1);
    v84$2 := (if p0$2 then _HAVOC_int$2 else v84$2);
    $$23$16$1 := (if p0$1 then v84$1 else $$23$16$1);
    $$23$16$2 := (if p0$2 then v84$2 else $$23$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v85$1 := (if p0$1 then _HAVOC_int$1 else v85$1);
    v85$2 := (if p0$2 then _HAVOC_int$2 else v85$2);
    $$23$17$1 := (if p0$1 then v85$1 else $$23$17$1);
    $$23$17$2 := (if p0$2 then v85$2 else $$23$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v86$1 := (if p0$1 then _HAVOC_int$1 else v86$1);
    v86$2 := (if p0$2 then _HAVOC_int$2 else v86$2);
    $$23$18$1 := (if p0$1 then v86$1 else $$23$18$1);
    $$23$18$2 := (if p0$2 then v86$2 else $$23$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v87$1 := (if p0$1 then _HAVOC_int$1 else v87$1);
    v87$2 := (if p0$2 then _HAVOC_int$2 else v87$2);
    $$23$19$1 := (if p0$1 then v87$1 else $$23$19$1);
    $$23$19$2 := (if p0$2 then v87$2 else $$23$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v88$1 := (if p0$1 then _HAVOC_int$1 else v88$1);
    v88$2 := (if p0$2 then _HAVOC_int$2 else v88$2);
    $$23$20$1 := (if p0$1 then v88$1 else $$23$20$1);
    $$23$20$2 := (if p0$2 then v88$2 else $$23$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v89$1 := (if p0$1 then _HAVOC_int$1 else v89$1);
    v89$2 := (if p0$2 then _HAVOC_int$2 else v89$2);
    $$23$21$1 := (if p0$1 then v89$1 else $$23$21$1);
    $$23$21$2 := (if p0$2 then v89$2 else $$23$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v90$1 := (if p0$1 then _HAVOC_int$1 else v90$1);
    v90$2 := (if p0$2 then _HAVOC_int$2 else v90$2);
    $$23$22$1 := (if p0$1 then v90$1 else $$23$22$1);
    $$23$22$2 := (if p0$2 then v90$2 else $$23$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v91$1 := (if p0$1 then _HAVOC_int$1 else v91$1);
    v91$2 := (if p0$2 then _HAVOC_int$2 else v91$2);
    $$23$23$1 := (if p0$1 then v91$1 else $$23$23$1);
    $$23$23$2 := (if p0$2 then v91$2 else $$23$23$2);
    v92$1 := (if p0$1 then $$23$0$1 else v92$1);
    v92$2 := (if p0$2 then $$23$0$2 else v92$2);
    v93$1 := (if p0$1 then $$23$1$1 else v93$1);
    v93$2 := (if p0$2 then $$23$1$2 else v93$2);
    v94$1 := (if p0$1 then $$23$2$1 else v94$1);
    v94$2 := (if p0$2 then $$23$2$2 else v94$2);
    v95$1 := (if p0$1 then $$23$3$1 else v95$1);
    v95$2 := (if p0$2 then $$23$3$2 else v95$2);
    v96$1 := (if p0$1 then $$23$4$1 else v96$1);
    v96$2 := (if p0$2 then $$23$4$2 else v96$2);
    v97$1 := (if p0$1 then $$23$5$1 else v97$1);
    v97$2 := (if p0$2 then $$23$5$2 else v97$2);
    v98$1 := (if p0$1 then $$23$6$1 else v98$1);
    v98$2 := (if p0$2 then $$23$6$2 else v98$2);
    v99$1 := (if p0$1 then $$23$7$1 else v99$1);
    v99$2 := (if p0$2 then $$23$7$2 else v99$2);
    v100$1 := (if p0$1 then $$23$8$1 else v100$1);
    v100$2 := (if p0$2 then $$23$8$2 else v100$2);
    v101$1 := (if p0$1 then $$23$9$1 else v101$1);
    v101$2 := (if p0$2 then $$23$9$2 else v101$2);
    v102$1 := (if p0$1 then $$23$10$1 else v102$1);
    v102$2 := (if p0$2 then $$23$10$2 else v102$2);
    v103$1 := (if p0$1 then $$23$11$1 else v103$1);
    v103$2 := (if p0$2 then $$23$11$2 else v103$2);
    v104$1 := (if p0$1 then $$23$12$1 else v104$1);
    v104$2 := (if p0$2 then $$23$12$2 else v104$2);
    v105$1 := (if p0$1 then $$23$13$1 else v105$1);
    v105$2 := (if p0$2 then $$23$13$2 else v105$2);
    v106$1 := (if p0$1 then $$23$14$1 else v106$1);
    v106$2 := (if p0$2 then $$23$14$2 else v106$2);
    v107$1 := (if p0$1 then $$23$15$1 else v107$1);
    v107$2 := (if p0$2 then $$23$15$2 else v107$2);
    v108$1 := (if p0$1 then $$23$16$1 else v108$1);
    v108$2 := (if p0$2 then $$23$16$2 else v108$2);
    v109$1 := (if p0$1 then $$23$17$1 else v109$1);
    v109$2 := (if p0$2 then $$23$17$2 else v109$2);
    v110$1 := (if p0$1 then $$23$18$1 else v110$1);
    v110$2 := (if p0$2 then $$23$18$2 else v110$2);
    v111$1 := (if p0$1 then $$23$19$1 else v111$1);
    v111$2 := (if p0$2 then $$23$19$2 else v111$2);
    v112$1 := (if p0$1 then $$23$20$1 else v112$1);
    v112$2 := (if p0$2 then $$23$20$2 else v112$2);
    v113$1 := (if p0$1 then $$23$21$1 else v113$1);
    v113$2 := (if p0$2 then $$23$21$2 else v113$2);
    v114$1 := (if p0$1 then $$23$22$1 else v114$1);
    v114$2 := (if p0$2 then $$23$22$2 else v114$2);
    v115$1 := (if p0$1 then $$23$23$1 else v115$1);
    v115$2 := (if p0$2 then $$23$23$2 else v115$2);
    call {:sourceloc_num 186} v116$1, v116$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$1, v106$1), v105$1), v104$1), v103$1), v102$1), v101$1), v100$1), v99$1), v98$1), v97$1), v96$1), v95$1), v94$1), v93$1), v92$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$1, v110$1), v109$1), v108$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$1, v114$1), v113$1), v112$1), SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(v1$1), p0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$2, v106$2), v105$2), v104$2), v103$2), v102$2), v101$2), v100$2), v99$2), v98$2), v97$2), v96$2), v95$2), v94$2), v93$2), v92$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v111$2, v110$2), v109$2), v108$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v115$2, v114$2), v113$2), v112$2), SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i2$0$1 := (if p0$1 then BV_EXTRACT(v116$1, 32, 0) else $$res.i2$0$1);
    $$res.i2$0$2 := (if p0$2 then BV_EXTRACT(v116$2, 32, 0) else $$res.i2$0$2);
    $$res.i2$1$1 := (if p0$1 then BV_EXTRACT(v116$1, 64, 32) else $$res.i2$1$1);
    $$res.i2$1$2 := (if p0$2 then BV_EXTRACT(v116$2, 64, 32) else $$res.i2$1$2);
    $$res.i2$2$1 := (if p0$1 then BV_EXTRACT(v116$1, 96, 64) else $$res.i2$2$1);
    $$res.i2$2$2 := (if p0$2 then BV_EXTRACT(v116$2, 96, 64) else $$res.i2$2$2);
    $$res.i2$3$1 := (if p0$1 then BV_EXTRACT(v116$1, 128, 96) else $$res.i2$3$1);
    $$res.i2$3$2 := (if p0$2 then BV_EXTRACT(v116$2, 128, 96) else $$res.i2$3$2);
    v117$1 := (if p0$1 then $$res.i2$0$1 else v117$1);
    v117$2 := (if p0$2 then $$res.i2$0$2 else v117$2);
    v118$1 := (if p0$1 then $$res.i2$1$1 else v118$1);
    v118$2 := (if p0$2 then $$res.i2$1$2 else v118$2);
    v119$1 := (if p0$1 then $$res.i2$2$1 else v119$1);
    v119$2 := (if p0$2 then $$res.i2$2$2 else v119$2);
    v120$1 := (if p0$1 then $$res.i2$3$1 else v120$1);
    v120$2 := (if p0$2 then $$res.i2$3$2 else v120$2);
    $$21$0$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v117$1, 1132396544)) else $$21$0$1);
    $$21$0$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v117$2, 1132396544)) else $$21$0$2);
    $$21$1$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v118$1, 1132396544)) else $$21$1$1);
    $$21$1$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v118$2, 1132396544)) else $$21$1$2);
    $$21$2$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v119$1, 1132396544)) else $$21$2$1);
    $$21$2$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v119$2, 1132396544)) else $$21$2$2);
    $$21$3$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v120$1, 1132396544)) else $$21$3$1);
    $$21$3$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v120$2, 1132396544)) else $$21$3$2);
    v121$1 := (if p0$1 then $$21$0$1 else v121$1);
    v121$2 := (if p0$2 then $$21$0$2 else v121$2);
    v122$1 := (if p0$1 then $$21$1$1 else v122$1);
    v122$2 := (if p0$2 then $$21$1$2 else v122$2);
    v123$1 := (if p0$1 then $$21$2$1 else v123$1);
    v123$2 := (if p0$2 then $$21$2$2 else v123$2);
    v124$1 := (if p0$1 then $$21$3$1 else v124$1);
    v124$2 := (if p0$2 then $$21$3$2 else v124$2);
    $$22$0$1 := (if p0$1 then v121$1 else $$22$0$1);
    $$22$0$2 := (if p0$2 then v121$2 else $$22$0$2);
    $$22$1$1 := (if p0$1 then v122$1 else $$22$1$1);
    $$22$1$2 := (if p0$2 then v122$2 else $$22$1$2);
    $$22$2$1 := (if p0$1 then v123$1 else $$22$2$1);
    $$22$2$2 := (if p0$2 then v123$2 else $$22$2$2);
    $$22$3$1 := (if p0$1 then v124$1 else $$22$3$1);
    $$22$3$2 := (if p0$2 then v124$2 else $$22$3$2);
    v125$1 := (if p0$1 then $$22$0$1 else v125$1);
    v125$2 := (if p0$2 then $$22$0$2 else v125$2);
    v126$1 := (if p0$1 then $$22$1$1 else v126$1);
    v126$2 := (if p0$2 then $$22$1$2 else v126$2);
    v127$1 := (if p0$1 then $$22$2$1 else v127$1);
    v127$2 := (if p0$2 then $$22$2$2 else v127$2);
    v128$1 := (if p0$1 then $$22$3$1 else v128$1);
    v128$2 := (if p0$2 then $$22$3$2 else v128$2);
    $$28$0$1 := (if p0$1 then v125$1 else $$28$0$1);
    $$28$0$2 := (if p0$2 then v125$2 else $$28$0$2);
    $$28$1$1 := (if p0$1 then v126$1 else $$28$1$1);
    $$28$1$2 := (if p0$2 then v126$2 else $$28$1$2);
    $$28$2$1 := (if p0$1 then v127$1 else $$28$2$1);
    $$28$2$2 := (if p0$2 then v127$2 else $$28$2$2);
    $$28$3$1 := (if p0$1 then v128$1 else $$28$3$1);
    $$28$3$2 := (if p0$2 then v128$2 else $$28$3$2);
    v129$1 := (if p0$1 then $$28$0$1 else v129$1);
    v129$2 := (if p0$2 then $$28$0$2 else v129$2);
    call {:sourceloc} {:sourceloc_num 216} _LOG_WRITE_$$sdata(p0$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), v129$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_33"} {:captureState "check_state_33"} {:sourceloc} {:sourceloc_num 216} true;
    call {:check_id "check_state_33"} {:sourceloc} {:sourceloc_num 216} _CHECK_WRITE_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), v129$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4)] := (if p0$1 then v129$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4)] := (if p0$2 then v129$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4)]);
    v130$1 := (if p0$1 then $$28$1$1 else v130$1);
    v130$2 := (if p0$2 then $$28$1$2 else v130$2);
    call {:sourceloc} {:sourceloc_num 218} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 1), v130$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_34"} {:captureState "check_state_34"} {:sourceloc} {:sourceloc_num 218} true;
    call {:check_id "check_state_34"} {:sourceloc} {:sourceloc_num 218} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 1), v130$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 1)] := (if p0$1 then v130$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 1)] := (if p0$2 then v130$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 1)]);
    v131$1 := (if p0$1 then $$28$2$1 else v131$1);
    v131$2 := (if p0$2 then $$28$2$2 else v131$2);
    call {:sourceloc} {:sourceloc_num 220} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 2), v131$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_35"} {:captureState "check_state_35"} {:sourceloc} {:sourceloc_num 220} true;
    call {:check_id "check_state_35"} {:sourceloc} {:sourceloc_num 220} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 2), v131$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 2)] := (if p0$1 then v131$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 2)] := (if p0$2 then v131$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 2)]);
    v132$1 := (if p0$1 then $$28$3$1 else v132$1);
    v132$2 := (if p0$2 then $$28$3$2 else v132$2);
    call {:sourceloc} {:sourceloc_num 222} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 3), v132$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_36"} {:captureState "check_state_36"} {:sourceloc} {:sourceloc_num 222} true;
    call {:check_id "check_state_36"} {:sourceloc} {:sourceloc_num 222} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 3), v132$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 3)] := (if p0$1 then v132$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), local_id_x$1), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 3)] := (if p0$2 then v132$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), local_id_x$2), 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v133$1 := (if p0$1 then _HAVOC_int$1 else v133$1);
    v133$2 := (if p0$2 then _HAVOC_int$2 else v133$2);
    $$20$0$1 := (if p0$1 then v133$1 else $$20$0$1);
    $$20$0$2 := (if p0$2 then v133$2 else $$20$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v134$1 := (if p0$1 then _HAVOC_int$1 else v134$1);
    v134$2 := (if p0$2 then _HAVOC_int$2 else v134$2);
    $$20$1$1 := (if p0$1 then v134$1 else $$20$1$1);
    $$20$1$2 := (if p0$2 then v134$2 else $$20$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v135$1 := (if p0$1 then _HAVOC_int$1 else v135$1);
    v135$2 := (if p0$2 then _HAVOC_int$2 else v135$2);
    $$20$2$1 := (if p0$1 then v135$1 else $$20$2$1);
    $$20$2$2 := (if p0$2 then v135$2 else $$20$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v136$1 := (if p0$1 then _HAVOC_int$1 else v136$1);
    v136$2 := (if p0$2 then _HAVOC_int$2 else v136$2);
    $$20$3$1 := (if p0$1 then v136$1 else $$20$3$1);
    $$20$3$2 := (if p0$2 then v136$2 else $$20$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v137$1 := (if p0$1 then _HAVOC_int$1 else v137$1);
    v137$2 := (if p0$2 then _HAVOC_int$2 else v137$2);
    $$20$4$1 := (if p0$1 then v137$1 else $$20$4$1);
    $$20$4$2 := (if p0$2 then v137$2 else $$20$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v138$1 := (if p0$1 then _HAVOC_int$1 else v138$1);
    v138$2 := (if p0$2 then _HAVOC_int$2 else v138$2);
    $$20$5$1 := (if p0$1 then v138$1 else $$20$5$1);
    $$20$5$2 := (if p0$2 then v138$2 else $$20$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v139$1 := (if p0$1 then _HAVOC_int$1 else v139$1);
    v139$2 := (if p0$2 then _HAVOC_int$2 else v139$2);
    $$20$6$1 := (if p0$1 then v139$1 else $$20$6$1);
    $$20$6$2 := (if p0$2 then v139$2 else $$20$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v140$1 := (if p0$1 then _HAVOC_int$1 else v140$1);
    v140$2 := (if p0$2 then _HAVOC_int$2 else v140$2);
    $$20$7$1 := (if p0$1 then v140$1 else $$20$7$1);
    $$20$7$2 := (if p0$2 then v140$2 else $$20$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v141$1 := (if p0$1 then _HAVOC_int$1 else v141$1);
    v141$2 := (if p0$2 then _HAVOC_int$2 else v141$2);
    $$20$8$1 := (if p0$1 then v141$1 else $$20$8$1);
    $$20$8$2 := (if p0$2 then v141$2 else $$20$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v142$1 := (if p0$1 then _HAVOC_int$1 else v142$1);
    v142$2 := (if p0$2 then _HAVOC_int$2 else v142$2);
    $$20$9$1 := (if p0$1 then v142$1 else $$20$9$1);
    $$20$9$2 := (if p0$2 then v142$2 else $$20$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v143$1 := (if p0$1 then _HAVOC_int$1 else v143$1);
    v143$2 := (if p0$2 then _HAVOC_int$2 else v143$2);
    $$20$10$1 := (if p0$1 then v143$1 else $$20$10$1);
    $$20$10$2 := (if p0$2 then v143$2 else $$20$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v144$1 := (if p0$1 then _HAVOC_int$1 else v144$1);
    v144$2 := (if p0$2 then _HAVOC_int$2 else v144$2);
    $$20$11$1 := (if p0$1 then v144$1 else $$20$11$1);
    $$20$11$2 := (if p0$2 then v144$2 else $$20$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v145$1 := (if p0$1 then _HAVOC_int$1 else v145$1);
    v145$2 := (if p0$2 then _HAVOC_int$2 else v145$2);
    $$20$12$1 := (if p0$1 then v145$1 else $$20$12$1);
    $$20$12$2 := (if p0$2 then v145$2 else $$20$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v146$1 := (if p0$1 then _HAVOC_int$1 else v146$1);
    v146$2 := (if p0$2 then _HAVOC_int$2 else v146$2);
    $$20$13$1 := (if p0$1 then v146$1 else $$20$13$1);
    $$20$13$2 := (if p0$2 then v146$2 else $$20$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v147$1 := (if p0$1 then _HAVOC_int$1 else v147$1);
    v147$2 := (if p0$2 then _HAVOC_int$2 else v147$2);
    $$20$14$1 := (if p0$1 then v147$1 else $$20$14$1);
    $$20$14$2 := (if p0$2 then v147$2 else $$20$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v148$1 := (if p0$1 then _HAVOC_int$1 else v148$1);
    v148$2 := (if p0$2 then _HAVOC_int$2 else v148$2);
    $$20$15$1 := (if p0$1 then v148$1 else $$20$15$1);
    $$20$15$2 := (if p0$2 then v148$2 else $$20$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v149$1 := (if p0$1 then _HAVOC_int$1 else v149$1);
    v149$2 := (if p0$2 then _HAVOC_int$2 else v149$2);
    $$20$16$1 := (if p0$1 then v149$1 else $$20$16$1);
    $$20$16$2 := (if p0$2 then v149$2 else $$20$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v150$1 := (if p0$1 then _HAVOC_int$1 else v150$1);
    v150$2 := (if p0$2 then _HAVOC_int$2 else v150$2);
    $$20$17$1 := (if p0$1 then v150$1 else $$20$17$1);
    $$20$17$2 := (if p0$2 then v150$2 else $$20$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v151$1 := (if p0$1 then _HAVOC_int$1 else v151$1);
    v151$2 := (if p0$2 then _HAVOC_int$2 else v151$2);
    $$20$18$1 := (if p0$1 then v151$1 else $$20$18$1);
    $$20$18$2 := (if p0$2 then v151$2 else $$20$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v152$1 := (if p0$1 then _HAVOC_int$1 else v152$1);
    v152$2 := (if p0$2 then _HAVOC_int$2 else v152$2);
    $$20$19$1 := (if p0$1 then v152$1 else $$20$19$1);
    $$20$19$2 := (if p0$2 then v152$2 else $$20$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v153$1 := (if p0$1 then _HAVOC_int$1 else v153$1);
    v153$2 := (if p0$2 then _HAVOC_int$2 else v153$2);
    $$20$20$1 := (if p0$1 then v153$1 else $$20$20$1);
    $$20$20$2 := (if p0$2 then v153$2 else $$20$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v154$1 := (if p0$1 then _HAVOC_int$1 else v154$1);
    v154$2 := (if p0$2 then _HAVOC_int$2 else v154$2);
    $$20$21$1 := (if p0$1 then v154$1 else $$20$21$1);
    $$20$21$2 := (if p0$2 then v154$2 else $$20$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v155$1 := (if p0$1 then _HAVOC_int$1 else v155$1);
    v155$2 := (if p0$2 then _HAVOC_int$2 else v155$2);
    $$20$22$1 := (if p0$1 then v155$1 else $$20$22$1);
    $$20$22$2 := (if p0$2 then v155$2 else $$20$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v156$1 := (if p0$1 then _HAVOC_int$1 else v156$1);
    v156$2 := (if p0$2 then _HAVOC_int$2 else v156$2);
    $$20$23$1 := (if p0$1 then v156$1 else $$20$23$1);
    $$20$23$2 := (if p0$2 then v156$2 else $$20$23$2);
    v157$1 := (if p0$1 then $$20$0$1 else v157$1);
    v157$2 := (if p0$2 then $$20$0$2 else v157$2);
    v158$1 := (if p0$1 then $$20$1$1 else v158$1);
    v158$2 := (if p0$2 then $$20$1$2 else v158$2);
    v159$1 := (if p0$1 then $$20$2$1 else v159$1);
    v159$2 := (if p0$2 then $$20$2$2 else v159$2);
    v160$1 := (if p0$1 then $$20$3$1 else v160$1);
    v160$2 := (if p0$2 then $$20$3$2 else v160$2);
    v161$1 := (if p0$1 then $$20$4$1 else v161$1);
    v161$2 := (if p0$2 then $$20$4$2 else v161$2);
    v162$1 := (if p0$1 then $$20$5$1 else v162$1);
    v162$2 := (if p0$2 then $$20$5$2 else v162$2);
    v163$1 := (if p0$1 then $$20$6$1 else v163$1);
    v163$2 := (if p0$2 then $$20$6$2 else v163$2);
    v164$1 := (if p0$1 then $$20$7$1 else v164$1);
    v164$2 := (if p0$2 then $$20$7$2 else v164$2);
    v165$1 := (if p0$1 then $$20$8$1 else v165$1);
    v165$2 := (if p0$2 then $$20$8$2 else v165$2);
    v166$1 := (if p0$1 then $$20$9$1 else v166$1);
    v166$2 := (if p0$2 then $$20$9$2 else v166$2);
    v167$1 := (if p0$1 then $$20$10$1 else v167$1);
    v167$2 := (if p0$2 then $$20$10$2 else v167$2);
    v168$1 := (if p0$1 then $$20$11$1 else v168$1);
    v168$2 := (if p0$2 then $$20$11$2 else v168$2);
    v169$1 := (if p0$1 then $$20$12$1 else v169$1);
    v169$2 := (if p0$2 then $$20$12$2 else v169$2);
    v170$1 := (if p0$1 then $$20$13$1 else v170$1);
    v170$2 := (if p0$2 then $$20$13$2 else v170$2);
    v171$1 := (if p0$1 then $$20$14$1 else v171$1);
    v171$2 := (if p0$2 then $$20$14$2 else v171$2);
    v172$1 := (if p0$1 then $$20$15$1 else v172$1);
    v172$2 := (if p0$2 then $$20$15$2 else v172$2);
    v173$1 := (if p0$1 then $$20$16$1 else v173$1);
    v173$2 := (if p0$2 then $$20$16$2 else v173$2);
    v174$1 := (if p0$1 then $$20$17$1 else v174$1);
    v174$2 := (if p0$2 then $$20$17$2 else v174$2);
    v175$1 := (if p0$1 then $$20$18$1 else v175$1);
    v175$2 := (if p0$2 then $$20$18$2 else v175$2);
    v176$1 := (if p0$1 then $$20$19$1 else v176$1);
    v176$2 := (if p0$2 then $$20$19$2 else v176$2);
    v177$1 := (if p0$1 then $$20$20$1 else v177$1);
    v177$2 := (if p0$2 then $$20$20$2 else v177$2);
    v178$1 := (if p0$1 then $$20$21$1 else v178$1);
    v178$2 := (if p0$2 then $$20$21$2 else v178$2);
    v179$1 := (if p0$1 then $$20$22$1 else v179$1);
    v179$2 := (if p0$2 then $$20$22$2 else v179$2);
    v180$1 := (if p0$1 then $$20$23$1 else v180$1);
    v180$2 := (if p0$2 then $$20$23$2 else v180$2);
    call {:sourceloc_num 295} v181$1, v181$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v172$1, v171$1), v170$1), v169$1), v168$1), v167$1), v166$1), v165$1), v164$1), v163$1), v162$1), v161$1), v160$1), v159$1), v158$1), v157$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v176$1, v175$1), v174$1), v173$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v180$1, v179$1), v178$1), v177$1), SI32_TO_FP32(BV32_ADD(v0$1, group_size_x)), SI32_TO_FP32(v1$1), p0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v172$2, v171$2), v170$2), v169$2), v168$2), v167$2), v166$2), v165$2), v164$2), v163$2), v162$2), v161$2), v160$2), v159$2), v158$2), v157$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v176$2, v175$2), v174$2), v173$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v180$2, v179$2), v178$2), v177$2), SI32_TO_FP32(BV32_ADD(v0$2, group_size_x)), SI32_TO_FP32(v1$2));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i3$0$1 := (if p0$1 then BV_EXTRACT(v181$1, 32, 0) else $$res.i3$0$1);
    $$res.i3$0$2 := (if p0$2 then BV_EXTRACT(v181$2, 32, 0) else $$res.i3$0$2);
    $$res.i3$1$1 := (if p0$1 then BV_EXTRACT(v181$1, 64, 32) else $$res.i3$1$1);
    $$res.i3$1$2 := (if p0$2 then BV_EXTRACT(v181$2, 64, 32) else $$res.i3$1$2);
    $$res.i3$2$1 := (if p0$1 then BV_EXTRACT(v181$1, 96, 64) else $$res.i3$2$1);
    $$res.i3$2$2 := (if p0$2 then BV_EXTRACT(v181$2, 96, 64) else $$res.i3$2$2);
    $$res.i3$3$1 := (if p0$1 then BV_EXTRACT(v181$1, 128, 96) else $$res.i3$3$1);
    $$res.i3$3$2 := (if p0$2 then BV_EXTRACT(v181$2, 128, 96) else $$res.i3$3$2);
    v182$1 := (if p0$1 then $$res.i3$0$1 else v182$1);
    v182$2 := (if p0$2 then $$res.i3$0$2 else v182$2);
    v183$1 := (if p0$1 then $$res.i3$1$1 else v183$1);
    v183$2 := (if p0$2 then $$res.i3$1$2 else v183$2);
    v184$1 := (if p0$1 then $$res.i3$2$1 else v184$1);
    v184$2 := (if p0$2 then $$res.i3$2$2 else v184$2);
    v185$1 := (if p0$1 then $$res.i3$3$1 else v185$1);
    v185$2 := (if p0$2 then $$res.i3$3$2 else v185$2);
    $$18$0$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v182$1, 1132396544)) else $$18$0$1);
    $$18$0$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v182$2, 1132396544)) else $$18$0$2);
    $$18$1$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v183$1, 1132396544)) else $$18$1$1);
    $$18$1$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v183$2, 1132396544)) else $$18$1$2);
    $$18$2$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v184$1, 1132396544)) else $$18$2$1);
    $$18$2$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v184$2, 1132396544)) else $$18$2$2);
    $$18$3$1 := (if p0$1 then FP32_TO_UI8(FMUL32(v185$1, 1132396544)) else $$18$3$1);
    $$18$3$2 := (if p0$2 then FP32_TO_UI8(FMUL32(v185$2, 1132396544)) else $$18$3$2);
    v186$1 := (if p0$1 then $$18$0$1 else v186$1);
    v186$2 := (if p0$2 then $$18$0$2 else v186$2);
    v187$1 := (if p0$1 then $$18$1$1 else v187$1);
    v187$2 := (if p0$2 then $$18$1$2 else v187$2);
    v188$1 := (if p0$1 then $$18$2$1 else v188$1);
    v188$2 := (if p0$2 then $$18$2$2 else v188$2);
    v189$1 := (if p0$1 then $$18$3$1 else v189$1);
    v189$2 := (if p0$2 then $$18$3$2 else v189$2);
    $$19$0$1 := (if p0$1 then v186$1 else $$19$0$1);
    $$19$0$2 := (if p0$2 then v186$2 else $$19$0$2);
    $$19$1$1 := (if p0$1 then v187$1 else $$19$1$1);
    $$19$1$2 := (if p0$2 then v187$2 else $$19$1$2);
    $$19$2$1 := (if p0$1 then v188$1 else $$19$2$1);
    $$19$2$2 := (if p0$2 then v188$2 else $$19$2$2);
    $$19$3$1 := (if p0$1 then v189$1 else $$19$3$1);
    $$19$3$2 := (if p0$2 then v189$2 else $$19$3$2);
    v190$1 := (if p0$1 then $$19$0$1 else v190$1);
    v190$2 := (if p0$2 then $$19$0$2 else v190$2);
    v191$1 := (if p0$1 then $$19$1$1 else v191$1);
    v191$2 := (if p0$2 then $$19$1$2 else v191$2);
    v192$1 := (if p0$1 then $$19$2$1 else v192$1);
    v192$2 := (if p0$2 then $$19$2$2 else v192$2);
    v193$1 := (if p0$1 then $$19$3$1 else v193$1);
    v193$2 := (if p0$2 then $$19$3$2 else v193$2);
    $$29$0$1 := (if p0$1 then v190$1 else $$29$0$1);
    $$29$0$2 := (if p0$2 then v190$2 else $$29$0$2);
    $$29$1$1 := (if p0$1 then v191$1 else $$29$1$1);
    $$29$1$2 := (if p0$2 then v191$2 else $$29$1$2);
    $$29$2$1 := (if p0$1 then v192$1 else $$29$2$1);
    $$29$2$2 := (if p0$2 then v192$2 else $$29$2$2);
    $$29$3$1 := (if p0$1 then v193$1 else $$29$3$1);
    $$29$3$2 := (if p0$2 then v193$2 else $$29$3$2);
    v194$1 := (if p0$1 then $$29$0$1 else v194$1);
    v194$2 := (if p0$2 then $$29$0$2 else v194$2);
    call {:sourceloc} {:sourceloc_num 325} _LOG_WRITE_$$sdata(p0$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), v194$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_37"} {:captureState "check_state_37"} {:sourceloc} {:sourceloc_num 325} true;
    call {:check_id "check_state_37"} {:sourceloc} {:sourceloc_num 325} _CHECK_WRITE_$$sdata(p0$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), v194$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)] := (if p0$1 then v194$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)] := (if p0$2 then v194$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)]);
    v195$1 := (if p0$1 then $$29$1$1 else v195$1);
    v195$2 := (if p0$2 then $$29$1$2 else v195$2);
    call {:sourceloc} {:sourceloc_num 327} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1), v195$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_38"} {:captureState "check_state_38"} {:sourceloc} {:sourceloc_num 327} true;
    call {:check_id "check_state_38"} {:sourceloc} {:sourceloc_num 327} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1), v195$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)] := (if p0$1 then v195$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)] := (if p0$2 then v195$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)]);
    v196$1 := (if p0$1 then $$29$2$1 else v196$1);
    v196$2 := (if p0$2 then $$29$2$2 else v196$2);
    call {:sourceloc} {:sourceloc_num 329} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2), v196$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_39"} {:captureState "check_state_39"} {:sourceloc} {:sourceloc_num 329} true;
    call {:check_id "check_state_39"} {:sourceloc} {:sourceloc_num 329} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2), v196$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)] := (if p0$1 then v196$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)] := (if p0$2 then v196$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)]);
    v197$1 := (if p0$1 then $$29$3$1 else v197$1);
    v197$2 := (if p0$2 then $$29$3$2 else v197$2);
    call {:sourceloc} {:sourceloc_num 331} _LOG_WRITE_$$sdata(p0$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3), v197$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_40"} {:captureState "check_state_40"} {:sourceloc} {:sourceloc_num 331} true;
    call {:check_id "check_state_40"} {:sourceloc} {:sourceloc_num 331} _CHECK_WRITE_$$sdata(p0$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3), v197$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)] := (if p0$1 then v197$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)] := (if p0$2 then v197$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD($r, local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)]);
    v198$1 := BV32_ULT(local_id_y$1, $r);
    v198$2 := BV32_ULT(local_id_y$2, $r);
    p2$1 := (if v198$1 then v198$1 else p2$1);
    p2$2 := (if v198$2 then v198$2 else p2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v199$1 := (if p2$1 then _HAVOC_int$1 else v199$1);
    v199$2 := (if p2$2 then _HAVOC_int$2 else v199$2);
    $$17$0$1 := (if p2$1 then v199$1 else $$17$0$1);
    $$17$0$2 := (if p2$2 then v199$2 else $$17$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v200$1 := (if p2$1 then _HAVOC_int$1 else v200$1);
    v200$2 := (if p2$2 then _HAVOC_int$2 else v200$2);
    $$17$1$1 := (if p2$1 then v200$1 else $$17$1$1);
    $$17$1$2 := (if p2$2 then v200$2 else $$17$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v201$1 := (if p2$1 then _HAVOC_int$1 else v201$1);
    v201$2 := (if p2$2 then _HAVOC_int$2 else v201$2);
    $$17$2$1 := (if p2$1 then v201$1 else $$17$2$1);
    $$17$2$2 := (if p2$2 then v201$2 else $$17$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v202$1 := (if p2$1 then _HAVOC_int$1 else v202$1);
    v202$2 := (if p2$2 then _HAVOC_int$2 else v202$2);
    $$17$3$1 := (if p2$1 then v202$1 else $$17$3$1);
    $$17$3$2 := (if p2$2 then v202$2 else $$17$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v203$1 := (if p2$1 then _HAVOC_int$1 else v203$1);
    v203$2 := (if p2$2 then _HAVOC_int$2 else v203$2);
    $$17$4$1 := (if p2$1 then v203$1 else $$17$4$1);
    $$17$4$2 := (if p2$2 then v203$2 else $$17$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v204$1 := (if p2$1 then _HAVOC_int$1 else v204$1);
    v204$2 := (if p2$2 then _HAVOC_int$2 else v204$2);
    $$17$5$1 := (if p2$1 then v204$1 else $$17$5$1);
    $$17$5$2 := (if p2$2 then v204$2 else $$17$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v205$1 := (if p2$1 then _HAVOC_int$1 else v205$1);
    v205$2 := (if p2$2 then _HAVOC_int$2 else v205$2);
    $$17$6$1 := (if p2$1 then v205$1 else $$17$6$1);
    $$17$6$2 := (if p2$2 then v205$2 else $$17$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v206$1 := (if p2$1 then _HAVOC_int$1 else v206$1);
    v206$2 := (if p2$2 then _HAVOC_int$2 else v206$2);
    $$17$7$1 := (if p2$1 then v206$1 else $$17$7$1);
    $$17$7$2 := (if p2$2 then v206$2 else $$17$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v207$1 := (if p2$1 then _HAVOC_int$1 else v207$1);
    v207$2 := (if p2$2 then _HAVOC_int$2 else v207$2);
    $$17$8$1 := (if p2$1 then v207$1 else $$17$8$1);
    $$17$8$2 := (if p2$2 then v207$2 else $$17$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v208$1 := (if p2$1 then _HAVOC_int$1 else v208$1);
    v208$2 := (if p2$2 then _HAVOC_int$2 else v208$2);
    $$17$9$1 := (if p2$1 then v208$1 else $$17$9$1);
    $$17$9$2 := (if p2$2 then v208$2 else $$17$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v209$1 := (if p2$1 then _HAVOC_int$1 else v209$1);
    v209$2 := (if p2$2 then _HAVOC_int$2 else v209$2);
    $$17$10$1 := (if p2$1 then v209$1 else $$17$10$1);
    $$17$10$2 := (if p2$2 then v209$2 else $$17$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v210$1 := (if p2$1 then _HAVOC_int$1 else v210$1);
    v210$2 := (if p2$2 then _HAVOC_int$2 else v210$2);
    $$17$11$1 := (if p2$1 then v210$1 else $$17$11$1);
    $$17$11$2 := (if p2$2 then v210$2 else $$17$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v211$1 := (if p2$1 then _HAVOC_int$1 else v211$1);
    v211$2 := (if p2$2 then _HAVOC_int$2 else v211$2);
    $$17$12$1 := (if p2$1 then v211$1 else $$17$12$1);
    $$17$12$2 := (if p2$2 then v211$2 else $$17$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v212$1 := (if p2$1 then _HAVOC_int$1 else v212$1);
    v212$2 := (if p2$2 then _HAVOC_int$2 else v212$2);
    $$17$13$1 := (if p2$1 then v212$1 else $$17$13$1);
    $$17$13$2 := (if p2$2 then v212$2 else $$17$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v213$1 := (if p2$1 then _HAVOC_int$1 else v213$1);
    v213$2 := (if p2$2 then _HAVOC_int$2 else v213$2);
    $$17$14$1 := (if p2$1 then v213$1 else $$17$14$1);
    $$17$14$2 := (if p2$2 then v213$2 else $$17$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v214$1 := (if p2$1 then _HAVOC_int$1 else v214$1);
    v214$2 := (if p2$2 then _HAVOC_int$2 else v214$2);
    $$17$15$1 := (if p2$1 then v214$1 else $$17$15$1);
    $$17$15$2 := (if p2$2 then v214$2 else $$17$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v215$1 := (if p2$1 then _HAVOC_int$1 else v215$1);
    v215$2 := (if p2$2 then _HAVOC_int$2 else v215$2);
    $$17$16$1 := (if p2$1 then v215$1 else $$17$16$1);
    $$17$16$2 := (if p2$2 then v215$2 else $$17$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v216$1 := (if p2$1 then _HAVOC_int$1 else v216$1);
    v216$2 := (if p2$2 then _HAVOC_int$2 else v216$2);
    $$17$17$1 := (if p2$1 then v216$1 else $$17$17$1);
    $$17$17$2 := (if p2$2 then v216$2 else $$17$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v217$1 := (if p2$1 then _HAVOC_int$1 else v217$1);
    v217$2 := (if p2$2 then _HAVOC_int$2 else v217$2);
    $$17$18$1 := (if p2$1 then v217$1 else $$17$18$1);
    $$17$18$2 := (if p2$2 then v217$2 else $$17$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v218$1 := (if p2$1 then _HAVOC_int$1 else v218$1);
    v218$2 := (if p2$2 then _HAVOC_int$2 else v218$2);
    $$17$19$1 := (if p2$1 then v218$1 else $$17$19$1);
    $$17$19$2 := (if p2$2 then v218$2 else $$17$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v219$1 := (if p2$1 then _HAVOC_int$1 else v219$1);
    v219$2 := (if p2$2 then _HAVOC_int$2 else v219$2);
    $$17$20$1 := (if p2$1 then v219$1 else $$17$20$1);
    $$17$20$2 := (if p2$2 then v219$2 else $$17$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v220$1 := (if p2$1 then _HAVOC_int$1 else v220$1);
    v220$2 := (if p2$2 then _HAVOC_int$2 else v220$2);
    $$17$21$1 := (if p2$1 then v220$1 else $$17$21$1);
    $$17$21$2 := (if p2$2 then v220$2 else $$17$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v221$1 := (if p2$1 then _HAVOC_int$1 else v221$1);
    v221$2 := (if p2$2 then _HAVOC_int$2 else v221$2);
    $$17$22$1 := (if p2$1 then v221$1 else $$17$22$1);
    $$17$22$2 := (if p2$2 then v221$2 else $$17$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v222$1 := (if p2$1 then _HAVOC_int$1 else v222$1);
    v222$2 := (if p2$2 then _HAVOC_int$2 else v222$2);
    $$17$23$1 := (if p2$1 then v222$1 else $$17$23$1);
    $$17$23$2 := (if p2$2 then v222$2 else $$17$23$2);
    v223$1 := (if p2$1 then $$17$0$1 else v223$1);
    v223$2 := (if p2$2 then $$17$0$2 else v223$2);
    v224$1 := (if p2$1 then $$17$1$1 else v224$1);
    v224$2 := (if p2$2 then $$17$1$2 else v224$2);
    v225$1 := (if p2$1 then $$17$2$1 else v225$1);
    v225$2 := (if p2$2 then $$17$2$2 else v225$2);
    v226$1 := (if p2$1 then $$17$3$1 else v226$1);
    v226$2 := (if p2$2 then $$17$3$2 else v226$2);
    v227$1 := (if p2$1 then $$17$4$1 else v227$1);
    v227$2 := (if p2$2 then $$17$4$2 else v227$2);
    v228$1 := (if p2$1 then $$17$5$1 else v228$1);
    v228$2 := (if p2$2 then $$17$5$2 else v228$2);
    v229$1 := (if p2$1 then $$17$6$1 else v229$1);
    v229$2 := (if p2$2 then $$17$6$2 else v229$2);
    v230$1 := (if p2$1 then $$17$7$1 else v230$1);
    v230$2 := (if p2$2 then $$17$7$2 else v230$2);
    v231$1 := (if p2$1 then $$17$8$1 else v231$1);
    v231$2 := (if p2$2 then $$17$8$2 else v231$2);
    v232$1 := (if p2$1 then $$17$9$1 else v232$1);
    v232$2 := (if p2$2 then $$17$9$2 else v232$2);
    v233$1 := (if p2$1 then $$17$10$1 else v233$1);
    v233$2 := (if p2$2 then $$17$10$2 else v233$2);
    v234$1 := (if p2$1 then $$17$11$1 else v234$1);
    v234$2 := (if p2$2 then $$17$11$2 else v234$2);
    v235$1 := (if p2$1 then $$17$12$1 else v235$1);
    v235$2 := (if p2$2 then $$17$12$2 else v235$2);
    v236$1 := (if p2$1 then $$17$13$1 else v236$1);
    v236$2 := (if p2$2 then $$17$13$2 else v236$2);
    v237$1 := (if p2$1 then $$17$14$1 else v237$1);
    v237$2 := (if p2$2 then $$17$14$2 else v237$2);
    v238$1 := (if p2$1 then $$17$15$1 else v238$1);
    v238$2 := (if p2$2 then $$17$15$2 else v238$2);
    v239$1 := (if p2$1 then $$17$16$1 else v239$1);
    v239$2 := (if p2$2 then $$17$16$2 else v239$2);
    v240$1 := (if p2$1 then $$17$17$1 else v240$1);
    v240$2 := (if p2$2 then $$17$17$2 else v240$2);
    v241$1 := (if p2$1 then $$17$18$1 else v241$1);
    v241$2 := (if p2$2 then $$17$18$2 else v241$2);
    v242$1 := (if p2$1 then $$17$19$1 else v242$1);
    v242$2 := (if p2$2 then $$17$19$2 else v242$2);
    v243$1 := (if p2$1 then $$17$20$1 else v243$1);
    v243$2 := (if p2$2 then $$17$20$2 else v243$2);
    v244$1 := (if p2$1 then $$17$21$1 else v244$1);
    v244$2 := (if p2$2 then $$17$21$2 else v244$2);
    v245$1 := (if p2$1 then $$17$22$1 else v245$1);
    v245$2 := (if p2$2 then $$17$22$2 else v245$2);
    v246$1 := (if p2$1 then $$17$23$1 else v246$1);
    v246$2 := (if p2$2 then $$17$23$2 else v246$2);
    call {:sourceloc_num 406} v247$1, v247$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p2$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v238$1, v237$1), v236$1), v235$1), v234$1), v233$1), v232$1), v231$1), v230$1), v229$1), v228$1), v227$1), v226$1), v225$1), v224$1), v223$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v242$1, v241$1), v240$1), v239$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v246$1, v245$1), v244$1), v243$1), SI32_TO_FP32(v0$1), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p2$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v238$2, v237$2), v236$2), v235$2), v234$2), v233$2), v232$2), v231$2), v230$2), v229$2), v228$2), v227$2), v226$2), v225$2), v224$2), v223$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v242$2, v241$2), v240$2), v239$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v246$2, v245$2), v244$2), v243$2), SI32_TO_FP32(v0$2), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i4$0$1 := (if p2$1 then BV_EXTRACT(v247$1, 32, 0) else $$res.i4$0$1);
    $$res.i4$0$2 := (if p2$2 then BV_EXTRACT(v247$2, 32, 0) else $$res.i4$0$2);
    $$res.i4$1$1 := (if p2$1 then BV_EXTRACT(v247$1, 64, 32) else $$res.i4$1$1);
    $$res.i4$1$2 := (if p2$2 then BV_EXTRACT(v247$2, 64, 32) else $$res.i4$1$2);
    $$res.i4$2$1 := (if p2$1 then BV_EXTRACT(v247$1, 96, 64) else $$res.i4$2$1);
    $$res.i4$2$2 := (if p2$2 then BV_EXTRACT(v247$2, 96, 64) else $$res.i4$2$2);
    $$res.i4$3$1 := (if p2$1 then BV_EXTRACT(v247$1, 128, 96) else $$res.i4$3$1);
    $$res.i4$3$2 := (if p2$2 then BV_EXTRACT(v247$2, 128, 96) else $$res.i4$3$2);
    v248$1 := (if p2$1 then $$res.i4$0$1 else v248$1);
    v248$2 := (if p2$2 then $$res.i4$0$2 else v248$2);
    v249$1 := (if p2$1 then $$res.i4$1$1 else v249$1);
    v249$2 := (if p2$2 then $$res.i4$1$2 else v249$2);
    v250$1 := (if p2$1 then $$res.i4$2$1 else v250$1);
    v250$2 := (if p2$2 then $$res.i4$2$2 else v250$2);
    v251$1 := (if p2$1 then $$res.i4$3$1 else v251$1);
    v251$2 := (if p2$2 then $$res.i4$3$2 else v251$2);
    $$15$0$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v248$1, 1132396544)) else $$15$0$1);
    $$15$0$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v248$2, 1132396544)) else $$15$0$2);
    $$15$1$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v249$1, 1132396544)) else $$15$1$1);
    $$15$1$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v249$2, 1132396544)) else $$15$1$2);
    $$15$2$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v250$1, 1132396544)) else $$15$2$1);
    $$15$2$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v250$2, 1132396544)) else $$15$2$2);
    $$15$3$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v251$1, 1132396544)) else $$15$3$1);
    $$15$3$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v251$2, 1132396544)) else $$15$3$2);
    v252$1 := (if p2$1 then $$15$0$1 else v252$1);
    v252$2 := (if p2$2 then $$15$0$2 else v252$2);
    v253$1 := (if p2$1 then $$15$1$1 else v253$1);
    v253$2 := (if p2$2 then $$15$1$2 else v253$2);
    v254$1 := (if p2$1 then $$15$2$1 else v254$1);
    v254$2 := (if p2$2 then $$15$2$2 else v254$2);
    v255$1 := (if p2$1 then $$15$3$1 else v255$1);
    v255$2 := (if p2$2 then $$15$3$2 else v255$2);
    $$16$0$1 := (if p2$1 then v252$1 else $$16$0$1);
    $$16$0$2 := (if p2$2 then v252$2 else $$16$0$2);
    $$16$1$1 := (if p2$1 then v253$1 else $$16$1$1);
    $$16$1$2 := (if p2$2 then v253$2 else $$16$1$2);
    $$16$2$1 := (if p2$1 then v254$1 else $$16$2$1);
    $$16$2$2 := (if p2$2 then v254$2 else $$16$2$2);
    $$16$3$1 := (if p2$1 then v255$1 else $$16$3$1);
    $$16$3$2 := (if p2$2 then v255$2 else $$16$3$2);
    v256$1 := (if p2$1 then $$16$0$1 else v256$1);
    v256$2 := (if p2$2 then $$16$0$2 else v256$2);
    v257$1 := (if p2$1 then $$16$1$1 else v257$1);
    v257$2 := (if p2$2 then $$16$1$2 else v257$2);
    v258$1 := (if p2$1 then $$16$2$1 else v258$1);
    v258$2 := (if p2$2 then $$16$2$2 else v258$2);
    v259$1 := (if p2$1 then $$16$3$1 else v259$1);
    v259$2 := (if p2$2 then $$16$3$2 else v259$2);
    $$30$0$1 := (if p2$1 then v256$1 else $$30$0$1);
    $$30$0$2 := (if p2$2 then v256$2 else $$30$0$2);
    $$30$1$1 := (if p2$1 then v257$1 else $$30$1$1);
    $$30$1$2 := (if p2$2 then v257$2 else $$30$1$2);
    $$30$2$1 := (if p2$1 then v258$1 else $$30$2$1);
    $$30$2$2 := (if p2$2 then v258$2 else $$30$2$2);
    $$30$3$1 := (if p2$1 then v259$1 else $$30$3$1);
    $$30$3$2 := (if p2$2 then v259$2 else $$30$3$2);
    v260$1 := (if p2$1 then $$30$0$1 else v260$1);
    v260$2 := (if p2$2 then $$30$0$2 else v260$2);
    call {:sourceloc} {:sourceloc_num 436} _LOG_WRITE_$$sdata(p2$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), v260$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 436} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 436} _CHECK_WRITE_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), v260$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4)] := (if p2$1 then v260$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4)] := (if p2$2 then v260$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4)]);
    v261$1 := (if p2$1 then $$30$1$1 else v261$1);
    v261$2 := (if p2$2 then $$30$1$2 else v261$2);
    call {:sourceloc} {:sourceloc_num 438} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 1), v261$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 438} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 438} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 1), v261$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)] := (if p2$1 then v261$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 1)] := (if p2$2 then v261$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 1)]);
    v262$1 := (if p2$1 then $$30$2$1 else v262$1);
    v262$2 := (if p2$2 then $$30$2$2 else v262$2);
    call {:sourceloc} {:sourceloc_num 440} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 2), v262$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 440} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 440} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 2), v262$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)] := (if p2$1 then v262$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 2)] := (if p2$2 then v262$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 2)]);
    v263$1 := (if p2$1 then $$30$3$1 else v263$1);
    v263$2 := (if p2$2 then $$30$3$2 else v263$2);
    call {:sourceloc} {:sourceloc_num 442} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 3), v263$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_28"} {:captureState "check_state_28"} {:sourceloc} {:sourceloc_num 442} true;
    call {:check_id "check_state_28"} {:sourceloc} {:sourceloc_num 442} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 3), v263$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)] := (if p2$1 then v263$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 3)] := (if p2$2 then v263$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD($r, local_id_x$2)), 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v264$1 := (if p2$1 then _HAVOC_int$1 else v264$1);
    v264$2 := (if p2$2 then _HAVOC_int$2 else v264$2);
    $$14$0$1 := (if p2$1 then v264$1 else $$14$0$1);
    $$14$0$2 := (if p2$2 then v264$2 else $$14$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v265$1 := (if p2$1 then _HAVOC_int$1 else v265$1);
    v265$2 := (if p2$2 then _HAVOC_int$2 else v265$2);
    $$14$1$1 := (if p2$1 then v265$1 else $$14$1$1);
    $$14$1$2 := (if p2$2 then v265$2 else $$14$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v266$1 := (if p2$1 then _HAVOC_int$1 else v266$1);
    v266$2 := (if p2$2 then _HAVOC_int$2 else v266$2);
    $$14$2$1 := (if p2$1 then v266$1 else $$14$2$1);
    $$14$2$2 := (if p2$2 then v266$2 else $$14$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v267$1 := (if p2$1 then _HAVOC_int$1 else v267$1);
    v267$2 := (if p2$2 then _HAVOC_int$2 else v267$2);
    $$14$3$1 := (if p2$1 then v267$1 else $$14$3$1);
    $$14$3$2 := (if p2$2 then v267$2 else $$14$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v268$1 := (if p2$1 then _HAVOC_int$1 else v268$1);
    v268$2 := (if p2$2 then _HAVOC_int$2 else v268$2);
    $$14$4$1 := (if p2$1 then v268$1 else $$14$4$1);
    $$14$4$2 := (if p2$2 then v268$2 else $$14$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v269$1 := (if p2$1 then _HAVOC_int$1 else v269$1);
    v269$2 := (if p2$2 then _HAVOC_int$2 else v269$2);
    $$14$5$1 := (if p2$1 then v269$1 else $$14$5$1);
    $$14$5$2 := (if p2$2 then v269$2 else $$14$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v270$1 := (if p2$1 then _HAVOC_int$1 else v270$1);
    v270$2 := (if p2$2 then _HAVOC_int$2 else v270$2);
    $$14$6$1 := (if p2$1 then v270$1 else $$14$6$1);
    $$14$6$2 := (if p2$2 then v270$2 else $$14$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v271$1 := (if p2$1 then _HAVOC_int$1 else v271$1);
    v271$2 := (if p2$2 then _HAVOC_int$2 else v271$2);
    $$14$7$1 := (if p2$1 then v271$1 else $$14$7$1);
    $$14$7$2 := (if p2$2 then v271$2 else $$14$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v272$1 := (if p2$1 then _HAVOC_int$1 else v272$1);
    v272$2 := (if p2$2 then _HAVOC_int$2 else v272$2);
    $$14$8$1 := (if p2$1 then v272$1 else $$14$8$1);
    $$14$8$2 := (if p2$2 then v272$2 else $$14$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v273$1 := (if p2$1 then _HAVOC_int$1 else v273$1);
    v273$2 := (if p2$2 then _HAVOC_int$2 else v273$2);
    $$14$9$1 := (if p2$1 then v273$1 else $$14$9$1);
    $$14$9$2 := (if p2$2 then v273$2 else $$14$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v274$1 := (if p2$1 then _HAVOC_int$1 else v274$1);
    v274$2 := (if p2$2 then _HAVOC_int$2 else v274$2);
    $$14$10$1 := (if p2$1 then v274$1 else $$14$10$1);
    $$14$10$2 := (if p2$2 then v274$2 else $$14$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v275$1 := (if p2$1 then _HAVOC_int$1 else v275$1);
    v275$2 := (if p2$2 then _HAVOC_int$2 else v275$2);
    $$14$11$1 := (if p2$1 then v275$1 else $$14$11$1);
    $$14$11$2 := (if p2$2 then v275$2 else $$14$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v276$1 := (if p2$1 then _HAVOC_int$1 else v276$1);
    v276$2 := (if p2$2 then _HAVOC_int$2 else v276$2);
    $$14$12$1 := (if p2$1 then v276$1 else $$14$12$1);
    $$14$12$2 := (if p2$2 then v276$2 else $$14$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v277$1 := (if p2$1 then _HAVOC_int$1 else v277$1);
    v277$2 := (if p2$2 then _HAVOC_int$2 else v277$2);
    $$14$13$1 := (if p2$1 then v277$1 else $$14$13$1);
    $$14$13$2 := (if p2$2 then v277$2 else $$14$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v278$1 := (if p2$1 then _HAVOC_int$1 else v278$1);
    v278$2 := (if p2$2 then _HAVOC_int$2 else v278$2);
    $$14$14$1 := (if p2$1 then v278$1 else $$14$14$1);
    $$14$14$2 := (if p2$2 then v278$2 else $$14$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v279$1 := (if p2$1 then _HAVOC_int$1 else v279$1);
    v279$2 := (if p2$2 then _HAVOC_int$2 else v279$2);
    $$14$15$1 := (if p2$1 then v279$1 else $$14$15$1);
    $$14$15$2 := (if p2$2 then v279$2 else $$14$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v280$1 := (if p2$1 then _HAVOC_int$1 else v280$1);
    v280$2 := (if p2$2 then _HAVOC_int$2 else v280$2);
    $$14$16$1 := (if p2$1 then v280$1 else $$14$16$1);
    $$14$16$2 := (if p2$2 then v280$2 else $$14$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v281$1 := (if p2$1 then _HAVOC_int$1 else v281$1);
    v281$2 := (if p2$2 then _HAVOC_int$2 else v281$2);
    $$14$17$1 := (if p2$1 then v281$1 else $$14$17$1);
    $$14$17$2 := (if p2$2 then v281$2 else $$14$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v282$1 := (if p2$1 then _HAVOC_int$1 else v282$1);
    v282$2 := (if p2$2 then _HAVOC_int$2 else v282$2);
    $$14$18$1 := (if p2$1 then v282$1 else $$14$18$1);
    $$14$18$2 := (if p2$2 then v282$2 else $$14$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v283$1 := (if p2$1 then _HAVOC_int$1 else v283$1);
    v283$2 := (if p2$2 then _HAVOC_int$2 else v283$2);
    $$14$19$1 := (if p2$1 then v283$1 else $$14$19$1);
    $$14$19$2 := (if p2$2 then v283$2 else $$14$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v284$1 := (if p2$1 then _HAVOC_int$1 else v284$1);
    v284$2 := (if p2$2 then _HAVOC_int$2 else v284$2);
    $$14$20$1 := (if p2$1 then v284$1 else $$14$20$1);
    $$14$20$2 := (if p2$2 then v284$2 else $$14$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v285$1 := (if p2$1 then _HAVOC_int$1 else v285$1);
    v285$2 := (if p2$2 then _HAVOC_int$2 else v285$2);
    $$14$21$1 := (if p2$1 then v285$1 else $$14$21$1);
    $$14$21$2 := (if p2$2 then v285$2 else $$14$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v286$1 := (if p2$1 then _HAVOC_int$1 else v286$1);
    v286$2 := (if p2$2 then _HAVOC_int$2 else v286$2);
    $$14$22$1 := (if p2$1 then v286$1 else $$14$22$1);
    $$14$22$2 := (if p2$2 then v286$2 else $$14$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v287$1 := (if p2$1 then _HAVOC_int$1 else v287$1);
    v287$2 := (if p2$2 then _HAVOC_int$2 else v287$2);
    $$14$23$1 := (if p2$1 then v287$1 else $$14$23$1);
    $$14$23$2 := (if p2$2 then v287$2 else $$14$23$2);
    v288$1 := (if p2$1 then $$14$0$1 else v288$1);
    v288$2 := (if p2$2 then $$14$0$2 else v288$2);
    v289$1 := (if p2$1 then $$14$1$1 else v289$1);
    v289$2 := (if p2$2 then $$14$1$2 else v289$2);
    v290$1 := (if p2$1 then $$14$2$1 else v290$1);
    v290$2 := (if p2$2 then $$14$2$2 else v290$2);
    v291$1 := (if p2$1 then $$14$3$1 else v291$1);
    v291$2 := (if p2$2 then $$14$3$2 else v291$2);
    v292$1 := (if p2$1 then $$14$4$1 else v292$1);
    v292$2 := (if p2$2 then $$14$4$2 else v292$2);
    v293$1 := (if p2$1 then $$14$5$1 else v293$1);
    v293$2 := (if p2$2 then $$14$5$2 else v293$2);
    v294$1 := (if p2$1 then $$14$6$1 else v294$1);
    v294$2 := (if p2$2 then $$14$6$2 else v294$2);
    v295$1 := (if p2$1 then $$14$7$1 else v295$1);
    v295$2 := (if p2$2 then $$14$7$2 else v295$2);
    v296$1 := (if p2$1 then $$14$8$1 else v296$1);
    v296$2 := (if p2$2 then $$14$8$2 else v296$2);
    v297$1 := (if p2$1 then $$14$9$1 else v297$1);
    v297$2 := (if p2$2 then $$14$9$2 else v297$2);
    v298$1 := (if p2$1 then $$14$10$1 else v298$1);
    v298$2 := (if p2$2 then $$14$10$2 else v298$2);
    v299$1 := (if p2$1 then $$14$11$1 else v299$1);
    v299$2 := (if p2$2 then $$14$11$2 else v299$2);
    v300$1 := (if p2$1 then $$14$12$1 else v300$1);
    v300$2 := (if p2$2 then $$14$12$2 else v300$2);
    v301$1 := (if p2$1 then $$14$13$1 else v301$1);
    v301$2 := (if p2$2 then $$14$13$2 else v301$2);
    v302$1 := (if p2$1 then $$14$14$1 else v302$1);
    v302$2 := (if p2$2 then $$14$14$2 else v302$2);
    v303$1 := (if p2$1 then $$14$15$1 else v303$1);
    v303$2 := (if p2$2 then $$14$15$2 else v303$2);
    v304$1 := (if p2$1 then $$14$16$1 else v304$1);
    v304$2 := (if p2$2 then $$14$16$2 else v304$2);
    v305$1 := (if p2$1 then $$14$17$1 else v305$1);
    v305$2 := (if p2$2 then $$14$17$2 else v305$2);
    v306$1 := (if p2$1 then $$14$18$1 else v306$1);
    v306$2 := (if p2$2 then $$14$18$2 else v306$2);
    v307$1 := (if p2$1 then $$14$19$1 else v307$1);
    v307$2 := (if p2$2 then $$14$19$2 else v307$2);
    v308$1 := (if p2$1 then $$14$20$1 else v308$1);
    v308$2 := (if p2$2 then $$14$20$2 else v308$2);
    v309$1 := (if p2$1 then $$14$21$1 else v309$1);
    v309$2 := (if p2$2 then $$14$21$2 else v309$2);
    v310$1 := (if p2$1 then $$14$22$1 else v310$1);
    v310$2 := (if p2$2 then $$14$22$2 else v310$2);
    v311$1 := (if p2$1 then $$14$23$1 else v311$1);
    v311$2 := (if p2$2 then $$14$23$2 else v311$2);
    call {:sourceloc_num 515} v312$1, v312$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p2$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v303$1, v302$1), v301$1), v300$1), v299$1), v298$1), v297$1), v296$1), v295$1), v294$1), v293$1), v292$1), v291$1), v290$1), v289$1), v288$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v307$1, v306$1), v305$1), v304$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v311$1, v310$1), v309$1), v308$1), SI32_TO_FP32(v0$1), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p2$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v303$2, v302$2), v301$2), v300$2), v299$2), v298$2), v297$2), v296$2), v295$2), v294$2), v293$2), v292$2), v291$2), v290$2), v289$2), v288$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v307$2, v306$2), v305$2), v304$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v311$2, v310$2), v309$2), v308$2), SI32_TO_FP32(v0$2), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i5$0$1 := (if p2$1 then BV_EXTRACT(v312$1, 32, 0) else $$res.i5$0$1);
    $$res.i5$0$2 := (if p2$2 then BV_EXTRACT(v312$2, 32, 0) else $$res.i5$0$2);
    $$res.i5$1$1 := (if p2$1 then BV_EXTRACT(v312$1, 64, 32) else $$res.i5$1$1);
    $$res.i5$1$2 := (if p2$2 then BV_EXTRACT(v312$2, 64, 32) else $$res.i5$1$2);
    $$res.i5$2$1 := (if p2$1 then BV_EXTRACT(v312$1, 96, 64) else $$res.i5$2$1);
    $$res.i5$2$2 := (if p2$2 then BV_EXTRACT(v312$2, 96, 64) else $$res.i5$2$2);
    $$res.i5$3$1 := (if p2$1 then BV_EXTRACT(v312$1, 128, 96) else $$res.i5$3$1);
    $$res.i5$3$2 := (if p2$2 then BV_EXTRACT(v312$2, 128, 96) else $$res.i5$3$2);
    v313$1 := (if p2$1 then $$res.i5$0$1 else v313$1);
    v313$2 := (if p2$2 then $$res.i5$0$2 else v313$2);
    v314$1 := (if p2$1 then $$res.i5$1$1 else v314$1);
    v314$2 := (if p2$2 then $$res.i5$1$2 else v314$2);
    v315$1 := (if p2$1 then $$res.i5$2$1 else v315$1);
    v315$2 := (if p2$2 then $$res.i5$2$2 else v315$2);
    v316$1 := (if p2$1 then $$res.i5$3$1 else v316$1);
    v316$2 := (if p2$2 then $$res.i5$3$2 else v316$2);
    $$12$0$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v313$1, 1132396544)) else $$12$0$1);
    $$12$0$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v313$2, 1132396544)) else $$12$0$2);
    $$12$1$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v314$1, 1132396544)) else $$12$1$1);
    $$12$1$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v314$2, 1132396544)) else $$12$1$2);
    $$12$2$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v315$1, 1132396544)) else $$12$2$1);
    $$12$2$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v315$2, 1132396544)) else $$12$2$2);
    $$12$3$1 := (if p2$1 then FP32_TO_UI8(FMUL32(v316$1, 1132396544)) else $$12$3$1);
    $$12$3$2 := (if p2$2 then FP32_TO_UI8(FMUL32(v316$2, 1132396544)) else $$12$3$2);
    v317$1 := (if p2$1 then $$12$0$1 else v317$1);
    v317$2 := (if p2$2 then $$12$0$2 else v317$2);
    v318$1 := (if p2$1 then $$12$1$1 else v318$1);
    v318$2 := (if p2$2 then $$12$1$2 else v318$2);
    v319$1 := (if p2$1 then $$12$2$1 else v319$1);
    v319$2 := (if p2$2 then $$12$2$2 else v319$2);
    v320$1 := (if p2$1 then $$12$3$1 else v320$1);
    v320$2 := (if p2$2 then $$12$3$2 else v320$2);
    $$13$0$1 := (if p2$1 then v317$1 else $$13$0$1);
    $$13$0$2 := (if p2$2 then v317$2 else $$13$0$2);
    $$13$1$1 := (if p2$1 then v318$1 else $$13$1$1);
    $$13$1$2 := (if p2$2 then v318$2 else $$13$1$2);
    $$13$2$1 := (if p2$1 then v319$1 else $$13$2$1);
    $$13$2$2 := (if p2$2 then v319$2 else $$13$2$2);
    $$13$3$1 := (if p2$1 then v320$1 else $$13$3$1);
    $$13$3$2 := (if p2$2 then v320$2 else $$13$3$2);
    v321$1 := (if p2$1 then $$13$0$1 else v321$1);
    v321$2 := (if p2$2 then $$13$0$2 else v321$2);
    v322$1 := (if p2$1 then $$13$1$1 else v322$1);
    v322$2 := (if p2$2 then $$13$1$2 else v322$2);
    v323$1 := (if p2$1 then $$13$2$1 else v323$1);
    v323$2 := (if p2$2 then $$13$2$2 else v323$2);
    v324$1 := (if p2$1 then $$13$3$1 else v324$1);
    v324$2 := (if p2$2 then $$13$3$2 else v324$2);
    $$31$0$1 := (if p2$1 then v321$1 else $$31$0$1);
    $$31$0$2 := (if p2$2 then v321$2 else $$31$0$2);
    $$31$1$1 := (if p2$1 then v322$1 else $$31$1$1);
    $$31$1$2 := (if p2$2 then v322$2 else $$31$1$2);
    $$31$2$1 := (if p2$1 then v323$1 else $$31$2$1);
    $$31$2$2 := (if p2$2 then v323$2 else $$31$2$2);
    $$31$3$1 := (if p2$1 then v324$1 else $$31$3$1);
    $$31$3$2 := (if p2$2 then v324$2 else $$31$3$2);
    v325$1 := (if p2$1 then $$31$0$1 else v325$1);
    v325$2 := (if p2$2 then $$31$0$2 else v325$2);
    call {:sourceloc} {:sourceloc_num 545} _LOG_WRITE_$$sdata(p2$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), v325$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_29"} {:captureState "check_state_29"} {:sourceloc} {:sourceloc_num 545} true;
    call {:check_id "check_state_29"} {:sourceloc} {:sourceloc_num 545} _CHECK_WRITE_$$sdata(p2$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), v325$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4)] := (if p2$1 then v325$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4)] := (if p2$2 then v325$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4)]);
    v326$1 := (if p2$1 then $$31$1$1 else v326$1);
    v326$2 := (if p2$2 then $$31$1$2 else v326$2);
    call {:sourceloc} {:sourceloc_num 547} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1), v326$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_30"} {:captureState "check_state_30"} {:sourceloc} {:sourceloc_num 547} true;
    call {:check_id "check_state_30"} {:sourceloc} {:sourceloc_num 547} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1), v326$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)] := (if p2$1 then v326$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1)] := (if p2$2 then v326$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 1)]);
    v327$1 := (if p2$1 then $$31$2$1 else v327$1);
    v327$2 := (if p2$2 then $$31$2$2 else v327$2);
    call {:sourceloc} {:sourceloc_num 549} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2), v327$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_31"} {:captureState "check_state_31"} {:sourceloc} {:sourceloc_num 549} true;
    call {:check_id "check_state_31"} {:sourceloc} {:sourceloc_num 549} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2), v327$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)] := (if p2$1 then v327$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2)] := (if p2$2 then v327$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 2)]);
    v328$1 := (if p2$1 then $$31$3$1 else v328$1);
    v328$2 := (if p2$2 then $$31$3$2 else v328$2);
    call {:sourceloc} {:sourceloc_num 551} _LOG_WRITE_$$sdata(p2$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3), v328$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_32"} {:captureState "check_state_32"} {:sourceloc} {:sourceloc_num 551} true;
    call {:check_id "check_state_32"} {:sourceloc} {:sourceloc_num 551} _CHECK_WRITE_$$sdata(p2$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3), v328$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)] := (if p2$1 then v328$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD($r, local_id_x$1)), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3)] := (if p2$2 then v328$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD($r, local_id_x$2)), 4), 3)]);
    v329$1 := BV32_ULT(local_id_x$1, $r);
    v329$2 := BV32_ULT(local_id_x$2, $r);
    p4$1 := (if v329$1 then v329$1 else p4$1);
    p4$2 := (if v329$2 then v329$2 else p4$2);
    v330$1 := (if p4$1 then BV32_ULT(local_id_y$1, $r) else v330$1);
    v330$2 := (if p4$2 then BV32_ULT(local_id_y$2, $r) else v330$2);
    p5$1 := (if p4$1 && v330$1 then v330$1 else p5$1);
    p5$2 := (if p4$2 && v330$2 then v330$2 else p5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v331$1 := (if p5$1 then _HAVOC_int$1 else v331$1);
    v331$2 := (if p5$2 then _HAVOC_int$2 else v331$2);
    $$11$0$1 := (if p5$1 then v331$1 else $$11$0$1);
    $$11$0$2 := (if p5$2 then v331$2 else $$11$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v332$1 := (if p5$1 then _HAVOC_int$1 else v332$1);
    v332$2 := (if p5$2 then _HAVOC_int$2 else v332$2);
    $$11$1$1 := (if p5$1 then v332$1 else $$11$1$1);
    $$11$1$2 := (if p5$2 then v332$2 else $$11$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v333$1 := (if p5$1 then _HAVOC_int$1 else v333$1);
    v333$2 := (if p5$2 then _HAVOC_int$2 else v333$2);
    $$11$2$1 := (if p5$1 then v333$1 else $$11$2$1);
    $$11$2$2 := (if p5$2 then v333$2 else $$11$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v334$1 := (if p5$1 then _HAVOC_int$1 else v334$1);
    v334$2 := (if p5$2 then _HAVOC_int$2 else v334$2);
    $$11$3$1 := (if p5$1 then v334$1 else $$11$3$1);
    $$11$3$2 := (if p5$2 then v334$2 else $$11$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v335$1 := (if p5$1 then _HAVOC_int$1 else v335$1);
    v335$2 := (if p5$2 then _HAVOC_int$2 else v335$2);
    $$11$4$1 := (if p5$1 then v335$1 else $$11$4$1);
    $$11$4$2 := (if p5$2 then v335$2 else $$11$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v336$1 := (if p5$1 then _HAVOC_int$1 else v336$1);
    v336$2 := (if p5$2 then _HAVOC_int$2 else v336$2);
    $$11$5$1 := (if p5$1 then v336$1 else $$11$5$1);
    $$11$5$2 := (if p5$2 then v336$2 else $$11$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v337$1 := (if p5$1 then _HAVOC_int$1 else v337$1);
    v337$2 := (if p5$2 then _HAVOC_int$2 else v337$2);
    $$11$6$1 := (if p5$1 then v337$1 else $$11$6$1);
    $$11$6$2 := (if p5$2 then v337$2 else $$11$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v338$1 := (if p5$1 then _HAVOC_int$1 else v338$1);
    v338$2 := (if p5$2 then _HAVOC_int$2 else v338$2);
    $$11$7$1 := (if p5$1 then v338$1 else $$11$7$1);
    $$11$7$2 := (if p5$2 then v338$2 else $$11$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v339$1 := (if p5$1 then _HAVOC_int$1 else v339$1);
    v339$2 := (if p5$2 then _HAVOC_int$2 else v339$2);
    $$11$8$1 := (if p5$1 then v339$1 else $$11$8$1);
    $$11$8$2 := (if p5$2 then v339$2 else $$11$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v340$1 := (if p5$1 then _HAVOC_int$1 else v340$1);
    v340$2 := (if p5$2 then _HAVOC_int$2 else v340$2);
    $$11$9$1 := (if p5$1 then v340$1 else $$11$9$1);
    $$11$9$2 := (if p5$2 then v340$2 else $$11$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v341$1 := (if p5$1 then _HAVOC_int$1 else v341$1);
    v341$2 := (if p5$2 then _HAVOC_int$2 else v341$2);
    $$11$10$1 := (if p5$1 then v341$1 else $$11$10$1);
    $$11$10$2 := (if p5$2 then v341$2 else $$11$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v342$1 := (if p5$1 then _HAVOC_int$1 else v342$1);
    v342$2 := (if p5$2 then _HAVOC_int$2 else v342$2);
    $$11$11$1 := (if p5$1 then v342$1 else $$11$11$1);
    $$11$11$2 := (if p5$2 then v342$2 else $$11$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v343$1 := (if p5$1 then _HAVOC_int$1 else v343$1);
    v343$2 := (if p5$2 then _HAVOC_int$2 else v343$2);
    $$11$12$1 := (if p5$1 then v343$1 else $$11$12$1);
    $$11$12$2 := (if p5$2 then v343$2 else $$11$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v344$1 := (if p5$1 then _HAVOC_int$1 else v344$1);
    v344$2 := (if p5$2 then _HAVOC_int$2 else v344$2);
    $$11$13$1 := (if p5$1 then v344$1 else $$11$13$1);
    $$11$13$2 := (if p5$2 then v344$2 else $$11$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v345$1 := (if p5$1 then _HAVOC_int$1 else v345$1);
    v345$2 := (if p5$2 then _HAVOC_int$2 else v345$2);
    $$11$14$1 := (if p5$1 then v345$1 else $$11$14$1);
    $$11$14$2 := (if p5$2 then v345$2 else $$11$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v346$1 := (if p5$1 then _HAVOC_int$1 else v346$1);
    v346$2 := (if p5$2 then _HAVOC_int$2 else v346$2);
    $$11$15$1 := (if p5$1 then v346$1 else $$11$15$1);
    $$11$15$2 := (if p5$2 then v346$2 else $$11$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v347$1 := (if p5$1 then _HAVOC_int$1 else v347$1);
    v347$2 := (if p5$2 then _HAVOC_int$2 else v347$2);
    $$11$16$1 := (if p5$1 then v347$1 else $$11$16$1);
    $$11$16$2 := (if p5$2 then v347$2 else $$11$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v348$1 := (if p5$1 then _HAVOC_int$1 else v348$1);
    v348$2 := (if p5$2 then _HAVOC_int$2 else v348$2);
    $$11$17$1 := (if p5$1 then v348$1 else $$11$17$1);
    $$11$17$2 := (if p5$2 then v348$2 else $$11$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v349$1 := (if p5$1 then _HAVOC_int$1 else v349$1);
    v349$2 := (if p5$2 then _HAVOC_int$2 else v349$2);
    $$11$18$1 := (if p5$1 then v349$1 else $$11$18$1);
    $$11$18$2 := (if p5$2 then v349$2 else $$11$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v350$1 := (if p5$1 then _HAVOC_int$1 else v350$1);
    v350$2 := (if p5$2 then _HAVOC_int$2 else v350$2);
    $$11$19$1 := (if p5$1 then v350$1 else $$11$19$1);
    $$11$19$2 := (if p5$2 then v350$2 else $$11$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v351$1 := (if p5$1 then _HAVOC_int$1 else v351$1);
    v351$2 := (if p5$2 then _HAVOC_int$2 else v351$2);
    $$11$20$1 := (if p5$1 then v351$1 else $$11$20$1);
    $$11$20$2 := (if p5$2 then v351$2 else $$11$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v352$1 := (if p5$1 then _HAVOC_int$1 else v352$1);
    v352$2 := (if p5$2 then _HAVOC_int$2 else v352$2);
    $$11$21$1 := (if p5$1 then v352$1 else $$11$21$1);
    $$11$21$2 := (if p5$2 then v352$2 else $$11$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v353$1 := (if p5$1 then _HAVOC_int$1 else v353$1);
    v353$2 := (if p5$2 then _HAVOC_int$2 else v353$2);
    $$11$22$1 := (if p5$1 then v353$1 else $$11$22$1);
    $$11$22$2 := (if p5$2 then v353$2 else $$11$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v354$1 := (if p5$1 then _HAVOC_int$1 else v354$1);
    v354$2 := (if p5$2 then _HAVOC_int$2 else v354$2);
    $$11$23$1 := (if p5$1 then v354$1 else $$11$23$1);
    $$11$23$2 := (if p5$2 then v354$2 else $$11$23$2);
    v355$1 := (if p5$1 then $$11$0$1 else v355$1);
    v355$2 := (if p5$2 then $$11$0$2 else v355$2);
    v356$1 := (if p5$1 then $$11$1$1 else v356$1);
    v356$2 := (if p5$2 then $$11$1$2 else v356$2);
    v357$1 := (if p5$1 then $$11$2$1 else v357$1);
    v357$2 := (if p5$2 then $$11$2$2 else v357$2);
    v358$1 := (if p5$1 then $$11$3$1 else v358$1);
    v358$2 := (if p5$2 then $$11$3$2 else v358$2);
    v359$1 := (if p5$1 then $$11$4$1 else v359$1);
    v359$2 := (if p5$2 then $$11$4$2 else v359$2);
    v360$1 := (if p5$1 then $$11$5$1 else v360$1);
    v360$2 := (if p5$2 then $$11$5$2 else v360$2);
    v361$1 := (if p5$1 then $$11$6$1 else v361$1);
    v361$2 := (if p5$2 then $$11$6$2 else v361$2);
    v362$1 := (if p5$1 then $$11$7$1 else v362$1);
    v362$2 := (if p5$2 then $$11$7$2 else v362$2);
    v363$1 := (if p5$1 then $$11$8$1 else v363$1);
    v363$2 := (if p5$2 then $$11$8$2 else v363$2);
    v364$1 := (if p5$1 then $$11$9$1 else v364$1);
    v364$2 := (if p5$2 then $$11$9$2 else v364$2);
    v365$1 := (if p5$1 then $$11$10$1 else v365$1);
    v365$2 := (if p5$2 then $$11$10$2 else v365$2);
    v366$1 := (if p5$1 then $$11$11$1 else v366$1);
    v366$2 := (if p5$2 then $$11$11$2 else v366$2);
    v367$1 := (if p5$1 then $$11$12$1 else v367$1);
    v367$2 := (if p5$2 then $$11$12$2 else v367$2);
    v368$1 := (if p5$1 then $$11$13$1 else v368$1);
    v368$2 := (if p5$2 then $$11$13$2 else v368$2);
    v369$1 := (if p5$1 then $$11$14$1 else v369$1);
    v369$2 := (if p5$2 then $$11$14$2 else v369$2);
    v370$1 := (if p5$1 then $$11$15$1 else v370$1);
    v370$2 := (if p5$2 then $$11$15$2 else v370$2);
    v371$1 := (if p5$1 then $$11$16$1 else v371$1);
    v371$2 := (if p5$2 then $$11$16$2 else v371$2);
    v372$1 := (if p5$1 then $$11$17$1 else v372$1);
    v372$2 := (if p5$2 then $$11$17$2 else v372$2);
    v373$1 := (if p5$1 then $$11$18$1 else v373$1);
    v373$2 := (if p5$2 then $$11$18$2 else v373$2);
    v374$1 := (if p5$1 then $$11$19$1 else v374$1);
    v374$2 := (if p5$2 then $$11$19$2 else v374$2);
    v375$1 := (if p5$1 then $$11$20$1 else v375$1);
    v375$2 := (if p5$2 then $$11$20$2 else v375$2);
    v376$1 := (if p5$1 then $$11$21$1 else v376$1);
    v376$2 := (if p5$2 then $$11$21$2 else v376$2);
    v377$1 := (if p5$1 then $$11$22$1 else v377$1);
    v377$2 := (if p5$2 then $$11$22$2 else v377$2);
    v378$1 := (if p5$1 then $$11$23$1 else v378$1);
    v378$2 := (if p5$2 then $$11$23$2 else v378$2);
    call {:sourceloc_num 627} v379$1, v379$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p5$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v370$1, v369$1), v368$1), v367$1), v366$1), v365$1), v364$1), v363$1), v362$1), v361$1), v360$1), v359$1), v358$1), v357$1), v356$1), v355$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v374$1, v373$1), v372$1), v371$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v378$1, v377$1), v376$1), v375$1), SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p5$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v370$2, v369$2), v368$2), v367$2), v366$2), v365$2), v364$2), v363$2), v362$2), v361$2), v360$2), v359$2), v358$2), v357$2), v356$2), v355$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v374$2, v373$2), v372$2), v371$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v378$2, v377$2), v376$2), v375$2), SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i6$0$1 := (if p5$1 then BV_EXTRACT(v379$1, 32, 0) else $$res.i6$0$1);
    $$res.i6$0$2 := (if p5$2 then BV_EXTRACT(v379$2, 32, 0) else $$res.i6$0$2);
    $$res.i6$1$1 := (if p5$1 then BV_EXTRACT(v379$1, 64, 32) else $$res.i6$1$1);
    $$res.i6$1$2 := (if p5$2 then BV_EXTRACT(v379$2, 64, 32) else $$res.i6$1$2);
    $$res.i6$2$1 := (if p5$1 then BV_EXTRACT(v379$1, 96, 64) else $$res.i6$2$1);
    $$res.i6$2$2 := (if p5$2 then BV_EXTRACT(v379$2, 96, 64) else $$res.i6$2$2);
    $$res.i6$3$1 := (if p5$1 then BV_EXTRACT(v379$1, 128, 96) else $$res.i6$3$1);
    $$res.i6$3$2 := (if p5$2 then BV_EXTRACT(v379$2, 128, 96) else $$res.i6$3$2);
    v380$1 := (if p5$1 then $$res.i6$0$1 else v380$1);
    v380$2 := (if p5$2 then $$res.i6$0$2 else v380$2);
    v381$1 := (if p5$1 then $$res.i6$1$1 else v381$1);
    v381$2 := (if p5$2 then $$res.i6$1$2 else v381$2);
    v382$1 := (if p5$1 then $$res.i6$2$1 else v382$1);
    v382$2 := (if p5$2 then $$res.i6$2$2 else v382$2);
    v383$1 := (if p5$1 then $$res.i6$3$1 else v383$1);
    v383$2 := (if p5$2 then $$res.i6$3$2 else v383$2);
    $$9$0$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v380$1, 1132396544)) else $$9$0$1);
    $$9$0$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v380$2, 1132396544)) else $$9$0$2);
    $$9$1$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v381$1, 1132396544)) else $$9$1$1);
    $$9$1$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v381$2, 1132396544)) else $$9$1$2);
    $$9$2$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v382$1, 1132396544)) else $$9$2$1);
    $$9$2$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v382$2, 1132396544)) else $$9$2$2);
    $$9$3$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v383$1, 1132396544)) else $$9$3$1);
    $$9$3$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v383$2, 1132396544)) else $$9$3$2);
    v384$1 := (if p5$1 then $$9$0$1 else v384$1);
    v384$2 := (if p5$2 then $$9$0$2 else v384$2);
    v385$1 := (if p5$1 then $$9$1$1 else v385$1);
    v385$2 := (if p5$2 then $$9$1$2 else v385$2);
    v386$1 := (if p5$1 then $$9$2$1 else v386$1);
    v386$2 := (if p5$2 then $$9$2$2 else v386$2);
    v387$1 := (if p5$1 then $$9$3$1 else v387$1);
    v387$2 := (if p5$2 then $$9$3$2 else v387$2);
    $$10$0$1 := (if p5$1 then v384$1 else $$10$0$1);
    $$10$0$2 := (if p5$2 then v384$2 else $$10$0$2);
    $$10$1$1 := (if p5$1 then v385$1 else $$10$1$1);
    $$10$1$2 := (if p5$2 then v385$2 else $$10$1$2);
    $$10$2$1 := (if p5$1 then v386$1 else $$10$2$1);
    $$10$2$2 := (if p5$2 then v386$2 else $$10$2$2);
    $$10$3$1 := (if p5$1 then v387$1 else $$10$3$1);
    $$10$3$2 := (if p5$2 then v387$2 else $$10$3$2);
    v388$1 := (if p5$1 then $$10$0$1 else v388$1);
    v388$2 := (if p5$2 then $$10$0$2 else v388$2);
    v389$1 := (if p5$1 then $$10$1$1 else v389$1);
    v389$2 := (if p5$2 then $$10$1$2 else v389$2);
    v390$1 := (if p5$1 then $$10$2$1 else v390$1);
    v390$2 := (if p5$2 then $$10$2$2 else v390$2);
    v391$1 := (if p5$1 then $$10$3$1 else v391$1);
    v391$2 := (if p5$2 then $$10$3$2 else v391$2);
    $$32$0$1 := (if p5$1 then v388$1 else $$32$0$1);
    $$32$0$2 := (if p5$2 then v388$2 else $$32$0$2);
    $$32$1$1 := (if p5$1 then v389$1 else $$32$1$1);
    $$32$1$2 := (if p5$2 then v389$2 else $$32$1$2);
    $$32$2$1 := (if p5$1 then v390$1 else $$32$2$1);
    $$32$2$2 := (if p5$2 then v390$2 else $$32$2$2);
    $$32$3$1 := (if p5$1 then v391$1 else $$32$3$1);
    $$32$3$2 := (if p5$2 then v391$2 else $$32$3$2);
    v392$1 := (if p5$1 then $$32$0$1 else v392$1);
    v392$2 := (if p5$2 then $$32$0$2 else v392$2);
    call {:sourceloc} {:sourceloc_num 657} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), v392$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 657} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 657} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), v392$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4)] := (if p5$1 then v392$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4)] := (if p5$2 then v392$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4)]);
    v393$1 := (if p5$1 then $$32$1$1 else v393$1);
    v393$2 := (if p5$2 then $$32$1$2 else v393$2);
    call {:sourceloc} {:sourceloc_num 659} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 1), v393$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 659} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 659} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 1), v393$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 1)] := (if p5$1 then v393$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 1)] := (if p5$2 then v393$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 1)]);
    v394$1 := (if p5$1 then $$32$2$1 else v394$1);
    v394$2 := (if p5$2 then $$32$2$2 else v394$2);
    call {:sourceloc} {:sourceloc_num 661} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 2), v394$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 661} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 661} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 2), v394$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 2)] := (if p5$1 then v394$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 2)] := (if p5$2 then v394$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 2)]);
    v395$1 := (if p5$1 then $$32$3$1 else v395$1);
    v395$2 := (if p5$2 then $$32$3$2 else v395$2);
    call {:sourceloc} {:sourceloc_num 663} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 3), v395$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 663} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 663} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 3), v395$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 3)] := (if p5$1 then v395$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), local_id_x$1), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 3)] := (if p5$2 then v395$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), local_id_x$2), 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v396$1 := (if p5$1 then _HAVOC_int$1 else v396$1);
    v396$2 := (if p5$2 then _HAVOC_int$2 else v396$2);
    $$8$0$1 := (if p5$1 then v396$1 else $$8$0$1);
    $$8$0$2 := (if p5$2 then v396$2 else $$8$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v397$1 := (if p5$1 then _HAVOC_int$1 else v397$1);
    v397$2 := (if p5$2 then _HAVOC_int$2 else v397$2);
    $$8$1$1 := (if p5$1 then v397$1 else $$8$1$1);
    $$8$1$2 := (if p5$2 then v397$2 else $$8$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v398$1 := (if p5$1 then _HAVOC_int$1 else v398$1);
    v398$2 := (if p5$2 then _HAVOC_int$2 else v398$2);
    $$8$2$1 := (if p5$1 then v398$1 else $$8$2$1);
    $$8$2$2 := (if p5$2 then v398$2 else $$8$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v399$1 := (if p5$1 then _HAVOC_int$1 else v399$1);
    v399$2 := (if p5$2 then _HAVOC_int$2 else v399$2);
    $$8$3$1 := (if p5$1 then v399$1 else $$8$3$1);
    $$8$3$2 := (if p5$2 then v399$2 else $$8$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v400$1 := (if p5$1 then _HAVOC_int$1 else v400$1);
    v400$2 := (if p5$2 then _HAVOC_int$2 else v400$2);
    $$8$4$1 := (if p5$1 then v400$1 else $$8$4$1);
    $$8$4$2 := (if p5$2 then v400$2 else $$8$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v401$1 := (if p5$1 then _HAVOC_int$1 else v401$1);
    v401$2 := (if p5$2 then _HAVOC_int$2 else v401$2);
    $$8$5$1 := (if p5$1 then v401$1 else $$8$5$1);
    $$8$5$2 := (if p5$2 then v401$2 else $$8$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v402$1 := (if p5$1 then _HAVOC_int$1 else v402$1);
    v402$2 := (if p5$2 then _HAVOC_int$2 else v402$2);
    $$8$6$1 := (if p5$1 then v402$1 else $$8$6$1);
    $$8$6$2 := (if p5$2 then v402$2 else $$8$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v403$1 := (if p5$1 then _HAVOC_int$1 else v403$1);
    v403$2 := (if p5$2 then _HAVOC_int$2 else v403$2);
    $$8$7$1 := (if p5$1 then v403$1 else $$8$7$1);
    $$8$7$2 := (if p5$2 then v403$2 else $$8$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v404$1 := (if p5$1 then _HAVOC_int$1 else v404$1);
    v404$2 := (if p5$2 then _HAVOC_int$2 else v404$2);
    $$8$8$1 := (if p5$1 then v404$1 else $$8$8$1);
    $$8$8$2 := (if p5$2 then v404$2 else $$8$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v405$1 := (if p5$1 then _HAVOC_int$1 else v405$1);
    v405$2 := (if p5$2 then _HAVOC_int$2 else v405$2);
    $$8$9$1 := (if p5$1 then v405$1 else $$8$9$1);
    $$8$9$2 := (if p5$2 then v405$2 else $$8$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v406$1 := (if p5$1 then _HAVOC_int$1 else v406$1);
    v406$2 := (if p5$2 then _HAVOC_int$2 else v406$2);
    $$8$10$1 := (if p5$1 then v406$1 else $$8$10$1);
    $$8$10$2 := (if p5$2 then v406$2 else $$8$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v407$1 := (if p5$1 then _HAVOC_int$1 else v407$1);
    v407$2 := (if p5$2 then _HAVOC_int$2 else v407$2);
    $$8$11$1 := (if p5$1 then v407$1 else $$8$11$1);
    $$8$11$2 := (if p5$2 then v407$2 else $$8$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v408$1 := (if p5$1 then _HAVOC_int$1 else v408$1);
    v408$2 := (if p5$2 then _HAVOC_int$2 else v408$2);
    $$8$12$1 := (if p5$1 then v408$1 else $$8$12$1);
    $$8$12$2 := (if p5$2 then v408$2 else $$8$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v409$1 := (if p5$1 then _HAVOC_int$1 else v409$1);
    v409$2 := (if p5$2 then _HAVOC_int$2 else v409$2);
    $$8$13$1 := (if p5$1 then v409$1 else $$8$13$1);
    $$8$13$2 := (if p5$2 then v409$2 else $$8$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v410$1 := (if p5$1 then _HAVOC_int$1 else v410$1);
    v410$2 := (if p5$2 then _HAVOC_int$2 else v410$2);
    $$8$14$1 := (if p5$1 then v410$1 else $$8$14$1);
    $$8$14$2 := (if p5$2 then v410$2 else $$8$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v411$1 := (if p5$1 then _HAVOC_int$1 else v411$1);
    v411$2 := (if p5$2 then _HAVOC_int$2 else v411$2);
    $$8$15$1 := (if p5$1 then v411$1 else $$8$15$1);
    $$8$15$2 := (if p5$2 then v411$2 else $$8$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v412$1 := (if p5$1 then _HAVOC_int$1 else v412$1);
    v412$2 := (if p5$2 then _HAVOC_int$2 else v412$2);
    $$8$16$1 := (if p5$1 then v412$1 else $$8$16$1);
    $$8$16$2 := (if p5$2 then v412$2 else $$8$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v413$1 := (if p5$1 then _HAVOC_int$1 else v413$1);
    v413$2 := (if p5$2 then _HAVOC_int$2 else v413$2);
    $$8$17$1 := (if p5$1 then v413$1 else $$8$17$1);
    $$8$17$2 := (if p5$2 then v413$2 else $$8$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v414$1 := (if p5$1 then _HAVOC_int$1 else v414$1);
    v414$2 := (if p5$2 then _HAVOC_int$2 else v414$2);
    $$8$18$1 := (if p5$1 then v414$1 else $$8$18$1);
    $$8$18$2 := (if p5$2 then v414$2 else $$8$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v415$1 := (if p5$1 then _HAVOC_int$1 else v415$1);
    v415$2 := (if p5$2 then _HAVOC_int$2 else v415$2);
    $$8$19$1 := (if p5$1 then v415$1 else $$8$19$1);
    $$8$19$2 := (if p5$2 then v415$2 else $$8$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v416$1 := (if p5$1 then _HAVOC_int$1 else v416$1);
    v416$2 := (if p5$2 then _HAVOC_int$2 else v416$2);
    $$8$20$1 := (if p5$1 then v416$1 else $$8$20$1);
    $$8$20$2 := (if p5$2 then v416$2 else $$8$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v417$1 := (if p5$1 then _HAVOC_int$1 else v417$1);
    v417$2 := (if p5$2 then _HAVOC_int$2 else v417$2);
    $$8$21$1 := (if p5$1 then v417$1 else $$8$21$1);
    $$8$21$2 := (if p5$2 then v417$2 else $$8$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v418$1 := (if p5$1 then _HAVOC_int$1 else v418$1);
    v418$2 := (if p5$2 then _HAVOC_int$2 else v418$2);
    $$8$22$1 := (if p5$1 then v418$1 else $$8$22$1);
    $$8$22$2 := (if p5$2 then v418$2 else $$8$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v419$1 := (if p5$1 then _HAVOC_int$1 else v419$1);
    v419$2 := (if p5$2 then _HAVOC_int$2 else v419$2);
    $$8$23$1 := (if p5$1 then v419$1 else $$8$23$1);
    $$8$23$2 := (if p5$2 then v419$2 else $$8$23$2);
    v420$1 := (if p5$1 then $$8$0$1 else v420$1);
    v420$2 := (if p5$2 then $$8$0$2 else v420$2);
    v421$1 := (if p5$1 then $$8$1$1 else v421$1);
    v421$2 := (if p5$2 then $$8$1$2 else v421$2);
    v422$1 := (if p5$1 then $$8$2$1 else v422$1);
    v422$2 := (if p5$2 then $$8$2$2 else v422$2);
    v423$1 := (if p5$1 then $$8$3$1 else v423$1);
    v423$2 := (if p5$2 then $$8$3$2 else v423$2);
    v424$1 := (if p5$1 then $$8$4$1 else v424$1);
    v424$2 := (if p5$2 then $$8$4$2 else v424$2);
    v425$1 := (if p5$1 then $$8$5$1 else v425$1);
    v425$2 := (if p5$2 then $$8$5$2 else v425$2);
    v426$1 := (if p5$1 then $$8$6$1 else v426$1);
    v426$2 := (if p5$2 then $$8$6$2 else v426$2);
    v427$1 := (if p5$1 then $$8$7$1 else v427$1);
    v427$2 := (if p5$2 then $$8$7$2 else v427$2);
    v428$1 := (if p5$1 then $$8$8$1 else v428$1);
    v428$2 := (if p5$2 then $$8$8$2 else v428$2);
    v429$1 := (if p5$1 then $$8$9$1 else v429$1);
    v429$2 := (if p5$2 then $$8$9$2 else v429$2);
    v430$1 := (if p5$1 then $$8$10$1 else v430$1);
    v430$2 := (if p5$2 then $$8$10$2 else v430$2);
    v431$1 := (if p5$1 then $$8$11$1 else v431$1);
    v431$2 := (if p5$2 then $$8$11$2 else v431$2);
    v432$1 := (if p5$1 then $$8$12$1 else v432$1);
    v432$2 := (if p5$2 then $$8$12$2 else v432$2);
    v433$1 := (if p5$1 then $$8$13$1 else v433$1);
    v433$2 := (if p5$2 then $$8$13$2 else v433$2);
    v434$1 := (if p5$1 then $$8$14$1 else v434$1);
    v434$2 := (if p5$2 then $$8$14$2 else v434$2);
    v435$1 := (if p5$1 then $$8$15$1 else v435$1);
    v435$2 := (if p5$2 then $$8$15$2 else v435$2);
    v436$1 := (if p5$1 then $$8$16$1 else v436$1);
    v436$2 := (if p5$2 then $$8$16$2 else v436$2);
    v437$1 := (if p5$1 then $$8$17$1 else v437$1);
    v437$2 := (if p5$2 then $$8$17$2 else v437$2);
    v438$1 := (if p5$1 then $$8$18$1 else v438$1);
    v438$2 := (if p5$2 then $$8$18$2 else v438$2);
    v439$1 := (if p5$1 then $$8$19$1 else v439$1);
    v439$2 := (if p5$2 then $$8$19$2 else v439$2);
    v440$1 := (if p5$1 then $$8$20$1 else v440$1);
    v440$2 := (if p5$2 then $$8$20$2 else v440$2);
    v441$1 := (if p5$1 then $$8$21$1 else v441$1);
    v441$2 := (if p5$2 then $$8$21$2 else v441$2);
    v442$1 := (if p5$1 then $$8$22$1 else v442$1);
    v442$2 := (if p5$2 then $$8$22$2 else v442$2);
    v443$1 := (if p5$1 then $$8$23$1 else v443$1);
    v443$2 := (if p5$2 then $$8$23$2 else v443$2);
    call {:sourceloc_num 736} v444$1, v444$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p5$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v435$1, v434$1), v433$1), v432$1), v431$1), v430$1), v429$1), v428$1), v427$1), v426$1), v425$1), v424$1), v423$1), v422$1), v421$1), v420$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v439$1, v438$1), v437$1), v436$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v443$1, v442$1), v441$1), v440$1), SI32_TO_FP32(BV32_SUB(v0$1, $r)), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p5$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v435$2, v434$2), v433$2), v432$2), v431$2), v430$2), v429$2), v428$2), v427$2), v426$2), v425$2), v424$2), v423$2), v422$2), v421$2), v420$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v439$2, v438$2), v437$2), v436$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v443$2, v442$2), v441$2), v440$2), SI32_TO_FP32(BV32_SUB(v0$2, $r)), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i7$0$1 := (if p5$1 then BV_EXTRACT(v444$1, 32, 0) else $$res.i7$0$1);
    $$res.i7$0$2 := (if p5$2 then BV_EXTRACT(v444$2, 32, 0) else $$res.i7$0$2);
    $$res.i7$1$1 := (if p5$1 then BV_EXTRACT(v444$1, 64, 32) else $$res.i7$1$1);
    $$res.i7$1$2 := (if p5$2 then BV_EXTRACT(v444$2, 64, 32) else $$res.i7$1$2);
    $$res.i7$2$1 := (if p5$1 then BV_EXTRACT(v444$1, 96, 64) else $$res.i7$2$1);
    $$res.i7$2$2 := (if p5$2 then BV_EXTRACT(v444$2, 96, 64) else $$res.i7$2$2);
    $$res.i7$3$1 := (if p5$1 then BV_EXTRACT(v444$1, 128, 96) else $$res.i7$3$1);
    $$res.i7$3$2 := (if p5$2 then BV_EXTRACT(v444$2, 128, 96) else $$res.i7$3$2);
    v445$1 := (if p5$1 then $$res.i7$0$1 else v445$1);
    v445$2 := (if p5$2 then $$res.i7$0$2 else v445$2);
    v446$1 := (if p5$1 then $$res.i7$1$1 else v446$1);
    v446$2 := (if p5$2 then $$res.i7$1$2 else v446$2);
    v447$1 := (if p5$1 then $$res.i7$2$1 else v447$1);
    v447$2 := (if p5$2 then $$res.i7$2$2 else v447$2);
    v448$1 := (if p5$1 then $$res.i7$3$1 else v448$1);
    v448$2 := (if p5$2 then $$res.i7$3$2 else v448$2);
    $$6$0$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v445$1, 1132396544)) else $$6$0$1);
    $$6$0$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v445$2, 1132396544)) else $$6$0$2);
    $$6$1$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v446$1, 1132396544)) else $$6$1$1);
    $$6$1$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v446$2, 1132396544)) else $$6$1$2);
    $$6$2$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v447$1, 1132396544)) else $$6$2$1);
    $$6$2$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v447$2, 1132396544)) else $$6$2$2);
    $$6$3$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v448$1, 1132396544)) else $$6$3$1);
    $$6$3$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v448$2, 1132396544)) else $$6$3$2);
    v449$1 := (if p5$1 then $$6$0$1 else v449$1);
    v449$2 := (if p5$2 then $$6$0$2 else v449$2);
    v450$1 := (if p5$1 then $$6$1$1 else v450$1);
    v450$2 := (if p5$2 then $$6$1$2 else v450$2);
    v451$1 := (if p5$1 then $$6$2$1 else v451$1);
    v451$2 := (if p5$2 then $$6$2$2 else v451$2);
    v452$1 := (if p5$1 then $$6$3$1 else v452$1);
    v452$2 := (if p5$2 then $$6$3$2 else v452$2);
    $$7$0$1 := (if p5$1 then v449$1 else $$7$0$1);
    $$7$0$2 := (if p5$2 then v449$2 else $$7$0$2);
    $$7$1$1 := (if p5$1 then v450$1 else $$7$1$1);
    $$7$1$2 := (if p5$2 then v450$2 else $$7$1$2);
    $$7$2$1 := (if p5$1 then v451$1 else $$7$2$1);
    $$7$2$2 := (if p5$2 then v451$2 else $$7$2$2);
    $$7$3$1 := (if p5$1 then v452$1 else $$7$3$1);
    $$7$3$2 := (if p5$2 then v452$2 else $$7$3$2);
    v453$1 := (if p5$1 then $$7$0$1 else v453$1);
    v453$2 := (if p5$2 then $$7$0$2 else v453$2);
    v454$1 := (if p5$1 then $$7$1$1 else v454$1);
    v454$2 := (if p5$2 then $$7$1$2 else v454$2);
    v455$1 := (if p5$1 then $$7$2$1 else v455$1);
    v455$2 := (if p5$2 then $$7$2$2 else v455$2);
    v456$1 := (if p5$1 then $$7$3$1 else v456$1);
    v456$2 := (if p5$2 then $$7$3$2 else v456$2);
    $$33$0$1 := (if p5$1 then v453$1 else $$33$0$1);
    $$33$0$2 := (if p5$2 then v453$2 else $$33$0$2);
    $$33$1$1 := (if p5$1 then v454$1 else $$33$1$1);
    $$33$1$2 := (if p5$2 then v454$2 else $$33$1$2);
    $$33$2$1 := (if p5$1 then v455$1 else $$33$2$1);
    $$33$2$2 := (if p5$2 then v455$2 else $$33$2$2);
    $$33$3$1 := (if p5$1 then v456$1 else $$33$3$1);
    $$33$3$2 := (if p5$2 then v456$2 else $$33$3$2);
    v457$1 := (if p5$1 then $$33$0$1 else v457$1);
    v457$2 := (if p5$2 then $$33$0$2 else v457$2);
    call {:sourceloc} {:sourceloc_num 766} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), v457$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 766} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 766} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), v457$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4)] := (if p5$1 then v457$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4)] := (if p5$2 then v457$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4)]);
    v458$1 := (if p5$1 then $$33$1$1 else v458$1);
    v458$2 := (if p5$2 then $$33$1$2 else v458$2);
    call {:sourceloc} {:sourceloc_num 768} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 1), v458$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 768} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 768} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 1), v458$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 1)] := (if p5$1 then v458$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 1)] := (if p5$2 then v458$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 1)]);
    v459$1 := (if p5$1 then $$33$2$1 else v459$1);
    v459$2 := (if p5$2 then $$33$2$2 else v459$2);
    call {:sourceloc} {:sourceloc_num 770} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 2), v459$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 770} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 770} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 2), v459$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 2)] := (if p5$1 then v459$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 2)] := (if p5$2 then v459$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 2)]);
    v460$1 := (if p5$1 then $$33$3$1 else v460$1);
    v460$2 := (if p5$2 then $$33$3$2 else v460$2);
    call {:sourceloc} {:sourceloc_num 772} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 3), v460$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 772} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 772} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 3), v460$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 3)] := (if p5$1 then v460$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), local_id_x$1), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 3)] := (if p5$2 then v460$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), local_id_x$2), 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v461$1 := (if p5$1 then _HAVOC_int$1 else v461$1);
    v461$2 := (if p5$2 then _HAVOC_int$2 else v461$2);
    $$5$0$1 := (if p5$1 then v461$1 else $$5$0$1);
    $$5$0$2 := (if p5$2 then v461$2 else $$5$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v462$1 := (if p5$1 then _HAVOC_int$1 else v462$1);
    v462$2 := (if p5$2 then _HAVOC_int$2 else v462$2);
    $$5$1$1 := (if p5$1 then v462$1 else $$5$1$1);
    $$5$1$2 := (if p5$2 then v462$2 else $$5$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v463$1 := (if p5$1 then _HAVOC_int$1 else v463$1);
    v463$2 := (if p5$2 then _HAVOC_int$2 else v463$2);
    $$5$2$1 := (if p5$1 then v463$1 else $$5$2$1);
    $$5$2$2 := (if p5$2 then v463$2 else $$5$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v464$1 := (if p5$1 then _HAVOC_int$1 else v464$1);
    v464$2 := (if p5$2 then _HAVOC_int$2 else v464$2);
    $$5$3$1 := (if p5$1 then v464$1 else $$5$3$1);
    $$5$3$2 := (if p5$2 then v464$2 else $$5$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v465$1 := (if p5$1 then _HAVOC_int$1 else v465$1);
    v465$2 := (if p5$2 then _HAVOC_int$2 else v465$2);
    $$5$4$1 := (if p5$1 then v465$1 else $$5$4$1);
    $$5$4$2 := (if p5$2 then v465$2 else $$5$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v466$1 := (if p5$1 then _HAVOC_int$1 else v466$1);
    v466$2 := (if p5$2 then _HAVOC_int$2 else v466$2);
    $$5$5$1 := (if p5$1 then v466$1 else $$5$5$1);
    $$5$5$2 := (if p5$2 then v466$2 else $$5$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v467$1 := (if p5$1 then _HAVOC_int$1 else v467$1);
    v467$2 := (if p5$2 then _HAVOC_int$2 else v467$2);
    $$5$6$1 := (if p5$1 then v467$1 else $$5$6$1);
    $$5$6$2 := (if p5$2 then v467$2 else $$5$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v468$1 := (if p5$1 then _HAVOC_int$1 else v468$1);
    v468$2 := (if p5$2 then _HAVOC_int$2 else v468$2);
    $$5$7$1 := (if p5$1 then v468$1 else $$5$7$1);
    $$5$7$2 := (if p5$2 then v468$2 else $$5$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v469$1 := (if p5$1 then _HAVOC_int$1 else v469$1);
    v469$2 := (if p5$2 then _HAVOC_int$2 else v469$2);
    $$5$8$1 := (if p5$1 then v469$1 else $$5$8$1);
    $$5$8$2 := (if p5$2 then v469$2 else $$5$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v470$1 := (if p5$1 then _HAVOC_int$1 else v470$1);
    v470$2 := (if p5$2 then _HAVOC_int$2 else v470$2);
    $$5$9$1 := (if p5$1 then v470$1 else $$5$9$1);
    $$5$9$2 := (if p5$2 then v470$2 else $$5$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v471$1 := (if p5$1 then _HAVOC_int$1 else v471$1);
    v471$2 := (if p5$2 then _HAVOC_int$2 else v471$2);
    $$5$10$1 := (if p5$1 then v471$1 else $$5$10$1);
    $$5$10$2 := (if p5$2 then v471$2 else $$5$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v472$1 := (if p5$1 then _HAVOC_int$1 else v472$1);
    v472$2 := (if p5$2 then _HAVOC_int$2 else v472$2);
    $$5$11$1 := (if p5$1 then v472$1 else $$5$11$1);
    $$5$11$2 := (if p5$2 then v472$2 else $$5$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v473$1 := (if p5$1 then _HAVOC_int$1 else v473$1);
    v473$2 := (if p5$2 then _HAVOC_int$2 else v473$2);
    $$5$12$1 := (if p5$1 then v473$1 else $$5$12$1);
    $$5$12$2 := (if p5$2 then v473$2 else $$5$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v474$1 := (if p5$1 then _HAVOC_int$1 else v474$1);
    v474$2 := (if p5$2 then _HAVOC_int$2 else v474$2);
    $$5$13$1 := (if p5$1 then v474$1 else $$5$13$1);
    $$5$13$2 := (if p5$2 then v474$2 else $$5$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v475$1 := (if p5$1 then _HAVOC_int$1 else v475$1);
    v475$2 := (if p5$2 then _HAVOC_int$2 else v475$2);
    $$5$14$1 := (if p5$1 then v475$1 else $$5$14$1);
    $$5$14$2 := (if p5$2 then v475$2 else $$5$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v476$1 := (if p5$1 then _HAVOC_int$1 else v476$1);
    v476$2 := (if p5$2 then _HAVOC_int$2 else v476$2);
    $$5$15$1 := (if p5$1 then v476$1 else $$5$15$1);
    $$5$15$2 := (if p5$2 then v476$2 else $$5$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v477$1 := (if p5$1 then _HAVOC_int$1 else v477$1);
    v477$2 := (if p5$2 then _HAVOC_int$2 else v477$2);
    $$5$16$1 := (if p5$1 then v477$1 else $$5$16$1);
    $$5$16$2 := (if p5$2 then v477$2 else $$5$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v478$1 := (if p5$1 then _HAVOC_int$1 else v478$1);
    v478$2 := (if p5$2 then _HAVOC_int$2 else v478$2);
    $$5$17$1 := (if p5$1 then v478$1 else $$5$17$1);
    $$5$17$2 := (if p5$2 then v478$2 else $$5$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v479$1 := (if p5$1 then _HAVOC_int$1 else v479$1);
    v479$2 := (if p5$2 then _HAVOC_int$2 else v479$2);
    $$5$18$1 := (if p5$1 then v479$1 else $$5$18$1);
    $$5$18$2 := (if p5$2 then v479$2 else $$5$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v480$1 := (if p5$1 then _HAVOC_int$1 else v480$1);
    v480$2 := (if p5$2 then _HAVOC_int$2 else v480$2);
    $$5$19$1 := (if p5$1 then v480$1 else $$5$19$1);
    $$5$19$2 := (if p5$2 then v480$2 else $$5$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v481$1 := (if p5$1 then _HAVOC_int$1 else v481$1);
    v481$2 := (if p5$2 then _HAVOC_int$2 else v481$2);
    $$5$20$1 := (if p5$1 then v481$1 else $$5$20$1);
    $$5$20$2 := (if p5$2 then v481$2 else $$5$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v482$1 := (if p5$1 then _HAVOC_int$1 else v482$1);
    v482$2 := (if p5$2 then _HAVOC_int$2 else v482$2);
    $$5$21$1 := (if p5$1 then v482$1 else $$5$21$1);
    $$5$21$2 := (if p5$2 then v482$2 else $$5$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v483$1 := (if p5$1 then _HAVOC_int$1 else v483$1);
    v483$2 := (if p5$2 then _HAVOC_int$2 else v483$2);
    $$5$22$1 := (if p5$1 then v483$1 else $$5$22$1);
    $$5$22$2 := (if p5$2 then v483$2 else $$5$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v484$1 := (if p5$1 then _HAVOC_int$1 else v484$1);
    v484$2 := (if p5$2 then _HAVOC_int$2 else v484$2);
    $$5$23$1 := (if p5$1 then v484$1 else $$5$23$1);
    $$5$23$2 := (if p5$2 then v484$2 else $$5$23$2);
    v485$1 := (if p5$1 then $$5$0$1 else v485$1);
    v485$2 := (if p5$2 then $$5$0$2 else v485$2);
    v486$1 := (if p5$1 then $$5$1$1 else v486$1);
    v486$2 := (if p5$2 then $$5$1$2 else v486$2);
    v487$1 := (if p5$1 then $$5$2$1 else v487$1);
    v487$2 := (if p5$2 then $$5$2$2 else v487$2);
    v488$1 := (if p5$1 then $$5$3$1 else v488$1);
    v488$2 := (if p5$2 then $$5$3$2 else v488$2);
    v489$1 := (if p5$1 then $$5$4$1 else v489$1);
    v489$2 := (if p5$2 then $$5$4$2 else v489$2);
    v490$1 := (if p5$1 then $$5$5$1 else v490$1);
    v490$2 := (if p5$2 then $$5$5$2 else v490$2);
    v491$1 := (if p5$1 then $$5$6$1 else v491$1);
    v491$2 := (if p5$2 then $$5$6$2 else v491$2);
    v492$1 := (if p5$1 then $$5$7$1 else v492$1);
    v492$2 := (if p5$2 then $$5$7$2 else v492$2);
    v493$1 := (if p5$1 then $$5$8$1 else v493$1);
    v493$2 := (if p5$2 then $$5$8$2 else v493$2);
    v494$1 := (if p5$1 then $$5$9$1 else v494$1);
    v494$2 := (if p5$2 then $$5$9$2 else v494$2);
    v495$1 := (if p5$1 then $$5$10$1 else v495$1);
    v495$2 := (if p5$2 then $$5$10$2 else v495$2);
    v496$1 := (if p5$1 then $$5$11$1 else v496$1);
    v496$2 := (if p5$2 then $$5$11$2 else v496$2);
    v497$1 := (if p5$1 then $$5$12$1 else v497$1);
    v497$2 := (if p5$2 then $$5$12$2 else v497$2);
    v498$1 := (if p5$1 then $$5$13$1 else v498$1);
    v498$2 := (if p5$2 then $$5$13$2 else v498$2);
    v499$1 := (if p5$1 then $$5$14$1 else v499$1);
    v499$2 := (if p5$2 then $$5$14$2 else v499$2);
    v500$1 := (if p5$1 then $$5$15$1 else v500$1);
    v500$2 := (if p5$2 then $$5$15$2 else v500$2);
    v501$1 := (if p5$1 then $$5$16$1 else v501$1);
    v501$2 := (if p5$2 then $$5$16$2 else v501$2);
    v502$1 := (if p5$1 then $$5$17$1 else v502$1);
    v502$2 := (if p5$2 then $$5$17$2 else v502$2);
    v503$1 := (if p5$1 then $$5$18$1 else v503$1);
    v503$2 := (if p5$2 then $$5$18$2 else v503$2);
    v504$1 := (if p5$1 then $$5$19$1 else v504$1);
    v504$2 := (if p5$2 then $$5$19$2 else v504$2);
    v505$1 := (if p5$1 then $$5$20$1 else v505$1);
    v505$2 := (if p5$2 then $$5$20$2 else v505$2);
    v506$1 := (if p5$1 then $$5$21$1 else v506$1);
    v506$2 := (if p5$2 then $$5$21$2 else v506$2);
    v507$1 := (if p5$1 then $$5$22$1 else v507$1);
    v507$2 := (if p5$2 then $$5$22$2 else v507$2);
    v508$1 := (if p5$1 then $$5$23$1 else v508$1);
    v508$2 := (if p5$2 then $$5$23$2 else v508$2);
    call {:sourceloc_num 845} v509$1, v509$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p5$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v500$1, v499$1), v498$1), v497$1), v496$1), v495$1), v494$1), v493$1), v492$1), v491$1), v490$1), v489$1), v488$1), v487$1), v486$1), v485$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v504$1, v503$1), v502$1), v501$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v508$1, v507$1), v506$1), v505$1), SI32_TO_FP32(BV32_ADD(v0$1, group_size_y)), SI32_TO_FP32(BV32_SUB(v1$1, $r)), p5$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v500$2, v499$2), v498$2), v497$2), v496$2), v495$2), v494$2), v493$2), v492$2), v491$2), v490$2), v489$2), v488$2), v487$2), v486$2), v485$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v504$2, v503$2), v502$2), v501$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v508$2, v507$2), v506$2), v505$2), SI32_TO_FP32(BV32_ADD(v0$2, group_size_y)), SI32_TO_FP32(BV32_SUB(v1$2, $r)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i8$0$1 := (if p5$1 then BV_EXTRACT(v509$1, 32, 0) else $$res.i8$0$1);
    $$res.i8$0$2 := (if p5$2 then BV_EXTRACT(v509$2, 32, 0) else $$res.i8$0$2);
    $$res.i8$1$1 := (if p5$1 then BV_EXTRACT(v509$1, 64, 32) else $$res.i8$1$1);
    $$res.i8$1$2 := (if p5$2 then BV_EXTRACT(v509$2, 64, 32) else $$res.i8$1$2);
    $$res.i8$2$1 := (if p5$1 then BV_EXTRACT(v509$1, 96, 64) else $$res.i8$2$1);
    $$res.i8$2$2 := (if p5$2 then BV_EXTRACT(v509$2, 96, 64) else $$res.i8$2$2);
    $$res.i8$3$1 := (if p5$1 then BV_EXTRACT(v509$1, 128, 96) else $$res.i8$3$1);
    $$res.i8$3$2 := (if p5$2 then BV_EXTRACT(v509$2, 128, 96) else $$res.i8$3$2);
    v510$1 := (if p5$1 then $$res.i8$0$1 else v510$1);
    v510$2 := (if p5$2 then $$res.i8$0$2 else v510$2);
    v511$1 := (if p5$1 then $$res.i8$1$1 else v511$1);
    v511$2 := (if p5$2 then $$res.i8$1$2 else v511$2);
    v512$1 := (if p5$1 then $$res.i8$2$1 else v512$1);
    v512$2 := (if p5$2 then $$res.i8$2$2 else v512$2);
    v513$1 := (if p5$1 then $$res.i8$3$1 else v513$1);
    v513$2 := (if p5$2 then $$res.i8$3$2 else v513$2);
    $$3$0$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v510$1, 1132396544)) else $$3$0$1);
    $$3$0$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v510$2, 1132396544)) else $$3$0$2);
    $$3$1$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v511$1, 1132396544)) else $$3$1$1);
    $$3$1$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v511$2, 1132396544)) else $$3$1$2);
    $$3$2$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v512$1, 1132396544)) else $$3$2$1);
    $$3$2$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v512$2, 1132396544)) else $$3$2$2);
    $$3$3$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v513$1, 1132396544)) else $$3$3$1);
    $$3$3$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v513$2, 1132396544)) else $$3$3$2);
    v514$1 := (if p5$1 then $$3$0$1 else v514$1);
    v514$2 := (if p5$2 then $$3$0$2 else v514$2);
    v515$1 := (if p5$1 then $$3$1$1 else v515$1);
    v515$2 := (if p5$2 then $$3$1$2 else v515$2);
    v516$1 := (if p5$1 then $$3$2$1 else v516$1);
    v516$2 := (if p5$2 then $$3$2$2 else v516$2);
    v517$1 := (if p5$1 then $$3$3$1 else v517$1);
    v517$2 := (if p5$2 then $$3$3$2 else v517$2);
    $$4$0$1 := (if p5$1 then v514$1 else $$4$0$1);
    $$4$0$2 := (if p5$2 then v514$2 else $$4$0$2);
    $$4$1$1 := (if p5$1 then v515$1 else $$4$1$1);
    $$4$1$2 := (if p5$2 then v515$2 else $$4$1$2);
    $$4$2$1 := (if p5$1 then v516$1 else $$4$2$1);
    $$4$2$2 := (if p5$2 then v516$2 else $$4$2$2);
    $$4$3$1 := (if p5$1 then v517$1 else $$4$3$1);
    $$4$3$2 := (if p5$2 then v517$2 else $$4$3$2);
    v518$1 := (if p5$1 then $$4$0$1 else v518$1);
    v518$2 := (if p5$2 then $$4$0$2 else v518$2);
    v519$1 := (if p5$1 then $$4$1$1 else v519$1);
    v519$2 := (if p5$2 then $$4$1$2 else v519$2);
    v520$1 := (if p5$1 then $$4$2$1 else v520$1);
    v520$2 := (if p5$2 then $$4$2$2 else v520$2);
    v521$1 := (if p5$1 then $$4$3$1 else v521$1);
    v521$2 := (if p5$2 then $$4$3$2 else v521$2);
    $$34$0$1 := (if p5$1 then v518$1 else $$34$0$1);
    $$34$0$2 := (if p5$2 then v518$2 else $$34$0$2);
    $$34$1$1 := (if p5$1 then v519$1 else $$34$1$1);
    $$34$1$2 := (if p5$2 then v519$2 else $$34$1$2);
    $$34$2$1 := (if p5$1 then v520$1 else $$34$2$1);
    $$34$2$2 := (if p5$2 then v520$2 else $$34$2$2);
    $$34$3$1 := (if p5$1 then v521$1 else $$34$3$1);
    $$34$3$2 := (if p5$2 then v521$2 else $$34$3$2);
    v522$1 := (if p5$1 then $$34$0$1 else v522$1);
    v522$2 := (if p5$2 then $$34$0$2 else v522$2);
    call {:sourceloc} {:sourceloc_num 875} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), v522$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 875} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 875} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), v522$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)] := (if p5$1 then v522$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)] := (if p5$2 then v522$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)]);
    v523$1 := (if p5$1 then $$34$1$1 else v523$1);
    v523$2 := (if p5$2 then $$34$1$2 else v523$2);
    call {:sourceloc} {:sourceloc_num 877} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1), v523$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 877} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 877} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1), v523$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)] := (if p5$1 then v523$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)] := (if p5$2 then v523$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)]);
    v524$1 := (if p5$1 then $$34$2$1 else v524$1);
    v524$2 := (if p5$2 then $$34$2$2 else v524$2);
    call {:sourceloc} {:sourceloc_num 879} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2), v524$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 879} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 879} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2), v524$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)] := (if p5$1 then v524$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)] := (if p5$2 then v524$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)]);
    v525$1 := (if p5$1 then $$34$3$1 else v525$1);
    v525$2 := (if p5$2 then $$34$3$2 else v525$2);
    call {:sourceloc} {:sourceloc_num 881} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3), v525$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 881} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 881} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3), v525$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)] := (if p5$1 then v525$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$1, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)] := (if p5$2 then v525$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(local_id_y$2, $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v526$1 := (if p5$1 then _HAVOC_int$1 else v526$1);
    v526$2 := (if p5$2 then _HAVOC_int$2 else v526$2);
    $$2$0$1 := (if p5$1 then v526$1 else $$2$0$1);
    $$2$0$2 := (if p5$2 then v526$2 else $$2$0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v527$1 := (if p5$1 then _HAVOC_int$1 else v527$1);
    v527$2 := (if p5$2 then _HAVOC_int$2 else v527$2);
    $$2$1$1 := (if p5$1 then v527$1 else $$2$1$1);
    $$2$1$2 := (if p5$2 then v527$2 else $$2$1$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v528$1 := (if p5$1 then _HAVOC_int$1 else v528$1);
    v528$2 := (if p5$2 then _HAVOC_int$2 else v528$2);
    $$2$2$1 := (if p5$1 then v528$1 else $$2$2$1);
    $$2$2$2 := (if p5$2 then v528$2 else $$2$2$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v529$1 := (if p5$1 then _HAVOC_int$1 else v529$1);
    v529$2 := (if p5$2 then _HAVOC_int$2 else v529$2);
    $$2$3$1 := (if p5$1 then v529$1 else $$2$3$1);
    $$2$3$2 := (if p5$2 then v529$2 else $$2$3$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v530$1 := (if p5$1 then _HAVOC_int$1 else v530$1);
    v530$2 := (if p5$2 then _HAVOC_int$2 else v530$2);
    $$2$4$1 := (if p5$1 then v530$1 else $$2$4$1);
    $$2$4$2 := (if p5$2 then v530$2 else $$2$4$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v531$1 := (if p5$1 then _HAVOC_int$1 else v531$1);
    v531$2 := (if p5$2 then _HAVOC_int$2 else v531$2);
    $$2$5$1 := (if p5$1 then v531$1 else $$2$5$1);
    $$2$5$2 := (if p5$2 then v531$2 else $$2$5$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v532$1 := (if p5$1 then _HAVOC_int$1 else v532$1);
    v532$2 := (if p5$2 then _HAVOC_int$2 else v532$2);
    $$2$6$1 := (if p5$1 then v532$1 else $$2$6$1);
    $$2$6$2 := (if p5$2 then v532$2 else $$2$6$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v533$1 := (if p5$1 then _HAVOC_int$1 else v533$1);
    v533$2 := (if p5$2 then _HAVOC_int$2 else v533$2);
    $$2$7$1 := (if p5$1 then v533$1 else $$2$7$1);
    $$2$7$2 := (if p5$2 then v533$2 else $$2$7$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v534$1 := (if p5$1 then _HAVOC_int$1 else v534$1);
    v534$2 := (if p5$2 then _HAVOC_int$2 else v534$2);
    $$2$8$1 := (if p5$1 then v534$1 else $$2$8$1);
    $$2$8$2 := (if p5$2 then v534$2 else $$2$8$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v535$1 := (if p5$1 then _HAVOC_int$1 else v535$1);
    v535$2 := (if p5$2 then _HAVOC_int$2 else v535$2);
    $$2$9$1 := (if p5$1 then v535$1 else $$2$9$1);
    $$2$9$2 := (if p5$2 then v535$2 else $$2$9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v536$1 := (if p5$1 then _HAVOC_int$1 else v536$1);
    v536$2 := (if p5$2 then _HAVOC_int$2 else v536$2);
    $$2$10$1 := (if p5$1 then v536$1 else $$2$10$1);
    $$2$10$2 := (if p5$2 then v536$2 else $$2$10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v537$1 := (if p5$1 then _HAVOC_int$1 else v537$1);
    v537$2 := (if p5$2 then _HAVOC_int$2 else v537$2);
    $$2$11$1 := (if p5$1 then v537$1 else $$2$11$1);
    $$2$11$2 := (if p5$2 then v537$2 else $$2$11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v538$1 := (if p5$1 then _HAVOC_int$1 else v538$1);
    v538$2 := (if p5$2 then _HAVOC_int$2 else v538$2);
    $$2$12$1 := (if p5$1 then v538$1 else $$2$12$1);
    $$2$12$2 := (if p5$2 then v538$2 else $$2$12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v539$1 := (if p5$1 then _HAVOC_int$1 else v539$1);
    v539$2 := (if p5$2 then _HAVOC_int$2 else v539$2);
    $$2$13$1 := (if p5$1 then v539$1 else $$2$13$1);
    $$2$13$2 := (if p5$2 then v539$2 else $$2$13$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v540$1 := (if p5$1 then _HAVOC_int$1 else v540$1);
    v540$2 := (if p5$2 then _HAVOC_int$2 else v540$2);
    $$2$14$1 := (if p5$1 then v540$1 else $$2$14$1);
    $$2$14$2 := (if p5$2 then v540$2 else $$2$14$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v541$1 := (if p5$1 then _HAVOC_int$1 else v541$1);
    v541$2 := (if p5$2 then _HAVOC_int$2 else v541$2);
    $$2$15$1 := (if p5$1 then v541$1 else $$2$15$1);
    $$2$15$2 := (if p5$2 then v541$2 else $$2$15$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v542$1 := (if p5$1 then _HAVOC_int$1 else v542$1);
    v542$2 := (if p5$2 then _HAVOC_int$2 else v542$2);
    $$2$16$1 := (if p5$1 then v542$1 else $$2$16$1);
    $$2$16$2 := (if p5$2 then v542$2 else $$2$16$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v543$1 := (if p5$1 then _HAVOC_int$1 else v543$1);
    v543$2 := (if p5$2 then _HAVOC_int$2 else v543$2);
    $$2$17$1 := (if p5$1 then v543$1 else $$2$17$1);
    $$2$17$2 := (if p5$2 then v543$2 else $$2$17$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v544$1 := (if p5$1 then _HAVOC_int$1 else v544$1);
    v544$2 := (if p5$2 then _HAVOC_int$2 else v544$2);
    $$2$18$1 := (if p5$1 then v544$1 else $$2$18$1);
    $$2$18$2 := (if p5$2 then v544$2 else $$2$18$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v545$1 := (if p5$1 then _HAVOC_int$1 else v545$1);
    v545$2 := (if p5$2 then _HAVOC_int$2 else v545$2);
    $$2$19$1 := (if p5$1 then v545$1 else $$2$19$1);
    $$2$19$2 := (if p5$2 then v545$2 else $$2$19$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v546$1 := (if p5$1 then _HAVOC_int$1 else v546$1);
    v546$2 := (if p5$2 then _HAVOC_int$2 else v546$2);
    $$2$20$1 := (if p5$1 then v546$1 else $$2$20$1);
    $$2$20$2 := (if p5$2 then v546$2 else $$2$20$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v547$1 := (if p5$1 then _HAVOC_int$1 else v547$1);
    v547$2 := (if p5$2 then _HAVOC_int$2 else v547$2);
    $$2$21$1 := (if p5$1 then v547$1 else $$2$21$1);
    $$2$21$2 := (if p5$2 then v547$2 else $$2$21$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v548$1 := (if p5$1 then _HAVOC_int$1 else v548$1);
    v548$2 := (if p5$2 then _HAVOC_int$2 else v548$2);
    $$2$22$1 := (if p5$1 then v548$1 else $$2$22$1);
    $$2$22$2 := (if p5$2 then v548$2 else $$2$22$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v549$1 := (if p5$1 then _HAVOC_int$1 else v549$1);
    v549$2 := (if p5$2 then _HAVOC_int$2 else v549$2);
    $$2$23$1 := (if p5$1 then v549$1 else $$2$23$1);
    $$2$23$2 := (if p5$2 then v549$2 else $$2$23$2);
    v550$1 := (if p5$1 then $$2$0$1 else v550$1);
    v550$2 := (if p5$2 then $$2$0$2 else v550$2);
    v551$1 := (if p5$1 then $$2$1$1 else v551$1);
    v551$2 := (if p5$2 then $$2$1$2 else v551$2);
    v552$1 := (if p5$1 then $$2$2$1 else v552$1);
    v552$2 := (if p5$2 then $$2$2$2 else v552$2);
    v553$1 := (if p5$1 then $$2$3$1 else v553$1);
    v553$2 := (if p5$2 then $$2$3$2 else v553$2);
    v554$1 := (if p5$1 then $$2$4$1 else v554$1);
    v554$2 := (if p5$2 then $$2$4$2 else v554$2);
    v555$1 := (if p5$1 then $$2$5$1 else v555$1);
    v555$2 := (if p5$2 then $$2$5$2 else v555$2);
    v556$1 := (if p5$1 then $$2$6$1 else v556$1);
    v556$2 := (if p5$2 then $$2$6$2 else v556$2);
    v557$1 := (if p5$1 then $$2$7$1 else v557$1);
    v557$2 := (if p5$2 then $$2$7$2 else v557$2);
    v558$1 := (if p5$1 then $$2$8$1 else v558$1);
    v558$2 := (if p5$2 then $$2$8$2 else v558$2);
    v559$1 := (if p5$1 then $$2$9$1 else v559$1);
    v559$2 := (if p5$2 then $$2$9$2 else v559$2);
    v560$1 := (if p5$1 then $$2$10$1 else v560$1);
    v560$2 := (if p5$2 then $$2$10$2 else v560$2);
    v561$1 := (if p5$1 then $$2$11$1 else v561$1);
    v561$2 := (if p5$2 then $$2$11$2 else v561$2);
    v562$1 := (if p5$1 then $$2$12$1 else v562$1);
    v562$2 := (if p5$2 then $$2$12$2 else v562$2);
    v563$1 := (if p5$1 then $$2$13$1 else v563$1);
    v563$2 := (if p5$2 then $$2$13$2 else v563$2);
    v564$1 := (if p5$1 then $$2$14$1 else v564$1);
    v564$2 := (if p5$2 then $$2$14$2 else v564$2);
    v565$1 := (if p5$1 then $$2$15$1 else v565$1);
    v565$2 := (if p5$2 then $$2$15$2 else v565$2);
    v566$1 := (if p5$1 then $$2$16$1 else v566$1);
    v566$2 := (if p5$2 then $$2$16$2 else v566$2);
    v567$1 := (if p5$1 then $$2$17$1 else v567$1);
    v567$2 := (if p5$2 then $$2$17$2 else v567$2);
    v568$1 := (if p5$1 then $$2$18$1 else v568$1);
    v568$2 := (if p5$2 then $$2$18$2 else v568$2);
    v569$1 := (if p5$1 then $$2$19$1 else v569$1);
    v569$2 := (if p5$2 then $$2$19$2 else v569$2);
    v570$1 := (if p5$1 then $$2$20$1 else v570$1);
    v570$2 := (if p5$2 then $$2$20$2 else v570$2);
    v571$1 := (if p5$1 then $$2$21$1 else v571$1);
    v571$2 := (if p5$2 then $$2$21$2 else v571$2);
    v572$1 := (if p5$1 then $$2$22$1 else v572$1);
    v572$2 := (if p5$2 then $$2$22$2 else v572$2);
    v573$1 := (if p5$1 then $$2$23$1 else v573$1);
    v573$2 := (if p5$2 then $$2$23$2 else v573$2);
    call {:sourceloc_num 954} v574$1, v574$2 := $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(p5$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v565$1, v564$1), v563$1), v562$1), v561$1), v560$1), v559$1), v558$1), v557$1), v556$1), v555$1), v554$1), v553$1), v552$1), v551$1), v550$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v569$1, v568$1), v567$1), v566$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v573$1, v572$1), v571$1), v570$1), SI32_TO_FP32(BV32_ADD(v0$1, group_size_x)), SI32_TO_FP32(BV32_ADD(v1$1, group_size_y)), p5$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_CONCAT(v565$2, v564$2), v563$2), v562$2), v561$2), v560$2), v559$2), v558$2), v557$2), v556$2), v555$2), v554$2), v553$2), v552$2), v551$2), v550$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v569$2, v568$2), v567$2), v566$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v573$2, v572$2), v571$2), v570$2), SI32_TO_FP32(BV32_ADD(v0$2, group_size_x)), SI32_TO_FP32(BV32_ADD(v1$2, group_size_y)));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} true;
    $$res.i9$0$1 := (if p5$1 then BV_EXTRACT(v574$1, 32, 0) else $$res.i9$0$1);
    $$res.i9$0$2 := (if p5$2 then BV_EXTRACT(v574$2, 32, 0) else $$res.i9$0$2);
    $$res.i9$1$1 := (if p5$1 then BV_EXTRACT(v574$1, 64, 32) else $$res.i9$1$1);
    $$res.i9$1$2 := (if p5$2 then BV_EXTRACT(v574$2, 64, 32) else $$res.i9$1$2);
    $$res.i9$2$1 := (if p5$1 then BV_EXTRACT(v574$1, 96, 64) else $$res.i9$2$1);
    $$res.i9$2$2 := (if p5$2 then BV_EXTRACT(v574$2, 96, 64) else $$res.i9$2$2);
    $$res.i9$3$1 := (if p5$1 then BV_EXTRACT(v574$1, 128, 96) else $$res.i9$3$1);
    $$res.i9$3$2 := (if p5$2 then BV_EXTRACT(v574$2, 128, 96) else $$res.i9$3$2);
    v575$1 := (if p5$1 then $$res.i9$0$1 else v575$1);
    v575$2 := (if p5$2 then $$res.i9$0$2 else v575$2);
    v576$1 := (if p5$1 then $$res.i9$1$1 else v576$1);
    v576$2 := (if p5$2 then $$res.i9$1$2 else v576$2);
    v577$1 := (if p5$1 then $$res.i9$2$1 else v577$1);
    v577$2 := (if p5$2 then $$res.i9$2$2 else v577$2);
    v578$1 := (if p5$1 then $$res.i9$3$1 else v578$1);
    v578$2 := (if p5$2 then $$res.i9$3$2 else v578$2);
    $$0$0$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v575$1, 1132396544)) else $$0$0$1);
    $$0$0$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v575$2, 1132396544)) else $$0$0$2);
    $$0$1$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v576$1, 1132396544)) else $$0$1$1);
    $$0$1$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v576$2, 1132396544)) else $$0$1$2);
    $$0$2$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v577$1, 1132396544)) else $$0$2$1);
    $$0$2$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v577$2, 1132396544)) else $$0$2$2);
    $$0$3$1 := (if p5$1 then FP32_TO_UI8(FMUL32(v578$1, 1132396544)) else $$0$3$1);
    $$0$3$2 := (if p5$2 then FP32_TO_UI8(FMUL32(v578$2, 1132396544)) else $$0$3$2);
    v579$1 := (if p5$1 then $$0$0$1 else v579$1);
    v579$2 := (if p5$2 then $$0$0$2 else v579$2);
    v580$1 := (if p5$1 then $$0$1$1 else v580$1);
    v580$2 := (if p5$2 then $$0$1$2 else v580$2);
    v581$1 := (if p5$1 then $$0$2$1 else v581$1);
    v581$2 := (if p5$2 then $$0$2$2 else v581$2);
    v582$1 := (if p5$1 then $$0$3$1 else v582$1);
    v582$2 := (if p5$2 then $$0$3$2 else v582$2);
    $$1$0$1 := (if p5$1 then v579$1 else $$1$0$1);
    $$1$0$2 := (if p5$2 then v579$2 else $$1$0$2);
    $$1$1$1 := (if p5$1 then v580$1 else $$1$1$1);
    $$1$1$2 := (if p5$2 then v580$2 else $$1$1$2);
    $$1$2$1 := (if p5$1 then v581$1 else $$1$2$1);
    $$1$2$2 := (if p5$2 then v581$2 else $$1$2$2);
    $$1$3$1 := (if p5$1 then v582$1 else $$1$3$1);
    $$1$3$2 := (if p5$2 then v582$2 else $$1$3$2);
    v583$1 := (if p5$1 then $$1$0$1 else v583$1);
    v583$2 := (if p5$2 then $$1$0$2 else v583$2);
    v584$1 := (if p5$1 then $$1$1$1 else v584$1);
    v584$2 := (if p5$2 then $$1$1$2 else v584$2);
    v585$1 := (if p5$1 then $$1$2$1 else v585$1);
    v585$2 := (if p5$2 then $$1$2$2 else v585$2);
    v586$1 := (if p5$1 then $$1$3$1 else v586$1);
    v586$2 := (if p5$2 then $$1$3$2 else v586$2);
    $$35$0$1 := (if p5$1 then v583$1 else $$35$0$1);
    $$35$0$2 := (if p5$2 then v583$2 else $$35$0$2);
    $$35$1$1 := (if p5$1 then v584$1 else $$35$1$1);
    $$35$1$2 := (if p5$2 then v584$2 else $$35$1$2);
    $$35$2$1 := (if p5$1 then v585$1 else $$35$2$1);
    $$35$2$2 := (if p5$2 then v585$2 else $$35$2$2);
    $$35$3$1 := (if p5$1 then v586$1 else $$35$3$1);
    $$35$3$2 := (if p5$2 then v586$2 else $$35$3$2);
    v587$1 := (if p5$1 then $$35$0$1 else v587$1);
    v587$2 := (if p5$2 then $$35$0$2 else v587$2);
    call {:sourceloc} {:sourceloc_num 984} _LOG_WRITE_$$sdata(p5$1, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), v587$1, $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4));
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 984} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 984} _CHECK_WRITE_$$sdata(p5$2, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), v587$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)] := (if p5$1 then v587$1 else $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)] := (if p5$2 then v587$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4)]);
    v588$1 := (if p5$1 then $$35$1$1 else v588$1);
    v588$2 := (if p5$2 then $$35$1$2 else v588$2);
    call {:sourceloc} {:sourceloc_num 986} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1), v588$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 986} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 986} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1), v588$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)] := (if p5$1 then v588$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 1)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)] := (if p5$2 then v588$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 1)]);
    v589$1 := (if p5$1 then $$35$2$1 else v589$1);
    v589$2 := (if p5$2 then $$35$2$2 else v589$2);
    call {:sourceloc} {:sourceloc_num 988} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2), v589$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 988} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 988} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2), v589$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)] := (if p5$1 then v589$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 2)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)] := (if p5$2 then v589$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 2)]);
    v590$1 := (if p5$1 then $$35$3$1 else v590$1);
    v590$2 := (if p5$2 then $$35$3$2 else v590$2);
    call {:sourceloc} {:sourceloc_num 990} _LOG_WRITE_$$sdata(p5$1, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3), v590$1, $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 990} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 990} _CHECK_WRITE_$$sdata(p5$2, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3), v590$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$sdata"} true;
    $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)] := (if p5$1 then v590$1 else $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$1), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$1)), 4), 3)]);
    $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)] := (if p5$2 then v590$2 else $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, group_size_y), local_id_y$2), $tilew), BV32_ADD(BV32_ADD($r, group_size_x), local_id_x$2)), 4), 3)]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 992} $bugle_barrier_duplicated_0(-1, -1);
    $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, $dy.0 := 0, 0, 0, 0, BV32_SUB(0, $r);
    $rsum.0$2, $gsum.0$2, $bsum.0$2 := 0, 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $8;

  $8:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b10 ==> _READ_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b4 ==> BV32_UGE($dy.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b3 ==> BV32_ULE($dy.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b2 ==> BV32_SGE($dy.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b1 ==> BV32_SLE($dy.0, BV32_SUB(0, $r));
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b0 ==> $dy.0 mod 1 == BV32_SUB(0, $r) mod 1;
    assert {:block_sourceloc} {:sourceloc_num 993} true;
    v591 := BV32_SLE($dy.0, $r);
    goto $truebb3, $falsebb3;

  $falsebb3:
    assume {:partition} !v591;
    call {:sourceloc_num 1016} v607$1, v607$2 := $_Z5clampfff(0, 1132396544, FDIV32($rsum.0$1, $samples.0), FDIV32($rsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc_num 1017} v608$1, v608$2 := $_Z5clampfff(0, 1132396544, FDIV32($gsum.0$1, $samples.0), FDIV32($gsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc_num 1018} v609$1, v609$2 := $_Z5clampfff(0, 1132396544, FDIV32($bsum.0$1, $samples.0), FDIV32($bsum.0$2, $samples.0));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5clampfff"} true;
    call {:sourceloc} {:sourceloc_num 1019} _LOG_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1), BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v609$1), 16), BV32_SHL(FP32_TO_SI32(v608$1), 8)), FP32_TO_SI32(v607$1)), $$g_odata[BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(true, BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 1019} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 1019} _CHECK_WRITE_$$g_odata(true, BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2), BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v609$2), 16), BV32_SHL(FP32_TO_SI32(v608$2), 8)), FP32_TO_SI32(v607$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$g_odata"} true;
    $$g_odata[BV32_ADD(BV32_MUL(v1$1, $imgw), v0$1)] := BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v609$1), 16), BV32_SHL(FP32_TO_SI32(v608$1), 8)), FP32_TO_SI32(v607$1));
    $$g_odata[BV32_ADD(BV32_MUL(v1$2, $imgw), v0$2)] := BV32_OR(BV32_OR(BV32_SHL(FP32_TO_SI32(v609$2), 16), BV32_SHL(FP32_TO_SI32(v608$2), 8)), FP32_TO_SI32(v607$2));
    return;

  $truebb3:
    assume {:partition} v591;
    $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, $dx.0 := $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, BV32_SUB(0, $r);
    $rsum.1$2, $gsum.1$2, $bsum.1$2 := $rsum.0$2, $gsum.0$2, $bsum.0$2;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $10;

  $10:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b11 ==> _READ_HAS_OCCURRED_$$sdata ==> _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_MUL(0, 4) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 1) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 2) mod BV32_MUL(1, 4) || _WATCHED_OFFSET mod BV32_MUL(1, 4) == BV32_ADD(BV32_MUL(0, 4), 3) mod BV32_MUL(1, 4);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$sdata ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "loopBound"} {:thread 1} _b9 ==> BV32_UGE($dx.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b8 ==> BV32_ULE($dx.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b7 ==> BV32_SGE($dx.0, BV32_SUB(0, $r));
    assert {:tag "loopBound"} {:thread 1} _b6 ==> BV32_SLE($dx.0, BV32_SUB(0, $r));
    assert {:tag "loopCounterIsStrided"} {:thread 1} _b5 ==> $dx.0 mod 1 == BV32_SUB(0, $r) mod 1;
    assert {:block_sourceloc} {:sourceloc_num 995} true;
    v592 := BV32_SLE($dx.0, $r);
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    goto $truebb4, $falsebb4;

  $falsebb4:
    assume {:partition} !v592;
    $rsum.0$1, $gsum.0$1, $bsum.0$1, $samples.0, $dy.0 := $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, BV32_ADD($dy.0, 1);
    $rsum.0$2, $gsum.0$2, $bsum.0$2 := $rsum.1$2, $gsum.1$2, $bsum.1$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $8;

  $truebb4:
    assume {:partition} v592;
    call {:sourceloc} {:sourceloc_num 997} _LOG_READ_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 997} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 997} _CHECK_READ_$$sdata(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v593$1 := $$sdata[1bv1][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4)];
    v593$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4)];
    $$pixel$0$1 := v593$1;
    $$pixel$0$2 := v593$2;
    call {:sourceloc} {:sourceloc_num 999} _LOG_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 1), $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 999} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 999} _CHECK_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 1), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v594$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 1)];
    v594$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 1)];
    $$pixel$1$1 := v594$1;
    $$pixel$1$2 := v594$2;
    call {:sourceloc} {:sourceloc_num 1001} _LOG_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 2), $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 1001} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 1001} _CHECK_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 2), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v595$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 2)];
    v595$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 2)];
    $$pixel$2$1 := v595$1;
    $$pixel$2$2 := v595$2;
    call {:sourceloc} {:sourceloc_num 1003} _LOG_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 3), $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 1003} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 1003} _CHECK_READ_$$sdata(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 3), $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$sdata"} true;
    v596$1 := $$sdata[1bv1][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$1), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$1), $dx.0)), 4), 3)];
    v596$2 := $$sdata[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_ADD($r, local_id_y$2), $dy.0), $tilew), BV32_ADD(BV32_ADD($r, local_id_x$2), $dx.0)), 4), 3)];
    $$pixel$3$1 := v596$1;
    $$pixel$3$2 := v596$2;
    v597 := SI32_TO_FP32(BV32_ADD(BV32_MUL($dx.0, $dx.0), BV32_MUL($dy.0, $dy.0)));
    v598 := SI32_TO_FP32(BV32_MUL($r, $r));
    v599 := FEQ32(v597, v598) || FLT32(v597, v598);
    goto $truebb5, $falsebb5;

  $falsebb5:
    assume {:partition} !v599;
    $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2 := $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1;
    $rsum.2$2, $gsum.2$2, $bsum.2$2 := $rsum.1$2, $gsum.1$2, $bsum.1$2;
    goto $15;

  $15:
    $rsum.1$1, $gsum.1$1, $bsum.1$1, $samples.1, $dx.0 := $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2, BV32_ADD($dx.0, 1);
    $rsum.1$2, $gsum.1$2, $bsum.1$2 := $rsum.2$2, $gsum.2$2, $bsum.2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $10;

  $truebb5:
    assume {:partition} v599;
    v600$1 := $$pixel$0$1;
    v600$2 := $$pixel$0$2;
    v601$1 := UI8_TO_FP32(v600$1);
    v601$2 := UI8_TO_FP32(v600$2);
    v602$1 := $$pixel$1$1;
    v602$2 := $$pixel$1$2;
    v603$1 := UI8_TO_FP32(v602$1);
    v603$2 := UI8_TO_FP32(v602$2);
    v604$1 := $$pixel$2$1;
    v604$2 := $$pixel$2$2;
    v605$1 := UI8_TO_FP32(v604$1);
    v605$2 := UI8_TO_FP32(v604$2);
    v606$1 := FLT32($threshold, FDIV32(FADD32(FADD32(v601$1, v603$1), v605$1), 1144995840));
    v606$2 := FLT32($threshold, FDIV32(FADD32(FADD32(v601$2, v603$2), v605$2), 1144995840));
    p9$1 := (if v606$1 then v606$1 else p9$1);
    p9$2 := (if v606$2 then v606$2 else p9$2);
    p8$1 := (if !v606$1 then !v606$1 else p8$1);
    p8$2 := (if !v606$2 then !v606$2 else p8$2);
    $r1.0$1, $g.0$1, $b.0$1 := (if p8$1 then v601$1 else $r1.0$1), (if p8$1 then v603$1 else $g.0$1), (if p8$1 then v605$1 else $b.0$1);
    $r1.0$2, $g.0$2, $b.0$2 := (if p8$2 then v601$2 else $r1.0$2), (if p8$2 then v603$2 else $g.0$2), (if p8$2 then v605$2 else $b.0$2);
    $r1.0$1, $g.0$1, $b.0$1 := (if p9$1 then FMUL32(v601$1, $highlight) else $r1.0$1), (if p9$1 then FMUL32(v603$1, $highlight) else $g.0$1), (if p9$1 then FMUL32(v605$1, $highlight) else $b.0$1);
    $r1.0$2, $g.0$2, $b.0$2 := (if p9$2 then FMUL32(v601$2, $highlight) else $r1.0$2), (if p9$2 then FMUL32(v603$2, $highlight) else $g.0$2), (if p9$2 then FMUL32(v605$2, $highlight) else $b.0$2);
    $rsum.2$1, $gsum.2$1, $bsum.2$1, $samples.2 := FADD32($rsum.1$1, $r1.0$1), FADD32($gsum.1$1, $g.0$1), FADD32($bsum.1$1, $b.0$1), FADD32($samples.1, 1065353216);
    $rsum.2$2, $gsum.2$2, $bsum.2$2 := FADD32($rsum.1$2, $r1.0$2), FADD32($gsum.1$2, $g.0$2), FADD32($bsum.1$2, $b.0$2);
    goto $15;
}



procedure {:source_name "_Z5clampfff"} $_Z5clampfff($1: int, $2: int, $0$1: int, $0$2: int) returns ($ret$1: int, $ret$2: int);
  requires $1 == 0;
  requires $2 == 1132396544;



procedure {:source_name "_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DI6float4ET_7textureIS1_Li2EL19cudaTextureReadMode0EEff(_P$1: bool, $0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, _P$2: bool, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 16 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$sdata, $$g_odata, _TRACKING;



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

var $$res.i9$0$1: int;

var $$res.i9$0$2: int;

var $$res.i9$1$1: int;

var $$res.i9$1$2: int;

var $$res.i9$2$1: int;

var $$res.i9$2$2: int;

var $$res.i9$3$1: int;

var $$res.i9$3$2: int;

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

var $$2$16$1: int;

var $$2$16$2: int;

var $$2$17$1: int;

var $$2$17$2: int;

var $$2$18$1: int;

var $$2$18$2: int;

var $$2$19$1: int;

var $$2$19$2: int;

var $$2$20$1: int;

var $$2$20$2: int;

var $$2$21$1: int;

var $$2$21$2: int;

var $$2$22$1: int;

var $$2$22$2: int;

var $$2$23$1: int;

var $$2$23$2: int;

var $$3$0$1: int;

var $$3$0$2: int;

var $$3$1$1: int;

var $$3$1$2: int;

var $$3$2$1: int;

var $$3$2$2: int;

var $$3$3$1: int;

var $$3$3$2: int;

var $$4$0$1: int;

var $$4$0$2: int;

var $$4$1$1: int;

var $$4$1$2: int;

var $$4$2$1: int;

var $$4$2$2: int;

var $$4$3$1: int;

var $$4$3$2: int;

var $$res.i8$0$1: int;

var $$res.i8$0$2: int;

var $$res.i8$1$1: int;

var $$res.i8$1$2: int;

var $$res.i8$2$1: int;

var $$res.i8$2$2: int;

var $$res.i8$3$1: int;

var $$res.i8$3$2: int;

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

var $$5$12$1: int;

var $$5$12$2: int;

var $$5$13$1: int;

var $$5$13$2: int;

var $$5$14$1: int;

var $$5$14$2: int;

var $$5$15$1: int;

var $$5$15$2: int;

var $$5$16$1: int;

var $$5$16$2: int;

var $$5$17$1: int;

var $$5$17$2: int;

var $$5$18$1: int;

var $$5$18$2: int;

var $$5$19$1: int;

var $$5$19$2: int;

var $$5$20$1: int;

var $$5$20$2: int;

var $$5$21$1: int;

var $$5$21$2: int;

var $$5$22$1: int;

var $$5$22$2: int;

var $$5$23$1: int;

var $$5$23$2: int;

var $$6$0$1: int;

var $$6$0$2: int;

var $$6$1$1: int;

var $$6$1$2: int;

var $$6$2$1: int;

var $$6$2$2: int;

var $$6$3$1: int;

var $$6$3$2: int;

var $$7$0$1: int;

var $$7$0$2: int;

var $$7$1$1: int;

var $$7$1$2: int;

var $$7$2$1: int;

var $$7$2$2: int;

var $$7$3$1: int;

var $$7$3$2: int;

var $$res.i7$0$1: int;

var $$res.i7$0$2: int;

var $$res.i7$1$1: int;

var $$res.i7$1$2: int;

var $$res.i7$2$1: int;

var $$res.i7$2$2: int;

var $$res.i7$3$1: int;

var $$res.i7$3$2: int;

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

var $$8$12$1: int;

var $$8$12$2: int;

var $$8$13$1: int;

var $$8$13$2: int;

var $$8$14$1: int;

var $$8$14$2: int;

var $$8$15$1: int;

var $$8$15$2: int;

var $$8$16$1: int;

var $$8$16$2: int;

var $$8$17$1: int;

var $$8$17$2: int;

var $$8$18$1: int;

var $$8$18$2: int;

var $$8$19$1: int;

var $$8$19$2: int;

var $$8$20$1: int;

var $$8$20$2: int;

var $$8$21$1: int;

var $$8$21$2: int;

var $$8$22$1: int;

var $$8$22$2: int;

var $$8$23$1: int;

var $$8$23$2: int;

var $$9$0$1: int;

var $$9$0$2: int;

var $$9$1$1: int;

var $$9$1$2: int;

var $$9$2$1: int;

var $$9$2$2: int;

var $$9$3$1: int;

var $$9$3$2: int;

var $$10$0$1: int;

var $$10$0$2: int;

var $$10$1$1: int;

var $$10$1$2: int;

var $$10$2$1: int;

var $$10$2$2: int;

var $$10$3$1: int;

var $$10$3$2: int;

var $$res.i6$0$1: int;

var $$res.i6$0$2: int;

var $$res.i6$1$1: int;

var $$res.i6$1$2: int;

var $$res.i6$2$1: int;

var $$res.i6$2$2: int;

var $$res.i6$3$1: int;

var $$res.i6$3$2: int;

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

var $$11$12$1: int;

var $$11$12$2: int;

var $$11$13$1: int;

var $$11$13$2: int;

var $$11$14$1: int;

var $$11$14$2: int;

var $$11$15$1: int;

var $$11$15$2: int;

var $$11$16$1: int;

var $$11$16$2: int;

var $$11$17$1: int;

var $$11$17$2: int;

var $$11$18$1: int;

var $$11$18$2: int;

var $$11$19$1: int;

var $$11$19$2: int;

var $$11$20$1: int;

var $$11$20$2: int;

var $$11$21$1: int;

var $$11$21$2: int;

var $$11$22$1: int;

var $$11$22$2: int;

var $$11$23$1: int;

var $$11$23$2: int;

var $$12$0$1: int;

var $$12$0$2: int;

var $$12$1$1: int;

var $$12$1$2: int;

var $$12$2$1: int;

var $$12$2$2: int;

var $$12$3$1: int;

var $$12$3$2: int;

var $$13$0$1: int;

var $$13$0$2: int;

var $$13$1$1: int;

var $$13$1$2: int;

var $$13$2$1: int;

var $$13$2$2: int;

var $$13$3$1: int;

var $$13$3$2: int;

var $$res.i5$0$1: int;

var $$res.i5$0$2: int;

var $$res.i5$1$1: int;

var $$res.i5$1$2: int;

var $$res.i5$2$1: int;

var $$res.i5$2$2: int;

var $$res.i5$3$1: int;

var $$res.i5$3$2: int;

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

var $$14$12$1: int;

var $$14$12$2: int;

var $$14$13$1: int;

var $$14$13$2: int;

var $$14$14$1: int;

var $$14$14$2: int;

var $$14$15$1: int;

var $$14$15$2: int;

var $$14$16$1: int;

var $$14$16$2: int;

var $$14$17$1: int;

var $$14$17$2: int;

var $$14$18$1: int;

var $$14$18$2: int;

var $$14$19$1: int;

var $$14$19$2: int;

var $$14$20$1: int;

var $$14$20$2: int;

var $$14$21$1: int;

var $$14$21$2: int;

var $$14$22$1: int;

var $$14$22$2: int;

var $$14$23$1: int;

var $$14$23$2: int;

var $$15$0$1: int;

var $$15$0$2: int;

var $$15$1$1: int;

var $$15$1$2: int;

var $$15$2$1: int;

var $$15$2$2: int;

var $$15$3$1: int;

var $$15$3$2: int;

var $$16$0$1: int;

var $$16$0$2: int;

var $$16$1$1: int;

var $$16$1$2: int;

var $$16$2$1: int;

var $$16$2$2: int;

var $$16$3$1: int;

var $$16$3$2: int;

var $$res.i4$0$1: int;

var $$res.i4$0$2: int;

var $$res.i4$1$1: int;

var $$res.i4$1$2: int;

var $$res.i4$2$1: int;

var $$res.i4$2$2: int;

var $$res.i4$3$1: int;

var $$res.i4$3$2: int;

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

var $$18$0$1: int;

var $$18$0$2: int;

var $$18$1$1: int;

var $$18$1$2: int;

var $$18$2$1: int;

var $$18$2$2: int;

var $$18$3$1: int;

var $$18$3$2: int;

var $$19$0$1: int;

var $$19$0$2: int;

var $$19$1$1: int;

var $$19$1$2: int;

var $$19$2$1: int;

var $$19$2$2: int;

var $$19$3$1: int;

var $$19$3$2: int;

var $$res.i3$0$1: int;

var $$res.i3$0$2: int;

var $$res.i3$1$1: int;

var $$res.i3$1$2: int;

var $$res.i3$2$1: int;

var $$res.i3$2$2: int;

var $$res.i3$3$1: int;

var $$res.i3$3$2: int;

var $$20$0$1: int;

var $$20$0$2: int;

var $$20$1$1: int;

var $$20$1$2: int;

var $$20$2$1: int;

var $$20$2$2: int;

var $$20$3$1: int;

var $$20$3$2: int;

var $$20$4$1: int;

var $$20$4$2: int;

var $$20$5$1: int;

var $$20$5$2: int;

var $$20$6$1: int;

var $$20$6$2: int;

var $$20$7$1: int;

var $$20$7$2: int;

var $$20$8$1: int;

var $$20$8$2: int;

var $$20$9$1: int;

var $$20$9$2: int;

var $$20$10$1: int;

var $$20$10$2: int;

var $$20$11$1: int;

var $$20$11$2: int;

var $$20$12$1: int;

var $$20$12$2: int;

var $$20$13$1: int;

var $$20$13$2: int;

var $$20$14$1: int;

var $$20$14$2: int;

var $$20$15$1: int;

var $$20$15$2: int;

var $$20$16$1: int;

var $$20$16$2: int;

var $$20$17$1: int;

var $$20$17$2: int;

var $$20$18$1: int;

var $$20$18$2: int;

var $$20$19$1: int;

var $$20$19$2: int;

var $$20$20$1: int;

var $$20$20$2: int;

var $$20$21$1: int;

var $$20$21$2: int;

var $$20$22$1: int;

var $$20$22$2: int;

var $$20$23$1: int;

var $$20$23$2: int;

var $$21$0$1: int;

var $$21$0$2: int;

var $$21$1$1: int;

var $$21$1$2: int;

var $$21$2$1: int;

var $$21$2$2: int;

var $$21$3$1: int;

var $$21$3$2: int;

var $$22$0$1: int;

var $$22$0$2: int;

var $$22$1$1: int;

var $$22$1$2: int;

var $$22$2$1: int;

var $$22$2$2: int;

var $$22$3$1: int;

var $$22$3$2: int;

var $$res.i2$0$1: int;

var $$res.i2$0$2: int;

var $$res.i2$1$1: int;

var $$res.i2$1$2: int;

var $$res.i2$2$1: int;

var $$res.i2$2$2: int;

var $$res.i2$3$1: int;

var $$res.i2$3$2: int;

var $$23$0$1: int;

var $$23$0$2: int;

var $$23$1$1: int;

var $$23$1$2: int;

var $$23$2$1: int;

var $$23$2$2: int;

var $$23$3$1: int;

var $$23$3$2: int;

var $$23$4$1: int;

var $$23$4$2: int;

var $$23$5$1: int;

var $$23$5$2: int;

var $$23$6$1: int;

var $$23$6$2: int;

var $$23$7$1: int;

var $$23$7$2: int;

var $$23$8$1: int;

var $$23$8$2: int;

var $$23$9$1: int;

var $$23$9$2: int;

var $$23$10$1: int;

var $$23$10$2: int;

var $$23$11$1: int;

var $$23$11$2: int;

var $$23$12$1: int;

var $$23$12$2: int;

var $$23$13$1: int;

var $$23$13$2: int;

var $$23$14$1: int;

var $$23$14$2: int;

var $$23$15$1: int;

var $$23$15$2: int;

var $$23$16$1: int;

var $$23$16$2: int;

var $$23$17$1: int;

var $$23$17$2: int;

var $$23$18$1: int;

var $$23$18$2: int;

var $$23$19$1: int;

var $$23$19$2: int;

var $$23$20$1: int;

var $$23$20$2: int;

var $$23$21$1: int;

var $$23$21$2: int;

var $$23$22$1: int;

var $$23$22$2: int;

var $$23$23$1: int;

var $$23$23$2: int;

var $$24$0$1: int;

var $$24$0$2: int;

var $$24$1$1: int;

var $$24$1$2: int;

var $$24$2$1: int;

var $$24$2$2: int;

var $$24$3$1: int;

var $$24$3$2: int;

var $$25$0$1: int;

var $$25$0$2: int;

var $$25$1$1: int;

var $$25$1$2: int;

var $$25$2$1: int;

var $$25$2$2: int;

var $$25$3$1: int;

var $$25$3$2: int;

var $$res.i$0$1: int;

var $$res.i$0$2: int;

var $$res.i$1$1: int;

var $$res.i$1$2: int;

var $$res.i$2$1: int;

var $$res.i$2$2: int;

var $$res.i$3$1: int;

var $$res.i$3$2: int;

var $$26$0$1: int;

var $$26$0$2: int;

var $$26$1$1: int;

var $$26$1$2: int;

var $$26$2$1: int;

var $$26$2$2: int;

var $$26$3$1: int;

var $$26$3$2: int;

var $$26$4$1: int;

var $$26$4$2: int;

var $$26$5$1: int;

var $$26$5$2: int;

var $$26$6$1: int;

var $$26$6$2: int;

var $$26$7$1: int;

var $$26$7$2: int;

var $$26$8$1: int;

var $$26$8$2: int;

var $$26$9$1: int;

var $$26$9$2: int;

var $$26$10$1: int;

var $$26$10$2: int;

var $$26$11$1: int;

var $$26$11$2: int;

var $$26$12$1: int;

var $$26$12$2: int;

var $$26$13$1: int;

var $$26$13$2: int;

var $$26$14$1: int;

var $$26$14$2: int;

var $$26$15$1: int;

var $$26$15$2: int;

var $$26$16$1: int;

var $$26$16$2: int;

var $$26$17$1: int;

var $$26$17$2: int;

var $$26$18$1: int;

var $$26$18$2: int;

var $$26$19$1: int;

var $$26$19$2: int;

var $$26$20$1: int;

var $$26$20$2: int;

var $$26$21$1: int;

var $$26$21$2: int;

var $$26$22$1: int;

var $$26$22$2: int;

var $$26$23$1: int;

var $$26$23$2: int;

var $$27$0$1: int;

var $$27$0$2: int;

var $$27$1$1: int;

var $$27$1$2: int;

var $$27$2$1: int;

var $$27$2$2: int;

var $$27$3$1: int;

var $$27$3$2: int;

var $$28$0$1: int;

var $$28$0$2: int;

var $$28$1$1: int;

var $$28$1$2: int;

var $$28$2$1: int;

var $$28$2$2: int;

var $$28$3$1: int;

var $$28$3$2: int;

var $$29$0$1: int;

var $$29$0$2: int;

var $$29$1$1: int;

var $$29$1$2: int;

var $$29$2$1: int;

var $$29$2$2: int;

var $$29$3$1: int;

var $$29$3$2: int;

var $$30$0$1: int;

var $$30$0$2: int;

var $$30$1$1: int;

var $$30$1$2: int;

var $$30$2$1: int;

var $$30$2$2: int;

var $$30$3$1: int;

var $$30$3$2: int;

var $$31$0$1: int;

var $$31$0$2: int;

var $$31$1$1: int;

var $$31$1$2: int;

var $$31$2$1: int;

var $$31$2$2: int;

var $$31$3$1: int;

var $$31$3$2: int;

var $$32$0$1: int;

var $$32$0$2: int;

var $$32$1$1: int;

var $$32$1$2: int;

var $$32$2$1: int;

var $$32$2$2: int;

var $$32$3$1: int;

var $$32$3$2: int;

var $$33$0$1: int;

var $$33$0$2: int;

var $$33$1$1: int;

var $$33$1$2: int;

var $$33$2$1: int;

var $$33$2$2: int;

var $$33$3$1: int;

var $$33$3$2: int;

var $$34$0$1: int;

var $$34$0$2: int;

var $$34$1$1: int;

var $$34$1$2: int;

var $$34$2$1: int;

var $$34$2$2: int;

var $$34$3$1: int;

var $$34$3$2: int;

var $$35$0$1: int;

var $$35$0$2: int;

var $$35$1$1: int;

var $$35$1$2: int;

var $$35$2$1: int;

var $$35$2$2: int;

var $$35$3$1: int;

var $$35$3$2: int;

var $$pixel$0$1: int;

var $$pixel$0$2: int;

var $$pixel$1$1: int;

var $$pixel$1$2: int;

var $$pixel$2$1: int;

var $$pixel$2$2: int;

var $$pixel$3$1: int;

var $$pixel$3$2: int;

const {:existential true} _b0: bool;

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

const _WATCHED_VALUE_$$g_odata: int;

procedure {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_READ_$$g_odata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _READ_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_READ_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$g_odata);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$g_odata: bool;

procedure {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$g_odata, _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _LOG_WRITE_$$g_odata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then true else _WRITE_HAS_OCCURRED_$$g_odata);
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



procedure _CHECK_WRITE_$$g_odata(_P: bool, _offset: int, _value: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$g_odata != _value);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$g_odata;



implementation {:inline 1} _LOG_ATOMIC_$$g_odata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$g_odata := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$g_odata);
    return;
}



procedure _CHECK_ATOMIC_$$g_odata(_P: bool, _offset: int);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);
  requires {:source_name "g_odata"} {:array "$$g_odata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$g_odata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$g_odata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$g_odata := (if _P && _WRITE_HAS_OCCURRED_$$g_odata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$g_odata);
    return;
}



const _WATCHED_VALUE_$$inTex: int;

procedure {:inline 1} _LOG_READ_$$inTex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$inTex;



implementation {:inline 1} _LOG_READ_$$inTex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then true else _READ_HAS_OCCURRED_$$inTex);
    return;
}



procedure _CHECK_READ_$$inTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$inTex);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$inTex: bool;

procedure {:inline 1} _LOG_WRITE_$$inTex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$inTex, _WRITE_READ_BENIGN_FLAG_$$inTex;



implementation {:inline 1} _LOG_WRITE_$$inTex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then true else _WRITE_HAS_OCCURRED_$$inTex);
    _WRITE_READ_BENIGN_FLAG_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$inTex);
    return;
}



procedure _CHECK_WRITE_$$inTex(_P: bool, _offset: int, _value: int);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex != _value);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$inTex != _value);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$inTex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$inTex;



implementation {:inline 1} _LOG_ATOMIC_$$inTex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$inTex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$inTex);
    return;
}



procedure _CHECK_ATOMIC_$$inTex(_P: bool, _offset: int);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);
  requires {:source_name "inTex"} {:array "$$inTex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inTex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$inTex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$inTex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$inTex := (if _P && _WRITE_HAS_OCCURRED_$$inTex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$inTex);
    return;
}



const _WATCHED_VALUE_$$sdata: int;

procedure {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_READ_$$sdata(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _READ_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_READ_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$sdata && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$sdata: bool;

procedure {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$sdata, _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _LOG_WRITE_$$sdata(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then true else _WRITE_HAS_OCCURRED_$$sdata);
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$sdata);
    return;
}



procedure _CHECK_WRITE_$$sdata(_P: bool, _offset: int, _value: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$sdata != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$sdata;



implementation {:inline 1} _LOG_ATOMIC_$$sdata(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$sdata := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$sdata);
    return;
}



procedure _CHECK_ATOMIC_$$sdata(_P: bool, _offset: int);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "sdata"} {:array "$$sdata"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$sdata;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$sdata(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$sdata := (if _P && _WRITE_HAS_OCCURRED_$$sdata && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$sdata);
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
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$sdata;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$sdata;
    goto anon1;

  anon1:
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon3;

  anon3:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$g_odata;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$g_odata;
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
    havoc $$g_odata;
    goto anon6;

  anon8_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$sdata;
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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;
