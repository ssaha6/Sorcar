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

axiom {:array_info "$$pixelColor"} {:elem_width 8} {:source_name "pixelColor"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$color"} {:elem_width 8} {:source_name "color"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$blockCounter"} {:global} {:elem_width 32} {:source_name "blockCounter"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockCounter: bool;

var {:source_name "blockIndex"} {:group_shared} $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: [int]int;

axiom {:array_info "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:group_shared} {:elem_width 32} {:source_name "blockIndex"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:source_name "blockX"} {:group_shared} $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: [int]int;

axiom {:array_info "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:group_shared} {:elem_width 32} {:source_name "blockX"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:source_name "blockY"} {:group_shared} $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: [int]int;

axiom {:array_info "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:group_shared} {:elem_width 32} {:source_name "blockY"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

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

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

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

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
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

procedure {:source_name "Mandelbrot1<float>"} {:kernel} $_Z11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiib($imageW: int, $imageH: int, $crunch: int, $xOff: int, $yOff: int, $xJP: int, $yJP: int, $scale: int, $colors.coerce0: int, $colors.coerce1: int, $colors.coerce2: int, $colors.coerce3: int, $frame: int, $animationFrame: int, $gridWidth: int, $numBlocks: int, $isJ: int);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 800 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $imageH == 600 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $gridWidth == 25 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if $numBlocks == 475 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
  requires !_READ_HAS_OCCURRED_$$blockCounter && !_WRITE_HAS_OCCURRED_$$blockCounter && !_ATOMIC_HAS_OCCURRED_$$blockCounter;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
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
  modifies $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING, _ATOMIC_HAS_OCCURRED_$$blockCounter, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _READ_HAS_OCCURRED_$$dst, _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "Mandelbrot1<float>"} {:kernel} $_Z11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiib($imageW: int, $imageH: int, $crunch: int, $xOff: int, $yOff: int, $xJP: int, $yJP: int, $scale: int, $colors.coerce0: int, $colors.coerce1: int, $colors.coerce2: int, $colors.coerce3: int, $frame: int, $animationFrame: int, $gridWidth: int, $numBlocks: int, $isJ: int)
{
  var $count.0$1: int;
  var $count.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $3$1: int;
  var $3$2: int;
  var $count.1$1: int;
  var $count.1$2: int;
  var $4$1: int;
  var $4$2: int;
  var $5$1: int;
  var $5$2: int;
  var $6$1: int;
  var $6$2: int;
  var $7$1: int;
  var $7$2: int;
  var $count.2$1: int;
  var $count.2$2: int;
  var $8$1: int;
  var $8$2: int;
  var $9$1: int;
  var $9$2: int;
  var $10$1: int;
  var $10$2: int;
  var $11$1: int;
  var $11$2: int;
  var $count.3$1: int;
  var $count.3$2: int;
  var $12$1: int;
  var $12$2: int;
  var $13$1: int;
  var $13$2: int;
  var $14$1: int;
  var $14$2: int;
  var $15$1: int;
  var $15$2: int;
  var $x.i1.0$1: int;
  var $x.i1.0$2: int;
  var $y.i2.0$1: int;
  var $y.i2.0$2: int;
  var $xx.i.0$1: int;
  var $xx.i.0$2: int;
  var $yy.i.0$1: int;
  var $yy.i.0$2: int;
  var $xC.i.0$1: int;
  var $xC.i.0$2: int;
  var $yC.i.0$1: int;
  var $yC.i.0$2: int;
  var $x.i1.1$1: int;
  var $x.i1.1$2: int;
  var $y.i2.1$1: int;
  var $y.i2.1$2: int;
  var $xx.i.1$1: int;
  var $xx.i.1$2: int;
  var $yy.i.1$1: int;
  var $yy.i.1$2: int;
  var $i.i.0$1: int;
  var $i.i.0$2: int;
  var $.0$1: int;
  var $.0$2: int;
  var $16$1: int;
  var $16$2: int;
  var v12$1: bool;
  var v12$2: bool;
  var v104$1: int;
  var v104$2: int;
  var v103$1: int;
  var v103$2: int;
  var v136$1: int;
  var v136$2: int;
  var v137$1: bool;
  var v137$2: bool;
  var v139$1: int;
  var v139$2: int;
  var v111$1: int;
  var v111$2: int;
  var v112$1: bool;
  var v112$2: bool;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
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
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
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
  var v18$1: bool;
  var v18$2: bool;
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
  var v28$1: bool;
  var v28$2: bool;
  var v29$1: bool;
  var v29$2: bool;
  var v30$1: bool;
  var v30$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v32$1: bool;
  var v32$2: bool;
  var v33$1: bool;
  var v33$2: bool;
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
  var v43$1: bool;
  var v43$2: bool;
  var v44$1: bool;
  var v44$2: bool;
  var v45$1: bool;
  var v45$2: bool;
  var v46$1: bool;
  var v46$2: bool;
  var v47$1: bool;
  var v47$2: bool;
  var v48$1: bool;
  var v48$2: bool;
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
  var v58$1: bool;
  var v58$2: bool;
  var v59$1: bool;
  var v59$2: bool;
  var v60$1: bool;
  var v60$2: bool;
  var v61$1: bool;
  var v61$2: bool;
  var v62$1: bool;
  var v62$2: bool;
  var v63$1: bool;
  var v63$2: bool;
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
  var v73$1: bool;
  var v73$2: bool;
  var v74$1: bool;
  var v74$2: bool;
  var v75$1: bool;
  var v75$2: bool;
  var v76$1: bool;
  var v76$2: bool;
  var v77$1: bool;
  var v77$2: bool;
  var v78$1: bool;
  var v78$2: bool;
  var v79$1: int;
  var v79$2: int;
  var v80$1: int;
  var v80$2: int;
  var v81$1: bool;
  var v81$2: bool;
  var v82$1: bool;
  var v82$2: bool;
  var v84$1: int;
  var v84$2: int;
  var v83$1: int;
  var v83$2: int;
  var v85$1: int;
  var v85$2: int;
  var v86$1: int;
  var v86$2: int;
  var v87$1: bool;
  var v87$2: bool;
  var v89$1: int;
  var v89$2: int;
  var v88$1: int;
  var v88$2: int;
  var v90$1: int;
  var v90$2: int;
  var v91$1: int;
  var v91$2: int;
  var v92$1: bool;
  var v92$2: bool;
  var v94$1: int;
  var v94$2: int;
  var v93$1: int;
  var v93$2: int;
  var v95$1: int;
  var v95$2: int;
  var v96$1: int;
  var v96$2: int;
  var v97$1: bool;
  var v97$2: bool;
  var v99$1: int;
  var v99$2: int;
  var v98$1: int;
  var v98$2: int;
  var v100$1: int;
  var v100$2: int;
  var v101$1: int;
  var v101$2: int;
  var v102$1: bool;
  var v102$2: bool;
  var v105$1: int;
  var v105$2: int;
  var v106$1: int;
  var v106$2: int;
  var v107$1: bool;
  var v107$2: bool;
  var v109$1: int;
  var v109$2: int;
  var v108$1: int;
  var v108$2: int;
  var v110$1: int;
  var v110$2: int;
  var v114$1: int;
  var v114$2: int;
  var v113$1: int;
  var v113$2: int;
  var v115$1: int;
  var v115$2: int;
  var v116$1: int;
  var v116$2: int;
  var v117$1: bool;
  var v117$2: bool;
  var v119$1: int;
  var v119$2: int;
  var v118$1: int;
  var v118$2: int;
  var v120$1: int;
  var v120$2: int;
  var v121$1: int;
  var v121$2: int;
  var v122$1: bool;
  var v122$2: bool;
  var v124$1: int;
  var v124$2: int;
  var v123$1: int;
  var v123$2: int;
  var v125$1: int;
  var v125$2: int;
  var v126$1: int;
  var v126$2: int;
  var v127$1: bool;
  var v127$2: bool;
  var v129$1: int;
  var v129$2: int;
  var v128$1: int;
  var v128$2: int;
  var v130$1: int;
  var v130$2: int;
  var v131$1: int;
  var v131$2: int;
  var v132$1: bool;
  var v132$2: bool;
  var v134$1: int;
  var v134$2: int;
  var v133$1: int;
  var v133$2: int;
  var v135$1: int;
  var v135$2: int;
  var v138$1: int;
  var v138$2: int;
  var v140$1: int;
  var v140$2: int;
  var v141$1: int;
  var v141$2: int;
  var v142$1: bool;
  var v142$2: bool;
  var v144$1: int;
  var v144$2: int;
  var v143$1: int;
  var v143$2: int;
  var v145$1: int;
  var v145$2: int;
  var v146$1: int;
  var v146$2: int;
  var v147$1: bool;
  var v147$2: bool;
  var v149$1: int;
  var v149$2: int;
  var v148$1: int;
  var v148$2: int;
  var v150$1: int;
  var v150$2: int;
  var v151$1: int;
  var v151$2: int;
  var v152$1: bool;
  var v152$2: bool;
  var v154$1: int;
  var v154$2: int;
  var v153$1: int;
  var v153$2: int;
  var v155$1: int;
  var v155$2: int;
  var v156$1: int;
  var v156$2: int;
  var v157$1: bool;
  var v157$2: bool;
  var v159$1: int;
  var v159$2: int;
  var v158$1: int;
  var v158$2: int;
  var v160$1: int;
  var v160$2: int;
  var v161$1: int;
  var v161$2: int;
  var v162$1: bool;
  var v162$2: bool;
  var v164$1: int;
  var v164$2: int;
  var v163$1: int;
  var v163$2: int;
  var v165$1: int;
  var v165$2: int;
  var v166$1: int;
  var v166$2: int;
  var v167$1: bool;
  var v167$2: bool;
  var v169$1: int;
  var v169$2: int;
  var v168$1: int;
  var v168$2: int;
  var v170$1: int;
  var v170$2: int;
  var v171$1: int;
  var v171$2: int;
  var v172$1: bool;
  var v172$2: bool;
  var v174$1: int;
  var v174$2: int;
  var v173$1: int;
  var v173$2: int;
  var v175$1: int;
  var v175$2: int;
  var v176$1: int;
  var v176$2: int;
  var v177$1: int;
  var v177$2: int;
  var v178$1: bool;
  var v178$2: bool;
  var v179$1: bool;
  var v179$2: bool;
  var v181$1: int;
  var v181$2: int;
  var v180$1: int;
  var v180$2: int;
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
  var p96$1: bool;
  var p96$2: bool;
  var p97$1: bool;
  var p97$2: bool;
  var p98$1: bool;
  var p98$2: bool;
  var p99$1: bool;
  var p99$2: bool;
  var p100$1: bool;
  var p100$2: bool;
  var p101$1: bool;
  var p101$2: bool;
  var p102$1: bool;
  var p102$2: bool;
  var p103$1: bool;
  var p103$2: bool;
  var p104$1: bool;
  var p104$2: bool;
  var p105$1: bool;
  var p105$2: bool;
  var p106$1: bool;
  var p106$2: bool;
  var p107$1: bool;
  var p107$2: bool;
  var p108$1: bool;
  var p108$2: bool;
  var p109$1: bool;
  var p109$2: bool;
  var p110$1: bool;
  var p110$2: bool;
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
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b255 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b254 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b253 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assert {:tag "noread"} _b252 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b251 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b250 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b249 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assert {:tag "noread"} _b248 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b247 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b246 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0;
    assert {:tag "nowrite"} _b245 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assert {:tag "noread"} _b244 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b243 ==> _ATOMIC_HAS_OCCURRED_$$blockCounter ==> _WATCHED_OFFSET == 0;
    assert {:tag "noatomic"} _b242 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    assert {:tag "nowrite"} _b241 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assert {:tag "noread"} _b240 ==> !_READ_HAS_OCCURRED_$$dst;
    assert {:tag "predicatedEquality"} _b239 ==> p0$1 && p0$2 ==> v195$1 == v195$2;
    assert {:tag "predicatedEquality"} _b238 ==> p0$1 && p0$2 ==> v194$1 == v194$2;
    assert {:tag "predicatedEquality"} _b237 ==> p0$1 && p0$2 ==> v193$1 == v193$2;
    assert {:tag "predicatedEquality"} _b236 ==> p0$1 && p0$2 ==> v192$1 == v192$2;
    assert {:tag "predicatedEquality"} _b235 ==> p0$1 && p0$2 ==> v191$1 == v191$2;
    assert {:tag "predicatedEquality"} _b234 ==> p0$1 && p0$2 ==> v190$1 == v190$2;
    assert {:tag "predicatedEquality"} _b233 ==> p0$1 && p0$2 ==> v189$1 == v189$2;
    assert {:tag "predicatedEquality"} _b232 ==> p0$1 && p0$2 ==> v188$1 == v188$2;
    assert {:tag "predicatedEquality"} _b231 ==> p0$1 && p0$2 ==> v187$1 == v187$2;
    assert {:tag "predicatedEquality"} _b230 ==> p0$1 && p0$2 ==> v186$1 == v186$2;
    assert {:tag "predicatedEquality"} _b229 ==> p0$1 && p0$2 ==> v185$1 == v185$2;
    assert {:tag "predicatedEquality"} _b228 ==> p0$1 && p0$2 ==> v184$1 == v184$2;
    assert {:tag "predicatedEquality"} _b227 ==> p0$1 && p0$2 ==> v183$1 == v183$2;
    assert {:tag "predicatedEquality"} _b226 ==> p0$1 && p0$2 ==> v182$1 == v182$2;
    assert {:tag "predicatedEquality"} _b225 ==> p0$1 && p0$2 ==> v180$1 == v180$2;
    assert {:tag "predicatedEquality"} _b224 ==> p0$1 && p0$2 ==> v181$1 == v181$2;
    assert {:tag "predicatedEquality"} _b223 ==> p0$1 && p0$2 ==> v179$1 == v179$2;
    assert {:tag "predicatedEquality"} _b222 ==> p0$1 && p0$2 ==> v178$1 == v178$2;
    assert {:tag "predicatedEquality"} _b221 ==> p0$1 && p0$2 ==> v177$1 == v177$2;
    assert {:tag "predicatedEquality"} _b220 ==> p0$1 && p0$2 ==> v176$1 == v176$2;
    assert {:tag "predicatedEquality"} _b219 ==> p0$1 && p0$2 ==> v175$1 == v175$2;
    assert {:tag "predicatedEquality"} _b218 ==> p0$1 && p0$2 ==> v173$1 == v173$2;
    assert {:tag "predicatedEquality"} _b217 ==> p0$1 && p0$2 ==> v174$1 == v174$2;
    assert {:tag "predicatedEquality"} _b216 ==> p0$1 && p0$2 ==> v172$1 == v172$2;
    assert {:tag "predicatedEquality"} _b215 ==> p0$1 && p0$2 ==> v171$1 == v171$2;
    assert {:tag "predicatedEquality"} _b214 ==> p0$1 && p0$2 ==> v170$1 == v170$2;
    assert {:tag "predicatedEquality"} _b213 ==> p0$1 && p0$2 ==> v168$1 == v168$2;
    assert {:tag "predicatedEquality"} _b212 ==> p0$1 && p0$2 ==> v169$1 == v169$2;
    assert {:tag "predicatedEquality"} _b211 ==> p0$1 && p0$2 ==> v167$1 == v167$2;
    assert {:tag "predicatedEquality"} _b210 ==> p0$1 && p0$2 ==> v166$1 == v166$2;
    assert {:tag "predicatedEquality"} _b209 ==> p0$1 && p0$2 ==> v165$1 == v165$2;
    assert {:tag "predicatedEquality"} _b208 ==> p0$1 && p0$2 ==> v163$1 == v163$2;
    assert {:tag "predicatedEquality"} _b207 ==> p0$1 && p0$2 ==> v164$1 == v164$2;
    assert {:tag "predicatedEquality"} _b206 ==> p0$1 && p0$2 ==> v162$1 == v162$2;
    assert {:tag "predicatedEquality"} _b205 ==> p0$1 && p0$2 ==> v161$1 == v161$2;
    assert {:tag "predicatedEquality"} _b204 ==> p0$1 && p0$2 ==> v160$1 == v160$2;
    assert {:tag "predicatedEquality"} _b203 ==> p0$1 && p0$2 ==> v158$1 == v158$2;
    assert {:tag "predicatedEquality"} _b202 ==> p0$1 && p0$2 ==> v159$1 == v159$2;
    assert {:tag "predicatedEquality"} _b201 ==> p0$1 && p0$2 ==> v157$1 == v157$2;
    assert {:tag "predicatedEquality"} _b200 ==> p0$1 && p0$2 ==> v156$1 == v156$2;
    assert {:tag "predicatedEquality"} _b199 ==> p0$1 && p0$2 ==> v155$1 == v155$2;
    assert {:tag "predicatedEquality"} _b198 ==> p0$1 && p0$2 ==> v153$1 == v153$2;
    assert {:tag "predicatedEquality"} _b197 ==> p0$1 && p0$2 ==> v154$1 == v154$2;
    assert {:tag "predicatedEquality"} _b196 ==> p0$1 && p0$2 ==> v152$1 == v152$2;
    assert {:tag "predicatedEquality"} _b195 ==> p0$1 && p0$2 ==> v151$1 == v151$2;
    assert {:tag "predicatedEquality"} _b194 ==> p0$1 && p0$2 ==> v150$1 == v150$2;
    assert {:tag "predicatedEquality"} _b193 ==> p0$1 && p0$2 ==> v148$1 == v148$2;
    assert {:tag "predicatedEquality"} _b192 ==> p0$1 && p0$2 ==> v149$1 == v149$2;
    assert {:tag "predicatedEquality"} _b191 ==> p0$1 && p0$2 ==> v147$1 == v147$2;
    assert {:tag "predicatedEquality"} _b190 ==> p0$1 && p0$2 ==> v146$1 == v146$2;
    assert {:tag "predicatedEquality"} _b189 ==> p0$1 && p0$2 ==> v145$1 == v145$2;
    assert {:tag "predicatedEquality"} _b188 ==> p0$1 && p0$2 ==> v143$1 == v143$2;
    assert {:tag "predicatedEquality"} _b187 ==> p0$1 && p0$2 ==> v144$1 == v144$2;
    assert {:tag "predicatedEquality"} _b186 ==> p0$1 && p0$2 ==> v142$1 == v142$2;
    assert {:tag "predicatedEquality"} _b185 ==> p0$1 && p0$2 ==> v141$1 == v141$2;
    assert {:tag "predicatedEquality"} _b184 ==> p0$1 && p0$2 ==> v140$1 == v140$2;
    assert {:tag "predicatedEquality"} _b183 ==> p0$1 && p0$2 ==> v138$1 == v138$2;
    assert {:tag "predicatedEquality"} _b182 ==> p0$1 && p0$2 ==> v135$1 == v135$2;
    assert {:tag "predicatedEquality"} _b181 ==> p0$1 && p0$2 ==> v133$1 == v133$2;
    assert {:tag "predicatedEquality"} _b180 ==> p0$1 && p0$2 ==> v134$1 == v134$2;
    assert {:tag "predicatedEquality"} _b179 ==> p0$1 && p0$2 ==> v132$1 == v132$2;
    assert {:tag "predicatedEquality"} _b178 ==> p0$1 && p0$2 ==> v131$1 == v131$2;
    assert {:tag "predicatedEquality"} _b177 ==> p0$1 && p0$2 ==> v130$1 == v130$2;
    assert {:tag "predicatedEquality"} _b176 ==> p0$1 && p0$2 ==> v128$1 == v128$2;
    assert {:tag "predicatedEquality"} _b175 ==> p0$1 && p0$2 ==> v129$1 == v129$2;
    assert {:tag "predicatedEquality"} _b174 ==> p0$1 && p0$2 ==> v127$1 == v127$2;
    assert {:tag "predicatedEquality"} _b173 ==> p0$1 && p0$2 ==> v126$1 == v126$2;
    assert {:tag "predicatedEquality"} _b172 ==> p0$1 && p0$2 ==> v125$1 == v125$2;
    assert {:tag "predicatedEquality"} _b171 ==> p0$1 && p0$2 ==> v123$1 == v123$2;
    assert {:tag "predicatedEquality"} _b170 ==> p0$1 && p0$2 ==> v124$1 == v124$2;
    assert {:tag "predicatedEquality"} _b169 ==> p0$1 && p0$2 ==> v122$1 == v122$2;
    assert {:tag "predicatedEquality"} _b168 ==> p0$1 && p0$2 ==> v121$1 == v121$2;
    assert {:tag "predicatedEquality"} _b167 ==> p0$1 && p0$2 ==> v120$1 == v120$2;
    assert {:tag "predicatedEquality"} _b166 ==> p0$1 && p0$2 ==> v118$1 == v118$2;
    assert {:tag "predicatedEquality"} _b165 ==> p0$1 && p0$2 ==> v119$1 == v119$2;
    assert {:tag "predicatedEquality"} _b164 ==> p0$1 && p0$2 ==> v117$1 == v117$2;
    assert {:tag "predicatedEquality"} _b163 ==> p0$1 && p0$2 ==> v116$1 == v116$2;
    assert {:tag "predicatedEquality"} _b162 ==> p0$1 && p0$2 ==> v115$1 == v115$2;
    assert {:tag "predicatedEquality"} _b161 ==> p0$1 && p0$2 ==> v113$1 == v113$2;
    assert {:tag "predicatedEquality"} _b160 ==> p0$1 && p0$2 ==> v114$1 == v114$2;
    assert {:tag "predicatedEquality"} _b159 ==> p0$1 && p0$2 ==> v110$1 == v110$2;
    assert {:tag "predicatedEquality"} _b158 ==> p0$1 && p0$2 ==> v108$1 == v108$2;
    assert {:tag "predicatedEquality"} _b157 ==> p0$1 && p0$2 ==> v109$1 == v109$2;
    assert {:tag "predicatedEquality"} _b156 ==> p0$1 && p0$2 ==> v107$1 == v107$2;
    assert {:tag "predicatedEquality"} _b155 ==> p0$1 && p0$2 ==> v106$1 == v106$2;
    assert {:tag "predicatedEquality"} _b154 ==> p0$1 && p0$2 ==> v105$1 == v105$2;
    assert {:tag "predicatedEquality"} _b153 ==> p0$1 && p0$2 ==> v102$1 == v102$2;
    assert {:tag "predicatedEquality"} _b152 ==> p0$1 && p0$2 ==> v101$1 == v101$2;
    assert {:tag "predicatedEquality"} _b151 ==> p0$1 && p0$2 ==> v100$1 == v100$2;
    assert {:tag "predicatedEquality"} _b150 ==> p0$1 && p0$2 ==> v98$1 == v98$2;
    assert {:tag "predicatedEquality"} _b149 ==> p0$1 && p0$2 ==> v99$1 == v99$2;
    assert {:tag "predicatedEquality"} _b148 ==> p0$1 && p0$2 ==> v97$1 == v97$2;
    assert {:tag "predicatedEquality"} _b147 ==> p0$1 && p0$2 ==> v96$1 == v96$2;
    assert {:tag "predicatedEquality"} _b146 ==> p0$1 && p0$2 ==> v95$1 == v95$2;
    assert {:tag "predicatedEquality"} _b145 ==> p0$1 && p0$2 ==> v93$1 == v93$2;
    assert {:tag "predicatedEquality"} _b144 ==> p0$1 && p0$2 ==> v94$1 == v94$2;
    assert {:tag "predicatedEquality"} _b143 ==> p0$1 && p0$2 ==> v92$1 == v92$2;
    assert {:tag "predicatedEquality"} _b142 ==> p0$1 && p0$2 ==> v91$1 == v91$2;
    assert {:tag "predicatedEquality"} _b141 ==> p0$1 && p0$2 ==> v90$1 == v90$2;
    assert {:tag "predicatedEquality"} _b140 ==> p0$1 && p0$2 ==> v88$1 == v88$2;
    assert {:tag "predicatedEquality"} _b139 ==> p0$1 && p0$2 ==> v89$1 == v89$2;
    assert {:tag "predicatedEquality"} _b138 ==> p0$1 && p0$2 ==> v87$1 == v87$2;
    assert {:tag "predicatedEquality"} _b137 ==> p0$1 && p0$2 ==> v86$1 == v86$2;
    assert {:tag "predicatedEquality"} _b136 ==> p0$1 && p0$2 ==> v85$1 == v85$2;
    assert {:tag "predicatedEquality"} _b135 ==> p0$1 && p0$2 ==> v83$1 == v83$2;
    assert {:tag "predicatedEquality"} _b134 ==> p0$1 && p0$2 ==> v84$1 == v84$2;
    assert {:tag "predicatedEquality"} _b133 ==> p0$1 && p0$2 ==> v82$1 == v82$2;
    assert {:tag "predicatedEquality"} _b132 ==> p0$1 && p0$2 ==> v81$1 == v81$2;
    assert {:tag "predicatedEquality"} _b131 ==> p0$1 && p0$2 ==> v80$1 == v80$2;
    assert {:tag "predicatedEquality"} _b130 ==> p0$1 && p0$2 ==> v79$1 == v79$2;
    assert {:tag "predicatedEquality"} _b129 ==> p0$1 && p0$2 ==> v78$1 == v78$2;
    assert {:tag "predicatedEquality"} _b128 ==> p0$1 && p0$2 ==> v77$1 == v77$2;
    assert {:tag "predicatedEquality"} _b127 ==> p0$1 && p0$2 ==> v76$1 == v76$2;
    assert {:tag "predicatedEquality"} _b126 ==> p0$1 && p0$2 ==> v75$1 == v75$2;
    assert {:tag "predicatedEquality"} _b125 ==> p0$1 && p0$2 ==> v74$1 == v74$2;
    assert {:tag "predicatedEquality"} _b124 ==> p0$1 && p0$2 ==> v73$1 == v73$2;
    assert {:tag "predicatedEquality"} _b123 ==> p0$1 && p0$2 ==> v72$1 == v72$2;
    assert {:tag "predicatedEquality"} _b122 ==> p0$1 && p0$2 ==> v71$1 == v71$2;
    assert {:tag "predicatedEquality"} _b121 ==> p0$1 && p0$2 ==> v70$1 == v70$2;
    assert {:tag "predicatedEquality"} _b120 ==> p0$1 && p0$2 ==> v69$1 == v69$2;
    assert {:tag "predicatedEquality"} _b119 ==> p0$1 && p0$2 ==> v68$1 == v68$2;
    assert {:tag "predicatedEquality"} _b118 ==> p0$1 && p0$2 ==> v67$1 == v67$2;
    assert {:tag "predicatedEquality"} _b117 ==> p0$1 && p0$2 ==> v66$1 == v66$2;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> v65$1 == v65$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> v64$1 == v64$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> v63$1 == v63$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> v62$1 == v62$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> v61$1 == v61$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> v60$1 == v60$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> v58$1 == v58$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v57$1 == v57$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v56$1 == v56$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v55$1 == v55$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v54$1 == v54$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> v1$1 == v1$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> v0$1 == v0$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> v112$1 == v112$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> v111$1 == v111$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> v139$1 == v139$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> v137$1 == v137$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> v136$1 == v136$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> v103$1 == v103$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> v104$1 == v104$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> $16$1 == $16$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> $.0$1 == $.0$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b40 ==> p0$1 && p0$2 ==> $yy.i.1$1 == $yy.i.1$2;
    assert {:tag "predicatedEquality"} _b39 ==> p0$1 && p0$2 ==> $xx.i.1$1 == $xx.i.1$2;
    assert {:tag "predicatedEquality"} _b38 ==> p0$1 && p0$2 ==> $y.i2.1$1 == $y.i2.1$2;
    assert {:tag "predicatedEquality"} _b37 ==> p0$1 && p0$2 ==> $x.i1.1$1 == $x.i1.1$2;
    assert {:tag "predicatedEquality"} _b36 ==> p0$1 && p0$2 ==> $yC.i.0$1 == $yC.i.0$2;
    assert {:tag "predicatedEquality"} _b35 ==> p0$1 && p0$2 ==> $xC.i.0$1 == $xC.i.0$2;
    assert {:tag "predicatedEquality"} _b34 ==> p0$1 && p0$2 ==> $yy.i.0$1 == $yy.i.0$2;
    assert {:tag "predicatedEquality"} _b33 ==> p0$1 && p0$2 ==> $xx.i.0$1 == $xx.i.0$2;
    assert {:tag "predicatedEquality"} _b32 ==> p0$1 && p0$2 ==> $y.i2.0$1 == $y.i2.0$2;
    assert {:tag "predicatedEquality"} _b31 ==> p0$1 && p0$2 ==> $x.i1.0$1 == $x.i1.0$2;
    assert {:tag "predicatedEquality"} _b30 ==> p0$1 && p0$2 ==> $15$1 == $15$2;
    assert {:tag "predicatedEquality"} _b29 ==> p0$1 && p0$2 ==> $14$1 == $14$2;
    assert {:tag "predicatedEquality"} _b28 ==> p0$1 && p0$2 ==> $13$1 == $13$2;
    assert {:tag "predicatedEquality"} _b27 ==> p0$1 && p0$2 ==> $12$1 == $12$2;
    assert {:tag "predicatedEquality"} _b26 ==> p0$1 && p0$2 ==> $count.3$1 == $count.3$2;
    assert {:tag "predicatedEquality"} _b25 ==> p0$1 && p0$2 ==> $11$1 == $11$2;
    assert {:tag "predicatedEquality"} _b24 ==> p0$1 && p0$2 ==> $10$1 == $10$2;
    assert {:tag "predicatedEquality"} _b23 ==> p0$1 && p0$2 ==> $9$1 == $9$2;
    assert {:tag "predicatedEquality"} _b22 ==> p0$1 && p0$2 ==> $8$1 == $8$2;
    assert {:tag "predicatedEquality"} _b21 ==> p0$1 && p0$2 ==> $count.2$1 == $count.2$2;
    assert {:tag "predicatedEquality"} _b20 ==> p0$1 && p0$2 ==> $7$1 == $7$2;
    assert {:tag "predicatedEquality"} _b19 ==> p0$1 && p0$2 ==> $6$1 == $6$2;
    assert {:tag "predicatedEquality"} _b18 ==> p0$1 && p0$2 ==> $5$1 == $5$2;
    assert {:tag "predicatedEquality"} _b17 ==> p0$1 && p0$2 ==> $4$1 == $4$2;
    assert {:tag "predicatedEquality"} _b16 ==> p0$1 && p0$2 ==> $count.1$1 == $count.1$2;
    assert {:tag "predicatedEquality"} _b15 ==> p0$1 && p0$2 ==> $3$1 == $3$2;
    assert {:tag "predicatedEquality"} _b14 ==> p0$1 && p0$2 ==> $2$1 == $2$2;
    assert {:tag "predicatedEquality"} _b13 ==> p0$1 && p0$2 ==> $1$1 == $1$2;
    assert {:tag "predicatedEquality"} _b12 ==> p0$1 && p0$2 ==> $0$1 == $0$2;
    assert {:tag "predicatedEquality"} _b11 ==> p0$1 && p0$2 ==> $count.0$1 == $count.0$2;
    assert {:tag "loopPredicateEquality"} _b10 ==> true ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b9 ==> p0$1 == p0$2;
    assert {:tag "pow2NotZero"} _b8 ==> v189$2 != 0;
    assert {:tag "pow2"} _b7 ==> v189$2 == 0 || BV32_AND(v189$2, BV32_SUB(v189$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b6 ==> v189$1 != 0;
    assert {:tag "pow2"} _b5 ==> v189$1 == 0 || BV32_AND(v189$1, BV32_SUB(v189$1, 1)) == 0;
    assert {:tag "pow2NotZero"} _b4 ==> v188$2 != 0;
    assert {:tag "pow2"} _b3 ==> v188$2 == 0 || BV32_AND(v188$2, BV32_SUB(v188$2, 1)) == 0;
    assert {:tag "pow2NotZero"} _b2 ==> v188$1 != 0;
    assert {:tag "pow2"} _b1 ==> v188$1 == 0 || BV32_AND(v188$1, BV32_SUB(v188$1, 1)) == 0;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
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
    p110$1 := false;
    p110$2 := false;
    p2$1 := (if p0$1 && v0$1 then v0$1 else p2$1);
    p2$2 := (if p0$2 && v0$2 then v0$2 else p2$2);
    v1$1 := (if p2$1 then local_id_y$1 == 0 else v1$1);
    v1$2 := (if p2$2 then local_id_y$2 == 0 else v1$2);
    p4$1 := (if p2$1 && v1$1 then v1$1 else p4$1);
    p4$2 := (if p2$2 && v1$2 then v1$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_ATOMIC_$$blockCounter(p4$1, 0);
    assume {:do_not_predicate} {:check_id "check_state_22"} {:captureState "check_state_22"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_22"} {:sourceloc} {:sourceloc_num 9} _CHECK_ATOMIC_$$blockCounter(p4$2, 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$blockCounter"} true;
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v2$1 := (if p4$1 then _HAVOC_int$1 else v2$1);
    v2$2 := (if p4$2 then _HAVOC_int$2 else v2$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0, v2$1, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_23"} {:captureState "check_state_23"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_23"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] := (if p4$1 then v2$1 else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] := (if p4$2 then v2$2 else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_24"} {:captureState "check_state_24"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_24"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v3$1 := (if p4$1 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v3$1);
    v3$2 := (if p4$2 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v3$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$1, 0, BV32_UREM(v3$1, $gridWidth), $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_25"} {:captureState "check_state_25"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_25"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$2, 0, BV32_UREM(v3$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} true;
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0] := (if p4$1 then BV32_UREM(v3$1, $gridWidth) else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0]);
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0] := (if p4$2 then BV32_UREM(v3$2, $gridWidth) else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_26"} {:captureState "check_state_26"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_26"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v4$1 := (if p4$1 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v4$1);
    v4$2 := (if p4$2 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v4$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$1, 0, BV32_UDIV(v4$1, $gridWidth), $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_27"} {:captureState "check_state_27"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_27"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$2, 0, BV32_UDIV(v4$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} true;
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0] := (if p4$1 then BV32_UDIV(v4$1, $gridWidth) else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0]);
    $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0] := (if p4$2 then BV32_UDIV(v4$2, $gridWidth) else $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0]);
    goto __partitioned_block_$1_2;

  __partitioned_block_$1_2:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_1(-1, -1, p0$1, p0$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p0$1, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p0$2, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v5$1 := (if p0$1 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v5$1);
    v5$2 := (if p0$2 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0] else v5$2);
    v6$1 := (if p0$1 then BV32_UGE(v5$1, $numBlocks) else v6$1);
    v6$2 := (if p0$2 then BV32_UGE(v5$2, $numBlocks) else v6$2);
    p0$1 := (if p0$1 && v6$1 then !v6$1 else p0$1);
    p0$2 := (if p0$2 && v6$2 then !v6$2 else p0$2);
    p5$1 := (if p0$1 && !v6$1 then !v6$1 else p5$1);
    p5$2 := (if p0$2 && !v6$2 then !v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p5$1, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p5$2, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} true;
    v7$1 := (if p5$1 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0] else v7$1);
    v7$2 := (if p5$2 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0] else v7$2);
    v8$1 := (if p5$1 then BV32_ADD(BV32_MUL(group_size_x, v7$1), local_id_x$1) else v8$1);
    v8$2 := (if p5$2 then BV32_ADD(BV32_MUL(group_size_x, v7$2), local_id_x$2) else v8$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p5$1, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p5$2, 0, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} true;
    v9$1 := (if p5$1 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0] else v9$1);
    v9$2 := (if p5$2 then $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0] else v9$2);
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
    v13$1 := (if p9$1 then BV32_ADD(BV32_MUL($imageW, v10$1), v8$1) else v13$1);
    v13$2 := (if p9$2 then BV32_ADD(BV32_MUL($imageW, v10$2), v8$2) else v13$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_READ_$$dst(p9$1, BV32_MUL(v13$1, 4), $$dst[BV32_MUL(v13$1, 4)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 24} _CHECK_READ_$$dst(p9$2, BV32_MUL(v13$2, 4), $$dst[BV32_MUL(v13$2, 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v14$1 := (if p9$1 then $$dst[BV32_MUL(v13$1, 4)] else v14$1);
    v14$2 := (if p9$2 then $$dst[BV32_MUL(v13$2, 4)] else v14$2);
    $$pixelColor$0$1 := (if p9$1 then v14$1 else $$pixelColor$0$1);
    $$pixelColor$0$2 := (if p9$2 then v14$2 else $$pixelColor$0$2);
    call {:sourceloc} {:sourceloc_num 26} _LOG_READ_$$dst(p9$1, BV32_ADD(BV32_MUL(v13$1, 4), 1), $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 26} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 26} _CHECK_READ_$$dst(p9$2, BV32_ADD(BV32_MUL(v13$2, 4), 1), $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v15$1 := (if p9$1 then $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 1)] else v15$1);
    v15$2 := (if p9$2 then $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 1)] else v15$2);
    $$pixelColor$1$1 := (if p9$1 then v15$1 else $$pixelColor$1$1);
    $$pixelColor$1$2 := (if p9$2 then v15$2 else $$pixelColor$1$2);
    call {:sourceloc} {:sourceloc_num 28} _LOG_READ_$$dst(p9$1, BV32_ADD(BV32_MUL(v13$1, 4), 2), $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 28} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 28} _CHECK_READ_$$dst(p9$2, BV32_ADD(BV32_MUL(v13$2, 4), 2), $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v16$1 := (if p9$1 then $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 2)] else v16$1);
    v16$2 := (if p9$2 then $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 2)] else v16$2);
    $$pixelColor$2$1 := (if p9$1 then v16$1 else $$pixelColor$2$1);
    $$pixelColor$2$2 := (if p9$2 then v16$2 else $$pixelColor$2$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$dst(p9$1, BV32_ADD(BV32_MUL(v13$1, 4), 3), $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 3)]);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$dst(p9$2, BV32_ADD(BV32_MUL(v13$2, 4), 3), $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 3)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v17$1 := (if p9$1 then $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 3)] else v17$1);
    v17$2 := (if p9$2 then $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 3)] else v17$2);
    $$pixelColor$3$1 := (if p9$1 then v17$1 else $$pixelColor$3$1);
    $$pixelColor$3$2 := (if p9$2 then v17$2 else $$pixelColor$3$2);
    v18$1 := (if p9$1 then BV32_SGT(v8$1, 0) else v18$1);
    v18$2 := (if p9$2 then BV32_SGT(v8$2, 0) else v18$2);
    p11$1 := (if p9$1 && v18$1 then v18$1 else p11$1);
    p11$2 := (if p9$2 && v18$2 then v18$2 else p11$2);
    p10$1 := (if p9$1 && !v18$1 then !v18$1 else p10$1);
    p10$2 := (if p9$2 && !v18$2 then !v18$2 else p10$2);
    $count.0$1 := (if p10$1 then 0 else $count.0$1);
    $count.0$2 := (if p10$2 then 0 else $count.0$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_READ_$$dst(p11$1, BV32_MUL(BV32_SUB(v13$1, 1), 4), $$dst[BV32_MUL(BV32_SUB(v13$1, 1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_19"} {:captureState "check_state_19"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_19"} {:sourceloc} {:sourceloc_num 33} _CHECK_READ_$$dst(p11$2, BV32_MUL(BV32_SUB(v13$2, 1), 4), $$dst[BV32_MUL(BV32_SUB(v13$2, 1), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v19$1 := (if p11$1 then $$dst[BV32_MUL(BV32_SUB(v13$1, 1), 4)] else v19$1);
    v19$2 := (if p11$2 then $$dst[BV32_MUL(BV32_SUB(v13$2, 1), 4)] else v19$2);
    v20$1 := (if p11$1 then $$pixelColor$0$1 else v20$1);
    v20$2 := (if p11$2 then $$pixelColor$0$2 else v20$2);
    v21$1 := (if p11$1 then BV32_SUB(BV8_ZEXT32(v19$1), BV8_ZEXT32(v20$1)) else v21$1);
    v21$2 := (if p11$2 then BV32_SUB(BV8_ZEXT32(v19$2), BV8_ZEXT32(v20$2)) else v21$2);
    call {:sourceloc} {:sourceloc_num 35} _LOG_READ_$$dst(p11$1, BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_20"} {:captureState "check_state_20"} {:sourceloc} {:sourceloc_num 35} true;
    call {:check_id "check_state_20"} {:sourceloc} {:sourceloc_num 35} _CHECK_READ_$$dst(p11$2, BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v22$1 := (if p11$1 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 1)] else v22$1);
    v22$2 := (if p11$2 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 1)] else v22$2);
    v23$1 := (if p11$1 then $$pixelColor$1$1 else v23$1);
    v23$2 := (if p11$2 then $$pixelColor$1$2 else v23$2);
    v24$1 := (if p11$1 then BV32_SUB(BV8_ZEXT32(v22$1), BV8_ZEXT32(v23$1)) else v24$1);
    v24$2 := (if p11$2 then BV32_SUB(BV8_ZEXT32(v22$2), BV8_ZEXT32(v23$2)) else v24$2);
    call {:sourceloc} {:sourceloc_num 37} _LOG_READ_$$dst(p11$1, BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_21"} {:captureState "check_state_21"} {:sourceloc} {:sourceloc_num 37} true;
    call {:check_id "check_state_21"} {:sourceloc} {:sourceloc_num 37} _CHECK_READ_$$dst(p11$2, BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v25$1 := (if p11$1 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, 1), 4), 2)] else v25$1);
    v25$2 := (if p11$2 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, 1), 4), 2)] else v25$2);
    v26$1 := (if p11$1 then $$pixelColor$2$1 else v26$1);
    v26$2 := (if p11$2 then $$pixelColor$2$2 else v26$2);
    v27$1 := (if p11$1 then BV32_SUB(BV8_ZEXT32(v25$1), BV8_ZEXT32(v26$1)) else v27$1);
    v27$2 := (if p11$2 then BV32_SUB(BV8_ZEXT32(v25$2), BV8_ZEXT32(v26$2)) else v27$2);
    v28$1 := (if p11$1 then BV32_SLT(v21$1, 0) else v28$1);
    v28$2 := (if p11$2 then BV32_SLT(v21$2, 0) else v28$2);
    p13$1 := (if p11$1 && v28$1 then v28$1 else p13$1);
    p13$2 := (if p11$2 && v28$2 then v28$2 else p13$2);
    p12$1 := (if p11$1 && !v28$1 then !v28$1 else p12$1);
    p12$2 := (if p11$2 && !v28$2 then !v28$2 else p12$2);
    $0$1 := (if p12$1 then v21$1 else $0$1);
    $0$2 := (if p12$2 then v21$2 else $0$2);
    $0$1 := (if p13$1 then BV32_SUB(0, v21$1) else $0$1);
    $0$2 := (if p13$2 then BV32_SUB(0, v21$2) else $0$2);
    v29$1 := (if p11$1 then BV32_SGT($0$1, 10) else v29$1);
    v29$2 := (if p11$2 then BV32_SGT($0$2, 10) else v29$2);
    p14$1 := (if p11$1 && v29$1 then v29$1 else p14$1);
    p14$2 := (if p11$2 && v29$2 then v29$2 else p14$2);
    p15$1 := (if p11$1 && !v29$1 then !v29$1 else p15$1);
    p15$2 := (if p11$2 && !v29$2 then !v29$2 else p15$2);
    $1$1 := (if p14$1 then -1 else $1$1);
    $1$2 := (if p14$2 then -1 else $1$2);
    v30$1 := (if p15$1 then BV32_SLT(v24$1, 0) else v30$1);
    v30$2 := (if p15$2 then BV32_SLT(v24$2, 0) else v30$2);
    p17$1 := (if p15$1 && v30$1 then v30$1 else p17$1);
    p17$2 := (if p15$2 && v30$2 then v30$2 else p17$2);
    p16$1 := (if p15$1 && !v30$1 then !v30$1 else p16$1);
    p16$2 := (if p15$2 && !v30$2 then !v30$2 else p16$2);
    $2$1 := (if p16$1 then v24$1 else $2$1);
    $2$2 := (if p16$2 then v24$2 else $2$2);
    $2$1 := (if p17$1 then BV32_SUB(0, v24$1) else $2$1);
    $2$2 := (if p17$2 then BV32_SUB(0, v24$2) else $2$2);
    v31$1 := (if p15$1 then BV32_SGT($2$1, 10) else v31$1);
    v31$2 := (if p15$2 then BV32_SGT($2$2, 10) else v31$2);
    p18$1 := (if p15$1 && v31$1 then v31$1 else p18$1);
    p18$2 := (if p15$2 && v31$2 then v31$2 else p18$2);
    p19$1 := (if p15$1 && !v31$1 then !v31$1 else p19$1);
    p19$2 := (if p15$2 && !v31$2 then !v31$2 else p19$2);
    $1$1 := (if p18$1 then -1 else $1$1);
    $1$2 := (if p18$2 then -1 else $1$2);
    v32$1 := (if p19$1 then BV32_SLT(v27$1, 0) else v32$1);
    v32$2 := (if p19$2 then BV32_SLT(v27$2, 0) else v32$2);
    p21$1 := (if p19$1 && v32$1 then v32$1 else p21$1);
    p21$2 := (if p19$2 && v32$2 then v32$2 else p21$2);
    p20$1 := (if p19$1 && !v32$1 then !v32$1 else p20$1);
    p20$2 := (if p19$2 && !v32$2 then !v32$2 else p20$2);
    $3$1 := (if p20$1 then v27$1 else $3$1);
    $3$2 := (if p20$2 then v27$2 else $3$2);
    $3$1 := (if p21$1 then BV32_SUB(0, v27$1) else $3$1);
    $3$2 := (if p21$2 then BV32_SUB(0, v27$2) else $3$2);
    $1$1 := (if p19$1 then (if BV32_SGT($3$1, 10) then 1 else 0) else $1$1);
    $1$2 := (if p19$2 then (if BV32_SGT($3$2, 10) then 1 else 0) else $1$2);
    $count.0$1 := (if p11$1 then BV1_ZEXT32($1$1) else $count.0$1);
    $count.0$2 := (if p11$2 then BV1_ZEXT32($1$2) else $count.0$2);
    v33$1 := (if p9$1 then BV32_SLT(BV32_ADD(v8$1, 1), $imageW) else v33$1);
    v33$2 := (if p9$2 then BV32_SLT(BV32_ADD(v8$2, 1), $imageW) else v33$2);
    p23$1 := (if p9$1 && v33$1 then v33$1 else p23$1);
    p23$2 := (if p9$2 && v33$2 then v33$2 else p23$2);
    p22$1 := (if p9$1 && !v33$1 then !v33$1 else p22$1);
    p22$2 := (if p9$2 && !v33$2 then !v33$2 else p22$2);
    $count.1$1 := (if p22$1 then $count.0$1 else $count.1$1);
    $count.1$2 := (if p22$2 then $count.0$2 else $count.1$2);
    call {:sourceloc} {:sourceloc_num 53} _LOG_READ_$$dst(p23$1, BV32_MUL(BV32_ADD(v13$1, 1), 4), $$dst[BV32_MUL(BV32_ADD(v13$1, 1), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 53} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 53} _CHECK_READ_$$dst(p23$2, BV32_MUL(BV32_ADD(v13$2, 1), 4), $$dst[BV32_MUL(BV32_ADD(v13$2, 1), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v34$1 := (if p23$1 then $$dst[BV32_MUL(BV32_ADD(v13$1, 1), 4)] else v34$1);
    v34$2 := (if p23$2 then $$dst[BV32_MUL(BV32_ADD(v13$2, 1), 4)] else v34$2);
    v35$1 := (if p23$1 then $$pixelColor$0$1 else v35$1);
    v35$2 := (if p23$2 then $$pixelColor$0$2 else v35$2);
    v36$1 := (if p23$1 then BV32_SUB(BV8_ZEXT32(v34$1), BV8_ZEXT32(v35$1)) else v36$1);
    v36$2 := (if p23$2 then BV32_SUB(BV8_ZEXT32(v34$2), BV8_ZEXT32(v35$2)) else v36$2);
    call {:sourceloc} {:sourceloc_num 55} _LOG_READ_$$dst(p23$1, BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 55} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 55} _CHECK_READ_$$dst(p23$2, BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v37$1 := (if p23$1 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 1)] else v37$1);
    v37$2 := (if p23$2 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 1)] else v37$2);
    v38$1 := (if p23$1 then $$pixelColor$1$1 else v38$1);
    v38$2 := (if p23$2 then $$pixelColor$1$2 else v38$2);
    v39$1 := (if p23$1 then BV32_SUB(BV8_ZEXT32(v37$1), BV8_ZEXT32(v38$1)) else v39$1);
    v39$2 := (if p23$2 then BV32_SUB(BV8_ZEXT32(v37$2), BV8_ZEXT32(v38$2)) else v39$2);
    call {:sourceloc} {:sourceloc_num 57} _LOG_READ_$$dst(p23$1, BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 57} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 57} _CHECK_READ_$$dst(p23$2, BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v40$1 := (if p23$1 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, 1), 4), 2)] else v40$1);
    v40$2 := (if p23$2 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, 1), 4), 2)] else v40$2);
    v41$1 := (if p23$1 then $$pixelColor$2$1 else v41$1);
    v41$2 := (if p23$2 then $$pixelColor$2$2 else v41$2);
    v42$1 := (if p23$1 then BV32_SUB(BV8_ZEXT32(v40$1), BV8_ZEXT32(v41$1)) else v42$1);
    v42$2 := (if p23$2 then BV32_SUB(BV8_ZEXT32(v40$2), BV8_ZEXT32(v41$2)) else v42$2);
    v43$1 := (if p23$1 then BV32_SLT(v36$1, 0) else v43$1);
    v43$2 := (if p23$2 then BV32_SLT(v36$2, 0) else v43$2);
    p25$1 := (if p23$1 && v43$1 then v43$1 else p25$1);
    p25$2 := (if p23$2 && v43$2 then v43$2 else p25$2);
    p24$1 := (if p23$1 && !v43$1 then !v43$1 else p24$1);
    p24$2 := (if p23$2 && !v43$2 then !v43$2 else p24$2);
    $4$1 := (if p24$1 then v36$1 else $4$1);
    $4$2 := (if p24$2 then v36$2 else $4$2);
    $4$1 := (if p25$1 then BV32_SUB(0, v36$1) else $4$1);
    $4$2 := (if p25$2 then BV32_SUB(0, v36$2) else $4$2);
    v44$1 := (if p23$1 then BV32_SGT($4$1, 10) else v44$1);
    v44$2 := (if p23$2 then BV32_SGT($4$2, 10) else v44$2);
    p26$1 := (if p23$1 && v44$1 then v44$1 else p26$1);
    p26$2 := (if p23$2 && v44$2 then v44$2 else p26$2);
    p27$1 := (if p23$1 && !v44$1 then !v44$1 else p27$1);
    p27$2 := (if p23$2 && !v44$2 then !v44$2 else p27$2);
    $5$1 := (if p26$1 then -1 else $5$1);
    $5$2 := (if p26$2 then -1 else $5$2);
    v45$1 := (if p27$1 then BV32_SLT(v39$1, 0) else v45$1);
    v45$2 := (if p27$2 then BV32_SLT(v39$2, 0) else v45$2);
    p29$1 := (if p27$1 && v45$1 then v45$1 else p29$1);
    p29$2 := (if p27$2 && v45$2 then v45$2 else p29$2);
    p28$1 := (if p27$1 && !v45$1 then !v45$1 else p28$1);
    p28$2 := (if p27$2 && !v45$2 then !v45$2 else p28$2);
    $6$1 := (if p28$1 then v39$1 else $6$1);
    $6$2 := (if p28$2 then v39$2 else $6$2);
    $6$1 := (if p29$1 then BV32_SUB(0, v39$1) else $6$1);
    $6$2 := (if p29$2 then BV32_SUB(0, v39$2) else $6$2);
    v46$1 := (if p27$1 then BV32_SGT($6$1, 10) else v46$1);
    v46$2 := (if p27$2 then BV32_SGT($6$2, 10) else v46$2);
    p30$1 := (if p27$1 && v46$1 then v46$1 else p30$1);
    p30$2 := (if p27$2 && v46$2 then v46$2 else p30$2);
    p31$1 := (if p27$1 && !v46$1 then !v46$1 else p31$1);
    p31$2 := (if p27$2 && !v46$2 then !v46$2 else p31$2);
    $5$1 := (if p30$1 then -1 else $5$1);
    $5$2 := (if p30$2 then -1 else $5$2);
    v47$1 := (if p31$1 then BV32_SLT(v42$1, 0) else v47$1);
    v47$2 := (if p31$2 then BV32_SLT(v42$2, 0) else v47$2);
    p33$1 := (if p31$1 && v47$1 then v47$1 else p33$1);
    p33$2 := (if p31$2 && v47$2 then v47$2 else p33$2);
    p32$1 := (if p31$1 && !v47$1 then !v47$1 else p32$1);
    p32$2 := (if p31$2 && !v47$2 then !v47$2 else p32$2);
    $7$1 := (if p32$1 then v42$1 else $7$1);
    $7$2 := (if p32$2 then v42$2 else $7$2);
    $7$1 := (if p33$1 then BV32_SUB(0, v42$1) else $7$1);
    $7$2 := (if p33$2 then BV32_SUB(0, v42$2) else $7$2);
    $5$1 := (if p31$1 then (if BV32_SGT($7$1, 10) then 1 else 0) else $5$1);
    $5$2 := (if p31$2 then (if BV32_SGT($7$2, 10) then 1 else 0) else $5$2);
    $count.1$1 := (if p23$1 then BV32_ADD($count.0$1, BV1_ZEXT32($5$1)) else $count.1$1);
    $count.1$2 := (if p23$2 then BV32_ADD($count.0$2, BV1_ZEXT32($5$2)) else $count.1$2);
    v48$1 := (if p9$1 then BV32_SGT(v10$1, 0) else v48$1);
    v48$2 := (if p9$2 then BV32_SGT(v10$2, 0) else v48$2);
    p35$1 := (if p9$1 && v48$1 then v48$1 else p35$1);
    p35$2 := (if p9$2 && v48$2 then v48$2 else p35$2);
    p34$1 := (if p9$1 && !v48$1 then !v48$1 else p34$1);
    p34$2 := (if p9$2 && !v48$2 then !v48$2 else p34$2);
    $count.2$1 := (if p34$1 then $count.1$1 else $count.2$1);
    $count.2$2 := (if p34$2 then $count.1$2 else $count.2$2);
    call {:sourceloc} {:sourceloc_num 73} _LOG_READ_$$dst(p35$1, BV32_MUL(BV32_SUB(v13$1, $imageW), 4), $$dst[BV32_MUL(BV32_SUB(v13$1, $imageW), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 73} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 73} _CHECK_READ_$$dst(p35$2, BV32_MUL(BV32_SUB(v13$2, $imageW), 4), $$dst[BV32_MUL(BV32_SUB(v13$2, $imageW), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v49$1 := (if p35$1 then $$dst[BV32_MUL(BV32_SUB(v13$1, $imageW), 4)] else v49$1);
    v49$2 := (if p35$2 then $$dst[BV32_MUL(BV32_SUB(v13$2, $imageW), 4)] else v49$2);
    v50$1 := (if p35$1 then $$pixelColor$0$1 else v50$1);
    v50$2 := (if p35$2 then $$pixelColor$0$2 else v50$2);
    v51$1 := (if p35$1 then BV32_SUB(BV8_ZEXT32(v49$1), BV8_ZEXT32(v50$1)) else v51$1);
    v51$2 := (if p35$2 then BV32_SUB(BV8_ZEXT32(v49$2), BV8_ZEXT32(v50$2)) else v51$2);
    call {:sourceloc} {:sourceloc_num 75} _LOG_READ_$$dst(p35$1, BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 75} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 75} _CHECK_READ_$$dst(p35$2, BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v52$1 := (if p35$1 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 1)] else v52$1);
    v52$2 := (if p35$2 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 1)] else v52$2);
    v53$1 := (if p35$1 then $$pixelColor$1$1 else v53$1);
    v53$2 := (if p35$2 then $$pixelColor$1$2 else v53$2);
    v54$1 := (if p35$1 then BV32_SUB(BV8_ZEXT32(v52$1), BV8_ZEXT32(v53$1)) else v54$1);
    v54$2 := (if p35$2 then BV32_SUB(BV8_ZEXT32(v52$2), BV8_ZEXT32(v53$2)) else v54$2);
    call {:sourceloc} {:sourceloc_num 77} _LOG_READ_$$dst(p35$1, BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 77} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 77} _CHECK_READ_$$dst(p35$2, BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v55$1 := (if p35$1 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$1, $imageW), 4), 2)] else v55$1);
    v55$2 := (if p35$2 then $$dst[BV32_ADD(BV32_MUL(BV32_SUB(v13$2, $imageW), 4), 2)] else v55$2);
    v56$1 := (if p35$1 then $$pixelColor$2$1 else v56$1);
    v56$2 := (if p35$2 then $$pixelColor$2$2 else v56$2);
    v57$1 := (if p35$1 then BV32_SUB(BV8_ZEXT32(v55$1), BV8_ZEXT32(v56$1)) else v57$1);
    v57$2 := (if p35$2 then BV32_SUB(BV8_ZEXT32(v55$2), BV8_ZEXT32(v56$2)) else v57$2);
    v58$1 := (if p35$1 then BV32_SLT(v51$1, 0) else v58$1);
    v58$2 := (if p35$2 then BV32_SLT(v51$2, 0) else v58$2);
    p37$1 := (if p35$1 && v58$1 then v58$1 else p37$1);
    p37$2 := (if p35$2 && v58$2 then v58$2 else p37$2);
    p36$1 := (if p35$1 && !v58$1 then !v58$1 else p36$1);
    p36$2 := (if p35$2 && !v58$2 then !v58$2 else p36$2);
    $8$1 := (if p36$1 then v51$1 else $8$1);
    $8$2 := (if p36$2 then v51$2 else $8$2);
    $8$1 := (if p37$1 then BV32_SUB(0, v51$1) else $8$1);
    $8$2 := (if p37$2 then BV32_SUB(0, v51$2) else $8$2);
    v59$1 := (if p35$1 then BV32_SGT($8$1, 10) else v59$1);
    v59$2 := (if p35$2 then BV32_SGT($8$2, 10) else v59$2);
    p38$1 := (if p35$1 && v59$1 then v59$1 else p38$1);
    p38$2 := (if p35$2 && v59$2 then v59$2 else p38$2);
    p39$1 := (if p35$1 && !v59$1 then !v59$1 else p39$1);
    p39$2 := (if p35$2 && !v59$2 then !v59$2 else p39$2);
    $9$1 := (if p38$1 then -1 else $9$1);
    $9$2 := (if p38$2 then -1 else $9$2);
    v60$1 := (if p39$1 then BV32_SLT(v54$1, 0) else v60$1);
    v60$2 := (if p39$2 then BV32_SLT(v54$2, 0) else v60$2);
    p41$1 := (if p39$1 && v60$1 then v60$1 else p41$1);
    p41$2 := (if p39$2 && v60$2 then v60$2 else p41$2);
    p40$1 := (if p39$1 && !v60$1 then !v60$1 else p40$1);
    p40$2 := (if p39$2 && !v60$2 then !v60$2 else p40$2);
    $10$1 := (if p40$1 then v54$1 else $10$1);
    $10$2 := (if p40$2 then v54$2 else $10$2);
    $10$1 := (if p41$1 then BV32_SUB(0, v54$1) else $10$1);
    $10$2 := (if p41$2 then BV32_SUB(0, v54$2) else $10$2);
    v61$1 := (if p39$1 then BV32_SGT($10$1, 10) else v61$1);
    v61$2 := (if p39$2 then BV32_SGT($10$2, 10) else v61$2);
    p42$1 := (if p39$1 && v61$1 then v61$1 else p42$1);
    p42$2 := (if p39$2 && v61$2 then v61$2 else p42$2);
    p43$1 := (if p39$1 && !v61$1 then !v61$1 else p43$1);
    p43$2 := (if p39$2 && !v61$2 then !v61$2 else p43$2);
    $9$1 := (if p42$1 then -1 else $9$1);
    $9$2 := (if p42$2 then -1 else $9$2);
    v62$1 := (if p43$1 then BV32_SLT(v57$1, 0) else v62$1);
    v62$2 := (if p43$2 then BV32_SLT(v57$2, 0) else v62$2);
    p45$1 := (if p43$1 && v62$1 then v62$1 else p45$1);
    p45$2 := (if p43$2 && v62$2 then v62$2 else p45$2);
    p44$1 := (if p43$1 && !v62$1 then !v62$1 else p44$1);
    p44$2 := (if p43$2 && !v62$2 then !v62$2 else p44$2);
    $11$1 := (if p44$1 then v57$1 else $11$1);
    $11$2 := (if p44$2 then v57$2 else $11$2);
    $11$1 := (if p45$1 then BV32_SUB(0, v57$1) else $11$1);
    $11$2 := (if p45$2 then BV32_SUB(0, v57$2) else $11$2);
    $9$1 := (if p43$1 then (if BV32_SGT($11$1, 10) then 1 else 0) else $9$1);
    $9$2 := (if p43$2 then (if BV32_SGT($11$2, 10) then 1 else 0) else $9$2);
    $count.2$1 := (if p35$1 then BV32_ADD($count.1$1, BV1_ZEXT32($9$1)) else $count.2$1);
    $count.2$2 := (if p35$2 then BV32_ADD($count.1$2, BV1_ZEXT32($9$2)) else $count.2$2);
    v63$1 := (if p9$1 then BV32_SLT(BV32_ADD(v10$1, 1), $imageH) else v63$1);
    v63$2 := (if p9$2 then BV32_SLT(BV32_ADD(v10$2, 1), $imageH) else v63$2);
    p47$1 := (if p9$1 && v63$1 then v63$1 else p47$1);
    p47$2 := (if p9$2 && v63$2 then v63$2 else p47$2);
    p46$1 := (if p9$1 && !v63$1 then !v63$1 else p46$1);
    p46$2 := (if p9$2 && !v63$2 then !v63$2 else p46$2);
    $count.3$1 := (if p46$1 then $count.2$1 else $count.3$1);
    $count.3$2 := (if p46$2 then $count.2$2 else $count.3$2);
    call {:sourceloc} {:sourceloc_num 93} _LOG_READ_$$dst(p47$1, BV32_MUL(BV32_ADD(v13$1, $imageW), 4), $$dst[BV32_MUL(BV32_ADD(v13$1, $imageW), 4)]);
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 93} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 93} _CHECK_READ_$$dst(p47$2, BV32_MUL(BV32_ADD(v13$2, $imageW), 4), $$dst[BV32_MUL(BV32_ADD(v13$2, $imageW), 4)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v64$1 := (if p47$1 then $$dst[BV32_MUL(BV32_ADD(v13$1, $imageW), 4)] else v64$1);
    v64$2 := (if p47$2 then $$dst[BV32_MUL(BV32_ADD(v13$2, $imageW), 4)] else v64$2);
    v65$1 := (if p47$1 then $$pixelColor$0$1 else v65$1);
    v65$2 := (if p47$2 then $$pixelColor$0$2 else v65$2);
    v66$1 := (if p47$1 then BV32_SUB(BV8_ZEXT32(v64$1), BV8_ZEXT32(v65$1)) else v66$1);
    v66$2 := (if p47$2 then BV32_SUB(BV8_ZEXT32(v64$2), BV8_ZEXT32(v65$2)) else v66$2);
    call {:sourceloc} {:sourceloc_num 95} _LOG_READ_$$dst(p47$1, BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 1)]);
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 95} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 95} _CHECK_READ_$$dst(p47$2, BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 1), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 1)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v67$1 := (if p47$1 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 1)] else v67$1);
    v67$2 := (if p47$2 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 1)] else v67$2);
    v68$1 := (if p47$1 then $$pixelColor$1$1 else v68$1);
    v68$2 := (if p47$2 then $$pixelColor$1$2 else v68$2);
    v69$1 := (if p47$1 then BV32_SUB(BV8_ZEXT32(v67$1), BV8_ZEXT32(v68$1)) else v69$1);
    v69$2 := (if p47$2 then BV32_SUB(BV8_ZEXT32(v67$2), BV8_ZEXT32(v68$2)) else v69$2);
    call {:sourceloc} {:sourceloc_num 97} _LOG_READ_$$dst(p47$1, BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 2)]);
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 97} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 97} _CHECK_READ_$$dst(p47$2, BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 2), $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 2)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v70$1 := (if p47$1 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$1, $imageW), 4), 2)] else v70$1);
    v70$2 := (if p47$2 then $$dst[BV32_ADD(BV32_MUL(BV32_ADD(v13$2, $imageW), 4), 2)] else v70$2);
    v71$1 := (if p47$1 then $$pixelColor$2$1 else v71$1);
    v71$2 := (if p47$2 then $$pixelColor$2$2 else v71$2);
    v72$1 := (if p47$1 then BV32_SUB(BV8_ZEXT32(v70$1), BV8_ZEXT32(v71$1)) else v72$1);
    v72$2 := (if p47$2 then BV32_SUB(BV8_ZEXT32(v70$2), BV8_ZEXT32(v71$2)) else v72$2);
    v73$1 := (if p47$1 then BV32_SLT(v66$1, 0) else v73$1);
    v73$2 := (if p47$2 then BV32_SLT(v66$2, 0) else v73$2);
    p49$1 := (if p47$1 && v73$1 then v73$1 else p49$1);
    p49$2 := (if p47$2 && v73$2 then v73$2 else p49$2);
    p48$1 := (if p47$1 && !v73$1 then !v73$1 else p48$1);
    p48$2 := (if p47$2 && !v73$2 then !v73$2 else p48$2);
    $12$1 := (if p48$1 then v66$1 else $12$1);
    $12$2 := (if p48$2 then v66$2 else $12$2);
    $12$1 := (if p49$1 then BV32_SUB(0, v66$1) else $12$1);
    $12$2 := (if p49$2 then BV32_SUB(0, v66$2) else $12$2);
    v74$1 := (if p47$1 then BV32_SGT($12$1, 10) else v74$1);
    v74$2 := (if p47$2 then BV32_SGT($12$2, 10) else v74$2);
    p50$1 := (if p47$1 && v74$1 then v74$1 else p50$1);
    p50$2 := (if p47$2 && v74$2 then v74$2 else p50$2);
    p51$1 := (if p47$1 && !v74$1 then !v74$1 else p51$1);
    p51$2 := (if p47$2 && !v74$2 then !v74$2 else p51$2);
    $13$1 := (if p50$1 then -1 else $13$1);
    $13$2 := (if p50$2 then -1 else $13$2);
    v75$1 := (if p51$1 then BV32_SLT(v69$1, 0) else v75$1);
    v75$2 := (if p51$2 then BV32_SLT(v69$2, 0) else v75$2);
    p53$1 := (if p51$1 && v75$1 then v75$1 else p53$1);
    p53$2 := (if p51$2 && v75$2 then v75$2 else p53$2);
    p52$1 := (if p51$1 && !v75$1 then !v75$1 else p52$1);
    p52$2 := (if p51$2 && !v75$2 then !v75$2 else p52$2);
    $14$1 := (if p52$1 then v69$1 else $14$1);
    $14$2 := (if p52$2 then v69$2 else $14$2);
    $14$1 := (if p53$1 then BV32_SUB(0, v69$1) else $14$1);
    $14$2 := (if p53$2 then BV32_SUB(0, v69$2) else $14$2);
    v76$1 := (if p51$1 then BV32_SGT($14$1, 10) else v76$1);
    v76$2 := (if p51$2 then BV32_SGT($14$2, 10) else v76$2);
    p54$1 := (if p51$1 && v76$1 then v76$1 else p54$1);
    p54$2 := (if p51$2 && v76$2 then v76$2 else p54$2);
    p55$1 := (if p51$1 && !v76$1 then !v76$1 else p55$1);
    p55$2 := (if p51$2 && !v76$2 then !v76$2 else p55$2);
    $13$1 := (if p54$1 then -1 else $13$1);
    $13$2 := (if p54$2 then -1 else $13$2);
    v77$1 := (if p55$1 then BV32_SLT(v72$1, 0) else v77$1);
    v77$2 := (if p55$2 then BV32_SLT(v72$2, 0) else v77$2);
    p57$1 := (if p55$1 && v77$1 then v77$1 else p57$1);
    p57$2 := (if p55$2 && v77$2 then v77$2 else p57$2);
    p56$1 := (if p55$1 && !v77$1 then !v77$1 else p56$1);
    p56$2 := (if p55$2 && !v77$2 then !v77$2 else p56$2);
    $15$1 := (if p56$1 then v72$1 else $15$1);
    $15$2 := (if p56$2 then v72$2 else $15$2);
    $15$1 := (if p57$1 then BV32_SUB(0, v72$1) else $15$1);
    $15$2 := (if p57$2 then BV32_SUB(0, v72$2) else $15$2);
    $13$1 := (if p55$1 then (if BV32_SGT($15$1, 10) then 1 else 0) else $13$1);
    $13$2 := (if p55$2 then (if BV32_SGT($15$2, 10) then 1 else 0) else $13$2);
    $count.3$1 := (if p47$1 then BV32_ADD($count.2$1, BV1_ZEXT32($13$1)) else $count.3$1);
    $count.3$2 := (if p47$2 then BV32_ADD($count.2$2, BV1_ZEXT32($13$2)) else $count.3$2);
    v78$1 := (if p9$1 then $count.3$1 != 0 else v78$1);
    v78$2 := (if p9$2 then $count.3$2 != 0 else v78$2);
    p59$1 := (if p9$1 && v78$1 then v78$1 else p59$1);
    p59$2 := (if p9$2 && v78$2 then v78$2 else p59$2);
    v79$1 := (if p59$1 then FADD32(FMUL32(SI32_TO_FP32(v8$1), $scale), $xOff) else v79$1);
    v79$2 := (if p59$2 then FADD32(FMUL32(SI32_TO_FP32(v8$2), $scale), $xOff) else v79$2);
    v80$1 := (if p59$1 then FADD32(FMUL32(SI32_TO_FP32(v10$1), $scale), $yOff) else v80$1);
    v80$2 := (if p59$2 then FADD32(FMUL32(SI32_TO_FP32(v10$2), $scale), $yOff) else v80$2);
    v81$1 := (if p59$1 then $isJ == 1 else v81$1);
    v81$2 := (if p59$2 then $isJ == 1 else v81$2);
    p61$1 := (if p59$1 && v81$1 then v81$1 else p61$1);
    p61$2 := (if p59$2 && v81$2 then v81$2 else p61$2);
    p60$1 := (if p59$1 && !v81$1 then !v81$1 else p60$1);
    p60$2 := (if p59$2 && !v81$2 then !v81$2 else p60$2);
    $x.i1.0$1, $y.i2.0$1, $xx.i.0$1, $yy.i.0$1, $xC.i.0$1, $yC.i.0$1 := (if p60$1 then 0 else $x.i1.0$1), (if p60$1 then 0 else $y.i2.0$1), (if p60$1 then 0 else $xx.i.0$1), (if p60$1 then 0 else $yy.i.0$1), (if p60$1 then v79$1 else $xC.i.0$1), (if p60$1 then v80$1 else $yC.i.0$1);
    $x.i1.0$2, $y.i2.0$2, $xx.i.0$2, $yy.i.0$2, $xC.i.0$2, $yC.i.0$2 := (if p60$2 then 0 else $x.i1.0$2), (if p60$2 then 0 else $y.i2.0$2), (if p60$2 then 0 else $xx.i.0$2), (if p60$2 then 0 else $yy.i.0$2), (if p60$2 then v79$2 else $xC.i.0$2), (if p60$2 then v80$2 else $yC.i.0$2);
    $x.i1.0$1, $y.i2.0$1, $xx.i.0$1, $yy.i.0$1, $xC.i.0$1, $yC.i.0$1 := (if p61$1 then v79$1 else $x.i1.0$1), (if p61$1 then v80$1 else $y.i2.0$1), (if p61$1 then FMUL32(v79$1, v79$1) else $xx.i.0$1), (if p61$1 then FMUL32(v80$1, v80$1) else $yy.i.0$1), (if p61$1 then $xJP else $xC.i.0$1), (if p61$1 then $yJP else $yC.i.0$1);
    $x.i1.0$2, $y.i2.0$2, $xx.i.0$2, $yy.i.0$2, $xC.i.0$2, $yC.i.0$2 := (if p61$2 then v79$2 else $x.i1.0$2), (if p61$2 then v80$2 else $y.i2.0$2), (if p61$2 then FMUL32(v79$2, v79$2) else $xx.i.0$2), (if p61$2 then FMUL32(v80$2, v80$2) else $yy.i.0$2), (if p61$2 then $xJP else $xC.i.0$2), (if p61$2 then $yJP else $yC.i.0$2);
    $x.i1.1$1, $y.i2.1$1, $xx.i.1$1, $yy.i.1$1, $i.i.0$1 := (if p59$1 then $x.i1.0$1 else $x.i1.1$1), (if p59$1 then $y.i2.0$1 else $y.i2.1$1), (if p59$1 then $xx.i.0$1 else $xx.i.1$1), (if p59$1 then $yy.i.0$1 else $yy.i.1$1), (if p59$1 then $crunch else $i.i.0$1);
    $x.i1.1$2, $y.i2.1$2, $xx.i.1$2, $yy.i.1$2, $i.i.0$2 := (if p59$2 then $x.i1.0$2 else $x.i1.1$2), (if p59$2 then $y.i2.0$2 else $y.i2.1$2), (if p59$2 then $xx.i.0$2 else $xx.i.1$2), (if p59$2 then $yy.i.0$2 else $yy.i.1$2), (if p59$2 then $crunch else $i.i.0$2);
    p62$1 := (if p59$1 then true else p62$1);
    p62$2 := (if p59$2 then true else p62$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $65;

  $65:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assume {:predicate "p62"} {:dominator_predicate "p59"} true;
    assert p62$1 ==> p0$1;
    assert p62$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 116} p62$1 ==> true;
    v82$1 := (if p62$1 then FLT32(1082130432, FADD32($xx.i.1$1, $yy.i.1$1)) else v82$1);
    v82$2 := (if p62$2 then FLT32(1082130432, FADD32($xx.i.1$2, $yy.i.1$2)) else v82$2);
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
    p96$1 := false;
    p96$2 := false;
    p97$1 := false;
    p97$2 := false;
    p98$1 := false;
    p98$2 := false;
    p99$1 := false;
    p99$2 := false;
    p100$1 := false;
    p100$2 := false;
    p101$1 := false;
    p101$2 := false;
    p102$1 := false;
    p102$2 := false;
    p103$1 := false;
    p103$2 := false;
    p104$1 := false;
    p104$2 := false;
    p105$1 := false;
    p105$2 := false;
    p106$1 := false;
    p106$2 := false;
    p107$1 := false;
    p107$2 := false;
    p108$1 := false;
    p108$2 := false;
    p109$1 := false;
    p109$2 := false;
    p84$1 := (if p62$1 && v82$1 then v82$1 else p84$1);
    p84$2 := (if p62$2 && v82$2 then v82$2 else p84$2);
    p62$1 := (if p62$1 && v82$1 then !v82$1 else p62$1);
    p62$2 := (if p62$2 && v82$2 then !v82$2 else p62$2);
    p63$1 := (if p62$1 && !v82$1 then !v82$1 else p63$1);
    p63$2 := (if p62$2 && !v82$2 then !v82$2 else p63$2);
    v83$1 := (if p63$1 then FADD32(FMUL32(FMUL32($x.i1.1$1, $y.i2.1$1), 1073741824), $yC.i.0$1) else v83$1);
    v83$2 := (if p63$2 then FADD32(FMUL32(FMUL32($x.i1.1$2, $y.i2.1$2), 1073741824), $yC.i.0$2) else v83$2);
    v84$1 := (if p63$1 then FADD32(FSUB32($xx.i.1$1, $yy.i.1$1), $xC.i.0$1) else v84$1);
    v84$2 := (if p63$2 then FADD32(FSUB32($xx.i.1$2, $yy.i.1$2), $xC.i.0$2) else v84$2);
    v85$1 := (if p63$1 then FMUL32(v83$1, v83$1) else v85$1);
    v85$2 := (if p63$2 then FMUL32(v83$2, v83$2) else v85$2);
    v86$1 := (if p63$1 then FMUL32(v84$1, v84$1) else v86$1);
    v86$2 := (if p63$2 then FMUL32(v84$2, v84$2) else v86$2);
    v87$1 := (if p63$1 then FLT32(1082130432, FADD32(v86$1, v85$1)) else v87$1);
    v87$2 := (if p63$2 then FLT32(1082130432, FADD32(v86$2, v85$2)) else v87$2);
    p105$1 := (if p63$1 && v87$1 then v87$1 else p105$1);
    p105$2 := (if p63$2 && v87$2 then v87$2 else p105$2);
    p62$1 := (if p63$1 && v87$1 then !v87$1 else p62$1);
    p62$2 := (if p63$2 && v87$2 then !v87$2 else p62$2);
    p64$1 := (if p63$1 && !v87$1 then !v87$1 else p64$1);
    p64$2 := (if p63$2 && !v87$2 then !v87$2 else p64$2);
    v88$1 := (if p64$1 then FADD32(FMUL32(FMUL32(v84$1, v83$1), 1073741824), $yC.i.0$1) else v88$1);
    v88$2 := (if p64$2 then FADD32(FMUL32(FMUL32(v84$2, v83$2), 1073741824), $yC.i.0$2) else v88$2);
    v89$1 := (if p64$1 then FADD32(FSUB32(v86$1, v85$1), $xC.i.0$1) else v89$1);
    v89$2 := (if p64$2 then FADD32(FSUB32(v86$2, v85$2), $xC.i.0$2) else v89$2);
    v90$1 := (if p64$1 then FMUL32(v88$1, v88$1) else v90$1);
    v90$2 := (if p64$2 then FMUL32(v88$2, v88$2) else v90$2);
    v91$1 := (if p64$1 then FMUL32(v89$1, v89$1) else v91$1);
    v91$2 := (if p64$2 then FMUL32(v89$2, v89$2) else v91$2);
    v92$1 := (if p64$1 then FLT32(1082130432, FADD32(v91$1, v90$1)) else v92$1);
    v92$2 := (if p64$2 then FLT32(1082130432, FADD32(v91$2, v90$2)) else v92$2);
    p104$1 := (if p64$1 && v92$1 then v92$1 else p104$1);
    p104$2 := (if p64$2 && v92$2 then v92$2 else p104$2);
    p62$1 := (if p64$1 && v92$1 then !v92$1 else p62$1);
    p62$2 := (if p64$2 && v92$2 then !v92$2 else p62$2);
    p65$1 := (if p64$1 && !v92$1 then !v92$1 else p65$1);
    p65$2 := (if p64$2 && !v92$2 then !v92$2 else p65$2);
    v93$1 := (if p65$1 then FADD32(FMUL32(FMUL32(v89$1, v88$1), 1073741824), $yC.i.0$1) else v93$1);
    v93$2 := (if p65$2 then FADD32(FMUL32(FMUL32(v89$2, v88$2), 1073741824), $yC.i.0$2) else v93$2);
    v94$1 := (if p65$1 then FADD32(FSUB32(v91$1, v90$1), $xC.i.0$1) else v94$1);
    v94$2 := (if p65$2 then FADD32(FSUB32(v91$2, v90$2), $xC.i.0$2) else v94$2);
    v95$1 := (if p65$1 then FMUL32(v93$1, v93$1) else v95$1);
    v95$2 := (if p65$2 then FMUL32(v93$2, v93$2) else v95$2);
    v96$1 := (if p65$1 then FMUL32(v94$1, v94$1) else v96$1);
    v96$2 := (if p65$2 then FMUL32(v94$2, v94$2) else v96$2);
    v97$1 := (if p65$1 then FLT32(1082130432, FADD32(v96$1, v95$1)) else v97$1);
    v97$2 := (if p65$2 then FLT32(1082130432, FADD32(v96$2, v95$2)) else v97$2);
    p103$1 := (if p65$1 && v97$1 then v97$1 else p103$1);
    p103$2 := (if p65$2 && v97$2 then v97$2 else p103$2);
    p62$1 := (if p65$1 && v97$1 then !v97$1 else p62$1);
    p62$2 := (if p65$2 && v97$2 then !v97$2 else p62$2);
    p66$1 := (if p65$1 && !v97$1 then !v97$1 else p66$1);
    p66$2 := (if p65$2 && !v97$2 then !v97$2 else p66$2);
    v98$1 := (if p66$1 then FADD32(FMUL32(FMUL32(v94$1, v93$1), 1073741824), $yC.i.0$1) else v98$1);
    v98$2 := (if p66$2 then FADD32(FMUL32(FMUL32(v94$2, v93$2), 1073741824), $yC.i.0$2) else v98$2);
    v99$1 := (if p66$1 then FADD32(FSUB32(v96$1, v95$1), $xC.i.0$1) else v99$1);
    v99$2 := (if p66$2 then FADD32(FSUB32(v96$2, v95$2), $xC.i.0$2) else v99$2);
    v100$1 := (if p66$1 then FMUL32(v98$1, v98$1) else v100$1);
    v100$2 := (if p66$2 then FMUL32(v98$2, v98$2) else v100$2);
    v101$1 := (if p66$1 then FMUL32(v99$1, v99$1) else v101$1);
    v101$2 := (if p66$2 then FMUL32(v99$2, v99$2) else v101$2);
    v102$1 := (if p66$1 then FLT32(1082130432, FADD32(v101$1, v100$1)) else v102$1);
    v102$2 := (if p66$2 then FLT32(1082130432, FADD32(v101$2, v100$2)) else v102$2);
    p102$1 := (if p66$1 && v102$1 then v102$1 else p102$1);
    p102$2 := (if p66$2 && v102$2 then v102$2 else p102$2);
    p62$1 := (if p66$1 && v102$1 then !v102$1 else p62$1);
    p62$2 := (if p66$2 && v102$2 then !v102$2 else p62$2);
    p67$1 := (if p66$1 && !v102$1 then !v102$1 else p67$1);
    p67$2 := (if p66$2 && !v102$2 then !v102$2 else p67$2);
    v103$1 := (if p67$1 then FADD32(FMUL32(FMUL32(v99$1, v98$1), 1073741824), $yC.i.0$1) else v103$1);
    v103$2 := (if p67$2 then FADD32(FMUL32(FMUL32(v99$2, v98$2), 1073741824), $yC.i.0$2) else v103$2);
    v104$1 := (if p67$1 then FADD32(FSUB32(v101$1, v100$1), $xC.i.0$1) else v104$1);
    v104$2 := (if p67$2 then FADD32(FSUB32(v101$2, v100$2), $xC.i.0$2) else v104$2);
    v105$1 := (if p67$1 then FMUL32(v103$1, v103$1) else v105$1);
    v105$2 := (if p67$2 then FMUL32(v103$2, v103$2) else v105$2);
    v106$1 := (if p67$1 then FMUL32(v104$1, v104$1) else v106$1);
    v106$2 := (if p67$2 then FMUL32(v104$2, v104$2) else v106$2);
    v107$1 := (if p67$1 then FLT32(1082130432, FADD32(v106$1, v105$1)) else v107$1);
    v107$2 := (if p67$2 then FLT32(1082130432, FADD32(v106$2, v105$2)) else v107$2);
    p101$1 := (if p67$1 && v107$1 then v107$1 else p101$1);
    p101$2 := (if p67$2 && v107$2 then v107$2 else p101$2);
    p62$1 := (if p67$1 && v107$1 then !v107$1 else p62$1);
    p62$2 := (if p67$2 && v107$2 then !v107$2 else p62$2);
    p68$1 := (if p67$1 && !v107$1 then !v107$1 else p68$1);
    p68$2 := (if p67$2 && !v107$2 then !v107$2 else p68$2);
    v108$1 := (if p68$1 then FADD32(FMUL32(FMUL32(v104$1, v103$1), 1073741824), $yC.i.0$1) else v108$1);
    v108$2 := (if p68$2 then FADD32(FMUL32(FMUL32(v104$2, v103$2), 1073741824), $yC.i.0$2) else v108$2);
    v109$1 := (if p68$1 then FADD32(FSUB32(v106$1, v105$1), $xC.i.0$1) else v109$1);
    v109$2 := (if p68$2 then FADD32(FSUB32(v106$2, v105$2), $xC.i.0$2) else v109$2);
    v110$1 := (if p68$1 then FMUL32(v108$1, v108$1) else v110$1);
    v110$2 := (if p68$2 then FMUL32(v108$2, v108$2) else v110$2);
    v111$1 := (if p68$1 then FMUL32(v109$1, v109$1) else v111$1);
    v111$2 := (if p68$2 then FMUL32(v109$2, v109$2) else v111$2);
    v112$1 := (if p68$1 then FLT32(1082130432, FADD32(v111$1, v110$1)) else v112$1);
    v112$2 := (if p68$2 then FLT32(1082130432, FADD32(v111$2, v110$2)) else v112$2);
    p100$1 := (if p68$1 && v112$1 then v112$1 else p100$1);
    p100$2 := (if p68$2 && v112$2 then v112$2 else p100$2);
    p62$1 := (if p68$1 && v112$1 then !v112$1 else p62$1);
    p62$2 := (if p68$2 && v112$2 then !v112$2 else p62$2);
    p69$1 := (if p68$1 && !v112$1 then !v112$1 else p69$1);
    p69$2 := (if p68$2 && !v112$2 then !v112$2 else p69$2);
    v113$1 := (if p69$1 then FADD32(FMUL32(FMUL32(v109$1, v108$1), 1073741824), $yC.i.0$1) else v113$1);
    v113$2 := (if p69$2 then FADD32(FMUL32(FMUL32(v109$2, v108$2), 1073741824), $yC.i.0$2) else v113$2);
    v114$1 := (if p69$1 then FADD32(FSUB32(v111$1, v110$1), $xC.i.0$1) else v114$1);
    v114$2 := (if p69$2 then FADD32(FSUB32(v111$2, v110$2), $xC.i.0$2) else v114$2);
    v115$1 := (if p69$1 then FMUL32(v113$1, v113$1) else v115$1);
    v115$2 := (if p69$2 then FMUL32(v113$2, v113$2) else v115$2);
    v116$1 := (if p69$1 then FMUL32(v114$1, v114$1) else v116$1);
    v116$2 := (if p69$2 then FMUL32(v114$2, v114$2) else v116$2);
    v117$1 := (if p69$1 then FLT32(1082130432, FADD32(v116$1, v115$1)) else v117$1);
    v117$2 := (if p69$2 then FLT32(1082130432, FADD32(v116$2, v115$2)) else v117$2);
    p99$1 := (if p69$1 && v117$1 then v117$1 else p99$1);
    p99$2 := (if p69$2 && v117$2 then v117$2 else p99$2);
    p62$1 := (if p69$1 && v117$1 then !v117$1 else p62$1);
    p62$2 := (if p69$2 && v117$2 then !v117$2 else p62$2);
    p70$1 := (if p69$1 && !v117$1 then !v117$1 else p70$1);
    p70$2 := (if p69$2 && !v117$2 then !v117$2 else p70$2);
    v118$1 := (if p70$1 then FADD32(FMUL32(FMUL32(v114$1, v113$1), 1073741824), $yC.i.0$1) else v118$1);
    v118$2 := (if p70$2 then FADD32(FMUL32(FMUL32(v114$2, v113$2), 1073741824), $yC.i.0$2) else v118$2);
    v119$1 := (if p70$1 then FADD32(FSUB32(v116$1, v115$1), $xC.i.0$1) else v119$1);
    v119$2 := (if p70$2 then FADD32(FSUB32(v116$2, v115$2), $xC.i.0$2) else v119$2);
    v120$1 := (if p70$1 then FMUL32(v118$1, v118$1) else v120$1);
    v120$2 := (if p70$2 then FMUL32(v118$2, v118$2) else v120$2);
    v121$1 := (if p70$1 then FMUL32(v119$1, v119$1) else v121$1);
    v121$2 := (if p70$2 then FMUL32(v119$2, v119$2) else v121$2);
    v122$1 := (if p70$1 then FLT32(1082130432, FADD32(v121$1, v120$1)) else v122$1);
    v122$2 := (if p70$2 then FLT32(1082130432, FADD32(v121$2, v120$2)) else v122$2);
    p98$1 := (if p70$1 && v122$1 then v122$1 else p98$1);
    p98$2 := (if p70$2 && v122$2 then v122$2 else p98$2);
    p62$1 := (if p70$1 && v122$1 then !v122$1 else p62$1);
    p62$2 := (if p70$2 && v122$2 then !v122$2 else p62$2);
    p71$1 := (if p70$1 && !v122$1 then !v122$1 else p71$1);
    p71$2 := (if p70$2 && !v122$2 then !v122$2 else p71$2);
    v123$1 := (if p71$1 then FADD32(FMUL32(FMUL32(v119$1, v118$1), 1073741824), $yC.i.0$1) else v123$1);
    v123$2 := (if p71$2 then FADD32(FMUL32(FMUL32(v119$2, v118$2), 1073741824), $yC.i.0$2) else v123$2);
    v124$1 := (if p71$1 then FADD32(FSUB32(v121$1, v120$1), $xC.i.0$1) else v124$1);
    v124$2 := (if p71$2 then FADD32(FSUB32(v121$2, v120$2), $xC.i.0$2) else v124$2);
    v125$1 := (if p71$1 then FMUL32(v123$1, v123$1) else v125$1);
    v125$2 := (if p71$2 then FMUL32(v123$2, v123$2) else v125$2);
    v126$1 := (if p71$1 then FMUL32(v124$1, v124$1) else v126$1);
    v126$2 := (if p71$2 then FMUL32(v124$2, v124$2) else v126$2);
    v127$1 := (if p71$1 then FLT32(1082130432, FADD32(v126$1, v125$1)) else v127$1);
    v127$2 := (if p71$2 then FLT32(1082130432, FADD32(v126$2, v125$2)) else v127$2);
    p97$1 := (if p71$1 && v127$1 then v127$1 else p97$1);
    p97$2 := (if p71$2 && v127$2 then v127$2 else p97$2);
    p62$1 := (if p71$1 && v127$1 then !v127$1 else p62$1);
    p62$2 := (if p71$2 && v127$2 then !v127$2 else p62$2);
    p72$1 := (if p71$1 && !v127$1 then !v127$1 else p72$1);
    p72$2 := (if p71$2 && !v127$2 then !v127$2 else p72$2);
    v128$1 := (if p72$1 then FADD32(FMUL32(FMUL32(v124$1, v123$1), 1073741824), $yC.i.0$1) else v128$1);
    v128$2 := (if p72$2 then FADD32(FMUL32(FMUL32(v124$2, v123$2), 1073741824), $yC.i.0$2) else v128$2);
    v129$1 := (if p72$1 then FADD32(FSUB32(v126$1, v125$1), $xC.i.0$1) else v129$1);
    v129$2 := (if p72$2 then FADD32(FSUB32(v126$2, v125$2), $xC.i.0$2) else v129$2);
    v130$1 := (if p72$1 then FMUL32(v128$1, v128$1) else v130$1);
    v130$2 := (if p72$2 then FMUL32(v128$2, v128$2) else v130$2);
    v131$1 := (if p72$1 then FMUL32(v129$1, v129$1) else v131$1);
    v131$2 := (if p72$2 then FMUL32(v129$2, v129$2) else v131$2);
    v132$1 := (if p72$1 then FLT32(1082130432, FADD32(v131$1, v130$1)) else v132$1);
    v132$2 := (if p72$2 then FLT32(1082130432, FADD32(v131$2, v130$2)) else v132$2);
    p96$1 := (if p72$1 && v132$1 then v132$1 else p96$1);
    p96$2 := (if p72$2 && v132$2 then v132$2 else p96$2);
    p62$1 := (if p72$1 && v132$1 then !v132$1 else p62$1);
    p62$2 := (if p72$2 && v132$2 then !v132$2 else p62$2);
    p73$1 := (if p72$1 && !v132$1 then !v132$1 else p73$1);
    p73$2 := (if p72$2 && !v132$2 then !v132$2 else p73$2);
    v133$1 := (if p73$1 then FADD32(FMUL32(FMUL32(v129$1, v128$1), 1073741824), $yC.i.0$1) else v133$1);
    v133$2 := (if p73$2 then FADD32(FMUL32(FMUL32(v129$2, v128$2), 1073741824), $yC.i.0$2) else v133$2);
    v134$1 := (if p73$1 then FADD32(FSUB32(v131$1, v130$1), $xC.i.0$1) else v134$1);
    v134$2 := (if p73$2 then FADD32(FSUB32(v131$2, v130$2), $xC.i.0$2) else v134$2);
    v135$1 := (if p73$1 then FMUL32(v133$1, v133$1) else v135$1);
    v135$2 := (if p73$2 then FMUL32(v133$2, v133$2) else v135$2);
    v136$1 := (if p73$1 then FMUL32(v134$1, v134$1) else v136$1);
    v136$2 := (if p73$2 then FMUL32(v134$2, v134$2) else v136$2);
    v137$1 := (if p73$1 then FLT32(1082130432, FADD32(v136$1, v135$1)) else v137$1);
    v137$2 := (if p73$2 then FLT32(1082130432, FADD32(v136$2, v135$2)) else v137$2);
    p95$1 := (if p73$1 && v137$1 then v137$1 else p95$1);
    p95$2 := (if p73$2 && v137$2 then v137$2 else p95$2);
    p62$1 := (if p73$1 && v137$1 then !v137$1 else p62$1);
    p62$2 := (if p73$2 && v137$2 then !v137$2 else p62$2);
    p74$1 := (if p73$1 && !v137$1 then !v137$1 else p74$1);
    p74$2 := (if p73$2 && !v137$2 then !v137$2 else p74$2);
    v138$1 := (if p74$1 then FADD32(FMUL32(FMUL32(v134$1, v133$1), 1073741824), $yC.i.0$1) else v138$1);
    v138$2 := (if p74$2 then FADD32(FMUL32(FMUL32(v134$2, v133$2), 1073741824), $yC.i.0$2) else v138$2);
    v139$1 := (if p74$1 then FADD32(FSUB32(v136$1, v135$1), $xC.i.0$1) else v139$1);
    v139$2 := (if p74$2 then FADD32(FSUB32(v136$2, v135$2), $xC.i.0$2) else v139$2);
    v140$1 := (if p74$1 then FMUL32(v138$1, v138$1) else v140$1);
    v140$2 := (if p74$2 then FMUL32(v138$2, v138$2) else v140$2);
    v141$1 := (if p74$1 then FMUL32(v139$1, v139$1) else v141$1);
    v141$2 := (if p74$2 then FMUL32(v139$2, v139$2) else v141$2);
    v142$1 := (if p74$1 then FLT32(1082130432, FADD32(v141$1, v140$1)) else v142$1);
    v142$2 := (if p74$2 then FLT32(1082130432, FADD32(v141$2, v140$2)) else v142$2);
    p94$1 := (if p74$1 && v142$1 then v142$1 else p94$1);
    p94$2 := (if p74$2 && v142$2 then v142$2 else p94$2);
    p62$1 := (if p74$1 && v142$1 then !v142$1 else p62$1);
    p62$2 := (if p74$2 && v142$2 then !v142$2 else p62$2);
    p75$1 := (if p74$1 && !v142$1 then !v142$1 else p75$1);
    p75$2 := (if p74$2 && !v142$2 then !v142$2 else p75$2);
    v143$1 := (if p75$1 then FADD32(FMUL32(FMUL32(v139$1, v138$1), 1073741824), $yC.i.0$1) else v143$1);
    v143$2 := (if p75$2 then FADD32(FMUL32(FMUL32(v139$2, v138$2), 1073741824), $yC.i.0$2) else v143$2);
    v144$1 := (if p75$1 then FADD32(FSUB32(v141$1, v140$1), $xC.i.0$1) else v144$1);
    v144$2 := (if p75$2 then FADD32(FSUB32(v141$2, v140$2), $xC.i.0$2) else v144$2);
    v145$1 := (if p75$1 then FMUL32(v143$1, v143$1) else v145$1);
    v145$2 := (if p75$2 then FMUL32(v143$2, v143$2) else v145$2);
    v146$1 := (if p75$1 then FMUL32(v144$1, v144$1) else v146$1);
    v146$2 := (if p75$2 then FMUL32(v144$2, v144$2) else v146$2);
    v147$1 := (if p75$1 then FLT32(1082130432, FADD32(v146$1, v145$1)) else v147$1);
    v147$2 := (if p75$2 then FLT32(1082130432, FADD32(v146$2, v145$2)) else v147$2);
    p93$1 := (if p75$1 && v147$1 then v147$1 else p93$1);
    p93$2 := (if p75$2 && v147$2 then v147$2 else p93$2);
    p62$1 := (if p75$1 && v147$1 then !v147$1 else p62$1);
    p62$2 := (if p75$2 && v147$2 then !v147$2 else p62$2);
    p76$1 := (if p75$1 && !v147$1 then !v147$1 else p76$1);
    p76$2 := (if p75$2 && !v147$2 then !v147$2 else p76$2);
    v148$1 := (if p76$1 then FADD32(FMUL32(FMUL32(v144$1, v143$1), 1073741824), $yC.i.0$1) else v148$1);
    v148$2 := (if p76$2 then FADD32(FMUL32(FMUL32(v144$2, v143$2), 1073741824), $yC.i.0$2) else v148$2);
    v149$1 := (if p76$1 then FADD32(FSUB32(v146$1, v145$1), $xC.i.0$1) else v149$1);
    v149$2 := (if p76$2 then FADD32(FSUB32(v146$2, v145$2), $xC.i.0$2) else v149$2);
    v150$1 := (if p76$1 then FMUL32(v148$1, v148$1) else v150$1);
    v150$2 := (if p76$2 then FMUL32(v148$2, v148$2) else v150$2);
    v151$1 := (if p76$1 then FMUL32(v149$1, v149$1) else v151$1);
    v151$2 := (if p76$2 then FMUL32(v149$2, v149$2) else v151$2);
    v152$1 := (if p76$1 then FLT32(1082130432, FADD32(v151$1, v150$1)) else v152$1);
    v152$2 := (if p76$2 then FLT32(1082130432, FADD32(v151$2, v150$2)) else v152$2);
    p92$1 := (if p76$1 && v152$1 then v152$1 else p92$1);
    p92$2 := (if p76$2 && v152$2 then v152$2 else p92$2);
    p62$1 := (if p76$1 && v152$1 then !v152$1 else p62$1);
    p62$2 := (if p76$2 && v152$2 then !v152$2 else p62$2);
    p77$1 := (if p76$1 && !v152$1 then !v152$1 else p77$1);
    p77$2 := (if p76$2 && !v152$2 then !v152$2 else p77$2);
    v153$1 := (if p77$1 then FADD32(FMUL32(FMUL32(v149$1, v148$1), 1073741824), $yC.i.0$1) else v153$1);
    v153$2 := (if p77$2 then FADD32(FMUL32(FMUL32(v149$2, v148$2), 1073741824), $yC.i.0$2) else v153$2);
    v154$1 := (if p77$1 then FADD32(FSUB32(v151$1, v150$1), $xC.i.0$1) else v154$1);
    v154$2 := (if p77$2 then FADD32(FSUB32(v151$2, v150$2), $xC.i.0$2) else v154$2);
    v155$1 := (if p77$1 then FMUL32(v153$1, v153$1) else v155$1);
    v155$2 := (if p77$2 then FMUL32(v153$2, v153$2) else v155$2);
    v156$1 := (if p77$1 then FMUL32(v154$1, v154$1) else v156$1);
    v156$2 := (if p77$2 then FMUL32(v154$2, v154$2) else v156$2);
    v157$1 := (if p77$1 then FLT32(1082130432, FADD32(v156$1, v155$1)) else v157$1);
    v157$2 := (if p77$2 then FLT32(1082130432, FADD32(v156$2, v155$2)) else v157$2);
    p91$1 := (if p77$1 && v157$1 then v157$1 else p91$1);
    p91$2 := (if p77$2 && v157$2 then v157$2 else p91$2);
    p62$1 := (if p77$1 && v157$1 then !v157$1 else p62$1);
    p62$2 := (if p77$2 && v157$2 then !v157$2 else p62$2);
    p78$1 := (if p77$1 && !v157$1 then !v157$1 else p78$1);
    p78$2 := (if p77$2 && !v157$2 then !v157$2 else p78$2);
    v158$1 := (if p78$1 then FADD32(FMUL32(FMUL32(v154$1, v153$1), 1073741824), $yC.i.0$1) else v158$1);
    v158$2 := (if p78$2 then FADD32(FMUL32(FMUL32(v154$2, v153$2), 1073741824), $yC.i.0$2) else v158$2);
    v159$1 := (if p78$1 then FADD32(FSUB32(v156$1, v155$1), $xC.i.0$1) else v159$1);
    v159$2 := (if p78$2 then FADD32(FSUB32(v156$2, v155$2), $xC.i.0$2) else v159$2);
    v160$1 := (if p78$1 then FMUL32(v158$1, v158$1) else v160$1);
    v160$2 := (if p78$2 then FMUL32(v158$2, v158$2) else v160$2);
    v161$1 := (if p78$1 then FMUL32(v159$1, v159$1) else v161$1);
    v161$2 := (if p78$2 then FMUL32(v159$2, v159$2) else v161$2);
    v162$1 := (if p78$1 then FLT32(1082130432, FADD32(v161$1, v160$1)) else v162$1);
    v162$2 := (if p78$2 then FLT32(1082130432, FADD32(v161$2, v160$2)) else v162$2);
    p90$1 := (if p78$1 && v162$1 then v162$1 else p90$1);
    p90$2 := (if p78$2 && v162$2 then v162$2 else p90$2);
    p62$1 := (if p78$1 && v162$1 then !v162$1 else p62$1);
    p62$2 := (if p78$2 && v162$2 then !v162$2 else p62$2);
    p79$1 := (if p78$1 && !v162$1 then !v162$1 else p79$1);
    p79$2 := (if p78$2 && !v162$2 then !v162$2 else p79$2);
    v163$1 := (if p79$1 then FADD32(FMUL32(FMUL32(v159$1, v158$1), 1073741824), $yC.i.0$1) else v163$1);
    v163$2 := (if p79$2 then FADD32(FMUL32(FMUL32(v159$2, v158$2), 1073741824), $yC.i.0$2) else v163$2);
    v164$1 := (if p79$1 then FADD32(FSUB32(v161$1, v160$1), $xC.i.0$1) else v164$1);
    v164$2 := (if p79$2 then FADD32(FSUB32(v161$2, v160$2), $xC.i.0$2) else v164$2);
    v165$1 := (if p79$1 then FMUL32(v163$1, v163$1) else v165$1);
    v165$2 := (if p79$2 then FMUL32(v163$2, v163$2) else v165$2);
    v166$1 := (if p79$1 then FMUL32(v164$1, v164$1) else v166$1);
    v166$2 := (if p79$2 then FMUL32(v164$2, v164$2) else v166$2);
    v167$1 := (if p79$1 then FLT32(1082130432, FADD32(v166$1, v165$1)) else v167$1);
    v167$2 := (if p79$2 then FLT32(1082130432, FADD32(v166$2, v165$2)) else v167$2);
    p89$1 := (if p79$1 && v167$1 then v167$1 else p89$1);
    p89$2 := (if p79$2 && v167$2 then v167$2 else p89$2);
    p62$1 := (if p79$1 && v167$1 then !v167$1 else p62$1);
    p62$2 := (if p79$2 && v167$2 then !v167$2 else p62$2);
    p80$1 := (if p79$1 && !v167$1 then !v167$1 else p80$1);
    p80$2 := (if p79$2 && !v167$2 then !v167$2 else p80$2);
    v168$1 := (if p80$1 then FADD32(FMUL32(FMUL32(v164$1, v163$1), 1073741824), $yC.i.0$1) else v168$1);
    v168$2 := (if p80$2 then FADD32(FMUL32(FMUL32(v164$2, v163$2), 1073741824), $yC.i.0$2) else v168$2);
    v169$1 := (if p80$1 then FADD32(FSUB32(v166$1, v165$1), $xC.i.0$1) else v169$1);
    v169$2 := (if p80$2 then FADD32(FSUB32(v166$2, v165$2), $xC.i.0$2) else v169$2);
    v170$1 := (if p80$1 then FMUL32(v168$1, v168$1) else v170$1);
    v170$2 := (if p80$2 then FMUL32(v168$2, v168$2) else v170$2);
    v171$1 := (if p80$1 then FMUL32(v169$1, v169$1) else v171$1);
    v171$2 := (if p80$2 then FMUL32(v169$2, v169$2) else v171$2);
    v172$1 := (if p80$1 then FLT32(1082130432, FADD32(v171$1, v170$1)) else v172$1);
    v172$2 := (if p80$2 then FLT32(1082130432, FADD32(v171$2, v170$2)) else v172$2);
    p88$1 := (if p80$1 && v172$1 then v172$1 else p88$1);
    p88$2 := (if p80$2 && v172$2 then v172$2 else p88$2);
    p62$1 := (if p80$1 && v172$1 then !v172$1 else p62$1);
    p62$2 := (if p80$2 && v172$2 then !v172$2 else p62$2);
    p81$1 := (if p80$1 && !v172$1 then !v172$1 else p81$1);
    p81$2 := (if p80$2 && !v172$2 then !v172$2 else p81$2);
    v173$1 := (if p81$1 then FADD32(FMUL32(FMUL32(v169$1, v168$1), 1073741824), $yC.i.0$1) else v173$1);
    v173$2 := (if p81$2 then FADD32(FMUL32(FMUL32(v169$2, v168$2), 1073741824), $yC.i.0$2) else v173$2);
    v174$1 := (if p81$1 then FADD32(FSUB32(v171$1, v170$1), $xC.i.0$1) else v174$1);
    v174$2 := (if p81$2 then FADD32(FSUB32(v171$2, v170$2), $xC.i.0$2) else v174$2);
    v175$1 := (if p81$1 then FMUL32(v173$1, v173$1) else v175$1);
    v175$2 := (if p81$2 then FMUL32(v173$2, v173$2) else v175$2);
    v176$1 := (if p81$1 then FMUL32(v174$1, v174$1) else v176$1);
    v176$2 := (if p81$2 then FMUL32(v174$2, v174$2) else v176$2);
    v177$1 := (if p81$1 then BV32_SUB($i.i.0$1, 20) else v177$1);
    v177$2 := (if p81$2 then BV32_SUB($i.i.0$2, 20) else v177$2);
    v178$1 := (if p81$1 then BV32_SLE(v177$1, 0) else v178$1);
    v178$2 := (if p81$2 then BV32_SLE(v177$2, 0) else v178$2);
    p87$1 := (if p81$1 && v178$1 then v178$1 else p87$1);
    p87$2 := (if p81$2 && v178$2 then v178$2 else p87$2);
    p62$1 := (if p81$1 && v178$1 then !v178$1 else p62$1);
    p62$2 := (if p81$2 && v178$2 then !v178$2 else p62$2);
    p82$1 := (if p81$1 && !v178$1 then !v178$1 else p82$1);
    p82$2 := (if p81$2 && !v178$2 then !v178$2 else p82$2);
    v179$1 := (if p82$1 then FLT32(1082130432, FADD32(v176$1, v175$1)) else v179$1);
    v179$2 := (if p82$2 then FLT32(1082130432, FADD32(v176$2, v175$2)) else v179$2);
    p87$1 := (if p82$1 && v179$1 then v179$1 else p87$1);
    p87$2 := (if p82$2 && v179$2 then v179$2 else p87$2);
    p62$1 := (if p82$1 && v179$1 then !v179$1 else p62$1);
    p62$2 := (if p82$2 && v179$2 then !v179$2 else p62$2);
    p83$1 := (if p82$1 && !v179$1 then !v179$1 else p83$1);
    p83$2 := (if p82$2 && !v179$2 then !v179$2 else p83$2);
    v180$1 := (if p83$1 then FADD32(FMUL32(FMUL32(v174$1, v173$1), 1073741824), $yC.i.0$1) else v180$1);
    v180$2 := (if p83$2 then FADD32(FMUL32(FMUL32(v174$2, v173$2), 1073741824), $yC.i.0$2) else v180$2);
    v181$1 := (if p83$1 then FADD32(FSUB32(v176$1, v175$1), $xC.i.0$1) else v181$1);
    v181$2 := (if p83$2 then FADD32(FSUB32(v176$2, v175$2), $xC.i.0$2) else v181$2);
    $x.i1.1$1, $y.i2.1$1, $xx.i.1$1, $yy.i.1$1, $i.i.0$1 := (if p83$1 then v181$1 else $x.i1.1$1), (if p83$1 then v180$1 else $y.i2.1$1), (if p83$1 then FMUL32(v181$1, v181$1) else $xx.i.1$1), (if p83$1 then FMUL32(v180$1, v180$1) else $yy.i.1$1), (if p83$1 then v177$1 else $i.i.0$1);
    $x.i1.1$2, $y.i2.1$2, $xx.i.1$2, $yy.i.1$2, $i.i.0$2 := (if p83$2 then v181$2 else $x.i1.1$2), (if p83$2 then v180$2 else $y.i2.1$2), (if p83$2 then FMUL32(v181$2, v181$2) else $xx.i.1$2), (if p83$2 then FMUL32(v180$2, v180$2) else $yy.i.1$2), (if p83$2 then v177$2 else $i.i.0$2);
    p62$1 := (if p83$1 then true else p62$1);
    p62$2 := (if p83$2 then true else p62$2);
    goto $65.backedge, $65.tail;

  $65.tail:
    assume !p62$1 && !p62$2;
    $.0$1 := (if p84$1 then BV32_SUB($i.i.0$1, 1) else $.0$1);
    $.0$2 := (if p84$2 then BV32_SUB($i.i.0$2, 1) else $.0$2);
    p87$1 := (if p85$1 then true else p87$1);
    p87$2 := (if p85$2 then true else p87$2);
    p87$1 := (if p86$1 then true else p87$1);
    p87$2 := (if p86$2 then true else p87$2);
    $.0$1 := (if p87$1 then v177$1 else $.0$1);
    $.0$2 := (if p87$2 then v177$2 else $.0$2);
    $.0$1 := (if p88$1 then BV32_SUB($i.i.0$1, 19) else $.0$1);
    $.0$2 := (if p88$2 then BV32_SUB($i.i.0$2, 19) else $.0$2);
    $.0$1 := (if p89$1 then BV32_SUB($i.i.0$1, 18) else $.0$1);
    $.0$2 := (if p89$2 then BV32_SUB($i.i.0$2, 18) else $.0$2);
    $.0$1 := (if p90$1 then BV32_SUB($i.i.0$1, 17) else $.0$1);
    $.0$2 := (if p90$2 then BV32_SUB($i.i.0$2, 17) else $.0$2);
    $.0$1 := (if p91$1 then BV32_SUB($i.i.0$1, 16) else $.0$1);
    $.0$2 := (if p91$2 then BV32_SUB($i.i.0$2, 16) else $.0$2);
    $.0$1 := (if p92$1 then BV32_SUB($i.i.0$1, 15) else $.0$1);
    $.0$2 := (if p92$2 then BV32_SUB($i.i.0$2, 15) else $.0$2);
    $.0$1 := (if p93$1 then BV32_SUB($i.i.0$1, 14) else $.0$1);
    $.0$2 := (if p93$2 then BV32_SUB($i.i.0$2, 14) else $.0$2);
    $.0$1 := (if p94$1 then BV32_SUB($i.i.0$1, 13) else $.0$1);
    $.0$2 := (if p94$2 then BV32_SUB($i.i.0$2, 13) else $.0$2);
    $.0$1 := (if p95$1 then BV32_SUB($i.i.0$1, 12) else $.0$1);
    $.0$2 := (if p95$2 then BV32_SUB($i.i.0$2, 12) else $.0$2);
    $.0$1 := (if p96$1 then BV32_SUB($i.i.0$1, 11) else $.0$1);
    $.0$2 := (if p96$2 then BV32_SUB($i.i.0$2, 11) else $.0$2);
    $.0$1 := (if p97$1 then BV32_SUB($i.i.0$1, 10) else $.0$1);
    $.0$2 := (if p97$2 then BV32_SUB($i.i.0$2, 10) else $.0$2);
    $.0$1 := (if p98$1 then BV32_SUB($i.i.0$1, 9) else $.0$1);
    $.0$2 := (if p98$2 then BV32_SUB($i.i.0$2, 9) else $.0$2);
    $.0$1 := (if p99$1 then BV32_SUB($i.i.0$1, 8) else $.0$1);
    $.0$2 := (if p99$2 then BV32_SUB($i.i.0$2, 8) else $.0$2);
    $.0$1 := (if p100$1 then BV32_SUB($i.i.0$1, 7) else $.0$1);
    $.0$2 := (if p100$2 then BV32_SUB($i.i.0$2, 7) else $.0$2);
    $.0$1 := (if p101$1 then BV32_SUB($i.i.0$1, 6) else $.0$1);
    $.0$2 := (if p101$2 then BV32_SUB($i.i.0$2, 6) else $.0$2);
    $.0$1 := (if p102$1 then BV32_SUB($i.i.0$1, 5) else $.0$1);
    $.0$2 := (if p102$2 then BV32_SUB($i.i.0$2, 5) else $.0$2);
    $.0$1 := (if p103$1 then BV32_SUB($i.i.0$1, 4) else $.0$1);
    $.0$2 := (if p103$2 then BV32_SUB($i.i.0$2, 4) else $.0$2);
    $.0$1 := (if p104$1 then BV32_SUB($i.i.0$1, 3) else $.0$1);
    $.0$2 := (if p104$2 then BV32_SUB($i.i.0$2, 3) else $.0$2);
    $.0$1 := (if p105$1 then BV32_SUB($i.i.0$1, 2) else $.0$1);
    $.0$2 := (if p105$2 then BV32_SUB($i.i.0$2, 2) else $.0$2);
    v182$1 := (if p59$1 then BV32_SGT($.0$1, 0) else v182$1);
    v182$2 := (if p59$2 then BV32_SGT($.0$2, 0) else v182$2);
    p107$1 := (if p59$1 && v182$1 then v182$1 else p107$1);
    p107$2 := (if p59$2 && v182$2 then v182$2 else p107$2);
    p106$1 := (if p59$1 && !v182$1 then !v182$1 else p106$1);
    p106$2 := (if p59$2 && !v182$2 then !v182$2 else p106$2);
    $16$1 := (if p106$1 then 0 else $16$1);
    $16$2 := (if p106$2 then 0 else $16$2);
    $16$1 := (if p107$1 then BV32_SUB($crunch, $.0$1) else $16$1);
    $16$2 := (if p107$2 then BV32_SUB($crunch, $.0$2) else $16$2);
    v183$1 := (if p59$1 then $16$1 != 0 else v183$1);
    v183$2 := (if p59$2 then $16$2 != 0 else v183$2);
    p109$1 := (if p59$1 && v183$1 then v183$1 else p109$1);
    p109$2 := (if p59$2 && v183$2 then v183$2 else p109$2);
    p108$1 := (if p59$1 && !v183$1 then !v183$1 else p108$1);
    p108$2 := (if p59$2 && !v183$2 then !v183$2 else p108$2);
    $$color$0$1 := (if p108$1 then 0 else $$color$0$1);
    $$color$0$2 := (if p108$2 then 0 else $$color$0$2);
    $$color$1$1 := (if p108$1 then 0 else $$color$1$1);
    $$color$1$2 := (if p108$2 then 0 else $$color$1$2);
    $$color$2$1 := (if p108$1 then 0 else $$color$2$1);
    $$color$2$2 := (if p108$2 then 0 else $$color$2$2);
    v184$1 := (if p109$1 then BV32_ADD($16$1, $animationFrame) else v184$1);
    v184$2 := (if p109$2 then BV32_ADD($16$2, $animationFrame) else v184$2);
    v185$1 := (if p109$1 then $$colors$0$1 else v185$1);
    v185$2 := (if p109$2 then $$colors$0$2 else v185$2);
    $$color$0$1 := (if p109$1 then BV_EXTRACT(BV32_MUL(v184$1, BV8_ZEXT32(v185$1)), 8, 0) else $$color$0$1);
    $$color$0$2 := (if p109$2 then BV_EXTRACT(BV32_MUL(v184$2, BV8_ZEXT32(v185$2)), 8, 0) else $$color$0$2);
    v186$1 := (if p109$1 then $$colors$1$1 else v186$1);
    v186$2 := (if p109$2 then $$colors$1$2 else v186$2);
    $$color$1$1 := (if p109$1 then BV_EXTRACT(BV32_MUL(v184$1, BV8_ZEXT32(v186$1)), 8, 0) else $$color$1$1);
    $$color$1$2 := (if p109$2 then BV_EXTRACT(BV32_MUL(v184$2, BV8_ZEXT32(v186$2)), 8, 0) else $$color$1$2);
    v187$1 := (if p109$1 then $$colors$2$1 else v187$1);
    v187$2 := (if p109$2 then $$colors$2$2 else v187$2);
    $$color$2$1 := (if p109$1 then BV_EXTRACT(BV32_MUL(v184$1, BV8_ZEXT32(v187$1)), 8, 0) else $$color$2$1);
    $$color$2$2 := (if p109$2 then BV_EXTRACT(BV32_MUL(v184$2, BV8_ZEXT32(v187$2)), 8, 0) else $$color$2$2);
    v188$1 := (if p59$1 then BV32_ADD($frame, 1) else v188$1);
    v188$2 := (if p59$2 then BV32_ADD($frame, 1) else v188$2);
    v189$1 := (if p59$1 then BV32_SDIV(v188$1, 2) else v189$1);
    v189$2 := (if p59$2 then BV32_SDIV(v188$2, 2) else v189$2);
    v190$1 := (if p59$1 then $$pixelColor$0$1 else v190$1);
    v190$2 := (if p59$2 then $$pixelColor$0$2 else v190$2);
    v191$1 := (if p59$1 then $$color$0$1 else v191$1);
    v191$2 := (if p59$2 then $$color$0$2 else v191$2);
    call {:sourceloc} {:sourceloc_num 176} _LOG_WRITE_$$dst(p59$1, BV32_MUL(v13$1, 4), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v190$1), $frame), BV8_ZEXT32(v191$1)), v189$1), v188$1), 8, 0), $$dst[BV32_MUL(v13$1, 4)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p59$2, BV32_MUL(v13$2, 4));
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 176} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 176} _CHECK_WRITE_$$dst(p59$2, BV32_MUL(v13$2, 4), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v190$2), $frame), BV8_ZEXT32(v191$2)), v189$2), v188$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_MUL(v13$1, 4)] := (if p59$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v190$1), $frame), BV8_ZEXT32(v191$1)), v189$1), v188$1), 8, 0) else $$dst[BV32_MUL(v13$1, 4)]);
    $$dst[BV32_MUL(v13$2, 4)] := (if p59$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v190$2), $frame), BV8_ZEXT32(v191$2)), v189$2), v188$2), 8, 0) else $$dst[BV32_MUL(v13$2, 4)]);
    v192$1 := (if p59$1 then $$pixelColor$1$1 else v192$1);
    v192$2 := (if p59$2 then $$pixelColor$1$2 else v192$2);
    v193$1 := (if p59$1 then $$color$1$1 else v193$1);
    v193$2 := (if p59$2 then $$color$1$2 else v193$2);
    call {:sourceloc} {:sourceloc_num 179} _LOG_WRITE_$$dst(p59$1, BV32_ADD(BV32_MUL(v13$1, 4), 1), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v192$1), $frame), BV8_ZEXT32(v193$1)), v189$1), v188$1), 8, 0), $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p59$2, BV32_ADD(BV32_MUL(v13$2, 4), 1));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 179} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 179} _CHECK_WRITE_$$dst(p59$2, BV32_ADD(BV32_MUL(v13$2, 4), 1), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v192$2), $frame), BV8_ZEXT32(v193$2)), v189$2), v188$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 1)] := (if p59$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v192$1), $frame), BV8_ZEXT32(v193$1)), v189$1), v188$1), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 1)]);
    $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 1)] := (if p59$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v192$2), $frame), BV8_ZEXT32(v193$2)), v189$2), v188$2), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 1)]);
    v194$1 := (if p59$1 then $$pixelColor$2$1 else v194$1);
    v194$2 := (if p59$2 then $$pixelColor$2$2 else v194$2);
    v195$1 := (if p59$1 then $$color$2$1 else v195$1);
    v195$2 := (if p59$2 then $$color$2$2 else v195$2);
    call {:sourceloc} {:sourceloc_num 182} _LOG_WRITE_$$dst(p59$1, BV32_ADD(BV32_MUL(v13$1, 4), 2), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v194$1), $frame), BV8_ZEXT32(v195$1)), v189$1), v188$1), 8, 0), $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 2)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p59$2, BV32_ADD(BV32_MUL(v13$2, 4), 2));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 182} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 182} _CHECK_WRITE_$$dst(p59$2, BV32_ADD(BV32_MUL(v13$2, 4), 2), BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v194$2), $frame), BV8_ZEXT32(v195$2)), v189$2), v188$2), 8, 0));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 2)] := (if p59$1 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v194$1), $frame), BV8_ZEXT32(v195$1)), v189$1), v188$1), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v13$1, 4), 2)]);
    $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 2)] := (if p59$2 then BV_EXTRACT(BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v194$2), $frame), BV8_ZEXT32(v195$2)), v189$2), v188$2), 8, 0) else $$dst[BV32_ADD(BV32_MUL(v13$2, 4), 2)]);
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

  $65.backedge:
    assume {:backedge} p62$1 || p62$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $65;
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
  modifies $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  requires {:barrier_divergence} true ==> _P$1 == _P$2;
  modifies $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING;



var $$colors$0$1: int;

var $$colors$0$2: int;

var $$colors$1$1: int;

var $$colors$1$2: int;

var $$colors$2$1: int;

var $$colors$2$2: int;

var $$colors$3$1: int;

var $$colors$3$2: int;

var $$pixelColor$0$1: int;

var $$pixelColor$0$2: int;

var $$pixelColor$1$1: int;

var $$pixelColor$1$2: int;

var $$pixelColor$2$1: int;

var $$pixelColor$2$2: int;

var $$pixelColor$3$1: int;

var $$pixelColor$3$2: int;

var $$color$0$1: int;

var $$color$0$2: int;

var $$color$1$1: int;

var $$color$1$2: int;

var $$color$2$1: int;

var $$color$2$2: int;

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



const _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



const _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



const _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: int;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int, _value: int);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
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
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
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
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
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
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ11Mandelbrot1IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
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

const {:existential true} _b190: bool;

const {:existential true} _b191: bool;

const {:existential true} _b192: bool;

const {:existential true} _b193: bool;

const {:existential true} _b194: bool;

const {:existential true} _b195: bool;

const {:existential true} _b196: bool;

const {:existential true} _b197: bool;

const {:existential true} _b198: bool;

const {:existential true} _b199: bool;

const {:existential true} _b200: bool;

const {:existential true} _b201: bool;

const {:existential true} _b202: bool;

const {:existential true} _b203: bool;

const {:existential true} _b204: bool;

const {:existential true} _b205: bool;

const {:existential true} _b206: bool;

const {:existential true} _b207: bool;

const {:existential true} _b208: bool;

const {:existential true} _b209: bool;

const {:existential true} _b210: bool;

const {:existential true} _b211: bool;

const {:existential true} _b212: bool;

const {:existential true} _b213: bool;

const {:existential true} _b214: bool;

const {:existential true} _b215: bool;

const {:existential true} _b216: bool;

const {:existential true} _b217: bool;

const {:existential true} _b218: bool;

const {:existential true} _b219: bool;

const {:existential true} _b220: bool;

const {:existential true} _b221: bool;

const {:existential true} _b222: bool;

const {:existential true} _b223: bool;

const {:existential true} _b224: bool;

const {:existential true} _b225: bool;

const {:existential true} _b226: bool;

const {:existential true} _b227: bool;

const {:existential true} _b228: bool;

const {:existential true} _b229: bool;

const {:existential true} _b230: bool;

const {:existential true} _b231: bool;

const {:existential true} _b232: bool;

const {:existential true} _b233: bool;

const {:existential true} _b234: bool;

const {:existential true} _b235: bool;

const {:existential true} _b236: bool;

const {:existential true} _b237: bool;

const {:existential true} _b238: bool;

const {:existential true} _b239: bool;

const {:existential true} _b240: bool;

const {:existential true} _b241: bool;

const {:existential true} _b242: bool;

const {:existential true} _b243: bool;

const {:existential true} _b244: bool;

const {:existential true} _b245: bool;

const {:existential true} _b246: bool;

const {:existential true} _b247: bool;

const {:existential true} _b248: bool;

const {:existential true} _b249: bool;

const {:existential true} _b250: bool;

const {:existential true} _b251: bool;

const {:existential true} _b252: bool;

const {:existential true} _b253: bool;

const {:existential true} _b254: bool;

const {:existential true} _b255: bool;
