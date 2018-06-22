type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP32(y: int, _P$1: bool, x$1: [int]int, _P$2: bool, x$2: [int]int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);
  requires _P$1 ==> y == 0;
  requires _P$2 ==> y == 0;



var {:source_name "dst"} {:global} $$dst: [int]int;

axiom {:array_info "$$dst"} {:global} {:elem_width 8} {:source_name "dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst: bool;

axiom {:array_info "$$colors"} {:elem_width 8} {:source_name "colors"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$color"} {:elem_width 8} {:source_name "color"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$blockCounter"} {:global} {:elem_width 32} {:source_name "blockCounter"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockCounter: bool;

var {:source_name "blockIndex"} {:group_shared} $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: [int]int;

axiom {:array_info "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:group_shared} {:elem_width 32} {:source_name "blockIndex"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: bool;

var {:source_name "blockX"} {:group_shared} $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: [int]int;

axiom {:array_info "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:group_shared} {:elem_width 32} {:source_name "blockX"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: bool;

var {:source_name "blockY"} {:group_shared} $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: [int]int;

axiom {:array_info "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:group_shared} {:elem_width 32} {:source_name "blockY"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: bool;

const _WATCHED_OFFSET: int;

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

function BV_EXTRACT(int, int, int) : int;

function FADD32(int, int) : int;

function FLT32(int, int) : bool;

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

function {:inline true} BV32_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
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

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV8_ZEXT32(x: int) : int
{
  x
}

procedure {:source_name "MandelbrotDS0"} {:kernel} $_Z13MandelbrotDS0P6uchar4iiifffffffS_iiiib($imageW: int, $imageH: int, $crunch: int, $xOff0: int, $xOff1: int, $yOff0: int, $yOff1: int, $xJP: int, $yJP: int, $scale: int, $colors.coerce0: int, $colors.coerce1: int, $colors.coerce2: int, $colors.coerce3: int, $frame: int, $animationFrame: int, $gridWidth: int, $numBlocks: int, $isJ: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 800 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $imageH == 600 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $gridWidth == 25 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $numBlocks == 475 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
  requires !_READ_HAS_OCCURRED_$$blockCounter && !_WRITE_HAS_OCCURRED_$$blockCounter && !_ATOMIC_HAS_OCCURRED_$$blockCounter;
  requires !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
  requires !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
  requires !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
  requires BV32_SGT(group_size_x, 0);
  requires BV32_SGT(num_groups_x, 0);
  requires BV32_SGE(group_id_x, 0);
  requires BV32_SLT(group_id_x, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0);
  requires BV32_SGE(local_id_x$2, 0);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0);
  requires BV32_SGT(num_groups_y, 0);
  requires BV32_SGE(group_id_y, 0);
  requires BV32_SLT(group_id_y, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0);
  requires BV32_SGE(local_id_y$2, 0);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0);
  requires BV32_SGT(num_groups_z, 0);
  requires BV32_SGE(group_id_z, 0);
  requires BV32_SLT(group_id_z, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0);
  requires BV32_SGE(local_id_z$2, 0);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires true ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  requires true;
  modifies $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, $$dst, _TRACKING, _ATOMIC_HAS_OCCURRED_$$blockCounter, _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, _READ_HAS_OCCURRED_$$dst, _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "MandelbrotDS0"} {:kernel} $_Z13MandelbrotDS0P6uchar4iiifffffffS_iiiib($imageW: int, $imageH: int, $crunch: int, $xOff0: int, $xOff1: int, $yOff0: int, $yOff1: int, $xJP: int, $yJP: int, $scale: int, $colors.coerce0: int, $colors.coerce1: int, $colors.coerce2: int, $colors.coerce3: int, $frame: int, $animationFrame: int, $gridWidth: int, $numBlocks: int, $isJ: int)
{
  var $y1.i.0$1: int;
  var $y1.i.0$2: int;
  var $y0.i.0$1: int;
  var $y0.i.0$2: int;
  var $x1.i.0$1: int;
  var $x1.i.0$2: int;
  var $x0.i.0$1: int;
  var $x0.i.0$2: int;
  var $yy1.i.0$1: int;
  var $yy1.i.0$2: int;
  var $yy0.i.0$1: int;
  var $yy0.i.0$2: int;
  var $xx1.i.0$1: int;
  var $xx1.i.0$2: int;
  var $xx0.i.0$1: int;
  var $xx0.i.0$2: int;
  var $xC0.i.0$1: int;
  var $xC0.i.0$2: int;
  var $xC1.i.0$1: int;
  var $xC1.i.0$2: int;
  var $yC0.i.0$1: int;
  var $yC0.i.0$2: int;
  var $yC1.i.0$1: int;
  var $yC1.i.0$2: int;
  var $y1.i.1$1: int;
  var $y1.i.1$2: int;
  var $y0.i.1$1: int;
  var $y0.i.1$2: int;
  var $x1.i.1$1: int;
  var $x1.i.1$2: int;
  var $x0.i.1$1: int;
  var $x0.i.1$2: int;
  var $sum1.i.0$1: int;
  var $sum1.i.0$2: int;
  var $sum0.i.0$1: int;
  var $sum0.i.0$2: int;
  var $yy1.i.1$1: int;
  var $yy1.i.1$2: int;
  var $yy0.i.1$1: int;
  var $yy0.i.1$2: int;
  var $xx1.i.1$1: int;
  var $xx1.i.1$2: int;
  var $xx0.i.1$1: int;
  var $xx0.i.1$2: int;
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v15$1: int;
  var v15$2: int;
  var v14$1: int;
  var v14$2: int;
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
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v2$1: int;
  var v2$2: int;
  var v25$1: bool;
  var v25$2: bool;
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
  var v38$1: int;
  var v38$2: int;
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
  var v55$1: bool;
  var v55$2: bool;
  var v56$1: bool;
  var v56$2: bool;
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
  var v108$1: int;
  var v108$2: int;
  var v109$1: int;
  var v109$2: int;
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
  var v118$1: bool;
  var v118$2: bool;
  var v119$1: bool;
  var v119$2: bool;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;


  $0:
    $$colors$0$1 := $colors.coerce0;
    $$colors$0$2 := $colors.coerce0;
    $$colors$1$1 := $colors.coerce1;
    $$colors$1$2 := $colors.coerce1;
    $$colors$2$1 := $colors.coerce2;
    $$colors$2$2 := $colors.coerce2;
    $$colors$3$1 := $colors.coerce3;
    $$colors$3$2 := $colors.coerce3;
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$1_0;

  __partitioned_block_$1_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b189 ==> _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b188 ==> _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b187 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assert {:tag "noread"} _b186 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b185 ==> _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b184 ==> _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b183 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assert {:tag "noread"} _b182 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b181 ==> _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b180 ==> _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b179 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assert {:tag "noread"} _b178 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b177 ==> _ATOMIC_HAS_OCCURRED_$$blockCounter ==> _WATCHED_OFFSET == 0;
    assert {:tag "noatomic"} _b176 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    assert {:tag "nowrite"} _b175 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assert {:tag "noread"} _b174 ==> !_READ_HAS_OCCURRED_$$dst;
    assert {:tag "predicatedEquality"} _b173 ==> p0$1 && p0$2 ==> v137$1 == v137$2;
    assert {:tag "predicatedEquality"} _b172 ==> p0$1 && p0$2 ==> v136$1 == v136$2;
    assert {:tag "predicatedEquality"} _b171 ==> p0$1 && p0$2 ==> v135$1 == v135$2;
    assert {:tag "predicatedEquality"} _b170 ==> p0$1 && p0$2 ==> v134$1 == v134$2;
    assert {:tag "predicatedEquality"} _b169 ==> p0$1 && p0$2 ==> v133$1 == v133$2;
    assert {:tag "predicatedEquality"} _b168 ==> p0$1 && p0$2 ==> v132$1 == v132$2;
    assert {:tag "predicatedEquality"} _b167 ==> p0$1 && p0$2 ==> v131$1 == v131$2;
    assert {:tag "predicatedEquality"} _b166 ==> p0$1 && p0$2 ==> v130$1 == v130$2;
    assert {:tag "predicatedEquality"} _b165 ==> p0$1 && p0$2 ==> v129$1 == v129$2;
    assert {:tag "predicatedEquality"} _b164 ==> p0$1 && p0$2 ==> v128$1 == v128$2;
    assert {:tag "predicatedEquality"} _b163 ==> p0$1 && p0$2 ==> v127$1 == v127$2;
    assert {:tag "predicatedEquality"} _b162 ==> p0$1 && p0$2 ==> v126$1 == v126$2;
    assert {:tag "predicatedEquality"} _b161 ==> p0$1 && p0$2 ==> v125$1 == v125$2;
    assert {:tag "predicatedEquality"} _b160 ==> p0$1 && p0$2 ==> v124$1 == v124$2;
    assert {:tag "predicatedEquality"} _b159 ==> p0$1 && p0$2 ==> v123$1 == v123$2;
    assert {:tag "predicatedEquality"} _b158 ==> p0$1 && p0$2 ==> v122$1 == v122$2;
    assert {:tag "predicatedEquality"} _b157 ==> p0$1 && p0$2 ==> v121$1 == v121$2;
    assert {:tag "predicatedEquality"} _b156 ==> p0$1 && p0$2 ==> v120$1 == v120$2;
    assert {:tag "predicatedEquality"} _b155 ==> p0$1 && p0$2 ==> v119$1 == v119$2;
    assert {:tag "predicatedEquality"} _b154 ==> p0$1 && p0$2 ==> v118$1 == v118$2;
    assert {:tag "predicatedEquality"} _b153 ==> p0$1 && p0$2 ==> v117$1 == v117$2;
    assert {:tag "predicatedEquality"} _b152 ==> p0$1 && p0$2 ==> v116$1 == v116$2;
    assert {:tag "predicatedEquality"} _b151 ==> p0$1 && p0$2 ==> v115$1 == v115$2;
    assert {:tag "predicatedEquality"} _b150 ==> p0$1 && p0$2 ==> v114$1 == v114$2;
    assert {:tag "predicatedEquality"} _b149 ==> p0$1 && p0$2 ==> v113$1 == v113$2;
    assert {:tag "predicatedEquality"} _b148 ==> p0$1 && p0$2 ==> v112$1 == v112$2;
    assert {:tag "predicatedEquality"} _b147 ==> p0$1 && p0$2 ==> v111$1 == v111$2;
    assert {:tag "predicatedEquality"} _b146 ==> p0$1 && p0$2 ==> v110$1 == v110$2;
    assert {:tag "predicatedEquality"} _b145 ==> p0$1 && p0$2 ==> v107$1 == v107$2;
    assert {:tag "predicatedEquality"} _b144 ==> p0$1 && p0$2 ==> v106$1 == v106$2;
    assert {:tag "predicatedEquality"} _b143 ==> p0$1 && p0$2 ==> v105$1 == v105$2;
    assert {:tag "predicatedEquality"} _b142 ==> p0$1 && p0$2 ==> v104$1 == v104$2;
    assert {:tag "predicatedEquality"} _b141 ==> p0$1 && p0$2 ==> v103$1 == v103$2;
    assert {:tag "predicatedEquality"} _b140 ==> p0$1 && p0$2 ==> v102$1 == v102$2;
    assert {:tag "predicatedEquality"} _b139 ==> p0$1 && p0$2 ==> v101$1 == v101$2;
    assert {:tag "predicatedEquality"} _b138 ==> p0$1 && p0$2 ==> v100$1 == v100$2;
    assert {:tag "predicatedEquality"} _b137 ==> p0$1 && p0$2 ==> v99$1 == v99$2;
    assert {:tag "predicatedEquality"} _b136 ==> p0$1 && p0$2 ==> v98$1 == v98$2;
    assert {:tag "predicatedEquality"} _b135 ==> p0$1 && p0$2 ==> v97$1 == v97$2;
    assert {:tag "predicatedEquality"} _b134 ==> p0$1 && p0$2 ==> v96$1 == v96$2;
    assert {:tag "predicatedEquality"} _b133 ==> p0$1 && p0$2 ==> v95$1 == v95$2;
    assert {:tag "predicatedEquality"} _b132 ==> p0$1 && p0$2 ==> v94$1 == v94$2;
    assert {:tag "predicatedEquality"} _b131 ==> p0$1 && p0$2 ==> v93$1 == v93$2;
    assert {:tag "predicatedEquality"} _b130 ==> p0$1 && p0$2 ==> v92$1 == v92$2;
    assert {:tag "predicatedEquality"} _b129 ==> p0$1 && p0$2 ==> v91$1 == v91$2;
    assert {:tag "predicatedEquality"} _b128 ==> p0$1 && p0$2 ==> v90$1 == v90$2;
    assert {:tag "predicatedEquality"} _b127 ==> p0$1 && p0$2 ==> v89$1 == v89$2;
    assert {:tag "predicatedEquality"} _b126 ==> p0$1 && p0$2 ==> v88$1 == v88$2;
    assert {:tag "predicatedEquality"} _b125 ==> p0$1 && p0$2 ==> v87$1 == v87$2;
    assert {:tag "predicatedEquality"} _b124 ==> p0$1 && p0$2 ==> v86$1 == v86$2;
    assert {:tag "predicatedEquality"} _b123 ==> p0$1 && p0$2 ==> v85$1 == v85$2;
    assert {:tag "predicatedEquality"} _b122 ==> p0$1 && p0$2 ==> v84$1 == v84$2;
    assert {:tag "predicatedEquality"} _b121 ==> p0$1 && p0$2 ==> v83$1 == v83$2;
    assert {:tag "predicatedEquality"} _b120 ==> p0$1 && p0$2 ==> v109$1 == v109$2;
    assert {:tag "predicatedEquality"} _b119 ==> p0$1 && p0$2 ==> v108$1 == v108$2;
    assert {:tag "predicatedEquality"} _b118 ==> p0$1 && p0$2 ==> v82$1 == v82$2;
    assert {:tag "predicatedEquality"} _b117 ==> p0$1 && p0$2 ==> v81$1 == v81$2;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> v80$1 == v80$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> v79$1 == v79$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> v78$1 == v78$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> v77$1 == v77$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> v76$1 == v76$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> v75$1 == v75$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> v74$1 == v74$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> v73$1 == v73$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v72$1 == v72$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v71$1 == v71$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v70$1 == v70$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v69$1 == v69$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v68$1 == v68$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v67$1 == v67$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v66$1 == v66$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v65$1 == v65$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v64$1 == v64$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v63$1 == v63$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v62$1 == v62$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> v61$1 == v61$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v60$1 == v60$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v58$1 == v58$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v57$1 == v57$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v56$1 == v56$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v55$1 == v55$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v54$1 == v54$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v1$1 == v1$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v0$1 == v0$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b40 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b39 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b38 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b37 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b36 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b35 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b34 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b33 ==> p0$1 && p0$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b32 ==> p0$1 && p0$2 ==> $xx0.i.1$1 == $xx0.i.1$2;
    assert {:tag "predicatedEquality"} _b31 ==> p0$1 && p0$2 ==> $xx1.i.1$1 == $xx1.i.1$2;
    assert {:tag "predicatedEquality"} _b30 ==> p0$1 && p0$2 ==> $yy0.i.1$1 == $yy0.i.1$2;
    assert {:tag "predicatedEquality"} _b29 ==> p0$1 && p0$2 ==> $yy1.i.1$1 == $yy1.i.1$2;
    assert {:tag "predicatedEquality"} _b28 ==> p0$1 && p0$2 ==> $sum0.i.0$1 == $sum0.i.0$2;
    assert {:tag "predicatedEquality"} _b27 ==> p0$1 && p0$2 ==> $sum1.i.0$1 == $sum1.i.0$2;
    assert {:tag "predicatedEquality"} _b26 ==> p0$1 && p0$2 ==> $x0.i.1$1 == $x0.i.1$2;
    assert {:tag "predicatedEquality"} _b25 ==> p0$1 && p0$2 ==> $x1.i.1$1 == $x1.i.1$2;
    assert {:tag "predicatedEquality"} _b24 ==> p0$1 && p0$2 ==> $y0.i.1$1 == $y0.i.1$2;
    assert {:tag "predicatedEquality"} _b23 ==> p0$1 && p0$2 ==> $y1.i.1$1 == $y1.i.1$2;
    assert {:tag "predicatedEquality"} _b22 ==> p0$1 && p0$2 ==> $yC1.i.0$1 == $yC1.i.0$2;
    assert {:tag "predicatedEquality"} _b21 ==> p0$1 && p0$2 ==> $yC0.i.0$1 == $yC0.i.0$2;
    assert {:tag "predicatedEquality"} _b20 ==> p0$1 && p0$2 ==> $xC1.i.0$1 == $xC1.i.0$2;
    assert {:tag "predicatedEquality"} _b19 ==> p0$1 && p0$2 ==> $xC0.i.0$1 == $xC0.i.0$2;
    assert {:tag "predicatedEquality"} _b18 ==> p0$1 && p0$2 ==> $xx0.i.0$1 == $xx0.i.0$2;
    assert {:tag "predicatedEquality"} _b17 ==> p0$1 && p0$2 ==> $xx1.i.0$1 == $xx1.i.0$2;
    assert {:tag "predicatedEquality"} _b16 ==> p0$1 && p0$2 ==> $yy0.i.0$1 == $yy0.i.0$2;
    assert {:tag "predicatedEquality"} _b15 ==> p0$1 && p0$2 ==> $yy1.i.0$1 == $yy1.i.0$2;
    assert {:tag "predicatedEquality"} _b14 ==> p0$1 && p0$2 ==> $x0.i.0$1 == $x0.i.0$2;
    assert {:tag "predicatedEquality"} _b13 ==> p0$1 && p0$2 ==> $x1.i.0$1 == $x1.i.0$2;
    assert {:tag "predicatedEquality"} _b12 ==> p0$1 && p0$2 ==> $y0.i.0$1 == $y0.i.0$2;
    assert {:tag "predicatedEquality"} _b11 ==> p0$1 && p0$2 ==> $y1.i.0$1 == $y1.i.0$2;
    assert {:tag "loopPredicateEquality"} _b10 ==> true ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b9 ==> p0$1 == p0$2;
    assert {:tag "pow2NotZero"} _b8 ==> v131$2 != 0;
    assert {:tag "pow2"} _b7 ==> v131$2 == 0 || BV32_AND(v131$2, BV32_SUB(v131$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b6 ==> v131$1 != 0;
    assert {:tag "pow2"} _b5 ==> v131$1 == 0 || BV32_AND(v131$1, BV32_SUB(v131$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b4 ==> v130$2 != 0;
    assert {:tag "pow2"} _b3 ==> v130$2 == 0 || BV32_AND(v130$2, BV32_SUB(v130$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b2 ==> v130$1 != 0;
    assert {:tag "pow2"} _b1 ==> v130$1 == 0 || BV32_AND(v130$1, BV32_SUB(v130$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b0 ==> !BV32_UGE(v5$1, $numBlocks) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b0 ==> !BV32_UGE(v5$2, $numBlocks) ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    goto __partitioned_block_$1_1;

  __partitioned_block_$1_1:
    call {:sourceloc_num 6} $bugle_barrier_duplicated_0(-1, -1, p0$1, p0$2);
    v0$1 := (if p0$1 then local_id_x$1 == 0 else v0$1);
    v0$2 := (if p0$2 then local_id_x$2 == 0 else v0$2);
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
    p22$1 := false;
    p22$2 := false;
    p2$1 := (if p0$1 && v0$1 then v0$1 else p2$1);
    p2$2 := (if p0$2 && v0$2 then v0$2 else p2$2);
    v1$1 := (if p2$1 then local_id_y$1 == 0 else v1$1);
    v1$2 := (if p2$2 then local_id_y$2 == 0 else v1$2);
    p4$1 := (if p2$1 && v1$1 then v1$1 else p4$1);
    p4$2 := (if p2$2 && v1$2 then v1$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_ATOMIC_$$blockCounter(p4$1, 0);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 9} _CHECK_ATOMIC_$$blockCounter(p4$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$blockCounter"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p4$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p4$2 then _HAVOC_int$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$1, 0, v2$1, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$2, 0, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} true;
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] := (if p4$1 then v2$1 else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] := (if p4$2 then v2$2 else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$1, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$2, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} true;
    v3$1 := (if p4$1 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v3$1);
    v3$2 := (if p4$2 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v3$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(p4$1, 0, BV32_UREM(v3$1, $gridWidth), $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(p4$2, 0, BV32_UREM(v3$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} true;
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0] := (if p4$1 then BV32_UREM(v3$1, $gridWidth) else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0]);
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0] := (if p4$2 then BV32_UREM(v3$2, $gridWidth) else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$1, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p4$2, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} true;
    v4$1 := (if p4$1 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v4$1);
    v4$2 := (if p4$2 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v4$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(p4$1, 0, BV32_UDIV(v4$1, $gridWidth), $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(p4$2, 0, BV32_UDIV(v4$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} true;
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0] := (if p4$1 then BV32_UDIV(v4$1, $gridWidth) else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0]);
    $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0] := (if p4$2 then BV32_UDIV(v4$2, $gridWidth) else $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0]);
    goto __partitioned_block_$1_2;

  __partitioned_block_$1_2:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_1(-1, -1, p0$1, p0$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p0$1, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(p0$2, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} true;
    v5$1 := (if p0$1 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v5$1);
    v5$2 := (if p0$2 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex[0] else v5$2);
    v6$1 := (if p0$1 then BV32_UGE(v5$1, $numBlocks) else v6$1);
    v6$2 := (if p0$2 then BV32_UGE(v5$2, $numBlocks) else v6$2);
    p0$1 := (if p0$1 && v6$1 then !v6$1 else p0$1);
    p0$2 := (if p0$2 && v6$2 then !v6$2 else p0$2);
    p5$1 := (if p0$1 && !v6$1 then !v6$1 else p5$1);
    p5$2 := (if p0$2 && !v6$2 then !v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(p5$1, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(p5$2, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} true;
    v7$1 := (if p5$1 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0] else v7$1);
    v7$2 := (if p5$2 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX[0] else v7$2);
    v8$1 := (if p5$1 then BV32_ADD(BV32_MUL(group_size_x, v7$1), local_id_x$1) else v8$1);
    v8$2 := (if p5$2 then BV32_ADD(BV32_MUL(group_size_x, v7$2), local_id_x$2) else v8$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(p5$1, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(p5$2, 0, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} true;
    v9$1 := (if p5$1 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0] else v9$1);
    v9$2 := (if p5$2 then $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY[0] else v9$2);
    v10$1 := (if p5$1 then BV32_ADD(BV32_MUL(group_size_y, v9$1), local_id_y$1) else v10$1);
    v10$2 := (if p5$2 then BV32_ADD(BV32_MUL(group_size_y, v9$2), local_id_y$2) else v10$2);
    v11$1 := (if p5$1 then BV32_SLT(v8$1, $imageW) else v11$1);
    v11$2 := (if p5$2 then BV32_SLT(v8$2, $imageW) else v11$2);
    p7$1 := (if p5$1 && v11$1 then v11$1 else p7$1);
    p7$2 := (if p5$2 && v11$2 then v11$2 else p7$2);
    v12$1 := (if p7$1 then BV32_SLT(v10$1, $imageH) else v12$1);
    v12$2 := (if p7$2 then BV32_SLT(v10$2, $imageH) else v12$2);
    p9$1 := (if p7$1 && v12$1 then v12$1 else p9$1);
    p9$2 := (if p7$2 && v12$2 then v12$2 else p9$2);
    v13$1 := (if p9$1 then FMUL32(SI32_TO_FP32(v8$1), $scale) else v13$1);
    v13$2 := (if p9$2 then FMUL32(SI32_TO_FP32(v8$2), $scale) else v13$2);
    v14$1 := (if p9$1 then FMUL32(SI32_TO_FP32(v10$1), $scale) else v14$1);
    v14$2 := (if p9$2 then FMUL32(SI32_TO_FP32(v10$2), $scale) else v14$2);
    v15$1 := (if p9$1 then FADD32(v13$1, $xOff0) else v15$1);
    v15$2 := (if p9$2 then FADD32(v13$2, $xOff0) else v15$2);
    v16$1 := (if p9$1 then FSUB32(v15$1, v13$1) else v16$1);
    v16$2 := (if p9$2 then FSUB32(v15$2, v13$2) else v16$2);
    v17$1 := (if p9$1 then FADD32(FADD32(FADD32(FSUB32($xOff0, v16$1), FSUB32(v13$1, FSUB32(v15$1, v16$1))), 0), $xOff1) else v17$1);
    v17$2 := (if p9$2 then FADD32(FADD32(FADD32(FSUB32($xOff0, v16$2), FSUB32(v13$2, FSUB32(v15$2, v16$2))), 0), $xOff1) else v17$2);
    v18$1 := (if p9$1 then FADD32(v15$1, v17$1) else v18$1);
    v18$2 := (if p9$2 then FADD32(v15$2, v17$2) else v18$2);
    v19$1 := (if p9$1 then FSUB32(v17$1, FSUB32(v18$1, v15$1)) else v19$1);
    v19$2 := (if p9$2 then FSUB32(v17$2, FSUB32(v18$2, v15$2)) else v19$2);
    v20$1 := (if p9$1 then FADD32(v14$1, $yOff0) else v20$1);
    v20$2 := (if p9$2 then FADD32(v14$2, $yOff0) else v20$2);
    v21$1 := (if p9$1 then FSUB32(v20$1, v14$1) else v21$1);
    v21$2 := (if p9$2 then FSUB32(v20$2, v14$2) else v21$2);
    v22$1 := (if p9$1 then FADD32(FADD32(FADD32(FSUB32($yOff0, v21$1), FSUB32(v14$1, FSUB32(v20$1, v21$1))), 0), $yOff1) else v22$1);
    v22$2 := (if p9$2 then FADD32(FADD32(FADD32(FSUB32($yOff0, v21$2), FSUB32(v14$2, FSUB32(v20$2, v21$2))), 0), $yOff1) else v22$2);
    v23$1 := (if p9$1 then FADD32(v20$1, v22$1) else v23$1);
    v23$2 := (if p9$2 then FADD32(v20$2, v22$2) else v23$2);
    v24$1 := (if p9$1 then FSUB32(v22$1, FSUB32(v23$1, v20$1)) else v24$1);
    v24$2 := (if p9$2 then FSUB32(v22$2, FSUB32(v23$2, v20$2)) else v24$2);
    v25$1 := (if p9$1 then $isJ == 1 else v25$1);
    v25$2 := (if p9$2 then $isJ == 1 else v25$2);
    p11$1 := (if p9$1 && v25$1 then v25$1 else p11$1);
    p11$2 := (if p9$2 && v25$2 then v25$2 else p11$2);
    p10$1 := (if p9$1 && !v25$1 then !v25$1 else p10$1);
    p10$2 := (if p9$2 && !v25$2 then !v25$2 else p10$2);
    $y1.i.0$1, $y0.i.0$1, $x1.i.0$1, $x0.i.0$1, $yy1.i.0$1, $yy0.i.0$1, $xx1.i.0$1, $xx0.i.0$1, $xC0.i.0$1, $xC1.i.0$1, $yC0.i.0$1, $yC1.i.0$1 := (if p10$1 then 0 else $y1.i.0$1), (if p10$1 then 0 else $y0.i.0$1), (if p10$1 then 0 else $x1.i.0$1), (if p10$1 then 0 else $x0.i.0$1), (if p10$1 then 0 else $yy1.i.0$1), (if p10$1 then 0 else $yy0.i.0$1), (if p10$1 then 0 else $xx1.i.0$1), (if p10$1 then 0 else $xx0.i.0$1), (if p10$1 then v18$1 else $xC0.i.0$1), (if p10$1 then v19$1 else $xC1.i.0$1), (if p10$1 then v23$1 else $yC0.i.0$1), (if p10$1 then v24$1 else $yC1.i.0$1);
    $y1.i.0$2, $y0.i.0$2, $x1.i.0$2, $x0.i.0$2, $yy1.i.0$2, $yy0.i.0$2, $xx1.i.0$2, $xx0.i.0$2, $xC0.i.0$2, $xC1.i.0$2, $yC0.i.0$2, $yC1.i.0$2 := (if p10$2 then 0 else $y1.i.0$2), (if p10$2 then 0 else $y0.i.0$2), (if p10$2 then 0 else $x1.i.0$2), (if p10$2 then 0 else $x0.i.0$2), (if p10$2 then 0 else $yy1.i.0$2), (if p10$2 then 0 else $yy0.i.0$2), (if p10$2 then 0 else $xx1.i.0$2), (if p10$2 then 0 else $xx0.i.0$2), (if p10$2 then v18$2 else $xC0.i.0$2), (if p10$2 then v19$2 else $xC1.i.0$2), (if p10$2 then v23$2 else $yC0.i.0$2), (if p10$2 then v24$2 else $yC1.i.0$2);
    v26$1 := (if p11$1 then FMUL32(v23$1, 1174406144) else v26$1);
    v26$2 := (if p11$2 then FMUL32(v23$2, 1174406144) else v26$2);
    v27$1 := (if p11$1 then FMUL32(v23$1, 1174406144) else v27$1);
    v27$2 := (if p11$2 then FMUL32(v23$2, 1174406144) else v27$2);
    v28$1 := (if p11$1 then FSUB32(v26$1, FSUB32(v26$1, v23$1)) else v28$1);
    v28$2 := (if p11$2 then FSUB32(v26$2, FSUB32(v26$2, v23$2)) else v28$2);
    v29$1 := (if p11$1 then FSUB32(v27$1, FSUB32(v27$1, v23$1)) else v29$1);
    v29$2 := (if p11$2 then FSUB32(v27$2, FSUB32(v27$2, v23$2)) else v29$2);
    v30$1 := (if p11$1 then FSUB32(v23$1, v28$1) else v30$1);
    v30$2 := (if p11$2 then FSUB32(v23$2, v28$2) else v30$2);
    v31$1 := (if p11$1 then FSUB32(v23$1, v29$1) else v31$1);
    v31$2 := (if p11$2 then FSUB32(v23$2, v29$2) else v31$2);
    v32$1 := (if p11$1 then FMUL32(v23$1, v23$1) else v32$1);
    v32$2 := (if p11$2 then FMUL32(v23$2, v23$2) else v32$2);
    v33$1 := (if p11$1 then FADD32(FMUL32(v23$1, v24$1), FMUL32(v24$1, v23$1)) else v33$1);
    v33$2 := (if p11$2 then FADD32(FMUL32(v23$2, v24$2), FMUL32(v24$2, v23$2)) else v33$2);
    v34$1 := (if p11$1 then FADD32(v32$1, v33$1) else v34$1);
    v34$2 := (if p11$2 then FADD32(v32$2, v33$2) else v34$2);
    v35$1 := (if p11$1 then FSUB32(v34$1, v32$1) else v35$1);
    v35$2 := (if p11$2 then FSUB32(v34$2, v32$2) else v35$2);
    v36$1 := (if p11$1 then FADD32(FADD32(FADD32(FSUB32(v33$1, v35$1), FSUB32(v32$1, FSUB32(v34$1, v35$1))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v28$1, v29$1), v32$1), FMUL32(v28$1, v31$1)), FMUL32(v30$1, v29$1)), FMUL32(v30$1, v31$1))), FMUL32(v24$1, v24$1)) else v36$1);
    v36$2 := (if p11$2 then FADD32(FADD32(FADD32(FSUB32(v33$2, v35$2), FSUB32(v32$2, FSUB32(v34$2, v35$2))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v28$2, v29$2), v32$2), FMUL32(v28$2, v31$2)), FMUL32(v30$2, v29$2)), FMUL32(v30$2, v31$2))), FMUL32(v24$2, v24$2)) else v36$2);
    v37$1 := (if p11$1 then FADD32(v34$1, v36$1) else v37$1);
    v37$2 := (if p11$2 then FADD32(v34$2, v36$2) else v37$2);
    v38$1 := (if p11$1 then FMUL32(v18$1, 1174406144) else v38$1);
    v38$2 := (if p11$2 then FMUL32(v18$2, 1174406144) else v38$2);
    v39$1 := (if p11$1 then FMUL32(v18$1, 1174406144) else v39$1);
    v39$2 := (if p11$2 then FMUL32(v18$2, 1174406144) else v39$2);
    v40$1 := (if p11$1 then FSUB32(v38$1, FSUB32(v38$1, v18$1)) else v40$1);
    v40$2 := (if p11$2 then FSUB32(v38$2, FSUB32(v38$2, v18$2)) else v40$2);
    v41$1 := (if p11$1 then FSUB32(v39$1, FSUB32(v39$1, v18$1)) else v41$1);
    v41$2 := (if p11$2 then FSUB32(v39$2, FSUB32(v39$2, v18$2)) else v41$2);
    v42$1 := (if p11$1 then FSUB32(v18$1, v40$1) else v42$1);
    v42$2 := (if p11$2 then FSUB32(v18$2, v40$2) else v42$2);
    v43$1 := (if p11$1 then FSUB32(v18$1, v41$1) else v43$1);
    v43$2 := (if p11$2 then FSUB32(v18$2, v41$2) else v43$2);
    v44$1 := (if p11$1 then FMUL32(v18$1, v18$1) else v44$1);
    v44$2 := (if p11$2 then FMUL32(v18$2, v18$2) else v44$2);
    v45$1 := (if p11$1 then FADD32(FMUL32(v18$1, v19$1), FMUL32(v19$1, v18$1)) else v45$1);
    v45$2 := (if p11$2 then FADD32(FMUL32(v18$2, v19$2), FMUL32(v19$2, v18$2)) else v45$2);
    v46$1 := (if p11$1 then FADD32(v44$1, v45$1) else v46$1);
    v46$2 := (if p11$2 then FADD32(v44$2, v45$2) else v46$2);
    v47$1 := (if p11$1 then FSUB32(v46$1, v44$1) else v47$1);
    v47$2 := (if p11$2 then FSUB32(v46$2, v44$2) else v47$2);
    v48$1 := (if p11$1 then FADD32(FADD32(FADD32(FSUB32(v45$1, v47$1), FSUB32(v44$1, FSUB32(v46$1, v47$1))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v40$1, v41$1), v44$1), FMUL32(v40$1, v43$1)), FMUL32(v42$1, v41$1)), FMUL32(v42$1, v43$1))), FMUL32(v19$1, v19$1)) else v48$1);
    v48$2 := (if p11$2 then FADD32(FADD32(FADD32(FSUB32(v45$2, v47$2), FSUB32(v44$2, FSUB32(v46$2, v47$2))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v40$2, v41$2), v44$2), FMUL32(v40$2, v43$2)), FMUL32(v42$2, v41$2)), FMUL32(v42$2, v43$2))), FMUL32(v19$2, v19$2)) else v48$2);
    v49$1 := (if p11$1 then FADD32(v46$1, v48$1) else v49$1);
    v49$2 := (if p11$2 then FADD32(v46$2, v48$2) else v49$2);
    $y1.i.0$1, $y0.i.0$1, $x1.i.0$1, $x0.i.0$1, $yy1.i.0$1, $yy0.i.0$1, $xx1.i.0$1, $xx0.i.0$1, $xC0.i.0$1, $xC1.i.0$1, $yC0.i.0$1, $yC1.i.0$1 := (if p11$1 then v24$1 else $y1.i.0$1), (if p11$1 then v23$1 else $y0.i.0$1), (if p11$1 then v19$1 else $x1.i.0$1), (if p11$1 then v18$1 else $x0.i.0$1), (if p11$1 then FSUB32(v36$1, FSUB32(v37$1, v34$1)) else $yy1.i.0$1), (if p11$1 then v37$1 else $yy0.i.0$1), (if p11$1 then FSUB32(v48$1, FSUB32(v49$1, v46$1)) else $xx1.i.0$1), (if p11$1 then v49$1 else $xx0.i.0$1), (if p11$1 then $xJP else $xC0.i.0$1), (if p11$1 then 0 else $xC1.i.0$1), (if p11$1 then $yJP else $yC0.i.0$1), (if p11$1 then 0 else $yC1.i.0$1);
    $y1.i.0$2, $y0.i.0$2, $x1.i.0$2, $x0.i.0$2, $yy1.i.0$2, $yy0.i.0$2, $xx1.i.0$2, $xx0.i.0$2, $xC0.i.0$2, $xC1.i.0$2, $yC0.i.0$2, $yC1.i.0$2 := (if p11$2 then v24$2 else $y1.i.0$2), (if p11$2 then v23$2 else $y0.i.0$2), (if p11$2 then v19$2 else $x1.i.0$2), (if p11$2 then v18$2 else $x0.i.0$2), (if p11$2 then FSUB32(v36$2, FSUB32(v37$2, v34$2)) else $yy1.i.0$2), (if p11$2 then v37$2 else $yy0.i.0$2), (if p11$2 then FSUB32(v48$2, FSUB32(v49$2, v46$2)) else $xx1.i.0$2), (if p11$2 then v49$2 else $xx0.i.0$2), (if p11$2 then $xJP else $xC0.i.0$2), (if p11$2 then 0 else $xC1.i.0$2), (if p11$2 then $yJP else $yC0.i.0$2), (if p11$2 then 0 else $yC1.i.0$2);
    v50$1 := (if p9$1 then FADD32($xx0.i.0$1, $yy0.i.0$1) else v50$1);
    v50$2 := (if p9$2 then FADD32($xx0.i.0$2, $yy0.i.0$2) else v50$2);
    v51$1 := (if p9$1 then FSUB32(v50$1, $xx0.i.0$1) else v51$1);
    v51$2 := (if p9$2 then FSUB32(v50$2, $xx0.i.0$2) else v51$2);
    v52$1 := (if p9$1 then FADD32(FADD32(FADD32(FSUB32($yy0.i.0$1, v51$1), FSUB32($xx0.i.0$1, FSUB32(v50$1, v51$1))), $xx1.i.0$1), $yy1.i.0$1) else v52$1);
    v52$2 := (if p9$2 then FADD32(FADD32(FADD32(FSUB32($yy0.i.0$2, v51$2), FSUB32($xx0.i.0$2, FSUB32(v50$2, v51$2))), $xx1.i.0$2), $yy1.i.0$2) else v52$2);
    v53$1 := (if p9$1 then FADD32(v50$1, v52$1) else v53$1);
    v53$2 := (if p9$2 then FADD32(v50$2, v52$2) else v53$2);
    $y1.i.1$1, $y0.i.1$1, $x1.i.1$1, $x0.i.1$1, $sum1.i.0$1, $sum0.i.0$1, $yy1.i.1$1, $yy0.i.1$1, $xx1.i.1$1, $xx0.i.1$1, $i.i.0$1 := (if p9$1 then $y1.i.0$1 else $y1.i.1$1), (if p9$1 then $y0.i.0$1 else $y0.i.1$1), (if p9$1 then $x1.i.0$1 else $x1.i.1$1), (if p9$1 then $x0.i.0$1 else $x0.i.1$1), (if p9$1 then FSUB32(v52$1, FSUB32(v53$1, v50$1)) else $sum1.i.0$1), (if p9$1 then v53$1 else $sum0.i.0$1), (if p9$1 then $yy1.i.0$1 else $yy1.i.1$1), (if p9$1 then $yy0.i.0$1 else $yy0.i.1$1), (if p9$1 then $xx1.i.0$1 else $xx1.i.1$1), (if p9$1 then $xx0.i.0$1 else $xx0.i.1$1), (if p9$1 then $crunch else $i.i.0$1);
    $y1.i.1$2, $y0.i.1$2, $x1.i.1$2, $x0.i.1$2, $sum1.i.0$2, $sum0.i.0$2, $yy1.i.1$2, $yy0.i.1$2, $xx1.i.1$2, $xx0.i.1$2, $i.i.0$2 := (if p9$2 then $y1.i.0$2 else $y1.i.1$2), (if p9$2 then $y0.i.0$2 else $y0.i.1$2), (if p9$2 then $x1.i.0$2 else $x1.i.1$2), (if p9$2 then $x0.i.0$2 else $x0.i.1$2), (if p9$2 then FSUB32(v52$2, FSUB32(v53$2, v50$2)) else $sum1.i.0$2), (if p9$2 then v53$2 else $sum0.i.0$2), (if p9$2 then $yy1.i.0$2 else $yy1.i.1$2), (if p9$2 then $yy0.i.0$2 else $yy0.i.1$2), (if p9$2 then $xx1.i.0$2 else $xx1.i.1$2), (if p9$2 then $xx0.i.0$2 else $xx0.i.1$2), (if p9$2 then $crunch else $i.i.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex ==> true;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 27} p12$1 ==> true;
    v54$1 := (if p12$1 then BV32_ADD($i.i.0$1, -1) else v54$1);
    v54$2 := (if p12$2 then BV32_ADD($i.i.0$2, -1) else v54$2);
    v55$1 := (if p12$1 then v54$1 != 0 else v55$1);
    v55$2 := (if p12$2 then v54$2 != 0 else v55$2);
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
    p14$1 := (if p12$1 && v55$1 then v55$1 else p14$1);
    p14$2 := (if p12$2 && v55$2 then v55$2 else p14$2);
    p13$1 := (if p12$1 && !v55$1 then !v55$1 else p13$1);
    p13$2 := (if p12$2 && !v55$2 then !v55$2 else p13$2);
    $0$1 := (if p13$1 then 0 else $0$1);
    $0$2 := (if p13$2 then 0 else $0$2);
    $0$1 := (if p14$1 then (if FLT32(FADD32($sum0.i.0$1, $sum1.i.0$1), 1082130432) then 1 else 0) else $0$1);
    $0$2 := (if p14$2 then (if FLT32(FADD32($sum0.i.0$2, $sum1.i.0$2), 1082130432) then 1 else 0) else $0$2);
    v56$1 := (if p12$1 then $0$1 == 1 else v56$1);
    v56$2 := (if p12$2 then $0$2 == 1 else v56$2);
    p15$1 := (if p12$1 && v56$1 then v56$1 else p15$1);
    p15$2 := (if p12$2 && v56$2 then v56$2 else p15$2);
    p12$1 := (if p12$1 && !v56$1 then v56$1 else p12$1);
    p12$2 := (if p12$2 && !v56$2 then v56$2 else p12$2);
    v57$1 := (if p15$1 then FMUL32($x0.i.1$1, 1174406144) else v57$1);
    v57$2 := (if p15$2 then FMUL32($x0.i.1$2, 1174406144) else v57$2);
    v58$1 := (if p15$1 then FMUL32($y0.i.1$1, 1174406144) else v58$1);
    v58$2 := (if p15$2 then FMUL32($y0.i.1$2, 1174406144) else v58$2);
    v59$1 := (if p15$1 then FSUB32(v57$1, FSUB32(v57$1, $x0.i.1$1)) else v59$1);
    v59$2 := (if p15$2 then FSUB32(v57$2, FSUB32(v57$2, $x0.i.1$2)) else v59$2);
    v60$1 := (if p15$1 then FSUB32(v58$1, FSUB32(v58$1, $y0.i.1$1)) else v60$1);
    v60$2 := (if p15$2 then FSUB32(v58$2, FSUB32(v58$2, $y0.i.1$2)) else v60$2);
    v61$1 := (if p15$1 then FSUB32($x0.i.1$1, v59$1) else v61$1);
    v61$2 := (if p15$2 then FSUB32($x0.i.1$2, v59$2) else v61$2);
    v62$1 := (if p15$1 then FSUB32($y0.i.1$1, v60$1) else v62$1);
    v62$2 := (if p15$2 then FSUB32($y0.i.1$2, v60$2) else v62$2);
    v63$1 := (if p15$1 then FMUL32($x0.i.1$1, $y0.i.1$1) else v63$1);
    v63$2 := (if p15$2 then FMUL32($x0.i.1$2, $y0.i.1$2) else v63$2);
    v64$1 := (if p15$1 then FADD32(FMUL32($x0.i.1$1, $y1.i.1$1), FMUL32($x1.i.1$1, $y0.i.1$1)) else v64$1);
    v64$2 := (if p15$2 then FADD32(FMUL32($x0.i.1$2, $y1.i.1$2), FMUL32($x1.i.1$2, $y0.i.1$2)) else v64$2);
    v65$1 := (if p15$1 then FADD32(v63$1, v64$1) else v65$1);
    v65$2 := (if p15$2 then FADD32(v63$2, v64$2) else v65$2);
    v66$1 := (if p15$1 then FSUB32(v65$1, v63$1) else v66$1);
    v66$2 := (if p15$2 then FSUB32(v65$2, v63$2) else v66$2);
    v67$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32(v64$1, v66$1), FSUB32(v63$1, FSUB32(v65$1, v66$1))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v59$1, v60$1), v63$1), FMUL32(v59$1, v62$1)), FMUL32(v61$1, v60$1)), FMUL32(v61$1, v62$1))), FMUL32($x1.i.1$1, $y1.i.1$1)) else v67$1);
    v67$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32(v64$2, v66$2), FSUB32(v63$2, FSUB32(v65$2, v66$2))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v59$2, v60$2), v63$2), FMUL32(v59$2, v62$2)), FMUL32(v61$2, v60$2)), FMUL32(v61$2, v62$2))), FMUL32($x1.i.1$2, $y1.i.1$2)) else v67$2);
    v68$1 := (if p15$1 then FADD32(v65$1, v67$1) else v68$1);
    v68$2 := (if p15$2 then FADD32(v65$2, v67$2) else v68$2);
    v69$1 := (if p15$1 then FSUB32(v67$1, FSUB32(v68$1, v65$1)) else v69$1);
    v69$2 := (if p15$2 then FSUB32(v67$2, FSUB32(v68$2, v65$2)) else v69$2);
    v70$1 := (if p15$1 then FADD32(v68$1, v68$1) else v70$1);
    v70$2 := (if p15$2 then FADD32(v68$2, v68$2) else v70$2);
    v71$1 := (if p15$1 then FSUB32(v70$1, v68$1) else v71$1);
    v71$2 := (if p15$2 then FSUB32(v70$2, v68$2) else v71$2);
    v72$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32(v68$1, v71$1), FSUB32(v68$1, FSUB32(v70$1, v71$1))), v69$1), v69$1) else v72$1);
    v72$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32(v68$2, v71$2), FSUB32(v68$2, FSUB32(v70$2, v71$2))), v69$2), v69$2) else v72$2);
    v73$1 := (if p15$1 then FADD32(v70$1, v72$1) else v73$1);
    v73$2 := (if p15$2 then FADD32(v70$2, v72$2) else v73$2);
    v74$1 := (if p15$1 then FADD32(v73$1, $yC0.i.0$1) else v74$1);
    v74$2 := (if p15$2 then FADD32(v73$2, $yC0.i.0$2) else v74$2);
    v75$1 := (if p15$1 then FSUB32(v74$1, v73$1) else v75$1);
    v75$2 := (if p15$2 then FSUB32(v74$2, v73$2) else v75$2);
    v76$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32($yC0.i.0$1, v75$1), FSUB32(v73$1, FSUB32(v74$1, v75$1))), FSUB32(v72$1, FSUB32(v73$1, v70$1))), $yC1.i.0$1) else v76$1);
    v76$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32($yC0.i.0$2, v75$2), FSUB32(v73$2, FSUB32(v74$2, v75$2))), FSUB32(v72$2, FSUB32(v73$2, v70$2))), $yC1.i.0$2) else v76$2);
    v77$1 := (if p15$1 then FADD32(v74$1, v76$1) else v77$1);
    v77$2 := (if p15$2 then FADD32(v74$2, v76$2) else v77$2);
    v78$1 := (if p15$1 then FSUB32(v76$1, FSUB32(v77$1, v74$1)) else v78$1);
    v78$2 := (if p15$2 then FSUB32(v76$2, FSUB32(v77$2, v74$2)) else v78$2);
    v79$1 := (if p15$1 then FSUB32($xx0.i.1$1, $yy0.i.1$1) else v79$1);
    v79$2 := (if p15$2 then FSUB32($xx0.i.1$2, $yy0.i.1$2) else v79$2);
    v80$1 := (if p15$1 then FSUB32(v79$1, $xx0.i.1$1) else v80$1);
    v80$2 := (if p15$2 then FSUB32(v79$2, $xx0.i.1$2) else v80$2);
    v81$1 := (if p15$1 then FSUB32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, $yy0.i.1$1), v80$1), FSUB32($xx0.i.1$1, FSUB32(v79$1, v80$1))), $xx1.i.1$1), $yy1.i.1$1) else v81$1);
    v81$2 := (if p15$2 then FSUB32(FADD32(FADD32(FSUB32(FSUB32(-2147483648, $yy0.i.1$2), v80$2), FSUB32($xx0.i.1$2, FSUB32(v79$2, v80$2))), $xx1.i.1$2), $yy1.i.1$2) else v81$2);
    v82$1 := (if p15$1 then FADD32(v79$1, v81$1) else v82$1);
    v82$2 := (if p15$2 then FADD32(v79$2, v81$2) else v82$2);
    v83$1 := (if p15$1 then FADD32(v82$1, $xC0.i.0$1) else v83$1);
    v83$2 := (if p15$2 then FADD32(v82$2, $xC0.i.0$2) else v83$2);
    v84$1 := (if p15$1 then FSUB32(v83$1, v82$1) else v84$1);
    v84$2 := (if p15$2 then FSUB32(v83$2, v82$2) else v84$2);
    v85$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32($xC0.i.0$1, v84$1), FSUB32(v82$1, FSUB32(v83$1, v84$1))), FSUB32(v81$1, FSUB32(v82$1, v79$1))), $xC1.i.0$1) else v85$1);
    v85$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32($xC0.i.0$2, v84$2), FSUB32(v82$2, FSUB32(v83$2, v84$2))), FSUB32(v81$2, FSUB32(v82$2, v79$2))), $xC1.i.0$2) else v85$2);
    v86$1 := (if p15$1 then FADD32(v83$1, v85$1) else v86$1);
    v86$2 := (if p15$2 then FADD32(v83$2, v85$2) else v86$2);
    v87$1 := (if p15$1 then FSUB32(v85$1, FSUB32(v86$1, v83$1)) else v87$1);
    v87$2 := (if p15$2 then FSUB32(v85$2, FSUB32(v86$2, v83$2)) else v87$2);
    v88$1 := (if p15$1 then FMUL32(v77$1, 1174406144) else v88$1);
    v88$2 := (if p15$2 then FMUL32(v77$2, 1174406144) else v88$2);
    v89$1 := (if p15$1 then FMUL32(v77$1, 1174406144) else v89$1);
    v89$2 := (if p15$2 then FMUL32(v77$2, 1174406144) else v89$2);
    v90$1 := (if p15$1 then FSUB32(v88$1, FSUB32(v88$1, v77$1)) else v90$1);
    v90$2 := (if p15$2 then FSUB32(v88$2, FSUB32(v88$2, v77$2)) else v90$2);
    v91$1 := (if p15$1 then FSUB32(v89$1, FSUB32(v89$1, v77$1)) else v91$1);
    v91$2 := (if p15$2 then FSUB32(v89$2, FSUB32(v89$2, v77$2)) else v91$2);
    v92$1 := (if p15$1 then FSUB32(v77$1, v90$1) else v92$1);
    v92$2 := (if p15$2 then FSUB32(v77$2, v90$2) else v92$2);
    v93$1 := (if p15$1 then FSUB32(v77$1, v91$1) else v93$1);
    v93$2 := (if p15$2 then FSUB32(v77$2, v91$2) else v93$2);
    v94$1 := (if p15$1 then FMUL32(v77$1, v77$1) else v94$1);
    v94$2 := (if p15$2 then FMUL32(v77$2, v77$2) else v94$2);
    v95$1 := (if p15$1 then FADD32(FMUL32(v77$1, v78$1), FMUL32(v78$1, v77$1)) else v95$1);
    v95$2 := (if p15$2 then FADD32(FMUL32(v77$2, v78$2), FMUL32(v78$2, v77$2)) else v95$2);
    v96$1 := (if p15$1 then FADD32(v94$1, v95$1) else v96$1);
    v96$2 := (if p15$2 then FADD32(v94$2, v95$2) else v96$2);
    v97$1 := (if p15$1 then FSUB32(v96$1, v94$1) else v97$1);
    v97$2 := (if p15$2 then FSUB32(v96$2, v94$2) else v97$2);
    v98$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32(v95$1, v97$1), FSUB32(v94$1, FSUB32(v96$1, v97$1))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v90$1, v91$1), v94$1), FMUL32(v90$1, v93$1)), FMUL32(v92$1, v91$1)), FMUL32(v92$1, v93$1))), FMUL32(v78$1, v78$1)) else v98$1);
    v98$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32(v95$2, v97$2), FSUB32(v94$2, FSUB32(v96$2, v97$2))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v90$2, v91$2), v94$2), FMUL32(v90$2, v93$2)), FMUL32(v92$2, v91$2)), FMUL32(v92$2, v93$2))), FMUL32(v78$2, v78$2)) else v98$2);
    v99$1 := (if p15$1 then FADD32(v96$1, v98$1) else v99$1);
    v99$2 := (if p15$2 then FADD32(v96$2, v98$2) else v99$2);
    v100$1 := (if p15$1 then FSUB32(v98$1, FSUB32(v99$1, v96$1)) else v100$1);
    v100$2 := (if p15$2 then FSUB32(v98$2, FSUB32(v99$2, v96$2)) else v100$2);
    v101$1 := (if p15$1 then FMUL32(v86$1, 1174406144) else v101$1);
    v101$2 := (if p15$2 then FMUL32(v86$2, 1174406144) else v101$2);
    v102$1 := (if p15$1 then FMUL32(v86$1, 1174406144) else v102$1);
    v102$2 := (if p15$2 then FMUL32(v86$2, 1174406144) else v102$2);
    v103$1 := (if p15$1 then FSUB32(v101$1, FSUB32(v101$1, v86$1)) else v103$1);
    v103$2 := (if p15$2 then FSUB32(v101$2, FSUB32(v101$2, v86$2)) else v103$2);
    v104$1 := (if p15$1 then FSUB32(v102$1, FSUB32(v102$1, v86$1)) else v104$1);
    v104$2 := (if p15$2 then FSUB32(v102$2, FSUB32(v102$2, v86$2)) else v104$2);
    v105$1 := (if p15$1 then FSUB32(v86$1, v103$1) else v105$1);
    v105$2 := (if p15$2 then FSUB32(v86$2, v103$2) else v105$2);
    v106$1 := (if p15$1 then FSUB32(v86$1, v104$1) else v106$1);
    v106$2 := (if p15$2 then FSUB32(v86$2, v104$2) else v106$2);
    v107$1 := (if p15$1 then FMUL32(v86$1, v86$1) else v107$1);
    v107$2 := (if p15$2 then FMUL32(v86$2, v86$2) else v107$2);
    v108$1 := (if p15$1 then FADD32(FMUL32(v86$1, v87$1), FMUL32(v87$1, v86$1)) else v108$1);
    v108$2 := (if p15$2 then FADD32(FMUL32(v86$2, v87$2), FMUL32(v87$2, v86$2)) else v108$2);
    v109$1 := (if p15$1 then FADD32(v107$1, v108$1) else v109$1);
    v109$2 := (if p15$2 then FADD32(v107$2, v108$2) else v109$2);
    v110$1 := (if p15$1 then FSUB32(v109$1, v107$1) else v110$1);
    v110$2 := (if p15$2 then FSUB32(v109$2, v107$2) else v110$2);
    v111$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32(v108$1, v110$1), FSUB32(v107$1, FSUB32(v109$1, v110$1))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v103$1, v104$1), v107$1), FMUL32(v103$1, v106$1)), FMUL32(v105$1, v104$1)), FMUL32(v105$1, v106$1))), FMUL32(v87$1, v87$1)) else v111$1);
    v111$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32(v108$2, v110$2), FSUB32(v107$2, FSUB32(v109$2, v110$2))), FADD32(FADD32(FADD32(FSUB32(FMUL32(v103$2, v104$2), v107$2), FMUL32(v103$2, v106$2)), FMUL32(v105$2, v104$2)), FMUL32(v105$2, v106$2))), FMUL32(v87$2, v87$2)) else v111$2);
    v112$1 := (if p15$1 then FADD32(v109$1, v111$1) else v112$1);
    v112$2 := (if p15$2 then FADD32(v109$2, v111$2) else v112$2);
    v113$1 := (if p15$1 then FSUB32(v111$1, FSUB32(v112$1, v109$1)) else v113$1);
    v113$2 := (if p15$2 then FSUB32(v111$2, FSUB32(v112$2, v109$2)) else v113$2);
    v114$1 := (if p15$1 then FADD32(v112$1, v99$1) else v114$1);
    v114$2 := (if p15$2 then FADD32(v112$2, v99$2) else v114$2);
    v115$1 := (if p15$1 then FSUB32(v114$1, v112$1) else v115$1);
    v115$2 := (if p15$2 then FSUB32(v114$2, v112$2) else v115$2);
    v116$1 := (if p15$1 then FADD32(FADD32(FADD32(FSUB32(v99$1, v115$1), FSUB32(v112$1, FSUB32(v114$1, v115$1))), v113$1), v100$1) else v116$1);
    v116$2 := (if p15$2 then FADD32(FADD32(FADD32(FSUB32(v99$2, v115$2), FSUB32(v112$2, FSUB32(v114$2, v115$2))), v113$2), v100$2) else v116$2);
    v117$1 := (if p15$1 then FADD32(v114$1, v116$1) else v117$1);
    v117$2 := (if p15$2 then FADD32(v114$2, v116$2) else v117$2);
    $y1.i.1$1, $y0.i.1$1, $x1.i.1$1, $x0.i.1$1, $sum1.i.0$1, $sum0.i.0$1, $yy1.i.1$1, $yy0.i.1$1, $xx1.i.1$1, $xx0.i.1$1, $i.i.0$1 := (if p15$1 then v78$1 else $y1.i.1$1), (if p15$1 then v77$1 else $y0.i.1$1), (if p15$1 then v87$1 else $x1.i.1$1), (if p15$1 then v86$1 else $x0.i.1$1), (if p15$1 then FSUB32(v116$1, FSUB32(v117$1, v114$1)) else $sum1.i.0$1), (if p15$1 then v117$1 else $sum0.i.0$1), (if p15$1 then v100$1 else $yy1.i.1$1), (if p15$1 then v99$1 else $yy0.i.1$1), (if p15$1 then v113$1 else $xx1.i.1$1), (if p15$1 then v112$1 else $xx0.i.1$1), (if p15$1 then v54$1 else $i.i.0$1);
    $y1.i.1$2, $y0.i.1$2, $x1.i.1$2, $x0.i.1$2, $sum1.i.0$2, $sum0.i.0$2, $yy1.i.1$2, $yy0.i.1$2, $xx1.i.1$2, $xx0.i.1$2, $i.i.0$2 := (if p15$2 then v78$2 else $y1.i.1$2), (if p15$2 then v77$2 else $y0.i.1$2), (if p15$2 then v87$2 else $x1.i.1$2), (if p15$2 then v86$2 else $x0.i.1$2), (if p15$2 then FSUB32(v116$2, FSUB32(v117$2, v114$2)) else $sum1.i.0$2), (if p15$2 then v117$2 else $sum0.i.0$2), (if p15$2 then v100$2 else $yy1.i.1$2), (if p15$2 then v99$2 else $yy0.i.1$2), (if p15$2 then v113$2 else $xx1.i.1$2), (if p15$2 then v112$2 else $xx0.i.1$2), (if p15$2 then v54$2 else $i.i.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $12.backedge, $12.tail;

  $12.tail:
    assume !p12$1 && !p12$2;
    v118$1 := (if p9$1 then BV32_SGT(v54$1, 0) else v118$1);
    v118$2 := (if p9$2 then BV32_SGT(v54$2, 0) else v118$2);
    p17$1 := (if p9$1 && v118$1 then v118$1 else p17$1);
    p17$2 := (if p9$2 && v118$2 then v118$2 else p17$2);
    p16$1 := (if p9$1 && !v118$1 then !v118$1 else p16$1);
    p16$2 := (if p9$2 && !v118$2 then !v118$2 else p16$2);
    $1$1 := (if p16$1 then 0 else $1$1);
    $1$2 := (if p16$2 then 0 else $1$2);
    $1$1 := (if p17$1 then BV32_SUB($crunch, v54$1) else $1$1);
    $1$2 := (if p17$2 then BV32_SUB($crunch, v54$2) else $1$2);
    v119$1 := (if p9$1 then $1$1 != 0 else v119$1);
    v119$2 := (if p9$2 then $1$2 != 0 else v119$2);
    p19$1 := (if p9$1 && v119$1 then v119$1 else p19$1);
    p19$2 := (if p9$2 && v119$2 then v119$2 else p19$2);
    p18$1 := (if p9$1 && !v119$1 then !v119$1 else p18$1);
    p18$2 := (if p9$2 && !v119$2 then !v119$2 else p18$2);
    $$color$0$1 := (if p18$1 then 0 else $$color$0$1);
    $$color$0$2 := (if p18$2 then 0 else $$color$0$2);
    $$color$1$1 := (if p18$1 then 0 else $$color$1$1);
    $$color$1$2 := (if p18$2 then 0 else $$color$1$2);
    $$color$2$1 := (if p18$1 then 0 else $$color$2$1);
    $$color$2$2 := (if p18$2 then 0 else $$color$2$2);
    v120$1 := (if p19$1 then BV32_ADD($1$1, $animationFrame) else v120$1);
    v120$2 := (if p19$2 then BV32_ADD($1$2, $animationFrame) else v120$2);
    v121$1 := (if p19$1 then $$colors$0$1 else v121$1);
    v121$2 := (if p19$2 then $$colors$0$2 else v121$2);
    $$color$0$1 := (if p19$1 then BV_EXTRACT(BV32_MUL(v120$1, BV8_ZEXT32(v121$1)), 8, 0) else $$color$0$1);
    $$color$0$2 := (if p19$2 then BV_EXTRACT(BV32_MUL(v120$2, BV8_ZEXT32(v121$2)), 8, 0) else $$color$0$2);
    v122$1 := (if p19$1 then $$colors$1$1 else v122$1);
    v122$2 := (if p19$2 then $$colors$1$2 else v122$2);
    $$color$1$1 := (if p19$1 then BV_EXTRACT(BV32_MUL(v120$1, BV8_ZEXT32(v122$1)), 8, 0) else $$color$1$1);
    $$color$1$2 := (if p19$2 then BV_EXTRACT(BV32_MUL(v120$2, BV8_ZEXT32(v122$2)), 8, 0) else $$color$1$2);
    v123$1 := (if p19$1 then $$colors$2$1 else v123$1);
    v123$2 := (if p19$2 then $$colors$2$2 else v123$2);
    $$color$2$1 := (if p19$1 then BV_EXTRACT(BV32_MUL(v120$1, BV8_ZEXT32(v123$1)), 8, 0) else $$color$2$1);
    $$color$2$2 := (if p19$2 then BV_EXTRACT(BV32_MUL(v120$2, BV8_ZEXT32(v123$2)), 8, 0) else $$color$2$2);
    v124$1 := (if p9$1 then BV32_ADD(BV32_MUL($imageW, v10$1), v8$1) else v124$1);
    v124$2 := (if p9$2 then BV32_ADD(BV32_MUL($imageW, v10$2), v8$2) else v124$2);
    v125$1 := (if p9$1 then $frame == 0 else v125$1);
    v125$2 := (if p9$2 then $frame == 0 else v125$2);
    p21$1 := (if p9$1 && v125$1 then v125$1 else p21$1);
    p21$2 := (if p9$2 && v125$2 then v125$2 else p21$2);
    p20$1 := (if p9$1 && !v125$1 then !v125$1 else p20$1);
    p20$2 := (if p9$2 && !v125$2 then !v125$2 else p20$2);
    v130$1 := (if p20$1 then BV32_ADD($frame, 1) else v130$1);
    v130$2 := (if p20$2 then BV32_ADD($frame, 1) else v130$2);
    v131$1 := (if p20$1 then BV32_SDIV(v130$1, 2) else v131$1);
    v131$2 := (if p20$2 then BV32_SDIV(v130$2, 2) else v131$2);
    call {:sourceloc} {:sourceloc_num 58} _LOG_READ_$$dst(p20$1, BV32_MUL(v124$1, 4), $$dst[BV32_MUL(v124$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 58} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 58} _CHECK_READ_$$dst(p20$2, BV32_MUL(v124$2, 4), $$dst[BV32_MUL(v124$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v132$1 := (if p20$1 then $$dst[BV32_MUL(v124$1, 4)] else v132$1);
    v132$2 := (if p20$2 then $$dst[BV32_MUL(v124$2, 4)] else v132$2);
    v133$1 := (if p20$1 then $$color$0$1 else v133$1);
    v133$2 := (if p20$2 then $$color$0$2 else v133$2);
    call {:sourceloc} {:sourceloc_num 60} _LOG_WRITE_$$dst(p20$1, BV32_MUL(v124$1, 4), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$1), $frame), BV8_ZEXT32(v133$1)), v131$1), v130$1), 8, 0), $$dst[BV32_MUL(v124$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p20$2, BV32_MUL(v124$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 60} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 60} _CHECK_WRITE_$$dst(p20$2, BV32_MUL(v124$2, 4), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$2), $frame), BV8_ZEXT32(v133$2)), v131$2), v130$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_MUL(v124$1, 4)] := (if p20$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$1), $frame), BV8_ZEXT32(v133$1)), v131$1), v130$1), 8, 0) else $$dst[BV32_MUL(v124$1, 4)]);
    $$dst[BV32_MUL(v124$2, 4)] := (if p20$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$2), $frame), BV8_ZEXT32(v133$2)), v131$2), v130$2), 8, 0) else $$dst[BV32_MUL(v124$2, 4)]);
    call {:sourceloc} {:sourceloc_num 61} _LOG_READ_$$dst(p20$1, BV32_ADD(BV32_MUL(v124$1, 4), 1), $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 61} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 61} _CHECK_READ_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 1), $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v134$1 := (if p20$1 then $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)] else v134$1);
    v134$2 := (if p20$2 then $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)] else v134$2);
    v135$1 := (if p20$1 then $$color$1$1 else v135$1);
    v135$2 := (if p20$2 then $$color$1$2 else v135$2);
    call {:sourceloc} {:sourceloc_num 63} _LOG_WRITE_$$dst(p20$1, BV32_ADD(BV32_MUL(v124$1, 4), 1), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$1), $frame), BV8_ZEXT32(v135$1)), v131$1), v130$1), 8, 0), $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 63} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 63} _CHECK_WRITE_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 1), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$2), $frame), BV8_ZEXT32(v135$2)), v131$2), v130$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)] := (if p20$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$1), $frame), BV8_ZEXT32(v135$1)), v131$1), v130$1), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)]);
    $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)] := (if p20$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$2), $frame), BV8_ZEXT32(v135$2)), v131$2), v130$2), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)]);
    call {:sourceloc} {:sourceloc_num 64} _LOG_READ_$$dst(p20$1, BV32_ADD(BV32_MUL(v124$1, 4), 2), $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 64} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 64} _CHECK_READ_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 2), $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v136$1 := (if p20$1 then $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)] else v136$1);
    v136$2 := (if p20$2 then $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)] else v136$2);
    v137$1 := (if p20$1 then $$color$2$1 else v137$1);
    v137$2 := (if p20$2 then $$color$2$2 else v137$2);
    call {:sourceloc} {:sourceloc_num 66} _LOG_WRITE_$$dst(p20$1, BV32_ADD(BV32_MUL(v124$1, 4), 2), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v136$1), $frame), BV8_ZEXT32(v137$1)), v131$1), v130$1), 8, 0), $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 66} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 66} _CHECK_WRITE_$$dst(p20$2, BV32_ADD(BV32_MUL(v124$2, 4), 2), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v136$2), $frame), BV8_ZEXT32(v137$2)), v131$2), v130$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)] := (if p20$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v136$1), $frame), BV8_ZEXT32(v137$1)), v131$1), v130$1), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)]);
    $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)] := (if p20$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v136$2), $frame), BV8_ZEXT32(v137$2)), v131$2), v130$2), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)]);
    $$color$3$1 := (if p21$1 then 0 else $$color$3$1);
    $$color$3$2 := (if p21$2 then 0 else $$color$3$2);
    v126$1 := (if p21$1 then $$color$0$1 else v126$1);
    v126$2 := (if p21$2 then $$color$0$2 else v126$2);
    call {:sourceloc} {:sourceloc_num 50} _LOG_WRITE_$$dst(p21$1, BV32_MUL(v124$1, 4), v126$1, $$dst[BV32_MUL(v124$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p21$2, BV32_MUL(v124$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 50} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 50} _CHECK_WRITE_$$dst(p21$2, BV32_MUL(v124$2, 4), v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_MUL(v124$1, 4)] := (if p21$1 then v126$1 else $$dst[BV32_MUL(v124$1, 4)]);
    $$dst[BV32_MUL(v124$2, 4)] := (if p21$2 then v126$2 else $$dst[BV32_MUL(v124$2, 4)]);
    v127$1 := (if p21$1 then $$color$1$1 else v127$1);
    v127$2 := (if p21$2 then $$color$1$2 else v127$2);
    call {:sourceloc} {:sourceloc_num 52} _LOG_WRITE_$$dst(p21$1, BV32_ADD(BV32_MUL(v124$1, 4), 1), v127$1, $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 52} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 52} _CHECK_WRITE_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 1), v127$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)] := (if p21$1 then v127$1 else $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 1)]);
    $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)] := (if p21$2 then v127$2 else $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 1)]);
    v128$1 := (if p21$1 then $$color$2$1 else v128$1);
    v128$2 := (if p21$2 then $$color$2$2 else v128$2);
    call {:sourceloc} {:sourceloc_num 54} _LOG_WRITE_$$dst(p21$1, BV32_ADD(BV32_MUL(v124$1, 4), 2), v128$1, $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 54} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 54} _CHECK_WRITE_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 2), v128$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)] := (if p21$1 then v128$1 else $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 2)]);
    $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)] := (if p21$2 then v128$2 else $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 2)]);
    v129$1 := (if p21$1 then $$color$3$1 else v129$1);
    v129$2 := (if p21$2 then $$color$3$2 else v129$2);
    call {:sourceloc} {:sourceloc_num 56} _LOG_WRITE_$$dst(p21$1, BV32_ADD(BV32_MUL(v124$1, 4), 3), v129$1, $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 3)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 3));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 56} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 56} _CHECK_WRITE_$$dst(p21$2, BV32_ADD(BV32_MUL(v124$2, 4), 3), v129$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 3)] := (if p21$1 then v129$1 else $$dst[BV32_ADD(BV32_MUL(v124$1, 4), 3)]);
    $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 3)] := (if p21$2 then v129$2 else $$dst[BV32_ADD(BV32_MUL(v124$2, 4), 3)]);
    p0$1 := (if p5$1 then true else p0$1);
    p0$2 := (if p5$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$1_0;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $12;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 14 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_x} group_id_x: int;

const {:group_id_y} group_id_y: int;

const {:group_id_z} group_id_z: int;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} true ==> _P$1 == _P$2;
  modifies $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, $$dst, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} true ==> _P$1 == _P$2;
  modifies $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, $$dst, _TRACKING;



var $$colors$0$1: int;

var $$colors$0$2: int;

var $$colors$1$1: int;

var $$colors$1$2: int;

var $$colors$2$1: int;

var $$colors$2$2: int;

var $$colors$3$1: int;

var $$colors$3$2: int;

var $$color$0$1: int;

var $$color$0$2: int;

var $$color$1$1: int;

var $$color$1$2: int;

var $$color$2$1: int;

var $$color$2$2: int;

var $$color$3$1: int;

var $$color$3$2: int;

const {:existential true} _b0: bool;

const _WATCHED_VALUE_$$dst: int;

procedure {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _READ_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_READ_$$dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst: bool;

procedure {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _WRITE_HAS_OCCURRED_$$dst);
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



procedure _CHECK_WRITE_$$dst(_P: bool, _offset: int, _value: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_ATOMIC_$$dst(_P: bool, _offset: int);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



const _WATCHED_VALUE_$$blockCounter: int;

procedure {:inline 1} _LOG_READ_$$blockCounter(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$blockCounter;



implementation {:inline 1} _LOG_READ_$$blockCounter(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then true else _READ_HAS_OCCURRED_$$blockCounter);
    return;
}



procedure _CHECK_READ_$$blockCounter(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blockCounter);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blockCounter: bool;

procedure {:inline 1} _LOG_WRITE_$$blockCounter(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$blockCounter, _WRITE_READ_BENIGN_FLAG_$$blockCounter;



implementation {:inline 1} _LOG_WRITE_$$blockCounter(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then true else _WRITE_HAS_OCCURRED_$$blockCounter);
    _WRITE_READ_BENIGN_FLAG_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blockCounter);
    return;
}



procedure _CHECK_WRITE_$$blockCounter(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter != _value);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter != _value);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blockCounter(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$blockCounter;



implementation {:inline 1} _LOG_ATOMIC_$$blockCounter(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blockCounter);
    return;
}



procedure _CHECK_ATOMIC_$$blockCounter(_P: bool, _offset: int);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockCounter(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$blockCounter;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockCounter(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blockCounter := (if _P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blockCounter);
    return;
}



const _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;



implementation {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex == _value then true else _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
    return;
}



procedure _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockIndex"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex);
    return;
}



const _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;



implementation {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX == _value then true else _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
    return;
}



procedure _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockX"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX);
    return;
}



const _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: int;

procedure {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;



implementation {:inline 1} _LOG_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY == _value then true else _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
    return;
}



procedure _CHECK_READ_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;



implementation {:inline 1} _LOG_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
    return;
}



procedure _CHECK_WRITE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockY"} {:array "$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || !_P$1 || !_P$2);
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume true ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$dst;
    goto anon8;

  anon8:
    assume true ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(_P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$dst;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || !_P$1 || !_P$2;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || !_P$1 || !_P$2);
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume true ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$dst;
    goto anon8;

  anon8:
    assume true ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(_P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$dst;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ13MandelbrotDS0P6uchar4iiifffffffS_iiiibE6blockY;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || !_P$1 || !_P$2;
    goto __Disabled;

  __Disabled:
    return;
}



function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function BV32_AND(int, int) : int;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

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

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;

const {:existential true} _b100: bool;

const {:existential true} _b101: bool;

const {:existential true} _b102: bool;

const {:existential true} _b103: bool;

const {:existential true} _b104: bool;

const {:existential true} _b105: bool;

const {:existential true} _b106: bool;

const {:existential true} _b107: bool;

const {:existential true} _b108: bool;

const {:existential true} _b109: bool;

const {:existential true} _b110: bool;

const {:existential true} _b111: bool;

const {:existential true} _b112: bool;

const {:existential true} _b113: bool;

const {:existential true} _b114: bool;

const {:existential true} _b115: bool;

const {:existential true} _b116: bool;

const {:existential true} _b117: bool;

const {:existential true} _b118: bool;

const {:existential true} _b119: bool;

const {:existential true} _b120: bool;

const {:existential true} _b121: bool;

const {:existential true} _b122: bool;

const {:existential true} _b123: bool;

const {:existential true} _b124: bool;

const {:existential true} _b125: bool;

const {:existential true} _b126: bool;

const {:existential true} _b127: bool;

const {:existential true} _b128: bool;

const {:existential true} _b129: bool;

const {:existential true} _b130: bool;

const {:existential true} _b131: bool;

const {:existential true} _b132: bool;

const {:existential true} _b133: bool;

const {:existential true} _b134: bool;

const {:existential true} _b135: bool;

const {:existential true} _b136: bool;

const {:existential true} _b137: bool;

const {:existential true} _b138: bool;

const {:existential true} _b139: bool;

const {:existential true} _b140: bool;

const {:existential true} _b141: bool;

const {:existential true} _b142: bool;

const {:existential true} _b143: bool;

const {:existential true} _b144: bool;

const {:existential true} _b145: bool;

const {:existential true} _b146: bool;

const {:existential true} _b147: bool;

const {:existential true} _b148: bool;

const {:existential true} _b149: bool;

const {:existential true} _b150: bool;

const {:existential true} _b151: bool;

const {:existential true} _b152: bool;

const {:existential true} _b153: bool;

const {:existential true} _b154: bool;

const {:existential true} _b155: bool;

const {:existential true} _b156: bool;

const {:existential true} _b157: bool;

const {:existential true} _b158: bool;

const {:existential true} _b159: bool;

const {:existential true} _b160: bool;

const {:existential true} _b161: bool;

const {:existential true} _b162: bool;

const {:existential true} _b163: bool;

const {:existential true} _b164: bool;

const {:existential true} _b165: bool;

const {:existential true} _b166: bool;

const {:existential true} _b167: bool;

const {:existential true} _b168: bool;

const {:existential true} _b169: bool;

const {:existential true} _b170: bool;

const {:existential true} _b171: bool;

const {:existential true} _b172: bool;

const {:existential true} _b173: bool;

const {:existential true} _b174: bool;

const {:existential true} _b175: bool;

const {:existential true} _b176: bool;

const {:existential true} _b177: bool;

const {:existential true} _b178: bool;

const {:existential true} _b179: bool;

const {:existential true} _b180: bool;

const {:existential true} _b181: bool;

const {:existential true} _b182: bool;

const {:existential true} _b183: bool;

const {:existential true} _b184: bool;

const {:existential true} _b185: bool;

const {:existential true} _b186: bool;

const {:existential true} _b187: bool;

const {:existential true} _b188: bool;

const {:existential true} _b189: bool;
