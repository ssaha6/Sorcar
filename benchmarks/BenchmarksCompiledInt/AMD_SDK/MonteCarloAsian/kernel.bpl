type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$randArray"} {:global} {:elem_width 32} {:source_name "randArray"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$randArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$randArray: bool;

var {:source_name "priceSamples"} {:global} $$priceSamples: [int]int;

axiom {:array_info "$$priceSamples"} {:global} {:elem_width 32} {:source_name "priceSamples"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$priceSamples: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$priceSamples: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$priceSamples: bool;

var {:source_name "pathDeriv"} {:global} $$pathDeriv: [int]int;

axiom {:array_info "$$pathDeriv"} {:global} {:elem_width 32} {:source_name "pathDeriv"} {:source_elem_width 128} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$pathDeriv: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$pathDeriv: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 128} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$pathDeriv: bool;

var {:source_name "temp.i"} $$temp.i$1: [int]int;

var {:source_name "temp.i"} $$temp.i$2: [int]int;

axiom {:array_info "$$temp.i"} {:elem_width 32} {:source_name "temp.i"} {:source_elem_width 128} {:source_dimensions "8"} true;

axiom {:array_info "$$attrib"} {:elem_width 32} {:source_name "attrib"} {:source_elem_width 896} {:source_dimensions "1"} true;

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

function BV32_LSHR(int, int) : int;

function BV_CONCAT(int, int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FCOS32(int) : int;

function FDIV32(int, int) : int;

function FEXP32(int) : int;

function FLOG32(int) : int;

function FLT32(int, int) : bool;

function FMUL32(int, int) : int;

function FSIN32(int) : int;

function FSQRT32(int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

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

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_ULT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV32_XOR(x: int, y: int) : int
{
  (if x == y then 0 else (if x == 0 then y else (if y == 0 then x else BV32_XOR_UF(x, y))))
}

function BV32_XOR_UF(int, int) : int;

procedure {:source_name "calPriceVega"} {:kernel} $calPriceVega($attrib.coerce0: int, $attrib.coerce1: int, $attrib.coerce2: int, $attrib.coerce3: int, $attrib.coerce4: int, $attrib.coerce5: int, $attrib.coerce6: int, $noOfSum: int, $width: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 256 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$randArray && !_WRITE_HAS_OCCURRED_$$randArray && !_ATOMIC_HAS_OCCURRED_$$randArray;
  requires !_READ_HAS_OCCURRED_$$priceSamples && !_WRITE_HAS_OCCURRED_$$priceSamples && !_ATOMIC_HAS_OCCURRED_$$priceSamples;
  requires !_READ_HAS_OCCURRED_$$pathDeriv && !_WRITE_HAS_OCCURRED_$$pathDeriv && !_ATOMIC_HAS_OCCURRED_$$pathDeriv;
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
  modifies _WRITE_HAS_OCCURRED_$$priceSamples, _WRITE_READ_BENIGN_FLAG_$$priceSamples, _WRITE_READ_BENIGN_FLAG_$$priceSamples, _WRITE_HAS_OCCURRED_$$pathDeriv, _WRITE_READ_BENIGN_FLAG_$$pathDeriv, _WRITE_READ_BENIGN_FLAG_$$pathDeriv;



implementation {:source_name "calPriceVega"} {:kernel} $calPriceVega($attrib.coerce0: int, $attrib.coerce1: int, $attrib.coerce2: int, $attrib.coerce3: int, $attrib.coerce4: int, $attrib.coerce5: int, $attrib.coerce6: int, $noOfSum: int, $width: int)
{
  var $nextRand.0$1: int;
  var $nextRand.0$2: int;
  var $trajPrice1.0$1: int;
  var $trajPrice1.0$2: int;
  var $trajPrice2.0$1: int;
  var $trajPrice2.0$2: int;
  var $sumPrice1.0$1: int;
  var $sumPrice1.0$2: int;
  var $sumPrice2.0$1: int;
  var $sumPrice2.0$2: int;
  var $sumDeriv1.0$1: int;
  var $sumDeriv1.0$2: int;
  var $sumDeriv2.0$1: int;
  var $sumDeriv2.0$2: int;
  var $i.0: int;
  var $r1.i.0$1: int;
  var $r1.i.0$2: int;
  var $r2.i.0$1: int;
  var $r2.i.0$2: int;
  var $a.i.0$1: int;
  var $a.i.0$2: int;
  var $b.i.0$1: int;
  var $b.i.0$2: int;
  var $i.i.0: int;
  var $r1.i.1$1: int;
  var $r1.i.1$2: int;
  var $r2.i.1$1: int;
  var $r2.i.1$2: int;
  var $a.i.1$1: int;
  var $a.i.1$2: int;
  var $b.i.1$1: int;
  var $b.i.1$2: int;
  var $temp3.i.0$1: int;
  var $temp3.i.0$2: int;
  var $temp1.i1.0$1: int;
  var $temp1.i1.0$2: int;
  var $temp3.i.1$1: int;
  var $temp3.i.1$2: int;
  var $temp1.i1.1$1: int;
  var $temp1.i1.1$2: int;
  var $temp3.i.2$1: int;
  var $temp3.i.2$2: int;
  var $temp1.i1.2$1: int;
  var $temp1.i1.2$2: int;
  var $temp3.i.3$1: int;
  var $temp3.i.3$2: int;
  var $temp1.i1.3$1: int;
  var $temp1.i1.3$2: int;
  var $temp4.i.0$1: int;
  var $temp4.i.0$2: int;
  var $temp2.i2.0$1: int;
  var $temp2.i2.0$2: int;
  var $temp4.i.1$1: int;
  var $temp4.i.1$2: int;
  var $temp2.i2.1$1: int;
  var $temp2.i2.1$2: int;
  var $temp4.i.2$1: int;
  var $temp4.i.2$2: int;
  var $temp2.i2.2$1: int;
  var $temp2.i2.2$2: int;
  var $temp4.i.3$1: int;
  var $temp4.i.3$2: int;
  var $temp2.i2.3$1: int;
  var $temp2.i2.3$2: int;
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
  var v35: bool;
  var v37$1: int;
  var v37$2: int;
  var v36$1: int;
  var v36$2: int;
  var v38$1: int;
  var v38$2: int;
  var v39$1: int;
  var v39$2: int;
  var v41$1: int;
  var v41$2: int;
  var v40$1: int;
  var v40$2: int;
  var v42$1: int;
  var v42$2: int;
  var v43$1: int;
  var v43$2: int;
  var v44$1: int;
  var v44$2: int;
  var v46$1: int;
  var v46$2: int;
  var v45$1: int;
  var v45$2: int;
  var v47$1: int;
  var v47$2: int;
  var v48$1: int;
  var v48$2: int;
  var v49$1: int;
  var v49$2: int;
  var v50$1: int;
  var v50$2: int;
  var v51: bool;
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
  var v92$1: int;
  var v92$2: int;
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
  var v108: int;
  var v109$1: int;
  var v109$2: int;
  var v110$1: int;
  var v110$2: int;
  var v111$1: int;
  var v111$2: int;
  var v112$1: int;
  var v112$2: int;
  var v113: int;
  var v114: int;
  var v115: int;
  var v116: int;
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
  var v125$1: bool;
  var v125$2: bool;
  var v126$1: bool;
  var v126$2: bool;
  var v127$1: bool;
  var v127$2: bool;
  var v128$1: bool;
  var v128$2: bool;
  var v129$1: bool;
  var v129$2: bool;
  var v130$1: bool;
  var v130$2: bool;
  var v131$1: bool;
  var v131$2: bool;
  var v132$1: bool;
  var v132$2: bool;
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


  $0:
    $$attrib$0$1 := BV_EXTRACT($attrib.coerce0, 32, 0);
    $$attrib$0$2 := BV_EXTRACT($attrib.coerce0, 32, 0);
    $$attrib$1$1 := BV_EXTRACT($attrib.coerce0, 64, 32);
    $$attrib$1$2 := BV_EXTRACT($attrib.coerce0, 64, 32);
    $$attrib$2$1 := BV_EXTRACT($attrib.coerce0, 96, 64);
    $$attrib$2$2 := BV_EXTRACT($attrib.coerce0, 96, 64);
    $$attrib$3$1 := BV_EXTRACT($attrib.coerce0, 128, 96);
    $$attrib$3$2 := BV_EXTRACT($attrib.coerce0, 128, 96);
    $$attrib$4$1 := BV_EXTRACT($attrib.coerce1, 32, 0);
    $$attrib$4$2 := BV_EXTRACT($attrib.coerce1, 32, 0);
    $$attrib$5$1 := BV_EXTRACT($attrib.coerce1, 64, 32);
    $$attrib$5$2 := BV_EXTRACT($attrib.coerce1, 64, 32);
    $$attrib$6$1 := BV_EXTRACT($attrib.coerce1, 96, 64);
    $$attrib$6$2 := BV_EXTRACT($attrib.coerce1, 96, 64);
    $$attrib$7$1 := BV_EXTRACT($attrib.coerce1, 128, 96);
    $$attrib$7$2 := BV_EXTRACT($attrib.coerce1, 128, 96);
    $$attrib$8$1 := BV_EXTRACT($attrib.coerce2, 32, 0);
    $$attrib$8$2 := BV_EXTRACT($attrib.coerce2, 32, 0);
    $$attrib$9$1 := BV_EXTRACT($attrib.coerce2, 64, 32);
    $$attrib$9$2 := BV_EXTRACT($attrib.coerce2, 64, 32);
    $$attrib$10$1 := BV_EXTRACT($attrib.coerce2, 96, 64);
    $$attrib$10$2 := BV_EXTRACT($attrib.coerce2, 96, 64);
    $$attrib$11$1 := BV_EXTRACT($attrib.coerce2, 128, 96);
    $$attrib$11$2 := BV_EXTRACT($attrib.coerce2, 128, 96);
    $$attrib$12$1 := BV_EXTRACT($attrib.coerce3, 32, 0);
    $$attrib$12$2 := BV_EXTRACT($attrib.coerce3, 32, 0);
    $$attrib$13$1 := BV_EXTRACT($attrib.coerce3, 64, 32);
    $$attrib$13$2 := BV_EXTRACT($attrib.coerce3, 64, 32);
    $$attrib$14$1 := BV_EXTRACT($attrib.coerce3, 96, 64);
    $$attrib$14$2 := BV_EXTRACT($attrib.coerce3, 96, 64);
    $$attrib$15$1 := BV_EXTRACT($attrib.coerce3, 128, 96);
    $$attrib$15$2 := BV_EXTRACT($attrib.coerce3, 128, 96);
    $$attrib$16$1 := BV_EXTRACT($attrib.coerce4, 32, 0);
    $$attrib$16$2 := BV_EXTRACT($attrib.coerce4, 32, 0);
    $$attrib$17$1 := BV_EXTRACT($attrib.coerce4, 64, 32);
    $$attrib$17$2 := BV_EXTRACT($attrib.coerce4, 64, 32);
    $$attrib$18$1 := BV_EXTRACT($attrib.coerce4, 96, 64);
    $$attrib$18$2 := BV_EXTRACT($attrib.coerce4, 96, 64);
    $$attrib$19$1 := BV_EXTRACT($attrib.coerce4, 128, 96);
    $$attrib$19$2 := BV_EXTRACT($attrib.coerce4, 128, 96);
    $$attrib$20$1 := BV_EXTRACT($attrib.coerce5, 32, 0);
    $$attrib$20$2 := BV_EXTRACT($attrib.coerce5, 32, 0);
    $$attrib$21$1 := BV_EXTRACT($attrib.coerce5, 64, 32);
    $$attrib$21$2 := BV_EXTRACT($attrib.coerce5, 64, 32);
    $$attrib$22$1 := BV_EXTRACT($attrib.coerce5, 96, 64);
    $$attrib$22$2 := BV_EXTRACT($attrib.coerce5, 96, 64);
    $$attrib$23$1 := BV_EXTRACT($attrib.coerce5, 128, 96);
    $$attrib$23$2 := BV_EXTRACT($attrib.coerce5, 128, 96);
    $$attrib$24$1 := BV_EXTRACT($attrib.coerce6, 32, 0);
    $$attrib$24$2 := BV_EXTRACT($attrib.coerce6, 32, 0);
    $$attrib$25$1 := BV_EXTRACT($attrib.coerce6, 64, 32);
    $$attrib$25$2 := BV_EXTRACT($attrib.coerce6, 64, 32);
    $$attrib$26$1 := BV_EXTRACT($attrib.coerce6, 96, 64);
    $$attrib$26$2 := BV_EXTRACT($attrib.coerce6, 96, 64);
    $$attrib$27$1 := BV_EXTRACT($attrib.coerce6, 128, 96);
    $$attrib$27$2 := BV_EXTRACT($attrib.coerce6, 128, 96);
    v0$1 := $$attrib$0$1;
    v0$2 := $$attrib$0$2;
    v1$1 := $$attrib$1$1;
    v1$2 := $$attrib$1$2;
    v2$1 := $$attrib$2$1;
    v2$2 := $$attrib$2$2;
    v3$1 := $$attrib$3$1;
    v3$2 := $$attrib$3$2;
    v4$1 := $$attrib$4$1;
    v4$2 := $$attrib$4$2;
    v5$1 := $$attrib$5$1;
    v5$2 := $$attrib$5$2;
    v6$1 := $$attrib$6$1;
    v6$2 := $$attrib$6$2;
    v7$1 := $$attrib$7$1;
    v7$2 := $$attrib$7$2;
    v8$1 := $$attrib$8$1;
    v8$2 := $$attrib$8$2;
    v9$1 := $$attrib$9$1;
    v9$2 := $$attrib$9$2;
    v10$1 := $$attrib$10$1;
    v10$2 := $$attrib$10$2;
    v11$1 := $$attrib$11$1;
    v11$2 := $$attrib$11$2;
    v12$1 := $$attrib$12$1;
    v12$2 := $$attrib$12$2;
    v13$1 := $$attrib$13$1;
    v13$2 := $$attrib$13$2;
    v14$1 := $$attrib$14$1;
    v14$2 := $$attrib$14$2;
    v15$1 := $$attrib$15$1;
    v15$2 := $$attrib$15$2;
    v16$1 := $$attrib$16$1;
    v16$2 := $$attrib$16$2;
    v17$1 := $$attrib$17$1;
    v17$2 := $$attrib$17$2;
    v18$1 := $$attrib$18$1;
    v18$2 := $$attrib$18$2;
    v19$1 := $$attrib$19$1;
    v19$2 := $$attrib$19$2;
    v20$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$1, v18$1), v17$1), v16$1);
    v20$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v19$2, v18$2), v17$2), v16$2);
    v21$1 := $$attrib$20$1;
    v21$2 := $$attrib$20$2;
    v22$1 := $$attrib$21$1;
    v22$2 := $$attrib$21$2;
    v23$1 := $$attrib$22$1;
    v23$2 := $$attrib$22$2;
    v24$1 := $$attrib$23$1;
    v24$2 := $$attrib$23$2;
    v25$1 := $$attrib$24$1;
    v25$2 := $$attrib$24$2;
    v26$1 := $$attrib$25$1;
    v26$2 := $$attrib$25$2;
    v27$1 := $$attrib$26$1;
    v27$2 := $$attrib$26$2;
    v28$1 := $$attrib$27$1;
    v28$2 := $$attrib$27$2;
    v29$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v29$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v30$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v30$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    havoc v31$1, v31$2;
    havoc v32$1, v32$2;
    havoc v33$1, v33$2;
    havoc v34$1, v34$2;
    $nextRand.0$1, $trajPrice1.0$1, $trajPrice2.0$1, $sumPrice1.0$1, $sumPrice2.0$1, $sumDeriv1.0$1, $sumDeriv2.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v34$1, v33$1), v32$1), v31$1), v20$1, v20$1, v20$1, v20$1, 0, 0, 1;
    $nextRand.0$2, $trajPrice1.0$2, $trajPrice2.0$2, $sumPrice1.0$2, $sumPrice2.0$2, $sumDeriv1.0$2, $sumDeriv2.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v34$2, v33$2), v32$2), v31$2), v20$2, v20$2, v20$2, v20$2, 0, 0;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 62} true;
    v35 := BV32_SLT($i.0, $noOfSum);
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
    goto $truebb, $falsebb;

  $falsebb:
    assume {:partition} !v35;
    v113 := SI32_TO_FP32($noOfSum);
    v114 := SI32_TO_FP32($noOfSum);
    v115 := SI32_TO_FP32($noOfSum);
    v116 := SI32_TO_FP32($noOfSum);
    v117$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$1, 32, 0), v113), v0$1);
    v117$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$2, 32, 0), v113), v0$2);
    v118$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$1, 64, 32), v113), v1$1);
    v118$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$2, 64, 32), v113), v1$2);
    v119$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$1, 96, 64), v113), v2$1);
    v119$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$2, 96, 64), v113), v2$2);
    v120$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$1, 128, 96), v113), v3$1);
    v120$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice1.0$2, 128, 96), v113), v3$2);
    v121$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$1, 32, 0), v114), v0$1);
    v121$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$2, 32, 0), v114), v0$2);
    v122$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$1, 64, 32), v114), v1$1);
    v122$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$2, 64, 32), v114), v1$2);
    v123$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$1, 96, 64), v114), v2$1);
    v123$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$2, 96, 64), v114), v2$2);
    v124$1 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$1, 128, 96), v114), v3$1);
    v124$2 := FSUB32(FDIV32(BV_EXTRACT($sumPrice2.0$2, 128, 96), v114), v3$2);
    v125$1 := FLT32(0, v117$1);
    v125$2 := FLT32(0, v117$2);
    p0$1 := (if v125$1 then v125$1 else p0$1);
    p0$2 := (if v125$2 then v125$2 else p0$2);
    p1$1 := (if !v125$1 then !v125$1 else p1$1);
    p1$2 := (if !v125$2 then !v125$2 else p1$2);
    $temp3.i.0$1, $temp1.i1.0$1 := (if p0$1 then BV_CONCAT(0, v117$1) else $temp3.i.0$1), (if p0$1 then 1065353216 else $temp1.i1.0$1);
    $temp3.i.0$2, $temp1.i1.0$2 := (if p0$2 then BV_CONCAT(0, v117$2) else $temp3.i.0$2), (if p0$2 then 1065353216 else $temp1.i1.0$2);
    $temp3.i.0$1, $temp1.i1.0$1 := (if p1$1 then 0 else $temp3.i.0$1), (if p1$1 then 0 else $temp1.i1.0$1);
    $temp3.i.0$2, $temp1.i1.0$2 := (if p1$2 then 0 else $temp3.i.0$2), (if p1$2 then 0 else $temp1.i1.0$2);
    v126$1 := FLT32(0, v118$1);
    v126$2 := FLT32(0, v118$2);
    p2$1 := (if v126$1 then v126$1 else p2$1);
    p2$2 := (if v126$2 then v126$2 else p2$2);
    p3$1 := (if !v126$1 then !v126$1 else p3$1);
    p3$2 := (if !v126$2 then !v126$2 else p3$2);
    $temp3.i.1$1, $temp1.i1.1$1 := (if p2$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp3.i.0$1, 128, 96), BV_EXTRACT($temp3.i.0$1, 96, 64)), v118$1), BV_EXTRACT($temp3.i.0$1, 32, 0)) else $temp3.i.1$1), (if p2$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp1.i1.0$1, 128, 96), BV_EXTRACT($temp1.i1.0$1, 96, 64)), 1065353216), BV_EXTRACT($temp1.i1.0$1, 32, 0)) else $temp1.i1.1$1);
    $temp3.i.1$2, $temp1.i1.1$2 := (if p2$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp3.i.0$2, 128, 96), BV_EXTRACT($temp3.i.0$2, 96, 64)), v118$2), BV_EXTRACT($temp3.i.0$2, 32, 0)) else $temp3.i.1$2), (if p2$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp1.i1.0$2, 128, 96), BV_EXTRACT($temp1.i1.0$2, 96, 64)), 1065353216), BV_EXTRACT($temp1.i1.0$2, 32, 0)) else $temp1.i1.1$2);
    $temp3.i.1$1, $temp1.i1.1$1 := (if p3$1 then $temp3.i.0$1 else $temp3.i.1$1), (if p3$1 then $temp1.i1.0$1 else $temp1.i1.1$1);
    $temp3.i.1$2, $temp1.i1.1$2 := (if p3$2 then $temp3.i.0$2 else $temp3.i.1$2), (if p3$2 then $temp1.i1.0$2 else $temp1.i1.1$2);
    v127$1 := FLT32(0, v119$1);
    v127$2 := FLT32(0, v119$2);
    p4$1 := (if v127$1 then v127$1 else p4$1);
    p4$2 := (if v127$2 then v127$2 else p4$2);
    p5$1 := (if !v127$1 then !v127$1 else p5$1);
    p5$2 := (if !v127$2 then !v127$2 else p5$2);
    $temp3.i.2$1, $temp1.i1.2$1 := (if p4$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp3.i.1$1, 128, 96), v119$1), BV_EXTRACT($temp3.i.1$1, 64, 32)), BV_EXTRACT($temp3.i.1$1, 32, 0)) else $temp3.i.2$1), (if p4$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp1.i1.1$1, 128, 96), 1065353216), BV_EXTRACT($temp1.i1.1$1, 64, 32)), BV_EXTRACT($temp1.i1.1$1, 32, 0)) else $temp1.i1.2$1);
    $temp3.i.2$2, $temp1.i1.2$2 := (if p4$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp3.i.1$2, 128, 96), v119$2), BV_EXTRACT($temp3.i.1$2, 64, 32)), BV_EXTRACT($temp3.i.1$2, 32, 0)) else $temp3.i.2$2), (if p4$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp1.i1.1$2, 128, 96), 1065353216), BV_EXTRACT($temp1.i1.1$2, 64, 32)), BV_EXTRACT($temp1.i1.1$2, 32, 0)) else $temp1.i1.2$2);
    $temp3.i.2$1, $temp1.i1.2$1 := (if p5$1 then $temp3.i.1$1 else $temp3.i.2$1), (if p5$1 then $temp1.i1.1$1 else $temp1.i1.2$1);
    $temp3.i.2$2, $temp1.i1.2$2 := (if p5$2 then $temp3.i.1$2 else $temp3.i.2$2), (if p5$2 then $temp1.i1.1$2 else $temp1.i1.2$2);
    v128$1 := FLT32(0, v120$1);
    v128$2 := FLT32(0, v120$2);
    p6$1 := (if v128$1 then v128$1 else p6$1);
    p6$2 := (if v128$2 then v128$2 else p6$2);
    p7$1 := (if !v128$1 then !v128$1 else p7$1);
    p7$2 := (if !v128$2 then !v128$2 else p7$2);
    $temp3.i.3$1, $temp1.i1.3$1 := (if p6$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v120$1, BV_EXTRACT($temp3.i.2$1, 96, 64)), BV_EXTRACT($temp3.i.2$1, 64, 32)), BV_EXTRACT($temp3.i.2$1, 32, 0)) else $temp3.i.3$1), (if p6$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(1065353216, BV_EXTRACT($temp1.i1.2$1, 96, 64)), BV_EXTRACT($temp1.i1.2$1, 64, 32)), BV_EXTRACT($temp1.i1.2$1, 32, 0)) else $temp1.i1.3$1);
    $temp3.i.3$2, $temp1.i1.3$2 := (if p6$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v120$2, BV_EXTRACT($temp3.i.2$2, 96, 64)), BV_EXTRACT($temp3.i.2$2, 64, 32)), BV_EXTRACT($temp3.i.2$2, 32, 0)) else $temp3.i.3$2), (if p6$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(1065353216, BV_EXTRACT($temp1.i1.2$2, 96, 64)), BV_EXTRACT($temp1.i1.2$2, 64, 32)), BV_EXTRACT($temp1.i1.2$2, 32, 0)) else $temp1.i1.3$2);
    $temp3.i.3$1, $temp1.i1.3$1 := (if p7$1 then $temp3.i.2$1 else $temp3.i.3$1), (if p7$1 then $temp1.i1.2$1 else $temp1.i1.3$1);
    $temp3.i.3$2, $temp1.i1.3$2 := (if p7$2 then $temp3.i.2$2 else $temp3.i.3$2), (if p7$2 then $temp1.i1.2$2 else $temp1.i1.3$2);
    v129$1 := FLT32(0, v121$1);
    v129$2 := FLT32(0, v121$2);
    p8$1 := (if v129$1 then v129$1 else p8$1);
    p8$2 := (if v129$2 then v129$2 else p8$2);
    p9$1 := (if !v129$1 then !v129$1 else p9$1);
    p9$2 := (if !v129$2 then !v129$2 else p9$2);
    $temp4.i.0$1, $temp2.i2.0$1 := (if p8$1 then BV_CONCAT(0, v121$1) else $temp4.i.0$1), (if p8$1 then 1065353216 else $temp2.i2.0$1);
    $temp4.i.0$2, $temp2.i2.0$2 := (if p8$2 then BV_CONCAT(0, v121$2) else $temp4.i.0$2), (if p8$2 then 1065353216 else $temp2.i2.0$2);
    $temp4.i.0$1, $temp2.i2.0$1 := (if p9$1 then 0 else $temp4.i.0$1), (if p9$1 then 0 else $temp2.i2.0$1);
    $temp4.i.0$2, $temp2.i2.0$2 := (if p9$2 then 0 else $temp4.i.0$2), (if p9$2 then 0 else $temp2.i2.0$2);
    v130$1 := FLT32(0, v122$1);
    v130$2 := FLT32(0, v122$2);
    p10$1 := (if v130$1 then v130$1 else p10$1);
    p10$2 := (if v130$2 then v130$2 else p10$2);
    p11$1 := (if !v130$1 then !v130$1 else p11$1);
    p11$2 := (if !v130$2 then !v130$2 else p11$2);
    $temp4.i.1$1, $temp2.i2.1$1 := (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp4.i.0$1, 128, 96), BV_EXTRACT($temp4.i.0$1, 96, 64)), v122$1), BV_EXTRACT($temp4.i.0$1, 32, 0)) else $temp4.i.1$1), (if p10$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp2.i2.0$1, 128, 96), BV_EXTRACT($temp2.i2.0$1, 96, 64)), 1065353216), BV_EXTRACT($temp2.i2.0$1, 32, 0)) else $temp2.i2.1$1);
    $temp4.i.1$2, $temp2.i2.1$2 := (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp4.i.0$2, 128, 96), BV_EXTRACT($temp4.i.0$2, 96, 64)), v122$2), BV_EXTRACT($temp4.i.0$2, 32, 0)) else $temp4.i.1$2), (if p10$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp2.i2.0$2, 128, 96), BV_EXTRACT($temp2.i2.0$2, 96, 64)), 1065353216), BV_EXTRACT($temp2.i2.0$2, 32, 0)) else $temp2.i2.1$2);
    $temp4.i.1$1, $temp2.i2.1$1 := (if p11$1 then $temp4.i.0$1 else $temp4.i.1$1), (if p11$1 then $temp2.i2.0$1 else $temp2.i2.1$1);
    $temp4.i.1$2, $temp2.i2.1$2 := (if p11$2 then $temp4.i.0$2 else $temp4.i.1$2), (if p11$2 then $temp2.i2.0$2 else $temp2.i2.1$2);
    v131$1 := FLT32(0, v123$1);
    v131$2 := FLT32(0, v123$2);
    p12$1 := (if v131$1 then v131$1 else p12$1);
    p12$2 := (if v131$2 then v131$2 else p12$2);
    p13$1 := (if !v131$1 then !v131$1 else p13$1);
    p13$2 := (if !v131$2 then !v131$2 else p13$2);
    $temp4.i.2$1, $temp2.i2.2$1 := (if p12$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp4.i.1$1, 128, 96), v123$1), BV_EXTRACT($temp4.i.1$1, 64, 32)), BV_EXTRACT($temp4.i.1$1, 32, 0)) else $temp4.i.2$1), (if p12$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp2.i2.1$1, 128, 96), 1065353216), BV_EXTRACT($temp2.i2.1$1, 64, 32)), BV_EXTRACT($temp2.i2.1$1, 32, 0)) else $temp2.i2.2$1);
    $temp4.i.2$2, $temp2.i2.2$2 := (if p12$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp4.i.1$2, 128, 96), v123$2), BV_EXTRACT($temp4.i.1$2, 64, 32)), BV_EXTRACT($temp4.i.1$2, 32, 0)) else $temp4.i.2$2), (if p12$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(BV_EXTRACT($temp2.i2.1$2, 128, 96), 1065353216), BV_EXTRACT($temp2.i2.1$2, 64, 32)), BV_EXTRACT($temp2.i2.1$2, 32, 0)) else $temp2.i2.2$2);
    $temp4.i.2$1, $temp2.i2.2$1 := (if p13$1 then $temp4.i.1$1 else $temp4.i.2$1), (if p13$1 then $temp2.i2.1$1 else $temp2.i2.2$1);
    $temp4.i.2$2, $temp2.i2.2$2 := (if p13$2 then $temp4.i.1$2 else $temp4.i.2$2), (if p13$2 then $temp2.i2.1$2 else $temp2.i2.2$2);
    v132$1 := FLT32(0, v124$1);
    v132$2 := FLT32(0, v124$2);
    p14$1 := (if v132$1 then v132$1 else p14$1);
    p14$2 := (if v132$2 then v132$2 else p14$2);
    p15$1 := (if !v132$1 then !v132$1 else p15$1);
    p15$2 := (if !v132$2 then !v132$2 else p15$2);
    $temp4.i.3$1, $temp2.i2.3$1 := (if p14$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v124$1, BV_EXTRACT($temp4.i.2$1, 96, 64)), BV_EXTRACT($temp4.i.2$1, 64, 32)), BV_EXTRACT($temp4.i.2$1, 32, 0)) else $temp4.i.3$1), (if p14$1 then BV_CONCAT(BV_CONCAT(BV_CONCAT(1065353216, BV_EXTRACT($temp2.i2.2$1, 96, 64)), BV_EXTRACT($temp2.i2.2$1, 64, 32)), BV_EXTRACT($temp2.i2.2$1, 32, 0)) else $temp2.i2.3$1);
    $temp4.i.3$2, $temp2.i2.3$2 := (if p14$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(v124$2, BV_EXTRACT($temp4.i.2$2, 96, 64)), BV_EXTRACT($temp4.i.2$2, 64, 32)), BV_EXTRACT($temp4.i.2$2, 32, 0)) else $temp4.i.3$2), (if p14$2 then BV_CONCAT(BV_CONCAT(BV_CONCAT(1065353216, BV_EXTRACT($temp2.i2.2$2, 96, 64)), BV_EXTRACT($temp2.i2.2$2, 64, 32)), BV_EXTRACT($temp2.i2.2$2, 32, 0)) else $temp2.i2.3$2);
    $temp4.i.3$1, $temp2.i2.3$1 := (if p15$1 then $temp4.i.2$1 else $temp4.i.3$1), (if p15$1 then $temp2.i2.2$1 else $temp2.i2.3$1);
    $temp4.i.3$2, $temp2.i2.3$2 := (if p15$2 then $temp4.i.2$2 else $temp4.i.3$2), (if p15$2 then $temp2.i2.2$2 else $temp2.i2.3$2);
    call {:sourceloc} {:sourceloc_num 147} _LOG_WRITE_$$priceSamples(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), BV_EXTRACT($temp3.i.3$1, 32, 0), $$priceSamples[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 147} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 147} _CHECK_WRITE_$$priceSamples(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), BV_EXTRACT($temp3.i.3$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4)] := BV_EXTRACT($temp3.i.3$1, 32, 0);
    $$priceSamples[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4)] := BV_EXTRACT($temp3.i.3$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 148} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1), BV_EXTRACT($temp3.i.3$1, 64, 32), $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 148} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 148} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1), BV_EXTRACT($temp3.i.3$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1)] := BV_EXTRACT($temp3.i.3$1, 64, 32);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1)] := BV_EXTRACT($temp3.i.3$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 149} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2), BV_EXTRACT($temp3.i.3$1, 96, 64), $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 149} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 149} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2), BV_EXTRACT($temp3.i.3$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2)] := BV_EXTRACT($temp3.i.3$1, 96, 64);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2)] := BV_EXTRACT($temp3.i.3$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 150} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3), BV_EXTRACT($temp3.i.3$1, 128, 96), $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 150} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 150} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3), BV_EXTRACT($temp3.i.3$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3)] := BV_EXTRACT($temp3.i.3$1, 128, 96);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3)] := BV_EXTRACT($temp3.i.3$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 151} _LOG_WRITE_$$priceSamples(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), BV_EXTRACT($temp4.i.3$1, 32, 0), $$priceSamples[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 151} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 151} _CHECK_WRITE_$$priceSamples(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), BV_EXTRACT($temp4.i.3$2, 32, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4)] := BV_EXTRACT($temp4.i.3$1, 32, 0);
    $$priceSamples[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4)] := BV_EXTRACT($temp4.i.3$2, 32, 0);
    call {:sourceloc} {:sourceloc_num 152} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1), BV_EXTRACT($temp4.i.3$1, 64, 32), $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 152} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 152} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1), BV_EXTRACT($temp4.i.3$2, 64, 32));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1)] := BV_EXTRACT($temp4.i.3$1, 64, 32);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1)] := BV_EXTRACT($temp4.i.3$2, 64, 32);
    call {:sourceloc} {:sourceloc_num 153} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2), BV_EXTRACT($temp4.i.3$1, 96, 64), $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 153} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 153} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2), BV_EXTRACT($temp4.i.3$2, 96, 64));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2)] := BV_EXTRACT($temp4.i.3$1, 96, 64);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2)] := BV_EXTRACT($temp4.i.3$2, 96, 64);
    call {:sourceloc} {:sourceloc_num 154} _LOG_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3), BV_EXTRACT($temp4.i.3$1, 128, 96), $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 154} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 154} _CHECK_WRITE_$$priceSamples(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3), BV_EXTRACT($temp4.i.3$2, 128, 96));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$priceSamples"} true;
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3)] := BV_EXTRACT($temp4.i.3$1, 128, 96);
    $$priceSamples[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3)] := BV_EXTRACT($temp4.i.3$2, 128, 96);
    call {:sourceloc} {:sourceloc_num 155} _LOG_WRITE_$$pathDeriv(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 32, 0), v115), BV_EXTRACT($temp1.i1.3$1, 32, 0)), $$pathDeriv[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 155} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 155} _CHECK_WRITE_$$pathDeriv(true, BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 32, 0), v115), BV_EXTRACT($temp1.i1.3$2, 32, 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 32, 0), v115), BV_EXTRACT($temp1.i1.3$1, 32, 0));
    $$pathDeriv[BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 32, 0), v115), BV_EXTRACT($temp1.i1.3$2, 32, 0));
    call {:sourceloc} {:sourceloc_num 156} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 64, 32), v115), BV_EXTRACT($temp1.i1.3$1, 64, 32)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 156} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 156} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 64, 32), v115), BV_EXTRACT($temp1.i1.3$2, 64, 32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 1)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 64, 32), v115), BV_EXTRACT($temp1.i1.3$1, 64, 32));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 1)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 64, 32), v115), BV_EXTRACT($temp1.i1.3$2, 64, 32));
    call {:sourceloc} {:sourceloc_num 157} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 96, 64), v115), BV_EXTRACT($temp1.i1.3$1, 96, 64)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 157} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 157} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 96, 64), v115), BV_EXTRACT($temp1.i1.3$2, 96, 64)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 2)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 96, 64), v115), BV_EXTRACT($temp1.i1.3$1, 96, 64));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 2)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 96, 64), v115), BV_EXTRACT($temp1.i1.3$2, 96, 64));
    call {:sourceloc} {:sourceloc_num 158} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 128, 96), v115), BV_EXTRACT($temp1.i1.3$1, 128, 96)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 158} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 158} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3), FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 128, 96), v115), BV_EXTRACT($temp1.i1.3$2, 128, 96)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 4), 3)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$1, 128, 96), v115), BV_EXTRACT($temp1.i1.3$1, 128, 96));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 4), 3)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv1.0$2, 128, 96), v115), BV_EXTRACT($temp1.i1.3$2, 128, 96));
    call {:sourceloc} {:sourceloc_num 159} _LOG_WRITE_$$pathDeriv(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 32, 0), v116), BV_EXTRACT($temp2.i2.3$1, 32, 0)), $$pathDeriv[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 159} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 159} _CHECK_WRITE_$$pathDeriv(true, BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 32, 0), v116), BV_EXTRACT($temp2.i2.3$2, 32, 0)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 32, 0), v116), BV_EXTRACT($temp2.i2.3$1, 32, 0));
    $$pathDeriv[BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 32, 0), v116), BV_EXTRACT($temp2.i2.3$2, 32, 0));
    call {:sourceloc} {:sourceloc_num 160} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 64, 32), v116), BV_EXTRACT($temp2.i2.3$1, 64, 32)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 160} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 160} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 64, 32), v116), BV_EXTRACT($temp2.i2.3$2, 64, 32)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 1)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 64, 32), v116), BV_EXTRACT($temp2.i2.3$1, 64, 32));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 1)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 64, 32), v116), BV_EXTRACT($temp2.i2.3$2, 64, 32));
    call {:sourceloc} {:sourceloc_num 161} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 96, 64), v116), BV_EXTRACT($temp2.i2.3$1, 96, 64)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 161} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 161} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 96, 64), v116), BV_EXTRACT($temp2.i2.3$2, 96, 64)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 2)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 96, 64), v116), BV_EXTRACT($temp2.i2.3$1, 96, 64));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 2)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 96, 64), v116), BV_EXTRACT($temp2.i2.3$2, 96, 64));
    call {:sourceloc} {:sourceloc_num 162} _LOG_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 128, 96), v116), BV_EXTRACT($temp2.i2.3$1, 128, 96)), $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 162} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 162} _CHECK_WRITE_$$pathDeriv(true, BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3), FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 128, 96), v116), BV_EXTRACT($temp2.i2.3$2, 128, 96)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$pathDeriv"} true;
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$1, $width), v29$1), 2), 1), 4), 3)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$1, 128, 96), v116), BV_EXTRACT($temp2.i2.3$1, 128, 96));
    $$pathDeriv[BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(BV32_ADD(BV32_MUL(v30$2, $width), v29$2), 2), 1), 4), 3)] := FMUL32(FDIV32(BV_EXTRACT($sumDeriv2.0$2, 128, 96), v116), BV_EXTRACT($temp2.i2.3$2, 128, 96));
    return;

  $truebb:
    assume {:partition} v35;
    v36$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$1, 32, 0), BV32_LSHR(BV_EXTRACT($nextRand.0$1, 32, 0), 30))), 1);
    v36$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$2, 32, 0), BV32_LSHR(BV_EXTRACT($nextRand.0$2, 32, 0), 30))), 1);
    v37$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$1, 64, 32), BV32_LSHR(BV_EXTRACT($nextRand.0$1, 64, 32), 30))), 1);
    v37$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$2, 64, 32), BV32_LSHR(BV_EXTRACT($nextRand.0$2, 64, 32), 30))), 1);
    v38$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$1, 96, 64), BV32_LSHR(BV_EXTRACT($nextRand.0$1, 96, 64), 30))), 1);
    v38$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$2, 96, 64), BV32_LSHR(BV_EXTRACT($nextRand.0$2, 96, 64), 30))), 1);
    v39$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$1, 128, 96), BV32_LSHR(BV_EXTRACT($nextRand.0$1, 128, 96), 30))), 1);
    v39$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(BV_EXTRACT($nextRand.0$2, 128, 96), BV32_LSHR(BV_EXTRACT($nextRand.0$2, 128, 96), 30))), 1);
    v40$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v36$1, BV32_LSHR(v36$1, 30))), 2);
    v40$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v36$2, BV32_LSHR(v36$2, 30))), 2);
    v41$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v37$1, BV32_LSHR(v37$1, 30))), 2);
    v41$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v37$2, BV32_LSHR(v37$2, 30))), 2);
    v42$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v38$1, BV32_LSHR(v38$1, 30))), 2);
    v42$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v38$2, BV32_LSHR(v38$2, 30))), 2);
    v43$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v39$1, BV32_LSHR(v39$1, 30))), 2);
    v43$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v39$2, BV32_LSHR(v39$2, 30))), 2);
    v44$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$1, v42$1), v41$1), v40$1);
    v44$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v43$2, v42$2), v41$2), v40$2);
    v45$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v40$1, BV32_LSHR(v40$1, 30))), 3);
    v45$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v40$2, BV32_LSHR(v40$2, 30))), 3);
    v46$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v41$1, BV32_LSHR(v41$1, 30))), 3);
    v46$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v41$2, BV32_LSHR(v41$2, 30))), 3);
    v47$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v42$1, BV32_LSHR(v42$1, 30))), 3);
    v47$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v42$2, BV32_LSHR(v42$2, 30))), 3);
    v48$1 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v43$1, BV32_LSHR(v43$1, 30))), 3);
    v48$2 := BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v43$2, BV32_LSHR(v43$2, 30))), 3);
    v49$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$1, v47$1), v46$1), v45$1);
    v49$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v48$2, v47$2), v46$2), v45$2);
    v50$1 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v48$1, BV32_LSHR(v48$1, 30))), 4), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v47$1, BV32_LSHR(v47$1, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v46$1, BV32_LSHR(v46$1, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v45$1, BV32_LSHR(v45$1, 30))), 4));
    v50$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v48$2, BV32_LSHR(v48$2, 30))), 4), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v47$2, BV32_LSHR(v47$2, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v46$2, BV32_LSHR(v46$2, 30))), 4)), BV32_ADD(BV32_MUL(1812433253, BV32_XOR(v45$2, BV32_LSHR(v45$2, 30))), 4));
    $r1.i.0$1, $r2.i.0$1, $a.i.0$1, $b.i.0$1, $i.i.0 := 0, 0, 0, 0, 0;
    $r1.i.0$2, $r2.i.0$2, $a.i.0$2, $b.i.0$2 := 0, 0, 0, 0;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:block_sourceloc} {:sourceloc_num 64} true;
    v51 := BV32_ULT($i.i.0, 4);
    goto $truebb0, $falsebb0;

  $falsebb0:
    assume {:partition} !v51;
    v80$1 := $$temp.i$1[0];
    v80$2 := $$temp.i$2[0];
    v81$1 := $$temp.i$1[1];
    v81$2 := $$temp.i$2[1];
    v82$1 := $$temp.i$1[2];
    v82$2 := $$temp.i$2[2];
    v83$1 := $$temp.i$1[3];
    v83$2 := $$temp.i$2[3];
    v84$1 := $$temp.i$1[4];
    v84$2 := $$temp.i$2[4];
    v85$1 := $$temp.i$1[5];
    v85$2 := $$temp.i$2[5];
    v86$1 := $$temp.i$1[6];
    v86$2 := $$temp.i$2[6];
    v87$1 := $$temp.i$1[7];
    v87$2 := $$temp.i$2[7];
    v88$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v80$1), 1333788672)), 1060205080)));
    v88$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v80$2), 1333788672)), 1060205080)));
    v89$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v81$1), 1333788672)), 1060205080)));
    v89$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v81$2), 1333788672)), 1060205080)));
    v90$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v82$1), 1333788672)), 1060205080)));
    v90$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v82$2), 1333788672)), 1060205080)));
    v91$1 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v83$1), 1333788672)), 1060205080)));
    v91$2 := FSQRT32(FMUL32(-1073741824, FMUL32(FLOG32(FDIV32(UI32_TO_FP32(v83$2), 1333788672)), 1060205080)));
    v92$1 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v84$1), 1333788672));
    v92$2 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v84$2), 1333788672));
    v93$1 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v85$1), 1333788672));
    v93$2 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v85$2), 1333788672));
    v94$1 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v86$1), 1333788672));
    v94$2 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v86$2), 1333788672));
    v95$1 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v87$1), 1333788672));
    v95$2 := FMUL32(1086918619, FDIV32(UI32_TO_FP32(v87$2), 1333788672));
    v96$1 := $$temp.i$1[8];
    v96$2 := $$temp.i$2[8];
    v97$1 := $$temp.i$1[9];
    v97$2 := $$temp.i$2[9];
    v98$1 := $$temp.i$1[10];
    v98$2 := $$temp.i$2[10];
    v99$1 := $$temp.i$1[11];
    v99$2 := $$temp.i$2[11];
    v100$1 := FMUL32(BV_EXTRACT($trajPrice1.0$1, 32, 0), FEXP32(FMUL32(FADD32(FMUL32(v8$1, FMUL32(v88$1, FCOS32(v92$1))), v4$1), 1069066811)));
    v100$2 := FMUL32(BV_EXTRACT($trajPrice1.0$2, 32, 0), FEXP32(FMUL32(FADD32(FMUL32(v8$2, FMUL32(v88$2, FCOS32(v92$2))), v4$2), 1069066811)));
    v101$1 := FMUL32(BV_EXTRACT($trajPrice1.0$1, 64, 32), FEXP32(FMUL32(FADD32(FMUL32(v9$1, FMUL32(v89$1, FCOS32(v93$1))), v5$1), 1069066811)));
    v101$2 := FMUL32(BV_EXTRACT($trajPrice1.0$2, 64, 32), FEXP32(FMUL32(FADD32(FMUL32(v9$2, FMUL32(v89$2, FCOS32(v93$2))), v5$2), 1069066811)));
    v102$1 := FMUL32(BV_EXTRACT($trajPrice1.0$1, 96, 64), FEXP32(FMUL32(FADD32(FMUL32(v10$1, FMUL32(v90$1, FCOS32(v94$1))), v6$1), 1069066811)));
    v102$2 := FMUL32(BV_EXTRACT($trajPrice1.0$2, 96, 64), FEXP32(FMUL32(FADD32(FMUL32(v10$2, FMUL32(v90$2, FCOS32(v94$2))), v6$2), 1069066811)));
    v103$1 := FMUL32(BV_EXTRACT($trajPrice1.0$1, 128, 96), FEXP32(FMUL32(FADD32(FMUL32(v11$1, FMUL32(v91$1, FCOS32(v95$1))), v7$1), 1069066811)));
    v103$2 := FMUL32(BV_EXTRACT($trajPrice1.0$2, 128, 96), FEXP32(FMUL32(FADD32(FMUL32(v11$2, FMUL32(v91$2, FCOS32(v95$2))), v7$2), 1069066811)));
    v104$1 := FMUL32(BV_EXTRACT($trajPrice2.0$1, 32, 0), FEXP32(FMUL32(FADD32(FMUL32(v8$1, FMUL32(v88$1, FSIN32(v92$1))), v4$1), 1069066811)));
    v104$2 := FMUL32(BV_EXTRACT($trajPrice2.0$2, 32, 0), FEXP32(FMUL32(FADD32(FMUL32(v8$2, FMUL32(v88$2, FSIN32(v92$2))), v4$2), 1069066811)));
    v105$1 := FMUL32(BV_EXTRACT($trajPrice2.0$1, 64, 32), FEXP32(FMUL32(FADD32(FMUL32(v9$1, FMUL32(v89$1, FSIN32(v93$1))), v5$1), 1069066811)));
    v105$2 := FMUL32(BV_EXTRACT($trajPrice2.0$2, 64, 32), FEXP32(FMUL32(FADD32(FMUL32(v9$2, FMUL32(v89$2, FSIN32(v93$2))), v5$2), 1069066811)));
    v106$1 := FMUL32(BV_EXTRACT($trajPrice2.0$1, 96, 64), FEXP32(FMUL32(FADD32(FMUL32(v10$1, FMUL32(v90$1, FSIN32(v94$1))), v6$1), 1069066811)));
    v106$2 := FMUL32(BV_EXTRACT($trajPrice2.0$2, 96, 64), FEXP32(FMUL32(FADD32(FMUL32(v10$2, FMUL32(v90$2, FSIN32(v94$2))), v6$2), 1069066811)));
    v107$1 := FMUL32(BV_EXTRACT($trajPrice2.0$1, 128, 96), FEXP32(FMUL32(FADD32(FMUL32(v11$1, FMUL32(v91$1, FSIN32(v95$1))), v7$1), 1069066811)));
    v107$2 := FMUL32(BV_EXTRACT($trajPrice2.0$2, 128, 96), FEXP32(FMUL32(FADD32(FMUL32(v11$2, FMUL32(v91$2, FSIN32(v95$2))), v7$2), 1069066811)));
    v108 := SI32_TO_FP32($i.0);
    v109$1 := FMUL32(FMUL32(v12$1, v25$1), v108);
    v109$2 := FMUL32(FMUL32(v12$2, v25$2), v108);
    v110$1 := FMUL32(FMUL32(v13$1, v26$1), v108);
    v110$2 := FMUL32(FMUL32(v13$2, v26$2), v108);
    v111$1 := FMUL32(FMUL32(v14$1, v27$1), v108);
    v111$2 := FMUL32(FMUL32(v14$2, v27$2), v108);
    v112$1 := FMUL32(FMUL32(v15$1, v28$1), v108);
    v112$2 := FMUL32(FMUL32(v15$2, v28$2), v108);
    $nextRand.0$1, $trajPrice1.0$1, $trajPrice2.0$1, $sumPrice1.0$1, $sumPrice2.0$1, $sumDeriv1.0$1, $sumDeriv2.0$1, $i.0 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v99$1, v98$1), v97$1), v96$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v103$1, v102$1), v101$1), v100$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$1, v106$1), v105$1), v104$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($sumPrice1.0$1, 128, 96), v103$1), FADD32(BV_EXTRACT($sumPrice1.0$1, 96, 64), v102$1)), FADD32(BV_EXTRACT($sumPrice1.0$1, 64, 32), v101$1)), FADD32(BV_EXTRACT($sumPrice1.0$1, 32, 0), v100$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($sumPrice2.0$1, 128, 96), v107$1), FADD32(BV_EXTRACT($sumPrice2.0$1, 96, 64), v106$1)), FADD32(BV_EXTRACT($sumPrice2.0$1, 64, 32), v105$1)), FADD32(BV_EXTRACT($sumPrice2.0$1, 32, 0), v104$1)), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v103$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v103$1, v19$1)), 1060205080), FSUB32(-2147483648, v112$1)), v24$1)), BV_EXTRACT($sumDeriv1.0$1, 128, 96)), FADD32(FMUL32(v102$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v102$1, v18$1)), 1060205080), FSUB32(-2147483648, v111$1)), v23$1)), BV_EXTRACT($sumDeriv1.0$1, 96, 64))), FADD32(FMUL32(v101$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v101$1, v17$1)), 1060205080), FSUB32(-2147483648, v110$1)), v22$1)), BV_EXTRACT($sumDeriv1.0$1, 64, 32))), FADD32(FMUL32(v100$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v100$1, v16$1)), 1060205080), FSUB32(-2147483648, v109$1)), v21$1)), BV_EXTRACT($sumDeriv1.0$1, 32, 0))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v107$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v107$1, v19$1)), 1060205080), FSUB32(-2147483648, v112$1)), v24$1)), BV_EXTRACT($sumDeriv2.0$1, 128, 96)), FADD32(FMUL32(v106$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v106$1, v18$1)), 1060205080), FSUB32(-2147483648, v111$1)), v23$1)), BV_EXTRACT($sumDeriv2.0$1, 96, 64))), FADD32(FMUL32(v105$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v105$1, v17$1)), 1060205080), FSUB32(-2147483648, v110$1)), v22$1)), BV_EXTRACT($sumDeriv2.0$1, 64, 32))), FADD32(FMUL32(v104$1, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v104$1, v16$1)), 1060205080), FSUB32(-2147483648, v109$1)), v21$1)), BV_EXTRACT($sumDeriv2.0$1, 32, 0))), BV32_ADD($i.0, 1);
    $nextRand.0$2, $trajPrice1.0$2, $trajPrice2.0$2, $sumPrice1.0$2, $sumPrice2.0$2, $sumDeriv1.0$2, $sumDeriv2.0$2 := BV_CONCAT(BV_CONCAT(BV_CONCAT(v99$2, v98$2), v97$2), v96$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v103$2, v102$2), v101$2), v100$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v107$2, v106$2), v105$2), v104$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($sumPrice1.0$2, 128, 96), v103$2), FADD32(BV_EXTRACT($sumPrice1.0$2, 96, 64), v102$2)), FADD32(BV_EXTRACT($sumPrice1.0$2, 64, 32), v101$2)), FADD32(BV_EXTRACT($sumPrice1.0$2, 32, 0), v100$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(BV_EXTRACT($sumPrice2.0$2, 128, 96), v107$2), FADD32(BV_EXTRACT($sumPrice2.0$2, 96, 64), v106$2)), FADD32(BV_EXTRACT($sumPrice2.0$2, 64, 32), v105$2)), FADD32(BV_EXTRACT($sumPrice2.0$2, 32, 0), v104$2)), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v103$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v103$2, v19$2)), 1060205080), FSUB32(-2147483648, v112$2)), v24$2)), BV_EXTRACT($sumDeriv1.0$2, 128, 96)), FADD32(FMUL32(v102$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v102$2, v18$2)), 1060205080), FSUB32(-2147483648, v111$2)), v23$2)), BV_EXTRACT($sumDeriv1.0$2, 96, 64))), FADD32(FMUL32(v101$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v101$2, v17$2)), 1060205080), FSUB32(-2147483648, v110$2)), v22$2)), BV_EXTRACT($sumDeriv1.0$2, 64, 32))), FADD32(FMUL32(v100$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v100$2, v16$2)), 1060205080), FSUB32(-2147483648, v109$2)), v21$2)), BV_EXTRACT($sumDeriv1.0$2, 32, 0))), BV_CONCAT(BV_CONCAT(BV_CONCAT(FADD32(FMUL32(v107$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v107$2, v19$2)), 1060205080), FSUB32(-2147483648, v112$2)), v24$2)), BV_EXTRACT($sumDeriv2.0$2, 128, 96)), FADD32(FMUL32(v106$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v106$2, v18$2)), 1060205080), FSUB32(-2147483648, v111$2)), v23$2)), BV_EXTRACT($sumDeriv2.0$2, 96, 64))), FADD32(FMUL32(v105$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v105$2, v17$2)), 1060205080), FSUB32(-2147483648, v110$2)), v22$2)), BV_EXTRACT($sumDeriv2.0$2, 64, 32))), FADD32(FMUL32(v104$2, FDIV32(FADD32(FMUL32(FLOG32(FDIV32(v104$2, v16$2)), 1060205080), FSUB32(-2147483648, v109$2)), v21$2)), BV_EXTRACT($sumDeriv2.0$2, 32, 0)));
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $truebb0:
    assume {:partition} v51;
    goto $casebb, $casebb0, $casebb1, $casebb2, $defaultbb;

  $defaultbb:
    assume {:partition} $i.i.0 != 0 && $i.i.0 != 1 && $i.i.0 != 2 && $i.i.0 != 3;
    $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1 := $r1.i.0$1, $r2.i.0$1, $a.i.0$1, $b.i.0$1;
    $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2 := $r1.i.0$2, $r2.i.0$2, $a.i.0$2, $b.i.0$2;
    goto $10;

  $10:
    v64$1 := $$temp.i$1[BV32_MUL($i.i.0, 4)];
    v64$2 := $$temp.i$2[BV32_MUL($i.i.0, 4)];
    v65$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v65$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v66$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v66$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v67$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    v67$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    $$temp.i$1[BV32_MUL($i.i.0, 4)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$1, 32, 0), BV32_SHL(BV_EXTRACT($a.i.1$1, 32, 0), 24)), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$1, 32, 0), 13), -33605633)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$1, 32, 0), 24), BV32_SHL(BV_EXTRACT($r1.i.1$1, 64, 32), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$1, 32, 0), 15));
    $$temp.i$2[BV32_MUL($i.i.0, 4)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$2, 32, 0), BV32_SHL(BV_EXTRACT($a.i.1$2, 32, 0), 24)), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$2, 32, 0), 13), -33605633)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$2, 32, 0), 24), BV32_SHL(BV_EXTRACT($r1.i.1$2, 64, 32), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$2, 32, 0), 15));
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v65$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v65$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v66$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v66$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v67$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v67$2;
    v68$1 := $$temp.i$1[BV32_MUL($i.i.0, 4)];
    v68$2 := $$temp.i$2[BV32_MUL($i.i.0, 4)];
    v69$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v69$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v70$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v70$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v71$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    v71$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    $$temp.i$1[BV32_MUL($i.i.0, 4)] := v68$1;
    $$temp.i$2[BV32_MUL($i.i.0, 4)] := v68$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$1, 64, 32), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$1, 64, 32), 24), BV32_LSHR(BV_EXTRACT($a.i.1$1, 32, 0), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$1, 64, 32), 13), -276873347)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$1, 64, 32), 24), BV32_SHL(BV_EXTRACT($r1.i.1$1, 96, 64), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$1, 64, 32), 15));
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$2, 64, 32), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$2, 64, 32), 24), BV32_LSHR(BV_EXTRACT($a.i.1$2, 32, 0), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$2, 64, 32), 13), -276873347)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$2, 64, 32), 24), BV32_SHL(BV_EXTRACT($r1.i.1$2, 96, 64), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$2, 64, 32), 15));
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v70$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v70$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v71$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v71$2;
    v72$1 := $$temp.i$1[BV32_MUL($i.i.0, 4)];
    v72$2 := $$temp.i$2[BV32_MUL($i.i.0, 4)];
    v73$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v73$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v74$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v74$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v75$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    v75$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    $$temp.i$1[BV32_MUL($i.i.0, 4)] := v72$1;
    $$temp.i$2[BV32_MUL($i.i.0, 4)] := v72$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v73$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v73$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$1, 96, 64), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$1, 96, 64), 24), BV32_LSHR(BV_EXTRACT($a.i.1$1, 64, 32), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$1, 96, 64), 13), -8946819)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$1, 96, 64), 24), BV32_SHL(BV_EXTRACT($r1.i.1$1, 128, 96), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$1, 96, 64), 15));
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$2, 96, 64), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$2, 96, 64), 24), BV32_LSHR(BV_EXTRACT($a.i.1$2, 64, 32), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$2, 96, 64), 13), -8946819)), BV32_OR(BV32_LSHR(BV_EXTRACT($r1.i.1$2, 96, 64), 24), BV32_SHL(BV_EXTRACT($r1.i.1$2, 128, 96), 8))), BV32_SHL(BV_EXTRACT($r2.i.1$2, 96, 64), 15));
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v75$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := v75$2;
    v76$1 := $$temp.i$1[BV32_MUL($i.i.0, 4)];
    v76$2 := $$temp.i$2[BV32_MUL($i.i.0, 4)];
    v77$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v77$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)];
    v78$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v78$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)];
    v79$1 := $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    v79$2 := $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)];
    $$temp.i$1[BV32_MUL($i.i.0, 4)] := v76$1;
    $$temp.i$2[BV32_MUL($i.i.0, 4)] := v76$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v77$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 1)] := v77$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v78$1;
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 2)] := v78$2;
    $$temp.i$1[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$1, 128, 96), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$1, 128, 96), 24), BV32_LSHR(BV_EXTRACT($a.i.1$1, 96, 64), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$1, 128, 96), 13), 2146958127)), BV32_LSHR(BV_EXTRACT($r1.i.1$1, 128, 96), 24)), BV32_SHL(BV_EXTRACT($r2.i.1$1, 128, 96), 15));
    $$temp.i$2[BV32_ADD(BV32_MUL($i.i.0, 4), 3)] := BV32_XOR(BV32_XOR(BV32_XOR(BV32_XOR(BV_EXTRACT($a.i.1$2, 128, 96), BV32_OR(BV32_SHL(BV_EXTRACT($a.i.1$2, 128, 96), 24), BV32_LSHR(BV_EXTRACT($a.i.1$2, 96, 64), 8))), BV32_AND(BV32_LSHR(BV_EXTRACT($b.i.1$2, 128, 96), 13), 2146958127)), BV32_LSHR(BV_EXTRACT($r1.i.1$2, 128, 96), 24)), BV32_SHL(BV_EXTRACT($r2.i.1$2, 128, 96), 15));
    $r1.i.0$1, $r2.i.0$1, $a.i.0$1, $b.i.0$1, $i.i.0 := $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1, BV32_ADD($i.i.0, 1);
    $r1.i.0$2, $r2.i.0$2, $a.i.0$2, $b.i.0$2 := $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;

  $casebb2:
    assume {:partition} $i.i.0 == 3;
    v60$1 := $$temp.i$1[8];
    v60$2 := $$temp.i$2[8];
    v61$1 := $$temp.i$1[9];
    v61$2 := $$temp.i$2[9];
    v62$1 := $$temp.i$1[10];
    v62$2 := $$temp.i$2[10];
    v63$1 := $$temp.i$1[11];
    v63$2 := $$temp.i$2[11];
    $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1 := $r2.i.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$1, v62$1), v61$1), v60$1), v49$1, $nextRand.0$1;
    $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2 := $r2.i.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v63$2, v62$2), v61$2), v60$2), v49$2, $nextRand.0$2;
    goto $10;

  $casebb1:
    assume {:partition} $i.i.0 == 2;
    v56$1 := $$temp.i$1[4];
    v56$2 := $$temp.i$2[4];
    v57$1 := $$temp.i$1[5];
    v57$2 := $$temp.i$2[5];
    v58$1 := $$temp.i$1[6];
    v58$2 := $$temp.i$2[6];
    v59$1 := $$temp.i$1[7];
    v59$2 := $$temp.i$2[7];
    $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1 := $r2.i.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v59$1, v58$1), v57$1), v56$1), v44$1, v50$1;
    $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2 := $r2.i.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v59$2, v58$2), v57$2), v56$2), v44$2, v50$2;
    goto $10;

  $casebb0:
    assume {:partition} $i.i.0 == 1;
    v52$1 := $$temp.i$1[0];
    v52$2 := $$temp.i$2[0];
    v53$1 := $$temp.i$1[1];
    v53$2 := $$temp.i$2[1];
    v54$1 := $$temp.i$1[2];
    v54$2 := $$temp.i$2[2];
    v55$1 := $$temp.i$1[3];
    v55$2 := $$temp.i$2[3];
    $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1 := $r2.i.0$1, BV_CONCAT(BV_CONCAT(BV_CONCAT(v55$1, v54$1), v53$1), v52$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$1, v38$1), v37$1), v36$1), v49$1;
    $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2 := $r2.i.0$2, BV_CONCAT(BV_CONCAT(BV_CONCAT(v55$2, v54$2), v53$2), v52$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v39$2, v38$2), v37$2), v36$2), v49$2;
    goto $10;

  $casebb:
    assume {:partition} $i.i.0 == 0;
    $r1.i.1$1, $r2.i.1$1, $a.i.1$1, $b.i.1$1 := v49$1, v50$1, $nextRand.0$1, v44$1;
    $r1.i.1$2, $r2.i.1$2, $a.i.1$2, $b.i.1$2 := v49$2, v50$2, $nextRand.0$2, v44$2;
    goto $10;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 512 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$attrib$0$1: int;

var $$attrib$0$2: int;

var $$attrib$1$1: int;

var $$attrib$1$2: int;

var $$attrib$2$1: int;

var $$attrib$2$2: int;

var $$attrib$3$1: int;

var $$attrib$3$2: int;

var $$attrib$4$1: int;

var $$attrib$4$2: int;

var $$attrib$5$1: int;

var $$attrib$5$2: int;

var $$attrib$6$1: int;

var $$attrib$6$2: int;

var $$attrib$7$1: int;

var $$attrib$7$2: int;

var $$attrib$8$1: int;

var $$attrib$8$2: int;

var $$attrib$9$1: int;

var $$attrib$9$2: int;

var $$attrib$10$1: int;

var $$attrib$10$2: int;

var $$attrib$11$1: int;

var $$attrib$11$2: int;

var $$attrib$12$1: int;

var $$attrib$12$2: int;

var $$attrib$13$1: int;

var $$attrib$13$2: int;

var $$attrib$14$1: int;

var $$attrib$14$2: int;

var $$attrib$15$1: int;

var $$attrib$15$2: int;

var $$attrib$16$1: int;

var $$attrib$16$2: int;

var $$attrib$17$1: int;

var $$attrib$17$2: int;

var $$attrib$18$1: int;

var $$attrib$18$2: int;

var $$attrib$19$1: int;

var $$attrib$19$2: int;

var $$attrib$20$1: int;

var $$attrib$20$2: int;

var $$attrib$21$1: int;

var $$attrib$21$2: int;

var $$attrib$22$1: int;

var $$attrib$22$2: int;

var $$attrib$23$1: int;

var $$attrib$23$2: int;

var $$attrib$24$1: int;

var $$attrib$24$2: int;

var $$attrib$25$1: int;

var $$attrib$25$2: int;

var $$attrib$26$1: int;

var $$attrib$26$2: int;

var $$attrib$27$1: int;

var $$attrib$27$2: int;

const _WATCHED_VALUE_$$randArray: int;

procedure {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_READ_$$randArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _READ_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_READ_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$randArray);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$randArray: bool;

procedure {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$randArray, _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _LOG_WRITE_$$randArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then true else _WRITE_HAS_OCCURRED_$$randArray);
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



procedure _CHECK_WRITE_$$randArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$randArray != _value);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$randArray;



implementation {:inline 1} _LOG_ATOMIC_$$randArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$randArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$randArray);
    return;
}



procedure _CHECK_ATOMIC_$$randArray(_P: bool, _offset: int);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "randArray"} {:array "$$randArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$randArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$randArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$randArray := (if _P && _WRITE_HAS_OCCURRED_$$randArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$randArray);
    return;
}



const _WATCHED_VALUE_$$priceSamples: int;

procedure {:inline 1} _LOG_READ_$$priceSamples(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$priceSamples;



implementation {:inline 1} _LOG_READ_$$priceSamples(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$priceSamples := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$priceSamples == _value then true else _READ_HAS_OCCURRED_$$priceSamples);
    return;
}



procedure _CHECK_READ_$$priceSamples(_P: bool, _offset: int, _value: int);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$priceSamples);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$priceSamples: bool;

procedure {:inline 1} _LOG_WRITE_$$priceSamples(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$priceSamples, _WRITE_READ_BENIGN_FLAG_$$priceSamples;



implementation {:inline 1} _LOG_WRITE_$$priceSamples(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$priceSamples := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$priceSamples == _value then true else _WRITE_HAS_OCCURRED_$$priceSamples);
    _WRITE_READ_BENIGN_FLAG_$$priceSamples := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$priceSamples == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$priceSamples);
    return;
}



procedure _CHECK_WRITE_$$priceSamples(_P: bool, _offset: int, _value: int);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$priceSamples != _value);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$priceSamples != _value);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$priceSamples(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$priceSamples;



implementation {:inline 1} _LOG_ATOMIC_$$priceSamples(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$priceSamples := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$priceSamples);
    return;
}



procedure _CHECK_ATOMIC_$$priceSamples(_P: bool, _offset: int);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset);
  requires {:source_name "priceSamples"} {:array "$$priceSamples"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$priceSamples;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$priceSamples(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$priceSamples := (if _P && _WRITE_HAS_OCCURRED_$$priceSamples && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$priceSamples);
    return;
}



const _WATCHED_VALUE_$$pathDeriv: int;

procedure {:inline 1} _LOG_READ_$$pathDeriv(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$pathDeriv;



implementation {:inline 1} _LOG_READ_$$pathDeriv(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$pathDeriv := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDeriv == _value then true else _READ_HAS_OCCURRED_$$pathDeriv);
    return;
}



procedure _CHECK_READ_$$pathDeriv(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$pathDeriv);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$pathDeriv: bool;

procedure {:inline 1} _LOG_WRITE_$$pathDeriv(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$pathDeriv, _WRITE_READ_BENIGN_FLAG_$$pathDeriv;



implementation {:inline 1} _LOG_WRITE_$$pathDeriv(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$pathDeriv := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDeriv == _value then true else _WRITE_HAS_OCCURRED_$$pathDeriv);
    _WRITE_READ_BENIGN_FLAG_$$pathDeriv := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDeriv == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$pathDeriv);
    return;
}



procedure _CHECK_WRITE_$$pathDeriv(_P: bool, _offset: int, _value: int);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDeriv != _value);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$pathDeriv != _value);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$pathDeriv(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$pathDeriv;



implementation {:inline 1} _LOG_ATOMIC_$$pathDeriv(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$pathDeriv := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$pathDeriv);
    return;
}



procedure _CHECK_ATOMIC_$$pathDeriv(_P: bool, _offset: int);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset);
  requires {:source_name "pathDeriv"} {:array "$$pathDeriv"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$pathDeriv;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$pathDeriv(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$pathDeriv := (if _P && _WRITE_HAS_OCCURRED_$$pathDeriv && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$pathDeriv);
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
