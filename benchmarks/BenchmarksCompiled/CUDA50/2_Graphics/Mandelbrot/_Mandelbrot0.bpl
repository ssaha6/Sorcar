type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP8(x: [bv32]bv8, y: bv32) returns (z$1: bv8, A$1: [bv32]bv8, z$2: bv8, A$2: [bv32]bv8);



procedure _ATOMIC_OP32(y: bv32, _P$1: bool, x$1: [bv32]bv32, _P$2: bool, x$2: [bv32]bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);
  requires _P$1 ==> y == 0bv32;
  requires _P$2 ==> y == 0bv32;



var {:source_name "dst"} {:global} $$dst: [bv32]bv8;

axiom {:array_info "$$dst"} {:global} {:elem_width 8} {:source_name "dst"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$dst: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$dst: bool;

axiom {:array_info "$$colors.val"} {:elem_width 8} {:source_name "colors.val"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$color"} {:elem_width 8} {:source_name "color"} {:source_elem_width 32} {:source_dimensions "1"} true;

axiom {:array_info "$$blockCounter"} {:global} {:elem_width 32} {:source_name "blockCounter"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$blockCounter: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$blockCounter: bool;

var {:source_name "blockIndex"} {:group_shared} $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: [bv32]bv32;

axiom {:array_info "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:group_shared} {:elem_width 32} {:source_name "blockIndex"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

var {:source_name "blockX"} {:group_shared} $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: [bv32]bv32;

axiom {:array_info "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:group_shared} {:elem_width 32} {:source_name "blockX"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

var {:source_name "blockY"} {:group_shared} $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: [bv32]bv32;

axiom {:array_info "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:group_shared} {:elem_width 32} {:source_name "blockY"} {:source_elem_width 32} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

var {:race_checking} {:group_shared} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

const _WATCHED_OFFSET: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FLT32(bv32, bv32) : bool;

function FMUL32(bv32, bv32) : bv32;

function FSUB32(bv32, bv32) : bv32;

function SI32_TO_FP32(bv32) : bv32;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV32_SDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "zero_extend 24"} BV8_ZEXT32(bv8) : bv32;

procedure {:source_name "Mandelbrot0<float>"} {:kernel} $_Z11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiib($imageW: bv32, $imageH: bv32, $crunch: bv32, $xOff: bv32, $yOff: bv32, $xJP: bv32, $yJP: bv32, $scale: bv32, $colors: bv32, $frame: bv32, $animationFrame: bv32, $gridWidth: bv32, $numBlocks: bv32, $isJ: bv1);
  requires {:sourceloc_num 0} {:thread 1} (if $imageW == 800bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $imageH == 600bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if $gridWidth == 25bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 3} {:thread 1} (if $numBlocks == 475bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$dst && !_WRITE_HAS_OCCURRED_$$dst && !_ATOMIC_HAS_OCCURRED_$$dst;
  requires !_READ_HAS_OCCURRED_$$blockCounter && !_WRITE_HAS_OCCURRED_$$blockCounter && !_ATOMIC_HAS_OCCURRED_$$blockCounter;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
  requires !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x, 0bv32);
  requires BV32_SLT(group_id_x, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y, 0bv32);
  requires BV32_SLT(group_id_y, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z, 0bv32);
  requires BV32_SLT(group_id_z, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires true ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  requires true;
  modifies _USED_$$blockCounter, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING, _ATOMIC_HAS_OCCURRED_$$blockCounter, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _TRACKING, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _READ_HAS_OCCURRED_$$dst, _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:source_name "Mandelbrot0<float>"} {:kernel} $_Z11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiib($imageW: bv32, $imageH: bv32, $crunch: bv32, $xOff: bv32, $yOff: bv32, $xJP: bv32, $yJP: bv32, $scale: bv32, $colors: bv32, $frame: bv32, $animationFrame: bv32, $gridWidth: bv32, $numBlocks: bv32, $isJ: bv1)
{
  var $y.i.0$1: bv32;
  var $y.i.0$2: bv32;
  var $x.i.0$1: bv32;
  var $x.i.0$2: bv32;
  var $xx.i.0$1: bv32;
  var $xx.i.0$2: bv32;
  var $yy.i.0$1: bv32;
  var $yy.i.0$2: bv32;
  var $xC.i.0$1: bv32;
  var $xC.i.0$2: bv32;
  var $yC.i.0$1: bv32;
  var $yC.i.0$2: bv32;
  var $y.i.1$1: bv32;
  var $y.i.1$2: bv32;
  var $x.i.1$1: bv32;
  var $x.i.1$2: bv32;
  var $xx.i.1$1: bv32;
  var $xx.i.1$2: bv32;
  var $yy.i.1$1: bv32;
  var $yy.i.1$2: bv32;
  var $i.i.0$1: bv32;
  var $i.i.0$2: bv32;
  var $retval.i.0$1: bv32;
  var $retval.i.0$2: bv32;
  var $cond$1: bv32;
  var $cond$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v135$1: bv8;
  var v135$2: bv8;
  var v4$1: bv32;
  var v4$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v0$1: bool;
  var v0$2: bool;
  var v1$1: bool;
  var v1$2: bool;
  var v121$1: bv8;
  var v121$2: bv8;
  var v120$1: bv8;
  var v120$2: bv8;
  var v119$1: bv8;
  var v119$2: bv8;
  var v126$1: bv8;
  var v126$2: bv8;
  var v131$1: bv8;
  var v131$2: bv8;
  var v125$1: bv8;
  var v125$2: bv8;
  var v132$1: bv8;
  var v132$2: bv8;
  var v134$1: bv8;
  var v134$2: bv8;
  var v133$1: bv8;
  var v133$2: bv8;
  var v124$1: bv8;
  var v124$2: bv8;
  var v130$1: bv8;
  var v130$2: bv8;
  var v127$1: bv8;
  var v127$2: bv8;
  var v9$1: bv32;
  var v9$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;
  var v16$1: bool;
  var v16$2: bool;
  var v25$1: bv32;
  var v25$2: bv32;
  var v26$1: bool;
  var v26$2: bool;
  var v17$1: bv32;
  var v17$2: bv32;
  var v20$1: bv32;
  var v20$2: bv32;
  var v18$1: bv32;
  var v18$2: bv32;
  var v21$1: bool;
  var v21$2: bool;
  var v22$1: bv32;
  var v22$2: bv32;
  var v24$1: bv32;
  var v24$2: bv32;
  var v23$1: bv32;
  var v23$2: bv32;
  var v19$1: bv32;
  var v19$2: bv32;
  var v14$1: bv32;
  var v14$2: bv32;
  var v8$1: bv32;
  var v8$2: bv32;
  var v6$1: bool;
  var v6$2: bool;
  var v10$1: bv32;
  var v10$2: bv32;
  var v13$1: bv32;
  var v13$2: bv32;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v15$1: bool;
  var v15$2: bool;
  var v48$1: bv32;
  var v48$2: bv32;
  var v54$1: bv32;
  var v54$2: bv32;
  var v47$1: bv32;
  var v47$2: bv32;
  var v56$1: bool;
  var v56$2: bool;
  var v50$1: bv32;
  var v50$2: bv32;
  var v49$1: bv32;
  var v49$2: bv32;
  var v52$1: bv32;
  var v52$2: bv32;
  var v53$1: bv32;
  var v53$2: bv32;
  var v51$1: bool;
  var v51$2: bool;
  var v55$1: bv32;
  var v55$2: bv32;
  var v33$1: bv32;
  var v33$2: bv32;
  var v27$1: bv32;
  var v27$2: bv32;
  var v29$1: bv32;
  var v29$2: bv32;
  var v34$1: bv32;
  var v34$2: bv32;
  var v32$1: bv32;
  var v32$2: bv32;
  var v35$1: bv32;
  var v35$2: bv32;
  var v28$1: bv32;
  var v28$2: bv32;
  var v30$1: bv32;
  var v30$2: bv32;
  var v36$1: bool;
  var v36$2: bool;
  var v31$1: bool;
  var v31$2: bool;
  var v39$1: bv32;
  var v39$2: bv32;
  var v40$1: bv32;
  var v40$2: bv32;
  var v38$1: bv32;
  var v38$2: bv32;
  var v41$1: bool;
  var v41$2: bool;
  var v37$1: bv32;
  var v37$2: bv32;
  var v42$1: bv32;
  var v42$2: bv32;
  var v43$1: bv32;
  var v43$2: bv32;
  var v45$1: bv32;
  var v45$2: bv32;
  var v44$1: bv32;
  var v44$2: bv32;
  var v46$1: bool;
  var v46$2: bool;
  var v59$1: bv32;
  var v59$2: bv32;
  var v57$1: bv32;
  var v57$2: bv32;
  var v60$1: bv32;
  var v60$2: bv32;
  var v62$1: bv32;
  var v62$2: bv32;
  var v63$1: bv32;
  var v63$2: bv32;
  var v64$1: bv32;
  var v64$2: bv32;
  var v66$1: bool;
  var v66$2: bool;
  var v58$1: bv32;
  var v58$2: bv32;
  var v65$1: bv32;
  var v65$2: bv32;
  var v61$1: bool;
  var v61$2: bool;
  var v71$1: bool;
  var v71$2: bool;
  var v70$1: bv32;
  var v70$2: bv32;
  var v73$1: bv32;
  var v73$2: bv32;
  var v76$1: bool;
  var v76$2: bool;
  var v72$1: bv32;
  var v72$2: bv32;
  var v74$1: bv32;
  var v74$2: bv32;
  var v67$1: bv32;
  var v67$2: bv32;
  var v75$1: bv32;
  var v75$2: bv32;
  var v69$1: bv32;
  var v69$2: bv32;
  var v68$1: bv32;
  var v68$2: bv32;
  var v77$1: bv32;
  var v77$2: bv32;
  var v79$1: bv32;
  var v79$2: bv32;
  var v78$1: bv32;
  var v78$2: bv32;
  var v86$1: bool;
  var v86$2: bool;
  var v80$1: bv32;
  var v80$2: bv32;
  var v82$1: bv32;
  var v82$2: bv32;
  var v83$1: bv32;
  var v83$2: bv32;
  var v84$1: bv32;
  var v84$2: bv32;
  var v81$1: bool;
  var v81$2: bool;
  var v85$1: bv32;
  var v85$2: bv32;
  var v88$1: bv32;
  var v88$2: bv32;
  var v87$1: bv32;
  var v87$2: bv32;
  var v98$1: bv32;
  var v98$2: bv32;
  var v90$1: bv32;
  var v90$2: bv32;
  var v93$1: bv32;
  var v93$2: bv32;
  var v94$1: bv32;
  var v94$2: bv32;
  var v92$1: bv32;
  var v92$2: bv32;
  var v96$1: bool;
  var v96$2: bool;
  var v89$1: bv32;
  var v89$2: bv32;
  var v91$1: bool;
  var v91$2: bool;
  var v97$1: bv32;
  var v97$2: bv32;
  var v95$1: bv32;
  var v95$2: bv32;
  var v101$1: bool;
  var v101$2: bool;
  var v102$1: bv32;
  var v102$2: bv32;
  var v106$1: bool;
  var v106$2: bool;
  var v107$1: bv32;
  var v107$2: bv32;
  var v108$1: bv32;
  var v108$2: bv32;
  var v100$1: bv32;
  var v100$2: bv32;
  var v104$1: bv32;
  var v104$2: bv32;
  var v105$1: bv32;
  var v105$2: bv32;
  var v103$1: bv32;
  var v103$2: bv32;
  var v99$1: bv32;
  var v99$2: bv32;
  var v112$1: bool;
  var v112$2: bool;
  var v113$1: bool;
  var v113$2: bool;
  var v114$1: bv32;
  var v114$2: bv32;
  var v116$1: bool;
  var v116$2: bool;
  var v109$1: bv32;
  var v109$2: bv32;
  var v110$1: bv32;
  var v110$2: bv32;
  var v115$1: bv32;
  var v115$2: bv32;
  var v111$1: bv32;
  var v111$2: bv32;
  var v123$1: bool;
  var v123$2: bool;
  var v122$1: bv32;
  var v122$2: bv32;
  var v118$1: bv32;
  var v118$2: bv32;
  var v117$1: bool;
  var v117$2: bool;
  var v129$1: bv32;
  var v129$2: bv32;
  var v128$1: bv32;
  var v128$2: bv32;
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
  var _HAVOC_bv32$1: bv32;
  var _HAVOC_bv32$2: bv32;


  $entry:
    $$colors.val$0bv32$1 := $colors[8:0];
    $$colors.val$0bv32$2 := $colors[8:0];
    $$colors.val$1bv32$1 := $colors[16:8];
    $$colors.val$1bv32$2 := $colors[16:8];
    $$colors.val$2bv32$1 := $colors[24:16];
    $$colors.val$2bv32$2 := $colors[24:16];
    $$colors.val$3bv32$1 := $colors[32:24];
    $$colors.val$3bv32$2 := $colors[32:24];
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto __partitioned_block_$while.body_0;

  __partitioned_block_$while.body_0:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b175 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b174 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b173 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assert {:tag "noread"} _b172 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b171 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b170 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b169 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assert {:tag "noread"} _b168 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b167 ==> _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b166 ==> _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "nowrite"} _b165 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assert {:tag "noread"} _b164 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b163 ==> _ATOMIC_HAS_OCCURRED_$$blockCounter ==> _WATCHED_OFFSET == 0bv32;
    assert {:tag "noatomic"} _b162 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    assert {:tag "nowrite"} _b161 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assert {:tag "noread"} _b160 ==> !_READ_HAS_OCCURRED_$$dst;
    assert {:tag "predicatedEquality"} _b159 ==> p0$1 && p0$2 ==> v128$1 == v128$2;
    assert {:tag "predicatedEquality"} _b158 ==> p0$1 && p0$2 ==> v129$1 == v129$2;
    assert {:tag "predicatedEquality"} _b157 ==> p0$1 && p0$2 ==> v117$1 == v117$2;
    assert {:tag "predicatedEquality"} _b156 ==> p0$1 && p0$2 ==> v118$1 == v118$2;
    assert {:tag "predicatedEquality"} _b155 ==> p0$1 && p0$2 ==> v122$1 == v122$2;
    assert {:tag "predicatedEquality"} _b154 ==> p0$1 && p0$2 ==> v123$1 == v123$2;
    assert {:tag "predicatedEquality"} _b153 ==> p0$1 && p0$2 ==> v111$1 == v111$2;
    assert {:tag "predicatedEquality"} _b152 ==> p0$1 && p0$2 ==> v115$1 == v115$2;
    assert {:tag "predicatedEquality"} _b151 ==> p0$1 && p0$2 ==> v110$1 == v110$2;
    assert {:tag "predicatedEquality"} _b150 ==> p0$1 && p0$2 ==> v109$1 == v109$2;
    assert {:tag "predicatedEquality"} _b149 ==> p0$1 && p0$2 ==> v116$1 == v116$2;
    assert {:tag "predicatedEquality"} _b148 ==> p0$1 && p0$2 ==> v114$1 == v114$2;
    assert {:tag "predicatedEquality"} _b147 ==> p0$1 && p0$2 ==> v113$1 == v113$2;
    assert {:tag "predicatedEquality"} _b146 ==> p0$1 && p0$2 ==> v112$1 == v112$2;
    assert {:tag "predicatedEquality"} _b145 ==> p0$1 && p0$2 ==> v99$1 == v99$2;
    assert {:tag "predicatedEquality"} _b144 ==> p0$1 && p0$2 ==> v103$1 == v103$2;
    assert {:tag "predicatedEquality"} _b143 ==> p0$1 && p0$2 ==> v105$1 == v105$2;
    assert {:tag "predicatedEquality"} _b142 ==> p0$1 && p0$2 ==> v104$1 == v104$2;
    assert {:tag "predicatedEquality"} _b141 ==> p0$1 && p0$2 ==> v100$1 == v100$2;
    assert {:tag "predicatedEquality"} _b140 ==> p0$1 && p0$2 ==> v108$1 == v108$2;
    assert {:tag "predicatedEquality"} _b139 ==> p0$1 && p0$2 ==> v107$1 == v107$2;
    assert {:tag "predicatedEquality"} _b138 ==> p0$1 && p0$2 ==> v106$1 == v106$2;
    assert {:tag "predicatedEquality"} _b137 ==> p0$1 && p0$2 ==> v102$1 == v102$2;
    assert {:tag "predicatedEquality"} _b136 ==> p0$1 && p0$2 ==> v101$1 == v101$2;
    assert {:tag "predicatedEquality"} _b135 ==> p0$1 && p0$2 ==> v95$1 == v95$2;
    assert {:tag "predicatedEquality"} _b134 ==> p0$1 && p0$2 ==> v97$1 == v97$2;
    assert {:tag "predicatedEquality"} _b133 ==> p0$1 && p0$2 ==> v91$1 == v91$2;
    assert {:tag "predicatedEquality"} _b132 ==> p0$1 && p0$2 ==> v89$1 == v89$2;
    assert {:tag "predicatedEquality"} _b131 ==> p0$1 && p0$2 ==> v96$1 == v96$2;
    assert {:tag "predicatedEquality"} _b130 ==> p0$1 && p0$2 ==> v92$1 == v92$2;
    assert {:tag "predicatedEquality"} _b129 ==> p0$1 && p0$2 ==> v94$1 == v94$2;
    assert {:tag "predicatedEquality"} _b128 ==> p0$1 && p0$2 ==> v93$1 == v93$2;
    assert {:tag "predicatedEquality"} _b127 ==> p0$1 && p0$2 ==> v90$1 == v90$2;
    assert {:tag "predicatedEquality"} _b126 ==> p0$1 && p0$2 ==> v98$1 == v98$2;
    assert {:tag "predicatedEquality"} _b125 ==> p0$1 && p0$2 ==> v87$1 == v87$2;
    assert {:tag "predicatedEquality"} _b124 ==> p0$1 && p0$2 ==> v88$1 == v88$2;
    assert {:tag "predicatedEquality"} _b123 ==> p0$1 && p0$2 ==> v85$1 == v85$2;
    assert {:tag "predicatedEquality"} _b122 ==> p0$1 && p0$2 ==> v81$1 == v81$2;
    assert {:tag "predicatedEquality"} _b121 ==> p0$1 && p0$2 ==> v84$1 == v84$2;
    assert {:tag "predicatedEquality"} _b120 ==> p0$1 && p0$2 ==> v83$1 == v83$2;
    assert {:tag "predicatedEquality"} _b119 ==> p0$1 && p0$2 ==> v82$1 == v82$2;
    assert {:tag "predicatedEquality"} _b118 ==> p0$1 && p0$2 ==> v80$1 == v80$2;
    assert {:tag "predicatedEquality"} _b117 ==> p0$1 && p0$2 ==> v86$1 == v86$2;
    assert {:tag "predicatedEquality"} _b116 ==> p0$1 && p0$2 ==> v78$1 == v78$2;
    assert {:tag "predicatedEquality"} _b115 ==> p0$1 && p0$2 ==> v79$1 == v79$2;
    assert {:tag "predicatedEquality"} _b114 ==> p0$1 && p0$2 ==> v77$1 == v77$2;
    assert {:tag "predicatedEquality"} _b113 ==> p0$1 && p0$2 ==> v68$1 == v68$2;
    assert {:tag "predicatedEquality"} _b112 ==> p0$1 && p0$2 ==> v69$1 == v69$2;
    assert {:tag "predicatedEquality"} _b111 ==> p0$1 && p0$2 ==> v75$1 == v75$2;
    assert {:tag "predicatedEquality"} _b110 ==> p0$1 && p0$2 ==> v67$1 == v67$2;
    assert {:tag "predicatedEquality"} _b109 ==> p0$1 && p0$2 ==> v74$1 == v74$2;
    assert {:tag "predicatedEquality"} _b108 ==> p0$1 && p0$2 ==> v72$1 == v72$2;
    assert {:tag "predicatedEquality"} _b107 ==> p0$1 && p0$2 ==> v76$1 == v76$2;
    assert {:tag "predicatedEquality"} _b106 ==> p0$1 && p0$2 ==> v73$1 == v73$2;
    assert {:tag "predicatedEquality"} _b105 ==> p0$1 && p0$2 ==> v70$1 == v70$2;
    assert {:tag "predicatedEquality"} _b104 ==> p0$1 && p0$2 ==> v71$1 == v71$2;
    assert {:tag "predicatedEquality"} _b103 ==> p0$1 && p0$2 ==> v61$1 == v61$2;
    assert {:tag "predicatedEquality"} _b102 ==> p0$1 && p0$2 ==> v65$1 == v65$2;
    assert {:tag "predicatedEquality"} _b101 ==> p0$1 && p0$2 ==> v58$1 == v58$2;
    assert {:tag "predicatedEquality"} _b100 ==> p0$1 && p0$2 ==> v66$1 == v66$2;
    assert {:tag "predicatedEquality"} _b99 ==> p0$1 && p0$2 ==> v64$1 == v64$2;
    assert {:tag "predicatedEquality"} _b98 ==> p0$1 && p0$2 ==> v63$1 == v63$2;
    assert {:tag "predicatedEquality"} _b97 ==> p0$1 && p0$2 ==> v62$1 == v62$2;
    assert {:tag "predicatedEquality"} _b96 ==> p0$1 && p0$2 ==> v60$1 == v60$2;
    assert {:tag "predicatedEquality"} _b95 ==> p0$1 && p0$2 ==> v57$1 == v57$2;
    assert {:tag "predicatedEquality"} _b94 ==> p0$1 && p0$2 ==> v59$1 == v59$2;
    assert {:tag "predicatedEquality"} _b93 ==> p0$1 && p0$2 ==> v46$1 == v46$2;
    assert {:tag "predicatedEquality"} _b92 ==> p0$1 && p0$2 ==> v44$1 == v44$2;
    assert {:tag "predicatedEquality"} _b91 ==> p0$1 && p0$2 ==> v45$1 == v45$2;
    assert {:tag "predicatedEquality"} _b90 ==> p0$1 && p0$2 ==> v43$1 == v43$2;
    assert {:tag "predicatedEquality"} _b89 ==> p0$1 && p0$2 ==> v42$1 == v42$2;
    assert {:tag "predicatedEquality"} _b88 ==> p0$1 && p0$2 ==> v37$1 == v37$2;
    assert {:tag "predicatedEquality"} _b87 ==> p0$1 && p0$2 ==> v41$1 == v41$2;
    assert {:tag "predicatedEquality"} _b86 ==> p0$1 && p0$2 ==> v38$1 == v38$2;
    assert {:tag "predicatedEquality"} _b85 ==> p0$1 && p0$2 ==> v40$1 == v40$2;
    assert {:tag "predicatedEquality"} _b84 ==> p0$1 && p0$2 ==> v39$1 == v39$2;
    assert {:tag "predicatedEquality"} _b83 ==> p0$1 && p0$2 ==> v31$1 == v31$2;
    assert {:tag "predicatedEquality"} _b82 ==> p0$1 && p0$2 ==> v36$1 == v36$2;
    assert {:tag "predicatedEquality"} _b81 ==> p0$1 && p0$2 ==> v30$1 == v30$2;
    assert {:tag "predicatedEquality"} _b80 ==> p0$1 && p0$2 ==> v28$1 == v28$2;
    assert {:tag "predicatedEquality"} _b79 ==> p0$1 && p0$2 ==> v35$1 == v35$2;
    assert {:tag "predicatedEquality"} _b78 ==> p0$1 && p0$2 ==> v32$1 == v32$2;
    assert {:tag "predicatedEquality"} _b77 ==> p0$1 && p0$2 ==> v34$1 == v34$2;
    assert {:tag "predicatedEquality"} _b76 ==> p0$1 && p0$2 ==> v29$1 == v29$2;
    assert {:tag "predicatedEquality"} _b75 ==> p0$1 && p0$2 ==> v27$1 == v27$2;
    assert {:tag "predicatedEquality"} _b74 ==> p0$1 && p0$2 ==> v33$1 == v33$2;
    assert {:tag "predicatedEquality"} _b73 ==> p0$1 && p0$2 ==> v55$1 == v55$2;
    assert {:tag "predicatedEquality"} _b72 ==> p0$1 && p0$2 ==> v51$1 == v51$2;
    assert {:tag "predicatedEquality"} _b71 ==> p0$1 && p0$2 ==> v53$1 == v53$2;
    assert {:tag "predicatedEquality"} _b70 ==> p0$1 && p0$2 ==> v52$1 == v52$2;
    assert {:tag "predicatedEquality"} _b69 ==> p0$1 && p0$2 ==> v49$1 == v49$2;
    assert {:tag "predicatedEquality"} _b68 ==> p0$1 && p0$2 ==> v50$1 == v50$2;
    assert {:tag "predicatedEquality"} _b67 ==> p0$1 && p0$2 ==> v56$1 == v56$2;
    assert {:tag "predicatedEquality"} _b66 ==> p0$1 && p0$2 ==> v47$1 == v47$2;
    assert {:tag "predicatedEquality"} _b65 ==> p0$1 && p0$2 ==> v54$1 == v54$2;
    assert {:tag "predicatedEquality"} _b64 ==> p0$1 && p0$2 ==> v48$1 == v48$2;
    assert {:tag "predicatedEquality"} _b63 ==> p0$1 && p0$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b62 ==> p0$1 && p0$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b61 ==> p0$1 && p0$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b60 ==> p0$1 && p0$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b59 ==> p0$1 && p0$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b58 ==> p0$1 && p0$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b57 ==> p0$1 && p0$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b56 ==> p0$1 && p0$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b55 ==> p0$1 && p0$2 ==> v19$1 == v19$2;
    assert {:tag "predicatedEquality"} _b54 ==> p0$1 && p0$2 ==> v23$1 == v23$2;
    assert {:tag "predicatedEquality"} _b53 ==> p0$1 && p0$2 ==> v24$1 == v24$2;
    assert {:tag "predicatedEquality"} _b52 ==> p0$1 && p0$2 ==> v22$1 == v22$2;
    assert {:tag "predicatedEquality"} _b51 ==> p0$1 && p0$2 ==> v21$1 == v21$2;
    assert {:tag "predicatedEquality"} _b50 ==> p0$1 && p0$2 ==> v18$1 == v18$2;
    assert {:tag "predicatedEquality"} _b49 ==> p0$1 && p0$2 ==> v20$1 == v20$2;
    assert {:tag "predicatedEquality"} _b48 ==> p0$1 && p0$2 ==> v17$1 == v17$2;
    assert {:tag "predicatedEquality"} _b47 ==> p0$1 && p0$2 ==> v26$1 == v26$2;
    assert {:tag "predicatedEquality"} _b46 ==> p0$1 && p0$2 ==> v25$1 == v25$2;
    assert {:tag "predicatedEquality"} _b45 ==> p0$1 && p0$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b44 ==> p0$1 && p0$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b43 ==> p0$1 && p0$2 ==> v5$1 == v5$2;
    assert {:tag "predicatedEquality"} _b42 ==> p0$1 && p0$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b41 ==> p0$1 && p0$2 ==> v127$1 == v127$2;
    assert {:tag "predicatedEquality"} _b40 ==> p0$1 && p0$2 ==> v130$1 == v130$2;
    assert {:tag "predicatedEquality"} _b39 ==> p0$1 && p0$2 ==> v124$1 == v124$2;
    assert {:tag "predicatedEquality"} _b38 ==> p0$1 && p0$2 ==> v133$1 == v133$2;
    assert {:tag "predicatedEquality"} _b37 ==> p0$1 && p0$2 ==> v134$1 == v134$2;
    assert {:tag "predicatedEquality"} _b36 ==> p0$1 && p0$2 ==> v132$1 == v132$2;
    assert {:tag "predicatedEquality"} _b35 ==> p0$1 && p0$2 ==> v125$1 == v125$2;
    assert {:tag "predicatedEquality"} _b34 ==> p0$1 && p0$2 ==> v131$1 == v131$2;
    assert {:tag "predicatedEquality"} _b33 ==> p0$1 && p0$2 ==> v126$1 == v126$2;
    assert {:tag "predicatedEquality"} _b32 ==> p0$1 && p0$2 ==> v119$1 == v119$2;
    assert {:tag "predicatedEquality"} _b31 ==> p0$1 && p0$2 ==> v120$1 == v120$2;
    assert {:tag "predicatedEquality"} _b30 ==> p0$1 && p0$2 ==> v121$1 == v121$2;
    assert {:tag "predicatedEquality"} _b29 ==> p0$1 && p0$2 ==> v1$1 == v1$2;
    assert {:tag "predicatedEquality"} _b28 ==> p0$1 && p0$2 ==> v0$1 == v0$2;
    assert {:tag "predicatedEquality"} _b27 ==> p0$1 && p0$2 ==> v2$1 == v2$2;
    assert {:tag "predicatedEquality"} _b26 ==> p0$1 && p0$2 ==> v4$1 == v4$2;
    assert {:tag "predicatedEquality"} _b25 ==> p0$1 && p0$2 ==> v135$1 == v135$2;
    assert {:tag "predicatedEquality"} _b24 ==> p0$1 && p0$2 ==> v3$1 == v3$2;
    assert {:tag "predicatedEquality"} _b23 ==> p0$1 && p0$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b22 ==> p0$1 && p0$2 ==> $retval.i.0$1 == $retval.i.0$2;
    assert {:tag "predicatedEquality"} _b21 ==> p0$1 && p0$2 ==> $i.i.0$1 == $i.i.0$2;
    assert {:tag "predicatedEquality"} _b20 ==> p0$1 && p0$2 ==> $yy.i.1$1 == $yy.i.1$2;
    assert {:tag "predicatedEquality"} _b19 ==> p0$1 && p0$2 ==> $xx.i.1$1 == $xx.i.1$2;
    assert {:tag "predicatedEquality"} _b18 ==> p0$1 && p0$2 ==> $x.i.1$1 == $x.i.1$2;
    assert {:tag "predicatedEquality"} _b17 ==> p0$1 && p0$2 ==> $y.i.1$1 == $y.i.1$2;
    assert {:tag "predicatedEquality"} _b16 ==> p0$1 && p0$2 ==> $yC.i.0$1 == $yC.i.0$2;
    assert {:tag "predicatedEquality"} _b15 ==> p0$1 && p0$2 ==> $xC.i.0$1 == $xC.i.0$2;
    assert {:tag "predicatedEquality"} _b14 ==> p0$1 && p0$2 ==> $yy.i.0$1 == $yy.i.0$2;
    assert {:tag "predicatedEquality"} _b13 ==> p0$1 && p0$2 ==> $xx.i.0$1 == $xx.i.0$2;
    assert {:tag "predicatedEquality"} _b12 ==> p0$1 && p0$2 ==> $x.i.0$1 == $x.i.0$2;
    assert {:tag "predicatedEquality"} _b11 ==> p0$1 && p0$2 ==> $y.i.0$1 == $y.i.0$2;
    assert {:tag "loopPredicateEquality"} _b10 ==> true ==> p0$1 == p0$2;
    assert {:tag "loopPredicateEquality"} _b9 ==> p0$1 == p0$2;
    assert {:tag "pow2NotZero"} _b8 ==> v128$2 != 0bv32;
    assert {:tag "pow2"} _b7 ==> v128$2 == 0bv32 || BV32_AND(v128$2, BV32_SUB(v128$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b6 ==> v128$1 != 0bv32;
    assert {:tag "pow2"} _b5 ==> v128$1 == 0bv32 || BV32_AND(v128$1, BV32_SUB(v128$1, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b4 ==> v129$2 != 0bv32;
    assert {:tag "pow2"} _b3 ==> v129$2 == 0bv32 || BV32_AND(v129$2, BV32_SUB(v129$2, 1bv32)) == 0bv32;
    assert {:tag "pow2NotZero"} _b2 ==> v129$1 != 0bv32;
    assert {:tag "pow2"} _b1 ==> v129$1 == 0bv32 || BV32_AND(v129$1, BV32_SUB(v129$1, 1bv32)) == 0bv32;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b0 ==> !BV32_UGE(v5$1, $numBlocks) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b0 ==> !BV32_UGE(v5$2, $numBlocks) ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    goto __partitioned_block_$while.body_1;

  __partitioned_block_$while.body_1:
    call {:sourceloc_num 6} $bugle_barrier_duplicated_0(1bv1, 1bv1, p0$1, p0$2);
    v0$1 := (if p0$1 then local_id_x$1 == 0bv32 else v0$1);
    v0$2 := (if p0$2 then local_id_x$2 == 0bv32 else v0$2);
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
    p62$1 := false;
    p62$2 := false;
    p2$1 := (if p0$1 && v0$1 then v0$1 else p2$1);
    p2$2 := (if p0$2 && v0$2 then v0$2 else p2$2);
    v1$1 := (if p2$1 then local_id_y$1 == 0bv32 else v1$1);
    v1$2 := (if p2$2 then local_id_y$2 == 0bv32 else v1$2);
    p4$1 := (if p2$1 && v1$1 then v1$1 else p4$1);
    p4$2 := (if p2$2 && v1$2 then v1$2 else p4$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_ATOMIC_$$blockCounter(p4$1, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_13"} {:captureState "check_state_13"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_13"} {:sourceloc} {:sourceloc_num 9} _CHECK_ATOMIC_$$blockCounter(p4$2, 0bv32);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_ATOMIC_$$blockCounter"} true;
    havoc _HAVOC_bv32$1, _HAVOC_bv32$2;
    v2$1 := (if p4$1 then _HAVOC_bv32$1 else v2$1);
    v2$2 := (if p4$2 then _HAVOC_bv32$2 else v2$2);
    assume !_USED_$$blockCounter[0bv32][v2$1];
    _USED_$$blockCounter[0bv32][v2$1] := true;
    assume !_USED_$$blockCounter[0bv32][v2$2];
    _USED_$$blockCounter[0bv32][v2$2] := true;
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0bv32, v2$1, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_14"} {:captureState "check_state_14"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_14"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0bv32, v2$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] := (if p4$1 then v2$1 else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] := (if p4$2 then v2$2 else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    call {:sourceloc} {:sourceloc_num 11} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_15"} {:captureState "check_state_15"} {:sourceloc} {:sourceloc_num 11} true;
    call {:check_id "check_state_15"} {:sourceloc} {:sourceloc_num 11} _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v3$1 := (if p4$1 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v3$1);
    v3$2 := (if p4$2 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v3$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$1, 0bv32, BV32_UREM(v3$1, $gridWidth), $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_16"} {:captureState "check_state_16"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_16"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p4$2, 0bv32, BV32_UREM(v3$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} true;
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32] := (if p4$1 then BV32_UREM(v3$1, $gridWidth) else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32]);
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32] := (if p4$2 then BV32_UREM(v3$2, $gridWidth) else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32]);
    call {:sourceloc} {:sourceloc_num 13} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$1, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_17"} {:captureState "check_state_17"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_17"} {:sourceloc} {:sourceloc_num 13} _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p4$2, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v4$1 := (if p4$1 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v4$1);
    v4$2 := (if p4$2 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v4$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$1, 0bv32, BV32_UDIV(v4$1, $gridWidth), $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_18"} {:captureState "check_state_18"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_18"} {:sourceloc} {:sourceloc_num 14} _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p4$2, 0bv32, BV32_UDIV(v4$2, $gridWidth));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} true;
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32] := (if p4$1 then BV32_UDIV(v4$1, $gridWidth) else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32]);
    $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32] := (if p4$2 then BV32_UDIV(v4$2, $gridWidth) else $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32]);
    goto __partitioned_block_$while.body_2;

  __partitioned_block_$while.body_2:
    call {:sourceloc_num 16} $bugle_barrier_duplicated_1(1bv1, 1bv1, p0$1, p0$2);
    call {:sourceloc} {:sourceloc_num 17} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p0$1, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 17} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 17} _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(p0$2, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} true;
    v5$1 := (if p0$1 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v5$1);
    v5$2 := (if p0$2 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex[0bv32] else v5$2);
    v6$1 := (if p0$1 then BV32_UGE(v5$1, $numBlocks) else v6$1);
    v6$2 := (if p0$2 then BV32_UGE(v5$2, $numBlocks) else v6$2);
    p0$1 := (if p0$1 && v6$1 then !v6$1 else p0$1);
    p0$2 := (if p0$2 && v6$2 then !v6$2 else p0$2);
    p5$1 := (if p0$1 && !v6$1 then !v6$1 else p5$1);
    p5$2 := (if p0$2 && !v6$2 then !v6$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p5$1, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 20} _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(p5$2, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} true;
    v7$1 := (if p5$1 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32] else v7$1);
    v7$2 := (if p5$2 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX[0bv32] else v7$2);
    v8$1 := (if p5$1 then BV32_ADD(BV32_MUL(group_size_x, v7$1), local_id_x$1) else v8$1);
    v8$2 := (if p5$2 then BV32_ADD(BV32_MUL(group_size_x, v7$2), local_id_x$2) else v8$2);
    call {:sourceloc} {:sourceloc_num 21} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p5$1, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 21} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 21} _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(p5$2, 0bv32, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} true;
    v9$1 := (if p5$1 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32] else v9$1);
    v9$2 := (if p5$2 then $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY[0bv32] else v9$2);
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
    v13$1 := (if p9$1 then FADD32(FMUL32(SI32_TO_FP32(v8$1), $scale), $xOff) else v13$1);
    v13$2 := (if p9$2 then FADD32(FMUL32(SI32_TO_FP32(v8$2), $scale), $xOff) else v13$2);
    v14$1 := (if p9$1 then FADD32(FMUL32(SI32_TO_FP32(v10$1), $scale), $yOff) else v14$1);
    v14$2 := (if p9$2 then FADD32(FMUL32(SI32_TO_FP32(v10$2), $scale), $yOff) else v14$2);
    v15$1 := (if p9$1 then $isJ == 1bv1 else v15$1);
    v15$2 := (if p9$2 then $isJ == 1bv1 else v15$2);
    p11$1 := (if p9$1 && v15$1 then v15$1 else p11$1);
    p11$2 := (if p9$2 && v15$2 then v15$2 else p11$2);
    p10$1 := (if p9$1 && !v15$1 then !v15$1 else p10$1);
    p10$2 := (if p9$2 && !v15$2 then !v15$2 else p10$2);
    $y.i.0$1, $x.i.0$1, $xx.i.0$1, $yy.i.0$1, $xC.i.0$1, $yC.i.0$1 := (if p10$1 then 0bv32 else $y.i.0$1), (if p10$1 then 0bv32 else $x.i.0$1), (if p10$1 then 0bv32 else $xx.i.0$1), (if p10$1 then 0bv32 else $yy.i.0$1), (if p10$1 then v13$1 else $xC.i.0$1), (if p10$1 then v14$1 else $yC.i.0$1);
    $y.i.0$2, $x.i.0$2, $xx.i.0$2, $yy.i.0$2, $xC.i.0$2, $yC.i.0$2 := (if p10$2 then 0bv32 else $y.i.0$2), (if p10$2 then 0bv32 else $x.i.0$2), (if p10$2 then 0bv32 else $xx.i.0$2), (if p10$2 then 0bv32 else $yy.i.0$2), (if p10$2 then v13$2 else $xC.i.0$2), (if p10$2 then v14$2 else $yC.i.0$2);
    $y.i.0$1, $x.i.0$1, $xx.i.0$1, $yy.i.0$1, $xC.i.0$1, $yC.i.0$1 := (if p11$1 then v14$1 else $y.i.0$1), (if p11$1 then v13$1 else $x.i.0$1), (if p11$1 then FMUL32(v13$1, v13$1) else $xx.i.0$1), (if p11$1 then FMUL32(v14$1, v14$1) else $yy.i.0$1), (if p11$1 then $xJP else $xC.i.0$1), (if p11$1 then $yJP else $yC.i.0$1);
    $y.i.0$2, $x.i.0$2, $xx.i.0$2, $yy.i.0$2, $xC.i.0$2, $yC.i.0$2 := (if p11$2 then v14$2 else $y.i.0$2), (if p11$2 then v13$2 else $x.i.0$2), (if p11$2 then FMUL32(v13$2, v13$2) else $xx.i.0$2), (if p11$2 then FMUL32(v14$2, v14$2) else $yy.i.0$2), (if p11$2 then $xJP else $xC.i.0$2), (if p11$2 then $yJP else $yC.i.0$2);
    $y.i.1$1, $x.i.1$1, $xx.i.1$1, $yy.i.1$1, $i.i.0$1 := (if p9$1 then $y.i.0$1 else $y.i.1$1), (if p9$1 then $x.i.0$1 else $x.i.1$1), (if p9$1 then $xx.i.0$1 else $xx.i.1$1), (if p9$1 then $yy.i.0$1 else $yy.i.1$1), (if p9$1 then $crunch else $i.i.0$1);
    $y.i.1$2, $x.i.1$2, $xx.i.1$2, $yy.i.1$2, $i.i.0$2 := (if p9$2 then $y.i.0$2 else $y.i.1$2), (if p9$2 then $x.i.0$2 else $x.i.1$2), (if p9$2 then $xx.i.0$2 else $xx.i.1$2), (if p9$2 then $yy.i.0$2 else $yy.i.1$2), (if p9$2 then $crunch else $i.i.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $do.body.i;

  $do.body.i:
    assume {:captureState "loop_head_state_1"} true;
    assume {:invGenSkippedLoop} true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex ==> true;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p0$1;
    assert p12$2 ==> p0$2;
    assert {:block_sourceloc} {:sourceloc_num 27} p12$1 ==> true;
    v16$1 := (if p12$1 then FLT32(1082130432bv32, FADD32($xx.i.1$1, $yy.i.1$1)) else v16$1);
    v16$2 := (if p12$2 then FLT32(1082130432bv32, FADD32($xx.i.1$2, $yy.i.1$2)) else v16$2);
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
    p34$1 := (if p12$1 && v16$1 then v16$1 else p34$1);
    p34$2 := (if p12$2 && v16$2 then v16$2 else p34$2);
    p12$1 := (if p12$1 && v16$1 then !v16$1 else p12$1);
    p12$2 := (if p12$2 && v16$2 then !v16$2 else p12$2);
    p13$1 := (if p12$1 && !v16$1 then !v16$1 else p13$1);
    p13$2 := (if p12$2 && !v16$2 then !v16$2 else p13$2);
    v17$1 := (if p13$1 then FADD32(FMUL32(FMUL32($x.i.1$1, $y.i.1$1), 1073741824bv32), $yC.i.0$1) else v17$1);
    v17$2 := (if p13$2 then FADD32(FMUL32(FMUL32($x.i.1$2, $y.i.1$2), 1073741824bv32), $yC.i.0$2) else v17$2);
    v18$1 := (if p13$1 then FADD32(FSUB32($xx.i.1$1, $yy.i.1$1), $xC.i.0$1) else v18$1);
    v18$2 := (if p13$2 then FADD32(FSUB32($xx.i.1$2, $yy.i.1$2), $xC.i.0$2) else v18$2);
    v19$1 := (if p13$1 then FMUL32(v17$1, v17$1) else v19$1);
    v19$2 := (if p13$2 then FMUL32(v17$2, v17$2) else v19$2);
    v20$1 := (if p13$1 then FMUL32(v18$1, v18$1) else v20$1);
    v20$2 := (if p13$2 then FMUL32(v18$2, v18$2) else v20$2);
    v21$1 := (if p13$1 then FLT32(1082130432bv32, FADD32(v20$1, v19$1)) else v21$1);
    v21$2 := (if p13$2 then FLT32(1082130432bv32, FADD32(v20$2, v19$2)) else v21$2);
    p55$1 := (if p13$1 && v21$1 then v21$1 else p55$1);
    p55$2 := (if p13$2 && v21$2 then v21$2 else p55$2);
    p12$1 := (if p13$1 && v21$1 then !v21$1 else p12$1);
    p12$2 := (if p13$2 && v21$2 then !v21$2 else p12$2);
    p14$1 := (if p13$1 && !v21$1 then !v21$1 else p14$1);
    p14$2 := (if p13$2 && !v21$2 then !v21$2 else p14$2);
    v22$1 := (if p14$1 then FADD32(FMUL32(FMUL32(v18$1, v17$1), 1073741824bv32), $yC.i.0$1) else v22$1);
    v22$2 := (if p14$2 then FADD32(FMUL32(FMUL32(v18$2, v17$2), 1073741824bv32), $yC.i.0$2) else v22$2);
    v23$1 := (if p14$1 then FADD32(FSUB32(v20$1, v19$1), $xC.i.0$1) else v23$1);
    v23$2 := (if p14$2 then FADD32(FSUB32(v20$2, v19$2), $xC.i.0$2) else v23$2);
    v24$1 := (if p14$1 then FMUL32(v22$1, v22$1) else v24$1);
    v24$2 := (if p14$2 then FMUL32(v22$2, v22$2) else v24$2);
    v25$1 := (if p14$1 then FMUL32(v23$1, v23$1) else v25$1);
    v25$2 := (if p14$2 then FMUL32(v23$2, v23$2) else v25$2);
    v26$1 := (if p14$1 then FLT32(1082130432bv32, FADD32(v25$1, v24$1)) else v26$1);
    v26$2 := (if p14$2 then FLT32(1082130432bv32, FADD32(v25$2, v24$2)) else v26$2);
    p54$1 := (if p14$1 && v26$1 then v26$1 else p54$1);
    p54$2 := (if p14$2 && v26$2 then v26$2 else p54$2);
    p12$1 := (if p14$1 && v26$1 then !v26$1 else p12$1);
    p12$2 := (if p14$2 && v26$2 then !v26$2 else p12$2);
    p15$1 := (if p14$1 && !v26$1 then !v26$1 else p15$1);
    p15$2 := (if p14$2 && !v26$2 then !v26$2 else p15$2);
    v27$1 := (if p15$1 then FADD32(FMUL32(FMUL32(v23$1, v22$1), 1073741824bv32), $yC.i.0$1) else v27$1);
    v27$2 := (if p15$2 then FADD32(FMUL32(FMUL32(v23$2, v22$2), 1073741824bv32), $yC.i.0$2) else v27$2);
    v28$1 := (if p15$1 then FADD32(FSUB32(v25$1, v24$1), $xC.i.0$1) else v28$1);
    v28$2 := (if p15$2 then FADD32(FSUB32(v25$2, v24$2), $xC.i.0$2) else v28$2);
    v29$1 := (if p15$1 then FMUL32(v27$1, v27$1) else v29$1);
    v29$2 := (if p15$2 then FMUL32(v27$2, v27$2) else v29$2);
    v30$1 := (if p15$1 then FMUL32(v28$1, v28$1) else v30$1);
    v30$2 := (if p15$2 then FMUL32(v28$2, v28$2) else v30$2);
    v31$1 := (if p15$1 then FLT32(1082130432bv32, FADD32(v30$1, v29$1)) else v31$1);
    v31$2 := (if p15$2 then FLT32(1082130432bv32, FADD32(v30$2, v29$2)) else v31$2);
    p53$1 := (if p15$1 && v31$1 then v31$1 else p53$1);
    p53$2 := (if p15$2 && v31$2 then v31$2 else p53$2);
    p12$1 := (if p15$1 && v31$1 then !v31$1 else p12$1);
    p12$2 := (if p15$2 && v31$2 then !v31$2 else p12$2);
    p16$1 := (if p15$1 && !v31$1 then !v31$1 else p16$1);
    p16$2 := (if p15$2 && !v31$2 then !v31$2 else p16$2);
    v32$1 := (if p16$1 then FADD32(FMUL32(FMUL32(v28$1, v27$1), 1073741824bv32), $yC.i.0$1) else v32$1);
    v32$2 := (if p16$2 then FADD32(FMUL32(FMUL32(v28$2, v27$2), 1073741824bv32), $yC.i.0$2) else v32$2);
    v33$1 := (if p16$1 then FADD32(FSUB32(v30$1, v29$1), $xC.i.0$1) else v33$1);
    v33$2 := (if p16$2 then FADD32(FSUB32(v30$2, v29$2), $xC.i.0$2) else v33$2);
    v34$1 := (if p16$1 then FMUL32(v32$1, v32$1) else v34$1);
    v34$2 := (if p16$2 then FMUL32(v32$2, v32$2) else v34$2);
    v35$1 := (if p16$1 then FMUL32(v33$1, v33$1) else v35$1);
    v35$2 := (if p16$2 then FMUL32(v33$2, v33$2) else v35$2);
    v36$1 := (if p16$1 then FLT32(1082130432bv32, FADD32(v35$1, v34$1)) else v36$1);
    v36$2 := (if p16$2 then FLT32(1082130432bv32, FADD32(v35$2, v34$2)) else v36$2);
    p52$1 := (if p16$1 && v36$1 then v36$1 else p52$1);
    p52$2 := (if p16$2 && v36$2 then v36$2 else p52$2);
    p12$1 := (if p16$1 && v36$1 then !v36$1 else p12$1);
    p12$2 := (if p16$2 && v36$2 then !v36$2 else p12$2);
    p17$1 := (if p16$1 && !v36$1 then !v36$1 else p17$1);
    p17$2 := (if p16$2 && !v36$2 then !v36$2 else p17$2);
    v37$1 := (if p17$1 then FADD32(FMUL32(FMUL32(v33$1, v32$1), 1073741824bv32), $yC.i.0$1) else v37$1);
    v37$2 := (if p17$2 then FADD32(FMUL32(FMUL32(v33$2, v32$2), 1073741824bv32), $yC.i.0$2) else v37$2);
    v38$1 := (if p17$1 then FADD32(FSUB32(v35$1, v34$1), $xC.i.0$1) else v38$1);
    v38$2 := (if p17$2 then FADD32(FSUB32(v35$2, v34$2), $xC.i.0$2) else v38$2);
    v39$1 := (if p17$1 then FMUL32(v37$1, v37$1) else v39$1);
    v39$2 := (if p17$2 then FMUL32(v37$2, v37$2) else v39$2);
    v40$1 := (if p17$1 then FMUL32(v38$1, v38$1) else v40$1);
    v40$2 := (if p17$2 then FMUL32(v38$2, v38$2) else v40$2);
    v41$1 := (if p17$1 then FLT32(1082130432bv32, FADD32(v40$1, v39$1)) else v41$1);
    v41$2 := (if p17$2 then FLT32(1082130432bv32, FADD32(v40$2, v39$2)) else v41$2);
    p51$1 := (if p17$1 && v41$1 then v41$1 else p51$1);
    p51$2 := (if p17$2 && v41$2 then v41$2 else p51$2);
    p12$1 := (if p17$1 && v41$1 then !v41$1 else p12$1);
    p12$2 := (if p17$2 && v41$2 then !v41$2 else p12$2);
    p18$1 := (if p17$1 && !v41$1 then !v41$1 else p18$1);
    p18$2 := (if p17$2 && !v41$2 then !v41$2 else p18$2);
    v42$1 := (if p18$1 then FADD32(FMUL32(FMUL32(v38$1, v37$1), 1073741824bv32), $yC.i.0$1) else v42$1);
    v42$2 := (if p18$2 then FADD32(FMUL32(FMUL32(v38$2, v37$2), 1073741824bv32), $yC.i.0$2) else v42$2);
    v43$1 := (if p18$1 then FADD32(FSUB32(v40$1, v39$1), $xC.i.0$1) else v43$1);
    v43$2 := (if p18$2 then FADD32(FSUB32(v40$2, v39$2), $xC.i.0$2) else v43$2);
    v44$1 := (if p18$1 then FMUL32(v42$1, v42$1) else v44$1);
    v44$2 := (if p18$2 then FMUL32(v42$2, v42$2) else v44$2);
    v45$1 := (if p18$1 then FMUL32(v43$1, v43$1) else v45$1);
    v45$2 := (if p18$2 then FMUL32(v43$2, v43$2) else v45$2);
    v46$1 := (if p18$1 then FLT32(1082130432bv32, FADD32(v45$1, v44$1)) else v46$1);
    v46$2 := (if p18$2 then FLT32(1082130432bv32, FADD32(v45$2, v44$2)) else v46$2);
    p50$1 := (if p18$1 && v46$1 then v46$1 else p50$1);
    p50$2 := (if p18$2 && v46$2 then v46$2 else p50$2);
    p12$1 := (if p18$1 && v46$1 then !v46$1 else p12$1);
    p12$2 := (if p18$2 && v46$2 then !v46$2 else p12$2);
    p19$1 := (if p18$1 && !v46$1 then !v46$1 else p19$1);
    p19$2 := (if p18$2 && !v46$2 then !v46$2 else p19$2);
    v47$1 := (if p19$1 then FADD32(FMUL32(FMUL32(v43$1, v42$1), 1073741824bv32), $yC.i.0$1) else v47$1);
    v47$2 := (if p19$2 then FADD32(FMUL32(FMUL32(v43$2, v42$2), 1073741824bv32), $yC.i.0$2) else v47$2);
    v48$1 := (if p19$1 then FADD32(FSUB32(v45$1, v44$1), $xC.i.0$1) else v48$1);
    v48$2 := (if p19$2 then FADD32(FSUB32(v45$2, v44$2), $xC.i.0$2) else v48$2);
    v49$1 := (if p19$1 then FMUL32(v47$1, v47$1) else v49$1);
    v49$2 := (if p19$2 then FMUL32(v47$2, v47$2) else v49$2);
    v50$1 := (if p19$1 then FMUL32(v48$1, v48$1) else v50$1);
    v50$2 := (if p19$2 then FMUL32(v48$2, v48$2) else v50$2);
    v51$1 := (if p19$1 then FLT32(1082130432bv32, FADD32(v50$1, v49$1)) else v51$1);
    v51$2 := (if p19$2 then FLT32(1082130432bv32, FADD32(v50$2, v49$2)) else v51$2);
    p49$1 := (if p19$1 && v51$1 then v51$1 else p49$1);
    p49$2 := (if p19$2 && v51$2 then v51$2 else p49$2);
    p12$1 := (if p19$1 && v51$1 then !v51$1 else p12$1);
    p12$2 := (if p19$2 && v51$2 then !v51$2 else p12$2);
    p20$1 := (if p19$1 && !v51$1 then !v51$1 else p20$1);
    p20$2 := (if p19$2 && !v51$2 then !v51$2 else p20$2);
    v52$1 := (if p20$1 then FADD32(FMUL32(FMUL32(v48$1, v47$1), 1073741824bv32), $yC.i.0$1) else v52$1);
    v52$2 := (if p20$2 then FADD32(FMUL32(FMUL32(v48$2, v47$2), 1073741824bv32), $yC.i.0$2) else v52$2);
    v53$1 := (if p20$1 then FADD32(FSUB32(v50$1, v49$1), $xC.i.0$1) else v53$1);
    v53$2 := (if p20$2 then FADD32(FSUB32(v50$2, v49$2), $xC.i.0$2) else v53$2);
    v54$1 := (if p20$1 then FMUL32(v52$1, v52$1) else v54$1);
    v54$2 := (if p20$2 then FMUL32(v52$2, v52$2) else v54$2);
    v55$1 := (if p20$1 then FMUL32(v53$1, v53$1) else v55$1);
    v55$2 := (if p20$2 then FMUL32(v53$2, v53$2) else v55$2);
    v56$1 := (if p20$1 then FLT32(1082130432bv32, FADD32(v55$1, v54$1)) else v56$1);
    v56$2 := (if p20$2 then FLT32(1082130432bv32, FADD32(v55$2, v54$2)) else v56$2);
    p48$1 := (if p20$1 && v56$1 then v56$1 else p48$1);
    p48$2 := (if p20$2 && v56$2 then v56$2 else p48$2);
    p12$1 := (if p20$1 && v56$1 then !v56$1 else p12$1);
    p12$2 := (if p20$2 && v56$2 then !v56$2 else p12$2);
    p21$1 := (if p20$1 && !v56$1 then !v56$1 else p21$1);
    p21$2 := (if p20$2 && !v56$2 then !v56$2 else p21$2);
    v57$1 := (if p21$1 then FADD32(FMUL32(FMUL32(v53$1, v52$1), 1073741824bv32), $yC.i.0$1) else v57$1);
    v57$2 := (if p21$2 then FADD32(FMUL32(FMUL32(v53$2, v52$2), 1073741824bv32), $yC.i.0$2) else v57$2);
    v58$1 := (if p21$1 then FADD32(FSUB32(v55$1, v54$1), $xC.i.0$1) else v58$1);
    v58$2 := (if p21$2 then FADD32(FSUB32(v55$2, v54$2), $xC.i.0$2) else v58$2);
    v59$1 := (if p21$1 then FMUL32(v57$1, v57$1) else v59$1);
    v59$2 := (if p21$2 then FMUL32(v57$2, v57$2) else v59$2);
    v60$1 := (if p21$1 then FMUL32(v58$1, v58$1) else v60$1);
    v60$2 := (if p21$2 then FMUL32(v58$2, v58$2) else v60$2);
    v61$1 := (if p21$1 then FLT32(1082130432bv32, FADD32(v60$1, v59$1)) else v61$1);
    v61$2 := (if p21$2 then FLT32(1082130432bv32, FADD32(v60$2, v59$2)) else v61$2);
    p47$1 := (if p21$1 && v61$1 then v61$1 else p47$1);
    p47$2 := (if p21$2 && v61$2 then v61$2 else p47$2);
    p12$1 := (if p21$1 && v61$1 then !v61$1 else p12$1);
    p12$2 := (if p21$2 && v61$2 then !v61$2 else p12$2);
    p22$1 := (if p21$1 && !v61$1 then !v61$1 else p22$1);
    p22$2 := (if p21$2 && !v61$2 then !v61$2 else p22$2);
    v62$1 := (if p22$1 then FADD32(FMUL32(FMUL32(v58$1, v57$1), 1073741824bv32), $yC.i.0$1) else v62$1);
    v62$2 := (if p22$2 then FADD32(FMUL32(FMUL32(v58$2, v57$2), 1073741824bv32), $yC.i.0$2) else v62$2);
    v63$1 := (if p22$1 then FADD32(FSUB32(v60$1, v59$1), $xC.i.0$1) else v63$1);
    v63$2 := (if p22$2 then FADD32(FSUB32(v60$2, v59$2), $xC.i.0$2) else v63$2);
    v64$1 := (if p22$1 then FMUL32(v62$1, v62$1) else v64$1);
    v64$2 := (if p22$2 then FMUL32(v62$2, v62$2) else v64$2);
    v65$1 := (if p22$1 then FMUL32(v63$1, v63$1) else v65$1);
    v65$2 := (if p22$2 then FMUL32(v63$2, v63$2) else v65$2);
    v66$1 := (if p22$1 then FLT32(1082130432bv32, FADD32(v65$1, v64$1)) else v66$1);
    v66$2 := (if p22$2 then FLT32(1082130432bv32, FADD32(v65$2, v64$2)) else v66$2);
    p46$1 := (if p22$1 && v66$1 then v66$1 else p46$1);
    p46$2 := (if p22$2 && v66$2 then v66$2 else p46$2);
    p12$1 := (if p22$1 && v66$1 then !v66$1 else p12$1);
    p12$2 := (if p22$2 && v66$2 then !v66$2 else p12$2);
    p23$1 := (if p22$1 && !v66$1 then !v66$1 else p23$1);
    p23$2 := (if p22$2 && !v66$2 then !v66$2 else p23$2);
    v67$1 := (if p23$1 then FADD32(FMUL32(FMUL32(v63$1, v62$1), 1073741824bv32), $yC.i.0$1) else v67$1);
    v67$2 := (if p23$2 then FADD32(FMUL32(FMUL32(v63$2, v62$2), 1073741824bv32), $yC.i.0$2) else v67$2);
    v68$1 := (if p23$1 then FADD32(FSUB32(v65$1, v64$1), $xC.i.0$1) else v68$1);
    v68$2 := (if p23$2 then FADD32(FSUB32(v65$2, v64$2), $xC.i.0$2) else v68$2);
    v69$1 := (if p23$1 then FMUL32(v67$1, v67$1) else v69$1);
    v69$2 := (if p23$2 then FMUL32(v67$2, v67$2) else v69$2);
    v70$1 := (if p23$1 then FMUL32(v68$1, v68$1) else v70$1);
    v70$2 := (if p23$2 then FMUL32(v68$2, v68$2) else v70$2);
    v71$1 := (if p23$1 then FLT32(1082130432bv32, FADD32(v70$1, v69$1)) else v71$1);
    v71$2 := (if p23$2 then FLT32(1082130432bv32, FADD32(v70$2, v69$2)) else v71$2);
    p45$1 := (if p23$1 && v71$1 then v71$1 else p45$1);
    p45$2 := (if p23$2 && v71$2 then v71$2 else p45$2);
    p12$1 := (if p23$1 && v71$1 then !v71$1 else p12$1);
    p12$2 := (if p23$2 && v71$2 then !v71$2 else p12$2);
    p24$1 := (if p23$1 && !v71$1 then !v71$1 else p24$1);
    p24$2 := (if p23$2 && !v71$2 then !v71$2 else p24$2);
    v72$1 := (if p24$1 then FADD32(FMUL32(FMUL32(v68$1, v67$1), 1073741824bv32), $yC.i.0$1) else v72$1);
    v72$2 := (if p24$2 then FADD32(FMUL32(FMUL32(v68$2, v67$2), 1073741824bv32), $yC.i.0$2) else v72$2);
    v73$1 := (if p24$1 then FADD32(FSUB32(v70$1, v69$1), $xC.i.0$1) else v73$1);
    v73$2 := (if p24$2 then FADD32(FSUB32(v70$2, v69$2), $xC.i.0$2) else v73$2);
    v74$1 := (if p24$1 then FMUL32(v72$1, v72$1) else v74$1);
    v74$2 := (if p24$2 then FMUL32(v72$2, v72$2) else v74$2);
    v75$1 := (if p24$1 then FMUL32(v73$1, v73$1) else v75$1);
    v75$2 := (if p24$2 then FMUL32(v73$2, v73$2) else v75$2);
    v76$1 := (if p24$1 then FLT32(1082130432bv32, FADD32(v75$1, v74$1)) else v76$1);
    v76$2 := (if p24$2 then FLT32(1082130432bv32, FADD32(v75$2, v74$2)) else v76$2);
    p44$1 := (if p24$1 && v76$1 then v76$1 else p44$1);
    p44$2 := (if p24$2 && v76$2 then v76$2 else p44$2);
    p12$1 := (if p24$1 && v76$1 then !v76$1 else p12$1);
    p12$2 := (if p24$2 && v76$2 then !v76$2 else p12$2);
    p25$1 := (if p24$1 && !v76$1 then !v76$1 else p25$1);
    p25$2 := (if p24$2 && !v76$2 then !v76$2 else p25$2);
    v77$1 := (if p25$1 then FADD32(FMUL32(FMUL32(v73$1, v72$1), 1073741824bv32), $yC.i.0$1) else v77$1);
    v77$2 := (if p25$2 then FADD32(FMUL32(FMUL32(v73$2, v72$2), 1073741824bv32), $yC.i.0$2) else v77$2);
    v78$1 := (if p25$1 then FADD32(FSUB32(v75$1, v74$1), $xC.i.0$1) else v78$1);
    v78$2 := (if p25$2 then FADD32(FSUB32(v75$2, v74$2), $xC.i.0$2) else v78$2);
    v79$1 := (if p25$1 then FMUL32(v77$1, v77$1) else v79$1);
    v79$2 := (if p25$2 then FMUL32(v77$2, v77$2) else v79$2);
    v80$1 := (if p25$1 then FMUL32(v78$1, v78$1) else v80$1);
    v80$2 := (if p25$2 then FMUL32(v78$2, v78$2) else v80$2);
    v81$1 := (if p25$1 then FLT32(1082130432bv32, FADD32(v80$1, v79$1)) else v81$1);
    v81$2 := (if p25$2 then FLT32(1082130432bv32, FADD32(v80$2, v79$2)) else v81$2);
    p43$1 := (if p25$1 && v81$1 then v81$1 else p43$1);
    p43$2 := (if p25$2 && v81$2 then v81$2 else p43$2);
    p12$1 := (if p25$1 && v81$1 then !v81$1 else p12$1);
    p12$2 := (if p25$2 && v81$2 then !v81$2 else p12$2);
    p26$1 := (if p25$1 && !v81$1 then !v81$1 else p26$1);
    p26$2 := (if p25$2 && !v81$2 then !v81$2 else p26$2);
    v82$1 := (if p26$1 then FADD32(FMUL32(FMUL32(v78$1, v77$1), 1073741824bv32), $yC.i.0$1) else v82$1);
    v82$2 := (if p26$2 then FADD32(FMUL32(FMUL32(v78$2, v77$2), 1073741824bv32), $yC.i.0$2) else v82$2);
    v83$1 := (if p26$1 then FADD32(FSUB32(v80$1, v79$1), $xC.i.0$1) else v83$1);
    v83$2 := (if p26$2 then FADD32(FSUB32(v80$2, v79$2), $xC.i.0$2) else v83$2);
    v84$1 := (if p26$1 then FMUL32(v82$1, v82$1) else v84$1);
    v84$2 := (if p26$2 then FMUL32(v82$2, v82$2) else v84$2);
    v85$1 := (if p26$1 then FMUL32(v83$1, v83$1) else v85$1);
    v85$2 := (if p26$2 then FMUL32(v83$2, v83$2) else v85$2);
    v86$1 := (if p26$1 then FLT32(1082130432bv32, FADD32(v85$1, v84$1)) else v86$1);
    v86$2 := (if p26$2 then FLT32(1082130432bv32, FADD32(v85$2, v84$2)) else v86$2);
    p42$1 := (if p26$1 && v86$1 then v86$1 else p42$1);
    p42$2 := (if p26$2 && v86$2 then v86$2 else p42$2);
    p12$1 := (if p26$1 && v86$1 then !v86$1 else p12$1);
    p12$2 := (if p26$2 && v86$2 then !v86$2 else p12$2);
    p27$1 := (if p26$1 && !v86$1 then !v86$1 else p27$1);
    p27$2 := (if p26$2 && !v86$2 then !v86$2 else p27$2);
    v87$1 := (if p27$1 then FADD32(FMUL32(FMUL32(v83$1, v82$1), 1073741824bv32), $yC.i.0$1) else v87$1);
    v87$2 := (if p27$2 then FADD32(FMUL32(FMUL32(v83$2, v82$2), 1073741824bv32), $yC.i.0$2) else v87$2);
    v88$1 := (if p27$1 then FADD32(FSUB32(v85$1, v84$1), $xC.i.0$1) else v88$1);
    v88$2 := (if p27$2 then FADD32(FSUB32(v85$2, v84$2), $xC.i.0$2) else v88$2);
    v89$1 := (if p27$1 then FMUL32(v87$1, v87$1) else v89$1);
    v89$2 := (if p27$2 then FMUL32(v87$2, v87$2) else v89$2);
    v90$1 := (if p27$1 then FMUL32(v88$1, v88$1) else v90$1);
    v90$2 := (if p27$2 then FMUL32(v88$2, v88$2) else v90$2);
    v91$1 := (if p27$1 then FLT32(1082130432bv32, FADD32(v90$1, v89$1)) else v91$1);
    v91$2 := (if p27$2 then FLT32(1082130432bv32, FADD32(v90$2, v89$2)) else v91$2);
    p41$1 := (if p27$1 && v91$1 then v91$1 else p41$1);
    p41$2 := (if p27$2 && v91$2 then v91$2 else p41$2);
    p12$1 := (if p27$1 && v91$1 then !v91$1 else p12$1);
    p12$2 := (if p27$2 && v91$2 then !v91$2 else p12$2);
    p28$1 := (if p27$1 && !v91$1 then !v91$1 else p28$1);
    p28$2 := (if p27$2 && !v91$2 then !v91$2 else p28$2);
    v92$1 := (if p28$1 then FADD32(FMUL32(FMUL32(v88$1, v87$1), 1073741824bv32), $yC.i.0$1) else v92$1);
    v92$2 := (if p28$2 then FADD32(FMUL32(FMUL32(v88$2, v87$2), 1073741824bv32), $yC.i.0$2) else v92$2);
    v93$1 := (if p28$1 then FADD32(FSUB32(v90$1, v89$1), $xC.i.0$1) else v93$1);
    v93$2 := (if p28$2 then FADD32(FSUB32(v90$2, v89$2), $xC.i.0$2) else v93$2);
    v94$1 := (if p28$1 then FMUL32(v92$1, v92$1) else v94$1);
    v94$2 := (if p28$2 then FMUL32(v92$2, v92$2) else v94$2);
    v95$1 := (if p28$1 then FMUL32(v93$1, v93$1) else v95$1);
    v95$2 := (if p28$2 then FMUL32(v93$2, v93$2) else v95$2);
    v96$1 := (if p28$1 then FLT32(1082130432bv32, FADD32(v95$1, v94$1)) else v96$1);
    v96$2 := (if p28$2 then FLT32(1082130432bv32, FADD32(v95$2, v94$2)) else v96$2);
    p40$1 := (if p28$1 && v96$1 then v96$1 else p40$1);
    p40$2 := (if p28$2 && v96$2 then v96$2 else p40$2);
    p12$1 := (if p28$1 && v96$1 then !v96$1 else p12$1);
    p12$2 := (if p28$2 && v96$2 then !v96$2 else p12$2);
    p29$1 := (if p28$1 && !v96$1 then !v96$1 else p29$1);
    p29$2 := (if p28$2 && !v96$2 then !v96$2 else p29$2);
    v97$1 := (if p29$1 then FADD32(FMUL32(FMUL32(v93$1, v92$1), 1073741824bv32), $yC.i.0$1) else v97$1);
    v97$2 := (if p29$2 then FADD32(FMUL32(FMUL32(v93$2, v92$2), 1073741824bv32), $yC.i.0$2) else v97$2);
    v98$1 := (if p29$1 then FADD32(FSUB32(v95$1, v94$1), $xC.i.0$1) else v98$1);
    v98$2 := (if p29$2 then FADD32(FSUB32(v95$2, v94$2), $xC.i.0$2) else v98$2);
    v99$1 := (if p29$1 then FMUL32(v97$1, v97$1) else v99$1);
    v99$2 := (if p29$2 then FMUL32(v97$2, v97$2) else v99$2);
    v100$1 := (if p29$1 then FMUL32(v98$1, v98$1) else v100$1);
    v100$2 := (if p29$2 then FMUL32(v98$2, v98$2) else v100$2);
    v101$1 := (if p29$1 then FLT32(1082130432bv32, FADD32(v100$1, v99$1)) else v101$1);
    v101$2 := (if p29$2 then FLT32(1082130432bv32, FADD32(v100$2, v99$2)) else v101$2);
    p39$1 := (if p29$1 && v101$1 then v101$1 else p39$1);
    p39$2 := (if p29$2 && v101$2 then v101$2 else p39$2);
    p12$1 := (if p29$1 && v101$1 then !v101$1 else p12$1);
    p12$2 := (if p29$2 && v101$2 then !v101$2 else p12$2);
    p30$1 := (if p29$1 && !v101$1 then !v101$1 else p30$1);
    p30$2 := (if p29$2 && !v101$2 then !v101$2 else p30$2);
    v102$1 := (if p30$1 then FADD32(FMUL32(FMUL32(v98$1, v97$1), 1073741824bv32), $yC.i.0$1) else v102$1);
    v102$2 := (if p30$2 then FADD32(FMUL32(FMUL32(v98$2, v97$2), 1073741824bv32), $yC.i.0$2) else v102$2);
    v103$1 := (if p30$1 then FADD32(FSUB32(v100$1, v99$1), $xC.i.0$1) else v103$1);
    v103$2 := (if p30$2 then FADD32(FSUB32(v100$2, v99$2), $xC.i.0$2) else v103$2);
    v104$1 := (if p30$1 then FMUL32(v102$1, v102$1) else v104$1);
    v104$2 := (if p30$2 then FMUL32(v102$2, v102$2) else v104$2);
    v105$1 := (if p30$1 then FMUL32(v103$1, v103$1) else v105$1);
    v105$2 := (if p30$2 then FMUL32(v103$2, v103$2) else v105$2);
    v106$1 := (if p30$1 then FLT32(1082130432bv32, FADD32(v105$1, v104$1)) else v106$1);
    v106$2 := (if p30$2 then FLT32(1082130432bv32, FADD32(v105$2, v104$2)) else v106$2);
    p38$1 := (if p30$1 && v106$1 then v106$1 else p38$1);
    p38$2 := (if p30$2 && v106$2 then v106$2 else p38$2);
    p12$1 := (if p30$1 && v106$1 then !v106$1 else p12$1);
    p12$2 := (if p30$2 && v106$2 then !v106$2 else p12$2);
    p31$1 := (if p30$1 && !v106$1 then !v106$1 else p31$1);
    p31$2 := (if p30$2 && !v106$2 then !v106$2 else p31$2);
    v107$1 := (if p31$1 then FADD32(FMUL32(FMUL32(v103$1, v102$1), 1073741824bv32), $yC.i.0$1) else v107$1);
    v107$2 := (if p31$2 then FADD32(FMUL32(FMUL32(v103$2, v102$2), 1073741824bv32), $yC.i.0$2) else v107$2);
    v108$1 := (if p31$1 then FADD32(FSUB32(v105$1, v104$1), $xC.i.0$1) else v108$1);
    v108$2 := (if p31$2 then FADD32(FSUB32(v105$2, v104$2), $xC.i.0$2) else v108$2);
    v109$1 := (if p31$1 then FMUL32(v107$1, v107$1) else v109$1);
    v109$2 := (if p31$2 then FMUL32(v107$2, v107$2) else v109$2);
    v110$1 := (if p31$1 then FMUL32(v108$1, v108$1) else v110$1);
    v110$2 := (if p31$2 then FMUL32(v108$2, v108$2) else v110$2);
    v111$1 := (if p31$1 then BV32_SUB($i.i.0$1, 20bv32) else v111$1);
    v111$2 := (if p31$2 then BV32_SUB($i.i.0$2, 20bv32) else v111$2);
    v112$1 := (if p31$1 then BV32_SLE(v111$1, 0bv32) else v112$1);
    v112$2 := (if p31$2 then BV32_SLE(v111$2, 0bv32) else v112$2);
    p37$1 := (if p31$1 && v112$1 then v112$1 else p37$1);
    p37$2 := (if p31$2 && v112$2 then v112$2 else p37$2);
    p12$1 := (if p31$1 && v112$1 then !v112$1 else p12$1);
    p12$2 := (if p31$2 && v112$2 then !v112$2 else p12$2);
    p32$1 := (if p31$1 && !v112$1 then !v112$1 else p32$1);
    p32$2 := (if p31$2 && !v112$2 then !v112$2 else p32$2);
    v113$1 := (if p32$1 then FLT32(1082130432bv32, FADD32(v110$1, v109$1)) else v113$1);
    v113$2 := (if p32$2 then FLT32(1082130432bv32, FADD32(v110$2, v109$2)) else v113$2);
    p37$1 := (if p32$1 && v113$1 then v113$1 else p37$1);
    p37$2 := (if p32$2 && v113$2 then v113$2 else p37$2);
    p12$1 := (if p32$1 && v113$1 then !v113$1 else p12$1);
    p12$2 := (if p32$2 && v113$2 then !v113$2 else p12$2);
    p33$1 := (if p32$1 && !v113$1 then !v113$1 else p33$1);
    p33$2 := (if p32$2 && !v113$2 then !v113$2 else p33$2);
    v114$1 := (if p33$1 then FADD32(FMUL32(FMUL32(v108$1, v107$1), 1073741824bv32), $yC.i.0$1) else v114$1);
    v114$2 := (if p33$2 then FADD32(FMUL32(FMUL32(v108$2, v107$2), 1073741824bv32), $yC.i.0$2) else v114$2);
    v115$1 := (if p33$1 then FADD32(FSUB32(v110$1, v109$1), $xC.i.0$1) else v115$1);
    v115$2 := (if p33$2 then FADD32(FSUB32(v110$2, v109$2), $xC.i.0$2) else v115$2);
    $y.i.1$1, $x.i.1$1, $xx.i.1$1, $yy.i.1$1, $i.i.0$1 := (if p33$1 then v114$1 else $y.i.1$1), (if p33$1 then v115$1 else $x.i.1$1), (if p33$1 then FMUL32(v115$1, v115$1) else $xx.i.1$1), (if p33$1 then FMUL32(v114$1, v114$1) else $yy.i.1$1), (if p33$1 then v111$1 else $i.i.0$1);
    $y.i.1$2, $x.i.1$2, $xx.i.1$2, $yy.i.1$2, $i.i.0$2 := (if p33$2 then v114$2 else $y.i.1$2), (if p33$2 then v115$2 else $x.i.1$2), (if p33$2 then FMUL32(v115$2, v115$2) else $xx.i.1$2), (if p33$2 then FMUL32(v114$2, v114$2) else $yy.i.1$2), (if p33$2 then v111$2 else $i.i.0$2);
    p12$1 := (if p33$1 then true else p12$1);
    p12$2 := (if p33$2 then true else p12$2);
    goto $do.body.i.backedge, $do.body.i.tail;

  $do.body.i.tail:
    assume !p12$1 && !p12$2;
    $retval.i.0$1 := (if p34$1 then BV32_SUB($i.i.0$1, 1bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p34$2 then BV32_SUB($i.i.0$2, 1bv32) else $retval.i.0$2);
    p37$1 := (if p35$1 then true else p37$1);
    p37$2 := (if p35$2 then true else p37$2);
    p37$1 := (if p36$1 then true else p37$1);
    p37$2 := (if p36$2 then true else p37$2);
    $retval.i.0$1 := (if p37$1 then v111$1 else $retval.i.0$1);
    $retval.i.0$2 := (if p37$2 then v111$2 else $retval.i.0$2);
    $retval.i.0$1 := (if p38$1 then BV32_SUB($i.i.0$1, 19bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p38$2 then BV32_SUB($i.i.0$2, 19bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p39$1 then BV32_SUB($i.i.0$1, 18bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p39$2 then BV32_SUB($i.i.0$2, 18bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p40$1 then BV32_SUB($i.i.0$1, 17bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p40$2 then BV32_SUB($i.i.0$2, 17bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p41$1 then BV32_SUB($i.i.0$1, 16bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p41$2 then BV32_SUB($i.i.0$2, 16bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p42$1 then BV32_SUB($i.i.0$1, 15bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p42$2 then BV32_SUB($i.i.0$2, 15bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p43$1 then BV32_SUB($i.i.0$1, 14bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p43$2 then BV32_SUB($i.i.0$2, 14bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p44$1 then BV32_SUB($i.i.0$1, 13bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p44$2 then BV32_SUB($i.i.0$2, 13bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p45$1 then BV32_SUB($i.i.0$1, 12bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p45$2 then BV32_SUB($i.i.0$2, 12bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p46$1 then BV32_SUB($i.i.0$1, 11bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p46$2 then BV32_SUB($i.i.0$2, 11bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p47$1 then BV32_SUB($i.i.0$1, 10bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p47$2 then BV32_SUB($i.i.0$2, 10bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p48$1 then BV32_SUB($i.i.0$1, 9bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p48$2 then BV32_SUB($i.i.0$2, 9bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p49$1 then BV32_SUB($i.i.0$1, 8bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p49$2 then BV32_SUB($i.i.0$2, 8bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p50$1 then BV32_SUB($i.i.0$1, 7bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p50$2 then BV32_SUB($i.i.0$2, 7bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p51$1 then BV32_SUB($i.i.0$1, 6bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p51$2 then BV32_SUB($i.i.0$2, 6bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p52$1 then BV32_SUB($i.i.0$1, 5bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p52$2 then BV32_SUB($i.i.0$2, 5bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p53$1 then BV32_SUB($i.i.0$1, 4bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p53$2 then BV32_SUB($i.i.0$2, 4bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p54$1 then BV32_SUB($i.i.0$1, 3bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p54$2 then BV32_SUB($i.i.0$2, 3bv32) else $retval.i.0$2);
    $retval.i.0$1 := (if p55$1 then BV32_SUB($i.i.0$1, 2bv32) else $retval.i.0$1);
    $retval.i.0$2 := (if p55$2 then BV32_SUB($i.i.0$2, 2bv32) else $retval.i.0$2);
    v116$1 := (if p9$1 then BV32_SGT($retval.i.0$1, 0bv32) else v116$1);
    v116$2 := (if p9$2 then BV32_SGT($retval.i.0$2, 0bv32) else v116$2);
    p57$1 := (if p9$1 && v116$1 then v116$1 else p57$1);
    p57$2 := (if p9$2 && v116$2 then v116$2 else p57$2);
    p56$1 := (if p9$1 && !v116$1 then !v116$1 else p56$1);
    p56$2 := (if p9$2 && !v116$2 then !v116$2 else p56$2);
    $cond$1 := (if p56$1 then 0bv32 else $cond$1);
    $cond$2 := (if p56$2 then 0bv32 else $cond$2);
    $cond$1 := (if p57$1 then BV32_SUB($crunch, $retval.i.0$1) else $cond$1);
    $cond$2 := (if p57$2 then BV32_SUB($crunch, $retval.i.0$2) else $cond$2);
    v117$1 := (if p9$1 then $cond$1 != 0bv32 else v117$1);
    v117$2 := (if p9$2 then $cond$2 != 0bv32 else v117$2);
    p59$1 := (if p9$1 && v117$1 then v117$1 else p59$1);
    p59$2 := (if p9$2 && v117$2 then v117$2 else p59$2);
    p58$1 := (if p9$1 && !v117$1 then !v117$1 else p58$1);
    p58$2 := (if p9$2 && !v117$2 then !v117$2 else p58$2);
    $$color$0bv32$1 := (if p58$1 then 0bv8 else $$color$0bv32$1);
    $$color$0bv32$2 := (if p58$2 then 0bv8 else $$color$0bv32$2);
    $$color$1bv32$1 := (if p58$1 then 0bv8 else $$color$1bv32$1);
    $$color$1bv32$2 := (if p58$2 then 0bv8 else $$color$1bv32$2);
    $$color$2bv32$1 := (if p58$1 then 0bv8 else $$color$2bv32$1);
    $$color$2bv32$2 := (if p58$2 then 0bv8 else $$color$2bv32$2);
    v118$1 := (if p59$1 then BV32_ADD($cond$1, $animationFrame) else v118$1);
    v118$2 := (if p59$2 then BV32_ADD($cond$2, $animationFrame) else v118$2);
    v119$1 := (if p59$1 then $$colors.val$0bv32$1 else v119$1);
    v119$2 := (if p59$2 then $$colors.val$0bv32$2 else v119$2);
    $$color$0bv32$1 := (if p59$1 then BV32_MUL(v118$1, BV8_ZEXT32(v119$1))[8:0] else $$color$0bv32$1);
    $$color$0bv32$2 := (if p59$2 then BV32_MUL(v118$2, BV8_ZEXT32(v119$2))[8:0] else $$color$0bv32$2);
    v120$1 := (if p59$1 then $$colors.val$1bv32$1 else v120$1);
    v120$2 := (if p59$2 then $$colors.val$1bv32$2 else v120$2);
    $$color$1bv32$1 := (if p59$1 then BV32_MUL(v118$1, BV8_ZEXT32(v120$1))[8:0] else $$color$1bv32$1);
    $$color$1bv32$2 := (if p59$2 then BV32_MUL(v118$2, BV8_ZEXT32(v120$2))[8:0] else $$color$1bv32$2);
    v121$1 := (if p59$1 then $$colors.val$2bv32$1 else v121$1);
    v121$2 := (if p59$2 then $$colors.val$2bv32$2 else v121$2);
    $$color$2bv32$1 := (if p59$1 then BV32_MUL(v118$1, BV8_ZEXT32(v121$1))[8:0] else $$color$2bv32$1);
    $$color$2bv32$2 := (if p59$2 then BV32_MUL(v118$2, BV8_ZEXT32(v121$2))[8:0] else $$color$2bv32$2);
    v122$1 := (if p9$1 then BV32_ADD(BV32_MUL($imageW, v10$1), v8$1) else v122$1);
    v122$2 := (if p9$2 then BV32_ADD(BV32_MUL($imageW, v10$2), v8$2) else v122$2);
    v123$1 := (if p9$1 then $frame == 0bv32 else v123$1);
    v123$2 := (if p9$2 then $frame == 0bv32 else v123$2);
    p61$1 := (if p9$1 && v123$1 then v123$1 else p61$1);
    p61$2 := (if p9$2 && v123$2 then v123$2 else p61$2);
    p60$1 := (if p9$1 && !v123$1 then !v123$1 else p60$1);
    p60$2 := (if p9$2 && !v123$2 then !v123$2 else p60$2);
    v128$1 := (if p60$1 then BV32_ADD($frame, 1bv32) else v128$1);
    v128$2 := (if p60$2 then BV32_ADD($frame, 1bv32) else v128$2);
    v129$1 := (if p60$1 then BV32_SDIV(v128$1, 2bv32) else v129$1);
    v129$2 := (if p60$2 then BV32_SDIV(v128$2, 2bv32) else v129$2);
    call {:sourceloc} {:sourceloc_num 96} _LOG_READ_$$dst(p60$1, BV32_MUL(v122$1, 4bv32), $$dst[BV32_MUL(v122$1, 4bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 96} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 96} _CHECK_READ_$$dst(p60$2, BV32_MUL(v122$2, 4bv32), $$dst[BV32_MUL(v122$2, 4bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v130$1 := (if p60$1 then $$dst[BV32_MUL(v122$1, 4bv32)] else v130$1);
    v130$2 := (if p60$2 then $$dst[BV32_MUL(v122$2, 4bv32)] else v130$2);
    v131$1 := (if p60$1 then $$color$0bv32$1 else v131$1);
    v131$2 := (if p60$2 then $$color$0bv32$2 else v131$2);
    call {:sourceloc} {:sourceloc_num 98} _LOG_WRITE_$$dst(p60$1, BV32_MUL(v122$1, 4bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v130$1), $frame), BV8_ZEXT32(v131$1)), v129$1), v128$1)[8:0], $$dst[BV32_MUL(v122$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p60$2, BV32_MUL(v122$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 98} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 98} _CHECK_WRITE_$$dst(p60$2, BV32_MUL(v122$2, 4bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v130$2), $frame), BV8_ZEXT32(v131$2)), v129$2), v128$2)[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_MUL(v122$1, 4bv32)] := (if p60$1 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v130$1), $frame), BV8_ZEXT32(v131$1)), v129$1), v128$1)[8:0] else $$dst[BV32_MUL(v122$1, 4bv32)]);
    $$dst[BV32_MUL(v122$2, 4bv32)] := (if p60$2 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v130$2), $frame), BV8_ZEXT32(v131$2)), v129$2), v128$2)[8:0] else $$dst[BV32_MUL(v122$2, 4bv32)]);
    call {:sourceloc} {:sourceloc_num 99} _LOG_READ_$$dst(p60$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32), $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 99} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 99} _CHECK_READ_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32), $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v132$1 := (if p60$1 then $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)] else v132$1);
    v132$2 := (if p60$2 then $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)] else v132$2);
    v133$1 := (if p60$1 then $$color$1bv32$1 else v133$1);
    v133$2 := (if p60$2 then $$color$1bv32$2 else v133$2);
    call {:sourceloc} {:sourceloc_num 101} _LOG_WRITE_$$dst(p60$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$1), $frame), BV8_ZEXT32(v133$1)), v129$1), v128$1)[8:0], $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 101} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 101} _CHECK_WRITE_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$2), $frame), BV8_ZEXT32(v133$2)), v129$2), v128$2)[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)] := (if p60$1 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$1), $frame), BV8_ZEXT32(v133$1)), v129$1), v128$1)[8:0] else $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)]);
    $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)] := (if p60$2 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v132$2), $frame), BV8_ZEXT32(v133$2)), v129$2), v128$2)[8:0] else $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)]);
    call {:sourceloc} {:sourceloc_num 102} _LOG_READ_$$dst(p60$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32), $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)]);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 102} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 102} _CHECK_READ_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32), $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$dst"} true;
    v134$1 := (if p60$1 then $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)] else v134$1);
    v134$2 := (if p60$2 then $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)] else v134$2);
    v135$1 := (if p60$1 then $$color$2bv32$1 else v135$1);
    v135$2 := (if p60$2 then $$color$2bv32$2 else v135$2);
    call {:sourceloc} {:sourceloc_num 104} _LOG_WRITE_$$dst(p60$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$1), $frame), BV8_ZEXT32(v135$1)), v129$1), v128$1)[8:0], $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_8"} {:captureState "check_state_8"} {:sourceloc} {:sourceloc_num 104} true;
    call {:check_id "check_state_8"} {:sourceloc} {:sourceloc_num 104} _CHECK_WRITE_$$dst(p60$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32), BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$2), $frame), BV8_ZEXT32(v135$2)), v129$2), v128$2)[8:0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)] := (if p60$1 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$1), $frame), BV8_ZEXT32(v135$1)), v129$1), v128$1)[8:0] else $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)]);
    $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)] := (if p60$2 then BV32_SDIV(BV32_ADD(BV32_ADD(BV32_MUL(BV8_ZEXT32(v134$2), $frame), BV8_ZEXT32(v135$2)), v129$2), v128$2)[8:0] else $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)]);
    $$color$3bv32$1 := (if p61$1 then 0bv8 else $$color$3bv32$1);
    $$color$3bv32$2 := (if p61$2 then 0bv8 else $$color$3bv32$2);
    v124$1 := (if p61$1 then $$color$0bv32$1 else v124$1);
    v124$2 := (if p61$2 then $$color$0bv32$2 else v124$2);
    call {:sourceloc} {:sourceloc_num 88} _LOG_WRITE_$$dst(p61$1, BV32_MUL(v122$1, 4bv32), v124$1, $$dst[BV32_MUL(v122$1, 4bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p61$2, BV32_MUL(v122$2, 4bv32));
    assume {:do_not_predicate} {:check_id "check_state_9"} {:captureState "check_state_9"} {:sourceloc} {:sourceloc_num 88} true;
    call {:check_id "check_state_9"} {:sourceloc} {:sourceloc_num 88} _CHECK_WRITE_$$dst(p61$2, BV32_MUL(v122$2, 4bv32), v124$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_MUL(v122$1, 4bv32)] := (if p61$1 then v124$1 else $$dst[BV32_MUL(v122$1, 4bv32)]);
    $$dst[BV32_MUL(v122$2, 4bv32)] := (if p61$2 then v124$2 else $$dst[BV32_MUL(v122$2, 4bv32)]);
    v125$1 := (if p61$1 then $$color$1bv32$1 else v125$1);
    v125$2 := (if p61$2 then $$color$1bv32$2 else v125$2);
    call {:sourceloc} {:sourceloc_num 90} _LOG_WRITE_$$dst(p61$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32), v125$1, $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32));
    assume {:do_not_predicate} {:check_id "check_state_10"} {:captureState "check_state_10"} {:sourceloc} {:sourceloc_num 90} true;
    call {:check_id "check_state_10"} {:sourceloc} {:sourceloc_num 90} _CHECK_WRITE_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32), v125$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)] := (if p61$1 then v125$1 else $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 1bv32)]);
    $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)] := (if p61$2 then v125$2 else $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 1bv32)]);
    v126$1 := (if p61$1 then $$color$2bv32$1 else v126$1);
    v126$2 := (if p61$2 then $$color$2bv32$2 else v126$2);
    call {:sourceloc} {:sourceloc_num 92} _LOG_WRITE_$$dst(p61$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32), v126$1, $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32));
    assume {:do_not_predicate} {:check_id "check_state_11"} {:captureState "check_state_11"} {:sourceloc} {:sourceloc_num 92} true;
    call {:check_id "check_state_11"} {:sourceloc} {:sourceloc_num 92} _CHECK_WRITE_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32), v126$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)] := (if p61$1 then v126$1 else $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 2bv32)]);
    $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)] := (if p61$2 then v126$2 else $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 2bv32)]);
    v127$1 := (if p61$1 then $$color$3bv32$1 else v127$1);
    v127$2 := (if p61$2 then $$color$3bv32$2 else v127$2);
    call {:sourceloc} {:sourceloc_num 94} _LOG_WRITE_$$dst(p61$1, BV32_ADD(BV32_MUL(v122$1, 4bv32), 3bv32), v127$1, $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 3bv32)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 3bv32));
    assume {:do_not_predicate} {:check_id "check_state_12"} {:captureState "check_state_12"} {:sourceloc} {:sourceloc_num 94} true;
    call {:check_id "check_state_12"} {:sourceloc} {:sourceloc_num 94} _CHECK_WRITE_$$dst(p61$2, BV32_ADD(BV32_MUL(v122$2, 4bv32), 3bv32), v127$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$dst"} true;
    $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 3bv32)] := (if p61$1 then v127$1 else $$dst[BV32_ADD(BV32_MUL(v122$1, 4bv32), 3bv32)]);
    $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 3bv32)] := (if p61$2 then v127$2 else $$dst[BV32_ADD(BV32_MUL(v122$2, 4bv32), 3bv32)]);
    p0$1 := (if p5$1 then true else p0$1);
    p0$2 := (if p5$2 then true else p0$2);
    goto $while.body.backedge, $while.body.tail;

  $while.body.tail:
    assume !p0$1 && !p0$2;
    return;

  $while.body.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto __partitioned_block_$while.body_0;

  $do.body.i.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $do.body.i;
}



axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_y == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 14bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_x} group_id_x: bv32;

const {:group_id_y} group_id_y: bv32;

const {:group_id_z} group_id_z: bv32;

procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} true ==> _P$1 == _P$2;
  modifies $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING;



procedure {:inline 1} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  requires {:barrier_divergence} true ==> _P$1 == _P$2;
  modifies $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, $$dst, _TRACKING;



var $$colors.val$0bv32$1: bv8;

var $$colors.val$0bv32$2: bv8;

var $$colors.val$1bv32$1: bv8;

var $$colors.val$1bv32$2: bv8;

var $$colors.val$2bv32$1: bv8;

var $$colors.val$2bv32$2: bv8;

var $$colors.val$3bv32$1: bv8;

var $$colors.val$3bv32$2: bv8;

var $$color$0bv32$1: bv8;

var $$color$0bv32$2: bv8;

var $$color$1bv32$1: bv8;

var $$color$1bv32$2: bv8;

var $$color$2bv32$1: bv8;

var $$color$2bv32$2: bv8;

var $$color$3bv32$1: bv8;

var $$color$3bv32$2: bv8;

const {:existential true} _b0: bool;

var {:atomic_usedmap} _USED_$$blockCounter: [bv32][bv32]bool;

const _WATCHED_VALUE_$$dst: bv8;

procedure {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv8);
  modifies _READ_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_READ_$$dst(_P: bool, _offset: bv32, _value: bv8)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _READ_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_READ_$$dst(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$dst);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$dst: bool;

procedure {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8);
  modifies _WRITE_HAS_OCCURRED_$$dst, _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _LOG_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv8, _value_old: bv8)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then true else _WRITE_HAS_OCCURRED_$$dst);
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



procedure _CHECK_WRITE_$$dst(_P: bool, _offset: bv32, _value: bv8);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$dst != _value);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$dst;



implementation {:inline 1} _LOG_ATOMIC_$$dst(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$dst := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$dst);
    return;
}



procedure _CHECK_ATOMIC_$$dst(_P: bool, _offset: bv32);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);
  requires {:source_name "dst"} {:array "$$dst"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$dst;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$dst(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$dst := (if _P && _WRITE_HAS_OCCURRED_$$dst && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$dst);
    return;
}



const _WATCHED_VALUE_$$blockCounter: bv32;

procedure {:inline 1} _LOG_READ_$$blockCounter(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$blockCounter;



implementation {:inline 1} _LOG_READ_$$blockCounter(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then true else _READ_HAS_OCCURRED_$$blockCounter);
    return;
}



procedure _CHECK_READ_$$blockCounter(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$blockCounter);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$blockCounter: bool;

procedure {:inline 1} _LOG_WRITE_$$blockCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$blockCounter, _WRITE_READ_BENIGN_FLAG_$$blockCounter;



implementation {:inline 1} _LOG_WRITE_$$blockCounter(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then true else _WRITE_HAS_OCCURRED_$$blockCounter);
    _WRITE_READ_BENIGN_FLAG_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$blockCounter);
    return;
}



procedure _CHECK_WRITE_$$blockCounter(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter != _value);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$blockCounter != _value);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$blockCounter(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$blockCounter;



implementation {:inline 1} _LOG_ATOMIC_$$blockCounter(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$blockCounter := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$blockCounter);
    return;
}



procedure _CHECK_ATOMIC_$$blockCounter(_P: bool, _offset: bv32);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockCounter"} {:array "$$blockCounter"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockCounter(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$blockCounter;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$blockCounter(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$blockCounter := (if _P && _WRITE_HAS_OCCURRED_$$blockCounter && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$blockCounter);
    return;
}



const _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex != _value);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockIndex"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex);
    return;
}



const _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX != _value);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockX"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX);
    return;
}



const _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bv32;

procedure {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then true else _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_READ_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY: bool;

procedure {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY, _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then true else _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_WRITE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY != _value);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _LOG_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



procedure _CHECK_ATOMIC_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);
  requires {:source_name "blockY"} {:array "$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY := (if _P && _WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || !_P$1 || !_P$2);
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume true ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$dst;
    goto anon8;

  anon8:
    assume true ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(_P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$dst;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || !_P$1 || !_P$2;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((!_P$1 && !_P$2) || !_P$1 || !_P$2);
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    goto anon3;

  anon3:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume true ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$dst;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$dst;
    goto anon8;

  anon8:
    assume true ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$blockCounter;
    assume true ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$blockCounter;
    goto anon9;

  anon9:
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(_P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon11;

  anon11:
    havoc _TRACKING;
    return;

  anon14_Then:
    assume {:partition} _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$dst;
    goto anon11;

  anon13_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE10blockIndex;
    goto anon5;

  anon5:
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockX;
    goto anon6;

  anon6:
    havoc $$_ZZ11Mandelbrot0IfEvP6uchar4iiiT_S2_S2_S2_S2_S0_iiiibE6blockY;
    goto anon7;

  anon12_Then:
    assume {:partition} (!_P$1 && !_P$2) || !_P$1 || !_P$2;
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

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
